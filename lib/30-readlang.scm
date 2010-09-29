;------------------------------------------------------------------;
; opus_libre -- 30-readlang.scm                                    ;
;                                                                  ;
; (c) 2008-2010 Valentin Villenave <valentin@villenave.net>        ;
;                                                                  ;
;     opus_libre is a free framework for GNU LilyPond: you may     ;
; redistribute it and/or modify it under the terms of the GNU      ;
; General Public License, version 3 or later: gnu.org/licenses     ;
;                                                                  ;
;------------------------------------------------------------------;

; Language selection.

(define eval-lang
;;   "Look for a user-specified language, and load
;; language files accordingly, first globally, then
;; locally.  Note that the default language file,
;; typically in etc/ly.conf.d/lang.conf, is always
;; loaded (which allows for lighter language files
;; that only define what needs to be overriden)."
  (let* ((guess-lang
           (let* ((port (open-input-pipe "locale | grep LANG"))
                  (str (read-line port)))
             (set! str (if (string? str)
                           (string-take
                             (car (reverse (string-split str #\=)))
                             2)
                           #f))
            (close-pipe port)
            str))
         (input-lang
          (if (defined-string? 'input)
              (ly:parser-lookup parser 'input)
              (begin
                (if (ly:get-option 'debug-messages)
                    (ly:message "Input language not defined."))
                    (if guess-lang
                        (begin
                           (if (ly:get-option 'debug-messages)
                               (ly:message "Using system's default: ~a"
                                  guess-lang))
                           guess-lang)
                        (begin
                           (if (ly:get-option 'debug-messages)
                               (ly:message "Using default language: ~a"
                                  conf:default-language))
                           conf:default-language)))))
         (input-lang-file
          (string-append conf:locale-dir "/" input-lang ".conf"))
         (local-lang-file
          (string-append conf:local-conf-dir "/" input-lang ".conf"))
         (load-lang-file
          (lambda (f)
            (if (exists? f)
                (begin
                  (if (ly:get-option 'debug-messages)
                      (ly:message "Loading language file ~a..." f))
                  (parse-def-file f conf:lang-prefix))
                (if (ly:get-option 'debug-messages)
                    (ly:warning "Language file not found: ~a."
                                f))))))
    (load-lang-file input-lang-file)
    (load-lang-file local-lang-file)))
