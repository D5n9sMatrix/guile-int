;; -*- bytes compile dynamic-lisp quile languages lisp -*-

;; name project: guile-int
;; name program: int
;; func program: compiler error
;; warn program: errors syntax
;; fact program: messages
;; easy program: easy life money
;; jobs program: getter money
;; news notices: max
;; gnu hack: GNU Guile Compiler Error (Compiler Error Reference Manual)

;; specify program: table tech
;; computing force: nuclear
;; happen force: nuclear
;; next view: images effects
;; performace: platform

;; start file
;; stream roku new fox 23

"*Compile-Log*"

(defvar my-regexp
  (eval-when-compile (regexp-opt '("aaa" "aba" "abb"))))

;; If you’re using another package, but only need macros from it;;  (the byte compiler will expand those), then eval-when-compil;; e can be used to load it for compiling, but not executing. Fo;; r example,

(eval-when-compile
  (require 'pp))

;; The same sort of thing goes for macros and defsubst functions;;  defined locally and only for use within the file. They are n;; eeded for compiling the file, but in most cases they are not ;; needed for execution of the compiled file. For example,



;;    This is often good for code that’s only a fallback for com;; patibility with other versions of Emacs.

;;    Common Lisp Note: At top level, eval-when-compile is analo;; gous to the Common Lisp idiom (eval-when (compile eval) …). E;; lsewhere, the Common Lisp ‘#.’ reader macro (but not when int;; erpreting) is closer to what eval-when-compile does. 





