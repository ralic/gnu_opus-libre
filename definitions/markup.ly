%------------------------------------------------------------------%
% Opéra Libre -- markup.ly                                         %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

%%% The following functions were provided by
%%% Nicolas Sceaux <nicolas.sceaux@free.fr>

#(define-markup-command (copyright layout props) ()
  (let* ((maintainer (chain-assoc-get 'header:maintainer props))
         (this-year (+ 1900 (tm:year (gmtime (current-time)))))
         (year (string->number (or (chain-assoc-get 'header:copyrightYear props)
                                   (number->string this-year)))))
    (interpret-markup layout props
     (markup "Copyright ©" 
             (if (= year this-year)
                 (format #f "~a" this-year)
                 (format #f "~a-~a" year this-year))
             maintainer))))

#(define-markup-command (when-property layout props symbol markp) (symbol? markup?)
  (if (chain-assoc-get symbol props)
      (interpret-markup layout props markp)
      (ly:make-stencil '()  '(1 . -1) '(1 . -1))))

#(define-markup-command (line-width-ratio layout props width-ratio arg) (number? markup?)
  (interpret-markup layout props
   (markup #:override (cons 'line-width (* width-ratio (chain-assoc-get 'line-width props)))
           arg)))

#(define-markup-list-command (wordwrap-center-lines layout props args)
  (markup-list?)
  (map (lambda (stencil)
        (interpret-markup layout props (markup #:fill-line (#:stencil stencil))))
   (interpret-markup-list layout props (make-wordwrap-lines-markup-list args))))

#(define-markup-command (wordwrap-center layout props args) (markup-list?)
  (interpret-markup layout props
   (make-column-markup
    (make-wordwrap-center-lines-markup-list args))))


#(define (page-ref-aux layout props label gauge next)
  (let* ((gauge-stencil (interpret-markup layout props gauge))
   (x-ext (ly:stencil-extent gauge-stencil X))
   (y-ext (ly:stencil-extent gauge-stencil Y)))
    (ly:make-stencil
     `(delay-stencil-evaluation
       ,(delay (ly:stencil-expr
    (let* ((table (ly:output-def-lookup layout 'label-page-table))
           (label-page (and (list? table) (assoc label table)))
           (page-number (and label-page (cdr label-page)))
           (page-markup (if page-number
                                        (markup #:concat ((format "~a" page-number) next))
                                        "?"))
           (page-stencil (interpret-markup layout props page-markup))
           (gap (- (interval-length x-ext)
             (interval-length (ly:stencil-extent page-stencil X)))))
      (interpret-markup layout props
            (markup #:concat (page-markup #:hspace gap)))))))
     x-ext
     y-ext)))

#(define-markup-command (page-refI layout props label next)
  (symbol? markup?)
  (page-ref-aux layout props label "0" next))

#(define-markup-command (page-refII layout props label next)
  (symbol? markup?)
  (page-ref-aux layout props label "00" next))

#(define-markup-command (page-refIII layout props label next)
  (symbol? markup?)
  (page-ref-aux layout props label "000" next))

#(define-markup-command (super layout props arg) (markup?)
  (ly:stencil-translate-axis
   (interpret-markup
    layout
    (cons `((font-size . ,(- (chain-assoc-get 'font-size props 0) 3))) props)
    arg)
   (* 0.25 (chain-assoc-get 'baseline-skip props))
   Y))

#(define-markup-list-command (paragraph paper props text) (markup-list?)
  (let ((indentation (markup #:pad-to-box (cons 0 3) (cons 0 0) #:null)))
   (interpret-markup-list paper props
    (make-override-lines-markup-list '(baseline-skip . 0)
     (make-justified-lines-markup-list (cons indentation text))))))

#(define-markup-list-command (columns paper props text) (markup-list?)
  (interpret-markup-list paper props
   (make-override-lines-markup-list '(baseline-skip . 1)
    (make-column-lines-markup-list text))))

#(define-markup-command (boxed-justify layout props text) (markup-list?)
  (interpret-markup layout props
   (make-override-markup '(box-padding . 1)
    (make-box-markup
     (make-column-markup
      (make-justified-lines-markup-list text))))))

%%% Guile does not deal with accented letters
#(use-modules (ice-9 regex))
%%;; actually defined below, in a closure
#(define-public string-upper-case #f)
#(define accented-char-upper-case? #f)
#(define accented-char-lower-case? #f)

%%;; an accented character is seen as two characters by guile
#(let ((lower-case-accented-string "éèêëáàâäíìîïóòôöúùûüçœæ")
       (upper-case-accented-string "ÉÈÊËÁÀÂÄÍÌÎÏÓÒÔÖÚÙÛÜÇŒÆ"))
   (define (group-by-2 chars result)
      (if (or (null? chars) (null? (cdr chars)))
          (reverse! result)
          (group-by-2 (cddr chars)
                      (cons (string (car chars) (cadr chars))
                            result))))
   (let ((lower-case-accented-chars
          (group-by-2 (string->list lower-case-accented-string) (list)))
         (upper-case-accented-chars
          (group-by-2 (string->list upper-case-accented-string) (list))))
     (set! string-upper-case
           (lambda (str)
             (define (replace-chars str froms tos)
               (if (null? froms)
                   str
                   (replace-chars (regexp-substitute/global #f (car froms) str
                                                            'pre (car tos) 'post)
                                  (cdr froms)
                                  (cdr tos))))
             (string-upcase (replace-chars str
                                           lower-case-accented-chars
                                           upper-case-accented-chars))))
     (set! accented-char-upper-case?
           (lambda (char1 char2)
             (member (string char1 char2) upper-case-accented-chars string=?)))
     (set! accented-char-lower-case?
           (lambda (char1 char2)
             (member (string char1 char2) lower-case-accented-chars string=?)))))

#(define-markup-command (smallCaps layout props text) (markup?)
  "Turn @code{text}, which should be a string, to small caps.
@example
\\markup \\small-caps \"Text between double quotes\"
@end example"
  (define (string-list->markup strings lower)
    (let ((final-string (string-upper-case
                         (apply string-append (reverse strings)))))
      (if lower
          (markup #:fontsize -2 final-string)
          final-string)))
  (define (make-small-caps rest-chars currents current-is-lower prev-result)
    (if (null? rest-chars)
        (make-concat-markup (reverse! (cons (string-list->markup
                                              currents current-is-lower)
                                            prev-result)))
        (let* ((ch1 (car rest-chars))
               (ch2 (and (not (null? (cdr rest-chars))) (cadr rest-chars)))
               (this-char-string (string ch1))
               (is-lower (char-lower-case? ch1))
               (next-rest-chars (cdr rest-chars)))
          (cond ((and ch2 (accented-char-lower-case? ch1 ch2))
                 (set! this-char-string (string ch1 ch2))
                 (set! is-lower #t)
                 (set! next-rest-chars (cddr rest-chars)))
                ((and ch2 (accented-char-upper-case? ch1 ch2))
                 (set! this-char-string (string ch1 ch2))
                 (set! is-lower #f)
                 (set! next-rest-chars (cddr rest-chars))))
          (if (or (and current-is-lower is-lower)
                  (and (not current-is-lower) (not is-lower)))
              (make-small-caps next-rest-chars
                               (cons this-char-string currents)
                               is-lower
                               prev-result)
              (make-small-caps next-rest-chars
                               (list this-char-string)
                               is-lower
                               (if (null? currents)
                                   prev-result
                                   (cons (string-list->markup
                                            currents current-is-lower)
                                         prev-result)))))))
  (interpret-markup layout props
    (if (string? text)
        (make-small-caps (string->list text) (list) #f (list))
        text)))

%%%
%%% Markup commands
%%%
#(define-markup-command (rehearsal-number layout props text) (string?)
   (interpret-markup layout props
     (markup #:huge #:bold text)))

#(define-markup-command (rehearsal-number-toc layout props text) (string?)
  (let* ((gauge-stencil (interpret-markup layout props "8-88"))
   (x-ext (ly:stencil-extent gauge-stencil X))
   (y-ext (ly:stencil-extent gauge-stencil Y))
         (stencil (interpret-markup layout props text))
         (gap (- (interval-length x-ext)
                 (interval-length (ly:stencil-extent stencil X)))))
    (interpret-markup layout props
      (markup #:concat (#:hspace gap text #:hspace 1)))))

#(define-markup-command (act layout props arg) (markup?)
  (interpret-markup layout props
    (if (*part*)
        (markup #:pad-markup 2 #:fill-line (#:fontsize 6 arg))
        (markup #:column (#:vspace 3
                          #:pad-markup 3 #:fill-line (#:fontsize 6 arg))))))

#(define-markup-command (scene layout props arg) (markup?)
  (interpret-markup layout props
    (if (*part*)
        (markup #:pad-markup 0.5 #:fill-line (#:fontsize 4 arg))
        (markup #:column (#:vspace 1
                          #:fill-line (#:fontsize 4 arg)
                          #:vspace 1)))))

#(define-markup-command (scene-description layout props arg) (markup?)
  (interpret-markup layout props
    (if (*part*)
        empty-markup
        (markup #:column (#:fill-line (#:override '(line-width . 80)
                                       #:fontsize 2 arg)
                          #:vspace 1)))))

#(define-markup-command (title layout props arg) (markup?)
  (interpret-markup layout props
   (markup #:fill-line (#:override '(line-width . 80)
                        #:fontsize 2 arg))))

#(define-markup-command (small-title layout props arg) (markup?)
  (interpret-markup layout props
   (markup #:fill-line (#:override '(line-width . 80)
                        #:fontsize 0 #:italic arg))))
                        
                        
#(define-markup-command (characteri paper props name) (markup?)
  (interpret-markup paper props
   (markup #:huge #:smallCaps name)))

#(define-markup-command (character paper props name) (markup?)
  (interpret-markup paper props
   (markup #:null #:translate  (cons -4 2) #:characteri name)))

#(define-markup-command (character-text paper props name text) (markup? markup?)
  (interpret-markup paper props
   (markup #:null #:translate  (cons -4 2)
    #:line (#:characteri name #:huge " " #:huge #:italic text))))

#(define-public (make-character-mark clefs name)
  #{ << { \set Staff.forceClef = ##t \clef #$clefs
          \once \override Staff . Clef #'full-size-change = ##t }
        s1*0 ^\markup \character $name >> #})


