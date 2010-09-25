;------------------------------------------------------------------;
; opus_libre -- 40-loadmacros.scm                                  ;
;                                                                  ;
; (c) 2008-2010 Valentin Villenave <valentin@villenave.net>        ;
;                                                                  ;
;     opus_libre is a free framework for GNU LilyPond: you may     ;
; redistribute it and/or modify it under the terms of the GNU      ;
; General Public License, version 3 or later: gnu.org/licenses     ;
;                                                                  ;
;------------------------------------------------------------------;



(defmacro make-simple-function (token expr)
  (let* ((sym (if (defined-string? token)
                  (string->symbol (primitive-eval token))
                  token)))
    `(define-public ,sym
       (ly:make-music-function (list ly:music?)
                               (lambda (parser location x)
                                 ,expr)))))

(defmacro staff-change-command (token)
  (let* ((str (primitive-eval token))
         (sym (if (defined-string? token)
                  (string->symbol str)
                  token)))
    `(define-public ,sym
       (ly:make-music-function '()
                               (lambda (parser location)
                                 (make-music 'ContextChange 'change-to-type 'Staff
                                             'change-to-id ,str))))))

(defmacro make-script (str)
  (let* ((sym (car (primitive-eval str)))
         (script (cdr (primitive-eval str))))
    `(define-public ,sym
       (ly:make-music-function (list ly:music?)
                               (lambda (parser location mus)
                                 (add-script mus ,script))))))


;; Not used. See make-script above.
(define (make-scripts lst)
  (let ((rest '()))
    (if (list? lst)
        (begin
          (set! rest (cdr lst))
          (set! lst (car lst))))
    (let ((sym (car lst))
          (script (cdr lst)))
      (eval-string (format #f
                           ;; hackish, but oh sooo convenient
                           "(define-public ~a
          (ly:make-music-function (list ly:music?)
          (lambda (parser location mus)
          (add-script mus \"~a\"))))" sym script)))
    (if (not (null? rest)) (make-scripts rest))))

(define eval-macros
  (map (lambda (x)
         ;; ugh.
         (load (string-append "../" x)))
       (find-files conf:macros-dir ".scm$")))