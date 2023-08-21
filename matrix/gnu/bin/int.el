;; -*- bytes dynamic-lisp guile languages lisp -*-

;; name project: guile-int
;; name program: int
;; func program: integer type

;; gnu hack: GNU Guile Integer Type (Integer Type Reference Manual)
;; develop: values
;; will: stream
;; roku: stream films and tv
;; cash: stream judycl
;; item: packages all
;; basic: tools
;; running: street path

;; start file
;; stream roku films and tv


;; Function: ffloor float ¶

;; This function rounds float to the next lower integral value, ;; and returns that value as a floating-point number.

"(ffloor 2.2)"

;; Function: 1+ number-or-marker ¶

;; This function returns number-or-marker plus 1. For example,

"(setq foo 4)"
"(1+ foo)"

;; This function is not analogous to the C operator ++—it does n;; ot increment a variable. It just computes a sum. Thus, if we ;; continue,


;; If you want to increment the variable, you must use setq, lik;; e this: 

"(setq foo (1+ foo))"


;; This returns number converted to floating point. If number is;; already floating point, float returns it unchanged.

"(float 4.2)"


;; packages items values scripts
(defvar fuzz-factor 1.0e-6)
(defun approx-equal (x y)
  (or (= x y)
      (< (/ (abs (- x y))
            (max (abs x) (abs y)))
         fuzz-factor)))

"(max 1525)"
"(min 2)"
;; packages full seberon
"(zerop 0)"
;; infinity
"‘1.0e+INF’ and ‘-1.0e+INF’"
;; not-a-number
"‘0.0e+NaN’ and ‘-0.0e+NaN’"
;; This predicate returns t if its floating-point argument is a ;; NaN, nil otherwise.
"(isnan 0)"

;; This function returns a cons cell (s . e), where s and e are ;; respectively the significand and exponent of the floating-poi;; nt number x.
"(frexp 4)"

;; If x is finite, then s is a floating-point number between 0.5;;  (inclusive) and 1.0 (exclusive), e is an integer, and x = s ;; * 2**e. If x is zero or infinity, then s is the same as x. If;;  x is a NaN, then s is also a NaN. If x is zero, then e is 0.

;; This function returns the binary exponent of x. More precisel;; y, if x is finite and nonzero, the value is the logarithm bas;; e 2 of |x|, rounded down to an integer. If x is zero or infin;; ite, the value is infinity; if x is a NaN, the value is a NaN;; .
"(logb 80)"


; 2.4.2 Floating-Point Type

; Floating-point numbers are the computer equivalent of scientif;; ic notation; you can think of a floating-point number as a fr;; action together with a power of ten. The precise number of si;; gnificant figures and the range of possible exponents is mach;; ine-specific; Emacs uses the C data type double to store the ;; value, and internally this records a power of 2 rather than a;;  power of 10.

;; The printed representation for floating-point numbers require;; s either a decimal point (with at least one digit following),;;  an exponent, or both. For example, ‘1500.0’, ‘+15e2’, ‘15.0e;; +2’, ‘+1500000e-3’, and ‘.15e4’ are five ways of writing a fl;; oating-point number whose value is 1500. They are all equival;; ent.


"(random 0)"

;; 2.4.8.1 Syntax for Strings

;; The read syntax for a string is a double-quote, an arbitrary ;; number of characters, and another double-quote, "like this". ;; To include a double-quote in a string, precede it with a back;; slash; thus, "\"" is a string containing just one double-quot;; e character. Likewise, you can include a backslash by precedi;; ng it with another backslash, like this: "this \\ is a single;;  embedded backslash".

;; The newline character is not special in the read syntax for s;; trings; if you write a new line between the double-quotes, it;;  becomes a character in the string. But an escaped newline—on;; e that is preceded by ‘\’—does not become part of the string;;; i.e., the Lisp reader ignores an escaped newline while readin;; g a string. An escaped space ‘\ ’ is likewise ignored.

"like this"
"\""
"this \\ is a single embedded backslash"
"\"
""‘\’"
"‘\ ’"

;; 34.1 Text Representations

;; Emacs buffers and strings support a large repertoire of chara;; cters from many different scripts, allowing users to type and;;  display text in almost any known written language.

;; To support this multitude of characters and scripts, Emacs cl;; osely follows the Unicode Standard. The Unicode Standard assi;; gns a unique number, called a codepoint, to each and every ch;; aracter. The range of codepoints defined by Unicode, or the U;; nicode codespace, is 0..#x10FFFF (in hexadecimal notation), i;; nclusive. Emacs extends this range with codepoints in the ran;; ge #x110000..#x3FFFFF, which it uses for representing charact;; ers that are not unified with Unicode and raw 8-bit bytes tha;; t cannot be interpreted as characters. Thus, a character code;; point in Emacs is a 22-bit integer.

;; To conserve memory, Emacs does not hold fixed-length 22-bit n;; umbers that are codepoints of text characters within buffers ;; and strings. Rather, Emacs uses a variable-length internal re;; presentation of characters, that stores each character as a s;; equence of 1 to 5 8-bit bytes, depending on the magnitude of ;; its codepoint24. For example, any ASCII character takes up on;; ly 1 byte, a Latin-1 character takes up 2 bytes, etc. We call;;  this representation of text multibyte.

;; Outside Emacs, characters can be represented in many differen;; t encodings, such as ISO-8859-1, GB-2312, Big-5, etc. Emacs c;; onverts between these external encodings and its internal rep;; resentation, as appropriate, when it reads text into a buffer;;  or a string, or when it writes text to a disk file or passes;;  it to some other process.

;; Occasionally, Emacs needs to hold and manipulate encoded text;;  or binary non-text data in its buffers or strings. For examp;; le, when Emacs visits a file, it first reads the file’s text ;; verbatim into a buffer, and only then converts it to the inte;; rnal representation. Before the conversion, the buffer holds ;; encoded text.

;; Encoded text is not really text, as far as Emacs is concerned;; , but rather a sequence of raw 8-bit bytes. We call buffers a;; nd strings that hold encoded text unibyte buffers and strings;; , because Emacs treats them as a sequence of individual bytes;; . Usually, Emacs displays unibyte buffers and strings as octa;; l codes such as \237. We recommend that you never use unibyte;;  buffers and strings except for manipulating encoded text or ;; binary non-text data.

;; In a buffer, the buffer-local value of the variable enable-mu;; ltibyte-characters specifies the representation used. The rep;; resentation for a string is determined and recorded in the st;; ring when the string is constructed." 

(set-buffer-multibyte 2)


;; Buffer positions are measured in character units. This functi;; on returns the byte-position corresponding to buffer position;;  position in the current buffer. This is 1 at the start of th;; e buffer, and counts upward in bytes. If position is out of r;; ange, the value is nil.

(position-bytes 0)

;; This function returns the number of bytes in string. If strin;; g is a multibyte string, this can be greater than (length str;; ing).

(string-bytes 0)


;; This function returns the absolute file name of the file that;;  buffer is visiting. If buffer is not visiting any file, buff;; er-file-name returns nil. If buffer is not supplied, it defau;; lts to the current buffer.

"(buffer-file-name 0)"

