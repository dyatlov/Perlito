;; Do not edit this file - Generated by MiniPerl6 3.0
;; class Rul
(defpackage mp-Rul
  (:use common-lisp mp-Main))
;; (in-package mp-Rul)
(if (not (ignore-errors (find-class 'mp-Rul)))
  (defclass mp-Rul () ()))

(let (x) 
  (setq x (make-instance 'mp-Rul))
  (defun proto-mp-Rul () x))
(in-package mp-Rul)
  (defun sv-constant (&optional sv-str )
  (block mp6-function (let ((sv-len (sv-undef))) (setf sv-len (length sv-str))(if (sv-bool (sv-eq sv-str "\\")) (progn (setf sv-str "\\\\")) nil)(if (sv-bool (sv-eq sv-str "'")) (progn (setf sv-str "\\'")) nil)(if (sv-bool sv-len) (progn (concatenate 'string (sv-string "( ( '") (sv-string (concatenate 'string (sv-string sv-str) (sv-string (concatenate 'string (sv-string "' eq substr( $str, $MATCH.to, ") (sv-string (concatenate 'string (sv-string sv-len) (sv-string (concatenate 'string (sv-string ")) ") (sv-string (concatenate 'string (sv-string "  ?? (1 + ( $MATCH.to := ") (sv-string (concatenate 'string (sv-string sv-len) (sv-string (concatenate 'string (sv-string " + $MATCH.to ))") (sv-string (concatenate 'string (sv-string "  !! false ") (sv-string ")"))))))))))))))))))) (progn (return-from mp6-function "1"))))))

(in-package mp-Main)
(defmethod sv-perl ((self mp-Rul))
  (mp-Main::sv-lisp_dump_object "::Rul" (list )))




;; class Rul::Quantifier
(defpackage mp-Rul-Quantifier
  (:use common-lisp mp-Main))
;; (in-package mp-Rul-Quantifier)
(if (not (ignore-errors (find-class 'mp-Rul-Quantifier)))
  (defclass mp-Rul-Quantifier () ()))

(let (x) 
  (setq x (make-instance 'mp-Rul-Quantifier))
  (defun proto-mp-Rul-Quantifier () x))
;; has $.term
(let ((new-slots (list (list :name 'sv-term
  :readers '(sv-term)
  :writers '((setf sv-term))
  :initform '(sv-undef)
  :initfunction (constantly (sv-undef))))))
(dolist (slot-defn (sb-mop:class-direct-slots (find-class 'mp-Rul-Quantifier)))
(push (list :name (sb-mop:slot-definition-name slot-defn)
  :readers (sb-mop:slot-definition-readers slot-defn)
  :writers (sb-mop:slot-definition-writers slot-defn)
  :initform (sb-mop:slot-definition-initform slot-defn)
  :initfunction (sb-mop:slot-definition-initfunction slot-defn))
new-slots))
(sb-mop:ensure-class 'mp-Rul-Quantifier :direct-slots new-slots))

;; has $.quant
(let ((new-slots (list (list :name 'sv-quant
  :readers '(sv-quant)
  :writers '((setf sv-quant))
  :initform '(sv-undef)
  :initfunction (constantly (sv-undef))))))
(dolist (slot-defn (sb-mop:class-direct-slots (find-class 'mp-Rul-Quantifier)))
(push (list :name (sb-mop:slot-definition-name slot-defn)
  :readers (sb-mop:slot-definition-readers slot-defn)
  :writers (sb-mop:slot-definition-writers slot-defn)
  :initform (sb-mop:slot-definition-initform slot-defn)
  :initfunction (sb-mop:slot-definition-initfunction slot-defn))
new-slots))
(sb-mop:ensure-class 'mp-Rul-Quantifier :direct-slots new-slots))

;; has $.greedy
(let ((new-slots (list (list :name 'sv-greedy
  :readers '(sv-greedy)
  :writers '((setf sv-greedy))
  :initform '(sv-undef)
  :initfunction (constantly (sv-undef))))))
(dolist (slot-defn (sb-mop:class-direct-slots (find-class 'mp-Rul-Quantifier)))
(push (list :name (sb-mop:slot-definition-name slot-defn)
  :readers (sb-mop:slot-definition-readers slot-defn)
  :writers (sb-mop:slot-definition-writers slot-defn)
  :initform (sb-mop:slot-definition-initform slot-defn)
  :initfunction (sb-mop:slot-definition-initfunction slot-defn))
new-slots))
(sb-mop:ensure-class 'mp-Rul-Quantifier :direct-slots new-slots))

;; has $.ws1
(let ((new-slots (list (list :name 'sv-ws1
  :readers '(sv-ws1)
  :writers '((setf sv-ws1))
  :initform '(sv-undef)
  :initfunction (constantly (sv-undef))))))
(dolist (slot-defn (sb-mop:class-direct-slots (find-class 'mp-Rul-Quantifier)))
(push (list :name (sb-mop:slot-definition-name slot-defn)
  :readers (sb-mop:slot-definition-readers slot-defn)
  :writers (sb-mop:slot-definition-writers slot-defn)
  :initform (sb-mop:slot-definition-initform slot-defn)
  :initfunction (sb-mop:slot-definition-initfunction slot-defn))
new-slots))
(sb-mop:ensure-class 'mp-Rul-Quantifier :direct-slots new-slots))

;; has $.ws2
(let ((new-slots (list (list :name 'sv-ws2
  :readers '(sv-ws2)
  :writers '((setf sv-ws2))
  :initform '(sv-undef)
  :initfunction (constantly (sv-undef))))))
(dolist (slot-defn (sb-mop:class-direct-slots (find-class 'mp-Rul-Quantifier)))
(push (list :name (sb-mop:slot-definition-name slot-defn)
  :readers (sb-mop:slot-definition-readers slot-defn)
  :writers (sb-mop:slot-definition-writers slot-defn)
  :initform (sb-mop:slot-definition-initform slot-defn)
  :initfunction (sb-mop:slot-definition-initfunction slot-defn))
new-slots))
(sb-mop:ensure-class 'mp-Rul-Quantifier :direct-slots new-slots))

;; has $.ws3
(let ((new-slots (list (list :name 'sv-ws3
  :readers '(sv-ws3)
  :writers '((setf sv-ws3))
  :initform '(sv-undef)
  :initfunction (constantly (sv-undef))))))
(dolist (slot-defn (sb-mop:class-direct-slots (find-class 'mp-Rul-Quantifier)))
(push (list :name (sb-mop:slot-definition-name slot-defn)
  :readers (sb-mop:slot-definition-readers slot-defn)
  :writers (sb-mop:slot-definition-writers slot-defn)
  :initform (sb-mop:slot-definition-initform slot-defn)
  :initfunction (sb-mop:slot-definition-initfunction slot-defn))
new-slots))
(sb-mop:ensure-class 'mp-Rul-Quantifier :direct-slots new-slots))

;; method emit
(if (not (ignore-errors (find-method 'sv-emit () ())))
  (defgeneric sv-emit (sv-self)
      (:documentation "a method")))
(defmethod sv-emit ((sv-self mp-Rul-Quantifier))
  (block mp6-function
    (progn (sv-emit (sv-term sv-self) ))))

(defmethod sv-perl ((self mp-Rul-Quantifier))
  (mp-Main::sv-lisp_dump_object "::Rul::Quantifier" (list (let ((m (make-instance 'mp-Pair))) (setf (sv-key m) "term") (setf (sv-value m) (sv-term self)) m) (let ((m (make-instance 'mp-Pair))) (setf (sv-key m) "quant") (setf (sv-value m) (sv-quant self)) m) (let ((m (make-instance 'mp-Pair))) (setf (sv-key m) "greedy") (setf (sv-value m) (sv-greedy self)) m) (let ((m (make-instance 'mp-Pair))) (setf (sv-key m) "ws1") (setf (sv-value m) (sv-ws1 self)) m) (let ((m (make-instance 'mp-Pair))) (setf (sv-key m) "ws2") (setf (sv-value m) (sv-ws2 self)) m) (let ((m (make-instance 'mp-Pair))) (setf (sv-key m) "ws3") (setf (sv-value m) (sv-ws3 self)) m) )))




;; class Rul::Or
(defpackage mp-Rul-Or
  (:use common-lisp mp-Main))
;; (in-package mp-Rul-Or)
(if (not (ignore-errors (find-class 'mp-Rul-Or)))
  (defclass mp-Rul-Or () ()))

(let (x) 
  (setq x (make-instance 'mp-Rul-Or))
  (defun proto-mp-Rul-Or () x))
;; has $.or_list
(let ((new-slots (list (list :name 'sv-or_list
  :readers '(sv-or_list)
  :writers '((setf sv-or_list))
  :initform '(sv-undef)
  :initfunction (constantly (sv-undef))))))
(dolist (slot-defn (sb-mop:class-direct-slots (find-class 'mp-Rul-Or)))
(push (list :name (sb-mop:slot-definition-name slot-defn)
  :readers (sb-mop:slot-definition-readers slot-defn)
  :writers (sb-mop:slot-definition-writers slot-defn)
  :initform (sb-mop:slot-definition-initform slot-defn)
  :initfunction (sb-mop:slot-definition-initfunction slot-defn))
new-slots))
(sb-mop:ensure-class 'mp-Rul-Or :direct-slots new-slots))

;; method emit
(if (not (ignore-errors (find-method 'sv-emit () ())))
  (defgeneric sv-emit (sv-self)
      (:documentation "a method")))
(defmethod sv-emit ((sv-self mp-Rul-Or))
  (block mp6-function
    (progn (concatenate 'string (sv-string "do { ") (sv-string (concatenate 'string (sv-string "my $pos1 := $MATCH.to; do{ ") (sv-string (concatenate 'string (sv-string (sv-join (mapcar #'sv-emit (sv-or_list sv-self)) "} || do { $MATCH.to := $pos1; ")) (sv-string "} }")))))))))

(defmethod sv-perl ((self mp-Rul-Or))
  (mp-Main::sv-lisp_dump_object "::Rul::Or" (list (let ((m (make-instance 'mp-Pair))) (setf (sv-key m) "or_list") (setf (sv-value m) (sv-or_list self)) m) )))




;; class Rul::Concat
(defpackage mp-Rul-Concat
  (:use common-lisp mp-Main))
;; (in-package mp-Rul-Concat)
(if (not (ignore-errors (find-class 'mp-Rul-Concat)))
  (defclass mp-Rul-Concat () ()))

(let (x) 
  (setq x (make-instance 'mp-Rul-Concat))
  (defun proto-mp-Rul-Concat () x))
;; has $.concat
(let ((new-slots (list (list :name 'sv-concat
  :readers '(sv-concat)
  :writers '((setf sv-concat))
  :initform '(sv-undef)
  :initfunction (constantly (sv-undef))))))
(dolist (slot-defn (sb-mop:class-direct-slots (find-class 'mp-Rul-Concat)))
(push (list :name (sb-mop:slot-definition-name slot-defn)
  :readers (sb-mop:slot-definition-readers slot-defn)
  :writers (sb-mop:slot-definition-writers slot-defn)
  :initform (sb-mop:slot-definition-initform slot-defn)
  :initfunction (sb-mop:slot-definition-initfunction slot-defn))
new-slots))
(sb-mop:ensure-class 'mp-Rul-Concat :direct-slots new-slots))

;; method emit
(if (not (ignore-errors (find-method 'sv-emit () ())))
  (defgeneric sv-emit (sv-self)
      (:documentation "a method")))
(defmethod sv-emit ((sv-self mp-Rul-Concat))
  (block mp6-function
    (progn (concatenate 'string (sv-string "(") (sv-string (concatenate 'string (sv-string (sv-join (mapcar #'sv-emit (sv-concat sv-self)) " && ")) (sv-string ")")))))))

(defmethod sv-perl ((self mp-Rul-Concat))
  (mp-Main::sv-lisp_dump_object "::Rul::Concat" (list (let ((m (make-instance 'mp-Pair))) (setf (sv-key m) "concat") (setf (sv-value m) (sv-concat self)) m) )))




;; class Rul::Subrule
(defpackage mp-Rul-Subrule
  (:use common-lisp mp-Main))
;; (in-package mp-Rul-Subrule)
(if (not (ignore-errors (find-class 'mp-Rul-Subrule)))
  (defclass mp-Rul-Subrule () ()))

(let (x) 
  (setq x (make-instance 'mp-Rul-Subrule))
  (defun proto-mp-Rul-Subrule () x))
;; has $.metasyntax
(let ((new-slots (list (list :name 'sv-metasyntax
  :readers '(sv-metasyntax)
  :writers '((setf sv-metasyntax))
  :initform '(sv-undef)
  :initfunction (constantly (sv-undef))))))
(dolist (slot-defn (sb-mop:class-direct-slots (find-class 'mp-Rul-Subrule)))
(push (list :name (sb-mop:slot-definition-name slot-defn)
  :readers (sb-mop:slot-definition-readers slot-defn)
  :writers (sb-mop:slot-definition-writers slot-defn)
  :initform (sb-mop:slot-definition-initform slot-defn)
  :initfunction (sb-mop:slot-definition-initfunction slot-defn))
new-slots))
(sb-mop:ensure-class 'mp-Rul-Subrule :direct-slots new-slots))

;; method emit
(if (not (ignore-errors (find-method 'sv-emit () ())))
  (defgeneric sv-emit (sv-self)
      (:documentation "a method")))
(defmethod sv-emit ((sv-self mp-Rul-Subrule))
  (block mp6-function
    (let ((sv-meth (sv-undef))) (setf sv-meth (if (sv-bool (+ 1 (sv-index (sv-metasyntax sv-self) "."))) (sv-metasyntax sv-self) (concatenate 'string (sv-string "$grammar.") (sv-string (sv-metasyntax sv-self)))))(concatenate 'string (sv-string "do { ") (sv-string (concatenate 'string (sv-string "my $m2 := ") (sv-string (concatenate 'string (sv-string sv-meth) (sv-string (concatenate 'string (sv-string "($str, $MATCH.to); ") (sv-string (concatenate 'string (sv-string "if $m2 { $MATCH.to := $m2.to; $MATCH{'") (sv-string (concatenate 'string (sv-string (sv-metasyntax sv-self)) (sv-string (concatenate 'string (sv-string "'} := $m2; 1 } else { false } ") (sv-string "}")))))))))))))))))

(defmethod sv-perl ((self mp-Rul-Subrule))
  (mp-Main::sv-lisp_dump_object "::Rul::Subrule" (list (let ((m (make-instance 'mp-Pair))) (setf (sv-key m) "metasyntax") (setf (sv-value m) (sv-metasyntax self)) m) )))




;; class Rul::SubruleNoCapture
(defpackage mp-Rul-SubruleNoCapture
  (:use common-lisp mp-Main))
;; (in-package mp-Rul-SubruleNoCapture)
(if (not (ignore-errors (find-class 'mp-Rul-SubruleNoCapture)))
  (defclass mp-Rul-SubruleNoCapture () ()))

(let (x) 
  (setq x (make-instance 'mp-Rul-SubruleNoCapture))
  (defun proto-mp-Rul-SubruleNoCapture () x))
;; has $.metasyntax
(let ((new-slots (list (list :name 'sv-metasyntax
  :readers '(sv-metasyntax)
  :writers '((setf sv-metasyntax))
  :initform '(sv-undef)
  :initfunction (constantly (sv-undef))))))
(dolist (slot-defn (sb-mop:class-direct-slots (find-class 'mp-Rul-SubruleNoCapture)))
(push (list :name (sb-mop:slot-definition-name slot-defn)
  :readers (sb-mop:slot-definition-readers slot-defn)
  :writers (sb-mop:slot-definition-writers slot-defn)
  :initform (sb-mop:slot-definition-initform slot-defn)
  :initfunction (sb-mop:slot-definition-initfunction slot-defn))
new-slots))
(sb-mop:ensure-class 'mp-Rul-SubruleNoCapture :direct-slots new-slots))

;; method emit
(if (not (ignore-errors (find-method 'sv-emit () ())))
  (defgeneric sv-emit (sv-self)
      (:documentation "a method")))
(defmethod sv-emit ((sv-self mp-Rul-SubruleNoCapture))
  (block mp6-function
    (let ((sv-meth (sv-undef))) (setf sv-meth (if (sv-bool (+ 1 (sv-index (sv-metasyntax sv-self) "."))) (sv-metasyntax sv-self) (concatenate 'string (sv-string "$grammar.") (sv-string (sv-metasyntax sv-self)))))(concatenate 'string (sv-string "do { ") (sv-string (concatenate 'string (sv-string "my $m2 := ") (sv-string (concatenate 'string (sv-string sv-meth) (sv-string (concatenate 'string (sv-string "($str, $MATCH.to); ") (sv-string (concatenate 'string (sv-string "if $m2 { $MATCH.to := $m2.to; 1 } else { false } ") (sv-string "}")))))))))))))

(defmethod sv-perl ((self mp-Rul-SubruleNoCapture))
  (mp-Main::sv-lisp_dump_object "::Rul::SubruleNoCapture" (list (let ((m (make-instance 'mp-Pair))) (setf (sv-key m) "metasyntax") (setf (sv-value m) (sv-metasyntax self)) m) )))




;; class Rul::Var
(defpackage mp-Rul-Var
  (:use common-lisp mp-Main))
;; (in-package mp-Rul-Var)
(if (not (ignore-errors (find-class 'mp-Rul-Var)))
  (defclass mp-Rul-Var () ()))

(let (x) 
  (setq x (make-instance 'mp-Rul-Var))
  (defun proto-mp-Rul-Var () x))
;; has $.sigil
(let ((new-slots (list (list :name 'sv-sigil
  :readers '(sv-sigil)
  :writers '((setf sv-sigil))
  :initform '(sv-undef)
  :initfunction (constantly (sv-undef))))))
(dolist (slot-defn (sb-mop:class-direct-slots (find-class 'mp-Rul-Var)))
(push (list :name (sb-mop:slot-definition-name slot-defn)
  :readers (sb-mop:slot-definition-readers slot-defn)
  :writers (sb-mop:slot-definition-writers slot-defn)
  :initform (sb-mop:slot-definition-initform slot-defn)
  :initfunction (sb-mop:slot-definition-initfunction slot-defn))
new-slots))
(sb-mop:ensure-class 'mp-Rul-Var :direct-slots new-slots))

;; has $.twigil
(let ((new-slots (list (list :name 'sv-twigil
  :readers '(sv-twigil)
  :writers '((setf sv-twigil))
  :initform '(sv-undef)
  :initfunction (constantly (sv-undef))))))
(dolist (slot-defn (sb-mop:class-direct-slots (find-class 'mp-Rul-Var)))
(push (list :name (sb-mop:slot-definition-name slot-defn)
  :readers (sb-mop:slot-definition-readers slot-defn)
  :writers (sb-mop:slot-definition-writers slot-defn)
  :initform (sb-mop:slot-definition-initform slot-defn)
  :initfunction (sb-mop:slot-definition-initfunction slot-defn))
new-slots))
(sb-mop:ensure-class 'mp-Rul-Var :direct-slots new-slots))

;; has $.name
(let ((new-slots (list (list :name 'sv-name
  :readers '(sv-name)
  :writers '((setf sv-name))
  :initform '(sv-undef)
  :initfunction (constantly (sv-undef))))))
(dolist (slot-defn (sb-mop:class-direct-slots (find-class 'mp-Rul-Var)))
(push (list :name (sb-mop:slot-definition-name slot-defn)
  :readers (sb-mop:slot-definition-readers slot-defn)
  :writers (sb-mop:slot-definition-writers slot-defn)
  :initform (sb-mop:slot-definition-initform slot-defn)
  :initfunction (sb-mop:slot-definition-initfunction slot-defn))
new-slots))
(sb-mop:ensure-class 'mp-Rul-Var :direct-slots new-slots))

;; method emit
(if (not (ignore-errors (find-method 'sv-emit () ())))
  (defgeneric sv-emit (sv-self)
      (:documentation "a method")))
(defmethod sv-emit ((sv-self mp-Rul-Var))
  (block mp6-function
    (let ((sv-table (sv-undef))) (setf sv-table (let ((h (make-hash-table :test 'equal))) (setf (gethash "$" h) "$")(setf (gethash "@" h) "$List_")(setf (gethash "%" h) "$Hash_")(setf (gethash "&" h) "$Code_") h))(concatenate 'string (sv-string (gethash (sv-sigil sv-self) sv-table)) (sv-string (sv-name sv-self))))))

(defmethod sv-perl ((self mp-Rul-Var))
  (mp-Main::sv-lisp_dump_object "::Rul::Var" (list (let ((m (make-instance 'mp-Pair))) (setf (sv-key m) "sigil") (setf (sv-value m) (sv-sigil self)) m) (let ((m (make-instance 'mp-Pair))) (setf (sv-key m) "twigil") (setf (sv-value m) (sv-twigil self)) m) (let ((m (make-instance 'mp-Pair))) (setf (sv-key m) "name") (setf (sv-value m) (sv-name self)) m) )))




;; class Rul::Constant
(defpackage mp-Rul-Constant
  (:use common-lisp mp-Main))
;; (in-package mp-Rul-Constant)
(if (not (ignore-errors (find-class 'mp-Rul-Constant)))
  (defclass mp-Rul-Constant () ()))

(let (x) 
  (setq x (make-instance 'mp-Rul-Constant))
  (defun proto-mp-Rul-Constant () x))
;; has $.constant
(let ((new-slots (list (list :name 'sv-constant
  :readers '(sv-constant)
  :writers '((setf sv-constant))
  :initform '(sv-undef)
  :initfunction (constantly (sv-undef))))))
(dolist (slot-defn (sb-mop:class-direct-slots (find-class 'mp-Rul-Constant)))
(push (list :name (sb-mop:slot-definition-name slot-defn)
  :readers (sb-mop:slot-definition-readers slot-defn)
  :writers (sb-mop:slot-definition-writers slot-defn)
  :initform (sb-mop:slot-definition-initform slot-defn)
  :initfunction (sb-mop:slot-definition-initfunction slot-defn))
new-slots))
(sb-mop:ensure-class 'mp-Rul-Constant :direct-slots new-slots))

;; method emit
(if (not (ignore-errors (find-method 'sv-emit () ())))
  (defgeneric sv-emit (sv-self)
      (:documentation "a method")))
(defmethod sv-emit ((sv-self mp-Rul-Constant))
  (block mp6-function
    (let ((sv-str (sv-undef))) (setf sv-str (sv-constant sv-self))(mp-Rul::sv-constant sv-str))))

(defmethod sv-perl ((self mp-Rul-Constant))
  (mp-Main::sv-lisp_dump_object "::Rul::Constant" (list (let ((m (make-instance 'mp-Pair))) (setf (sv-key m) "constant") (setf (sv-value m) (sv-constant self)) m) )))




;; class Rul::Dot
(defpackage mp-Rul-Dot
  (:use common-lisp mp-Main))
;; (in-package mp-Rul-Dot)
(if (not (ignore-errors (find-class 'mp-Rul-Dot)))
  (defclass mp-Rul-Dot () ()))

(let (x) 
  (setq x (make-instance 'mp-Rul-Dot))
  (defun proto-mp-Rul-Dot () x))
;; method emit
(if (not (ignore-errors (find-method 'sv-emit () ())))
  (defgeneric sv-emit (sv-self)
      (:documentation "a method")))
(defmethod sv-emit ((sv-self mp-Rul-Dot))
  (block mp6-function
    (progn (concatenate 'string (sv-string "( ('' ne substr( $str, $MATCH.to, 1 )) ") (sv-string (concatenate 'string (sv-string "  ?? (1 + ($MATCH.to := 1 + $MATCH.to ))") (sv-string (concatenate 'string (sv-string "  !! false ") (sv-string ")")))))))))

(defmethod sv-perl ((self mp-Rul-Dot))
  (mp-Main::sv-lisp_dump_object "::Rul::Dot" (list )))




;; class Rul::SpecialChar
(defpackage mp-Rul-SpecialChar
  (:use common-lisp mp-Main))
;; (in-package mp-Rul-SpecialChar)
(if (not (ignore-errors (find-class 'mp-Rul-SpecialChar)))
  (defclass mp-Rul-SpecialChar () ()))

(let (x) 
  (setq x (make-instance 'mp-Rul-SpecialChar))
  (defun proto-mp-Rul-SpecialChar () x))
;; has $.char
(let ((new-slots (list (list :name 'sv-char
  :readers '(sv-char)
  :writers '((setf sv-char))
  :initform '(sv-undef)
  :initfunction (constantly (sv-undef))))))
(dolist (slot-defn (sb-mop:class-direct-slots (find-class 'mp-Rul-SpecialChar)))
(push (list :name (sb-mop:slot-definition-name slot-defn)
  :readers (sb-mop:slot-definition-readers slot-defn)
  :writers (sb-mop:slot-definition-writers slot-defn)
  :initform (sb-mop:slot-definition-initform slot-defn)
  :initfunction (sb-mop:slot-definition-initfunction slot-defn))
new-slots))
(sb-mop:ensure-class 'mp-Rul-SpecialChar :direct-slots new-slots))

;; method emit
(if (not (ignore-errors (find-method 'sv-emit () ())))
  (defgeneric sv-emit (sv-self)
      (:documentation "a method")))
(defmethod sv-emit ((sv-self mp-Rul-SpecialChar))
  (block mp6-function
    (let ((sv-char (sv-undef))) (setf sv-char (sv-char sv-self))(if (sv-bool (sv-eq sv-char "n")) (let ((sv-rul (sv-undef))) (setf sv-rul (let ((m (make-instance 'mp-Rul-SubruleNoCapture))) (setf (sv-metasyntax m) "is_newline") m))(setf sv-rul (sv-emit sv-rul ))(return-from mp6-function sv-rul)) nil)(if (sv-bool (sv-eq sv-char "N")) (let ((sv-rul (sv-undef))) (setf sv-rul (let ((m (make-instance 'mp-Rul-SubruleNoCapture))) (setf (sv-metasyntax m) "not_newline") m))(setf sv-rul (sv-emit sv-rul ))(return-from mp6-function sv-rul)) nil)(if (sv-bool (sv-eq sv-char "d")) (let ((sv-rul (sv-undef))) (setf sv-rul (let ((m (make-instance 'mp-Rul-SubruleNoCapture))) (setf (sv-metasyntax m) "digit") m))(setf sv-rul (sv-emit sv-rul ))(return-from mp6-function sv-rul)) nil)(if (sv-bool (sv-eq sv-char "s")) (let ((sv-rul (sv-undef))) (setf sv-rul (let ((m (make-instance 'mp-Rul-SubruleNoCapture))) (setf (sv-metasyntax m) "space") m))(setf sv-rul (sv-emit sv-rul ))(return-from mp6-function sv-rul)) nil)(return-from mp6-function (mp-Rul::sv-constant sv-char)))))

(defmethod sv-perl ((self mp-Rul-SpecialChar))
  (mp-Main::sv-lisp_dump_object "::Rul::SpecialChar" (list (let ((m (make-instance 'mp-Pair))) (setf (sv-key m) "char") (setf (sv-value m) (sv-char self)) m) )))




;; class Rul::Block
(defpackage mp-Rul-Block
  (:use common-lisp mp-Main))
;; (in-package mp-Rul-Block)
(if (not (ignore-errors (find-class 'mp-Rul-Block)))
  (defclass mp-Rul-Block () ()))

(let (x) 
  (setq x (make-instance 'mp-Rul-Block))
  (defun proto-mp-Rul-Block () x))
;; has $.closure
(let ((new-slots (list (list :name 'sv-closure
  :readers '(sv-closure)
  :writers '((setf sv-closure))
  :initform '(sv-undef)
  :initfunction (constantly (sv-undef))))))
(dolist (slot-defn (sb-mop:class-direct-slots (find-class 'mp-Rul-Block)))
(push (list :name (sb-mop:slot-definition-name slot-defn)
  :readers (sb-mop:slot-definition-readers slot-defn)
  :writers (sb-mop:slot-definition-writers slot-defn)
  :initform (sb-mop:slot-definition-initform slot-defn)
  :initfunction (sb-mop:slot-definition-initfunction slot-defn))
new-slots))
(sb-mop:ensure-class 'mp-Rul-Block :direct-slots new-slots))

;; method emit
(if (not (ignore-errors (find-method 'sv-emit () ())))
  (defgeneric sv-emit (sv-self)
      (:documentation "a method")))
(defmethod sv-emit ((sv-self mp-Rul-Block))
  (block mp6-function
    (progn (concatenate 'string (sv-string "(do { ") (sv-string (concatenate 'string (sv-string (sv-closure sv-self)) (sv-string " } || 1)")))))))

(defmethod sv-perl ((self mp-Rul-Block))
  (mp-Main::sv-lisp_dump_object "::Rul::Block" (list (let ((m (make-instance 'mp-Pair))) (setf (sv-key m) "closure") (setf (sv-value m) (sv-closure self)) m) )))




;; class Rul::InterpolateVar
(defpackage mp-Rul-InterpolateVar
  (:use common-lisp mp-Main))
;; (in-package mp-Rul-InterpolateVar)
(if (not (ignore-errors (find-class 'mp-Rul-InterpolateVar)))
  (defclass mp-Rul-InterpolateVar () ()))

(let (x) 
  (setq x (make-instance 'mp-Rul-InterpolateVar))
  (defun proto-mp-Rul-InterpolateVar () x))
;; has $.var
(let ((new-slots (list (list :name 'sv-var
  :readers '(sv-var)
  :writers '((setf sv-var))
  :initform '(sv-undef)
  :initfunction (constantly (sv-undef))))))
(dolist (slot-defn (sb-mop:class-direct-slots (find-class 'mp-Rul-InterpolateVar)))
(push (list :name (sb-mop:slot-definition-name slot-defn)
  :readers (sb-mop:slot-definition-readers slot-defn)
  :writers (sb-mop:slot-definition-writers slot-defn)
  :initform (sb-mop:slot-definition-initform slot-defn)
  :initfunction (sb-mop:slot-definition-initfunction slot-defn))
new-slots))
(sb-mop:ensure-class 'mp-Rul-InterpolateVar :direct-slots new-slots))

;; method emit
(if (not (ignore-errors (find-method 'sv-emit () ())))
  (defgeneric sv-emit (sv-self)
      (:documentation "a method")))
(defmethod sv-emit ((sv-self mp-Rul-InterpolateVar))
  (block mp6-function
    (progn (mp-Main::sv-say (list (concatenate 'string (sv-string "# TODO: interpolate var ") (sv-string (concatenate 'string (sv-string (sv-emit (sv-var sv-self) )) (sv-string ""))))))(progn (write-line (format nil "~{~a~}" (list )) *error-output*) (sb-ext:quit)))))

(defmethod sv-perl ((self mp-Rul-InterpolateVar))
  (mp-Main::sv-lisp_dump_object "::Rul::InterpolateVar" (list (let ((m (make-instance 'mp-Pair))) (setf (sv-key m) "var") (setf (sv-value m) (sv-var self)) m) )))




;; class Rul::NamedCapture
(defpackage mp-Rul-NamedCapture
  (:use common-lisp mp-Main))
;; (in-package mp-Rul-NamedCapture)
(if (not (ignore-errors (find-class 'mp-Rul-NamedCapture)))
  (defclass mp-Rul-NamedCapture () ()))

(let (x) 
  (setq x (make-instance 'mp-Rul-NamedCapture))
  (defun proto-mp-Rul-NamedCapture () x))
;; has $.rule_exp
(let ((new-slots (list (list :name 'sv-rule_exp
  :readers '(sv-rule_exp)
  :writers '((setf sv-rule_exp))
  :initform '(sv-undef)
  :initfunction (constantly (sv-undef))))))
(dolist (slot-defn (sb-mop:class-direct-slots (find-class 'mp-Rul-NamedCapture)))
(push (list :name (sb-mop:slot-definition-name slot-defn)
  :readers (sb-mop:slot-definition-readers slot-defn)
  :writers (sb-mop:slot-definition-writers slot-defn)
  :initform (sb-mop:slot-definition-initform slot-defn)
  :initfunction (sb-mop:slot-definition-initfunction slot-defn))
new-slots))
(sb-mop:ensure-class 'mp-Rul-NamedCapture :direct-slots new-slots))

;; has $.capture_ident
(let ((new-slots (list (list :name 'sv-capture_ident
  :readers '(sv-capture_ident)
  :writers '((setf sv-capture_ident))
  :initform '(sv-undef)
  :initfunction (constantly (sv-undef))))))
(dolist (slot-defn (sb-mop:class-direct-slots (find-class 'mp-Rul-NamedCapture)))
(push (list :name (sb-mop:slot-definition-name slot-defn)
  :readers (sb-mop:slot-definition-readers slot-defn)
  :writers (sb-mop:slot-definition-writers slot-defn)
  :initform (sb-mop:slot-definition-initform slot-defn)
  :initfunction (sb-mop:slot-definition-initfunction slot-defn))
new-slots))
(sb-mop:ensure-class 'mp-Rul-NamedCapture :direct-slots new-slots))

;; method emit
(if (not (ignore-errors (find-method 'sv-emit () ())))
  (defgeneric sv-emit (sv-self)
      (:documentation "a method")))
(defmethod sv-emit ((sv-self mp-Rul-NamedCapture))
  (block mp6-function
    (progn (mp-Main::sv-say (list (concatenate 'string (sv-string "# TODO: named capture ") (sv-string (concatenate 'string (sv-string (sv-capture_ident sv-self)) (sv-string (concatenate 'string (sv-string " := ") (sv-string (concatenate 'string (sv-string (sv-emit (sv-rule_exp sv-self) )) (sv-string ""))))))))))(progn (write-line (format nil "~{~a~}" (list )) *error-output*) (sb-ext:quit)))))

(defmethod sv-perl ((self mp-Rul-NamedCapture))
  (mp-Main::sv-lisp_dump_object "::Rul::NamedCapture" (list (let ((m (make-instance 'mp-Pair))) (setf (sv-key m) "rule_exp") (setf (sv-value m) (sv-rule_exp self)) m) (let ((m (make-instance 'mp-Pair))) (setf (sv-key m) "capture_ident") (setf (sv-value m) (sv-capture_ident self)) m) )))




;; class Rul::Before
(defpackage mp-Rul-Before
  (:use common-lisp mp-Main))
;; (in-package mp-Rul-Before)
(if (not (ignore-errors (find-class 'mp-Rul-Before)))
  (defclass mp-Rul-Before () ()))

(let (x) 
  (setq x (make-instance 'mp-Rul-Before))
  (defun proto-mp-Rul-Before () x))
;; has $.rule_exp
(let ((new-slots (list (list :name 'sv-rule_exp
  :readers '(sv-rule_exp)
  :writers '((setf sv-rule_exp))
  :initform '(sv-undef)
  :initfunction (constantly (sv-undef))))))
(dolist (slot-defn (sb-mop:class-direct-slots (find-class 'mp-Rul-Before)))
(push (list :name (sb-mop:slot-definition-name slot-defn)
  :readers (sb-mop:slot-definition-readers slot-defn)
  :writers (sb-mop:slot-definition-writers slot-defn)
  :initform (sb-mop:slot-definition-initform slot-defn)
  :initfunction (sb-mop:slot-definition-initfunction slot-defn))
new-slots))
(sb-mop:ensure-class 'mp-Rul-Before :direct-slots new-slots))

;; method emit
(if (not (ignore-errors (find-method 'sv-emit () ())))
  (defgeneric sv-emit (sv-self)
      (:documentation "a method")))
(defmethod sv-emit ((sv-self mp-Rul-Before))
  (block mp6-function
    (progn (concatenate 'string (sv-string "do { ") (sv-string (concatenate 'string (sv-string "my $tmp := $MATCH; ") (sv-string (concatenate 'string (sv-string "$MATCH := MiniPerl6::Match.new( 'str' => $str, 'from' => $tmp.to, 'to' => $tmp.to, 'bool' => 1  ); ") (sv-string (concatenate 'string (sv-string "$MATCH.bool := ") (sv-string (concatenate 'string (sv-string (sv-emit (sv-rule_exp sv-self) )) (sv-string (concatenate 'string (sv-string "; ") (sv-string (concatenate 'string (sv-string "$tmp.bool := ?$MATCH; ") (sv-string (concatenate 'string (sv-string "$MATCH := $tmp; ") (sv-string (concatenate 'string (sv-string "?$MATCH; ") (sv-string "}")))))))))))))))))))))

(defmethod sv-perl ((self mp-Rul-Before))
  (mp-Main::sv-lisp_dump_object "::Rul::Before" (list (let ((m (make-instance 'mp-Pair))) (setf (sv-key m) "rule_exp") (setf (sv-value m) (sv-rule_exp self)) m) )))




;; class Rul::NotBefore
(defpackage mp-Rul-NotBefore
  (:use common-lisp mp-Main))
;; (in-package mp-Rul-NotBefore)
(if (not (ignore-errors (find-class 'mp-Rul-NotBefore)))
  (defclass mp-Rul-NotBefore () ()))

(let (x) 
  (setq x (make-instance 'mp-Rul-NotBefore))
  (defun proto-mp-Rul-NotBefore () x))
;; has $.rule_exp
(let ((new-slots (list (list :name 'sv-rule_exp
  :readers '(sv-rule_exp)
  :writers '((setf sv-rule_exp))
  :initform '(sv-undef)
  :initfunction (constantly (sv-undef))))))
(dolist (slot-defn (sb-mop:class-direct-slots (find-class 'mp-Rul-NotBefore)))
(push (list :name (sb-mop:slot-definition-name slot-defn)
  :readers (sb-mop:slot-definition-readers slot-defn)
  :writers (sb-mop:slot-definition-writers slot-defn)
  :initform (sb-mop:slot-definition-initform slot-defn)
  :initfunction (sb-mop:slot-definition-initfunction slot-defn))
new-slots))
(sb-mop:ensure-class 'mp-Rul-NotBefore :direct-slots new-slots))

;; method emit
(if (not (ignore-errors (find-method 'sv-emit () ())))
  (defgeneric sv-emit (sv-self)
      (:documentation "a method")))
(defmethod sv-emit ((sv-self mp-Rul-NotBefore))
  (block mp6-function
    (progn (concatenate 'string (sv-string "do { ") (sv-string (concatenate 'string (sv-string "my $tmp := $MATCH; ") (sv-string (concatenate 'string (sv-string "$MATCH := MiniPerl6::Match.new( 'str' => $str, 'from' => $tmp.to, 'to' => $tmp.to, 'bool' => 1  ); ") (sv-string (concatenate 'string (sv-string "$MATCH.bool := ") (sv-string (concatenate 'string (sv-string (sv-emit (sv-rule_exp sv-self) )) (sv-string (concatenate 'string (sv-string "; ") (sv-string (concatenate 'string (sv-string "$tmp.bool := !$MATCH; ") (sv-string (concatenate 'string (sv-string "$MATCH := $tmp; ") (sv-string (concatenate 'string (sv-string "?$MATCH; ") (sv-string "}")))))))))))))))))))))

(defmethod sv-perl ((self mp-Rul-NotBefore))
  (mp-Main::sv-lisp_dump_object "::Rul::NotBefore" (list (let ((m (make-instance 'mp-Pair))) (setf (sv-key m) "rule_exp") (setf (sv-value m) (sv-rule_exp self)) m) )))




;; class Rul::NegateCharClass
(defpackage mp-Rul-NegateCharClass
  (:use common-lisp mp-Main))
;; (in-package mp-Rul-NegateCharClass)
(if (not (ignore-errors (find-class 'mp-Rul-NegateCharClass)))
  (defclass mp-Rul-NegateCharClass () ()))

(let (x) 
  (setq x (make-instance 'mp-Rul-NegateCharClass))
  (defun proto-mp-Rul-NegateCharClass () x))
;; has $.chars
(let ((new-slots (list (list :name 'sv-chars
  :readers '(sv-chars)
  :writers '((setf sv-chars))
  :initform '(sv-undef)
  :initfunction (constantly (sv-undef))))))
(dolist (slot-defn (sb-mop:class-direct-slots (find-class 'mp-Rul-NegateCharClass)))
(push (list :name (sb-mop:slot-definition-name slot-defn)
  :readers (sb-mop:slot-definition-readers slot-defn)
  :writers (sb-mop:slot-definition-writers slot-defn)
  :initform (sb-mop:slot-definition-initform slot-defn)
  :initfunction (sb-mop:slot-definition-initfunction slot-defn))
new-slots))
(sb-mop:ensure-class 'mp-Rul-NegateCharClass :direct-slots new-slots))

;; method emit
(if (not (ignore-errors (find-method 'sv-emit () ())))
  (defgeneric sv-emit (sv-self)
      (:documentation "a method")))
(defmethod sv-emit ((sv-self mp-Rul-NegateCharClass))
  (block mp6-function
    (progn (mp-Main::sv-say (list "TODO NegateCharClass"))(progn (write-line (format nil "~{~a~}" (list )) *error-output*) (sb-ext:quit)))))

(defmethod sv-perl ((self mp-Rul-NegateCharClass))
  (mp-Main::sv-lisp_dump_object "::Rul::NegateCharClass" (list (let ((m (make-instance 'mp-Pair))) (setf (sv-key m) "chars") (setf (sv-value m) (sv-chars self)) m) )))




;; class Rul::CharClass
(defpackage mp-Rul-CharClass
  (:use common-lisp mp-Main))
;; (in-package mp-Rul-CharClass)
(if (not (ignore-errors (find-class 'mp-Rul-CharClass)))
  (defclass mp-Rul-CharClass () ()))

(let (x) 
  (setq x (make-instance 'mp-Rul-CharClass))
  (defun proto-mp-Rul-CharClass () x))
;; has $.chars
(let ((new-slots (list (list :name 'sv-chars
  :readers '(sv-chars)
  :writers '((setf sv-chars))
  :initform '(sv-undef)
  :initfunction (constantly (sv-undef))))))
(dolist (slot-defn (sb-mop:class-direct-slots (find-class 'mp-Rul-CharClass)))
(push (list :name (sb-mop:slot-definition-name slot-defn)
  :readers (sb-mop:slot-definition-readers slot-defn)
  :writers (sb-mop:slot-definition-writers slot-defn)
  :initform (sb-mop:slot-definition-initform slot-defn)
  :initfunction (sb-mop:slot-definition-initfunction slot-defn))
new-slots))
(sb-mop:ensure-class 'mp-Rul-CharClass :direct-slots new-slots))

;; method emit
(if (not (ignore-errors (find-method 'sv-emit () ())))
  (defgeneric sv-emit (sv-self)
      (:documentation "a method")))
(defmethod sv-emit ((sv-self mp-Rul-CharClass))
  (block mp6-function
    (progn (mp-Main::sv-say (list "TODO CharClass"))(progn (write-line (format nil "~{~a~}" (list )) *error-output*) (sb-ext:quit)))))

(defmethod sv-perl ((self mp-Rul-CharClass))
  (mp-Main::sv-lisp_dump_object "::Rul::CharClass" (list (let ((m (make-instance 'mp-Pair))) (setf (sv-key m) "chars") (setf (sv-value m) (sv-chars self)) m) )))




;; class Rul::Capture
(defpackage mp-Rul-Capture
  (:use common-lisp mp-Main))
;; (in-package mp-Rul-Capture)
(if (not (ignore-errors (find-class 'mp-Rul-Capture)))
  (defclass mp-Rul-Capture () ()))

(let (x) 
  (setq x (make-instance 'mp-Rul-Capture))
  (defun proto-mp-Rul-Capture () x))
;; has $.rule_exp
(let ((new-slots (list (list :name 'sv-rule_exp
  :readers '(sv-rule_exp)
  :writers '((setf sv-rule_exp))
  :initform '(sv-undef)
  :initfunction (constantly (sv-undef))))))
(dolist (slot-defn (sb-mop:class-direct-slots (find-class 'mp-Rul-Capture)))
(push (list :name (sb-mop:slot-definition-name slot-defn)
  :readers (sb-mop:slot-definition-readers slot-defn)
  :writers (sb-mop:slot-definition-writers slot-defn)
  :initform (sb-mop:slot-definition-initform slot-defn)
  :initfunction (sb-mop:slot-definition-initfunction slot-defn))
new-slots))
(sb-mop:ensure-class 'mp-Rul-Capture :direct-slots new-slots))

;; method emit
(if (not (ignore-errors (find-method 'sv-emit () ())))
  (defgeneric sv-emit (sv-self)
      (:documentation "a method")))
(defmethod sv-emit ((sv-self mp-Rul-Capture))
  (block mp6-function
    (progn (mp-Main::sv-say (list "TODO RulCapture"))(progn (write-line (format nil "~{~a~}" (list )) *error-output*) (sb-ext:quit)))))

(defmethod sv-perl ((self mp-Rul-Capture))
  (mp-Main::sv-lisp_dump_object "::Rul::Capture" (list (let ((m (make-instance 'mp-Pair))) (setf (sv-key m) "rule_exp") (setf (sv-value m) (sv-rule_exp self)) m) )))




;; class Rul::CaptureResult
(defpackage mp-Rul-CaptureResult
  (:use common-lisp mp-Main))
;; (in-package mp-Rul-CaptureResult)
(if (not (ignore-errors (find-class 'mp-Rul-CaptureResult)))
  (defclass mp-Rul-CaptureResult () ()))

(let (x) 
  (setq x (make-instance 'mp-Rul-CaptureResult))
  (defun proto-mp-Rul-CaptureResult () x))
;; has $.rule_exp
(let ((new-slots (list (list :name 'sv-rule_exp
  :readers '(sv-rule_exp)
  :writers '((setf sv-rule_exp))
  :initform '(sv-undef)
  :initfunction (constantly (sv-undef))))))
(dolist (slot-defn (sb-mop:class-direct-slots (find-class 'mp-Rul-CaptureResult)))
(push (list :name (sb-mop:slot-definition-name slot-defn)
  :readers (sb-mop:slot-definition-readers slot-defn)
  :writers (sb-mop:slot-definition-writers slot-defn)
  :initform (sb-mop:slot-definition-initform slot-defn)
  :initfunction (sb-mop:slot-definition-initfunction slot-defn))
new-slots))
(sb-mop:ensure-class 'mp-Rul-CaptureResult :direct-slots new-slots))

;; method emit
(if (not (ignore-errors (find-method 'sv-emit () ())))
  (defgeneric sv-emit (sv-self)
      (:documentation "a method")))
(defmethod sv-emit ((sv-self mp-Rul-CaptureResult))
  (block mp6-function
    (progn (mp-Main::sv-say (list "TODO Rul::CaptureResult"))(progn (write-line (format nil "~{~a~}" (list )) *error-output*) (sb-ext:quit)))))

(defmethod sv-perl ((self mp-Rul-CaptureResult))
  (mp-Main::sv-lisp_dump_object "::Rul::CaptureResult" (list (let ((m (make-instance 'mp-Pair))) (setf (sv-key m) "rule_exp") (setf (sv-value m) (sv-rule_exp self)) m) )))




;; class Rul::After
(defpackage mp-Rul-After
  (:use common-lisp mp-Main))
;; (in-package mp-Rul-After)
(if (not (ignore-errors (find-class 'mp-Rul-After)))
  (defclass mp-Rul-After () ()))

(let (x) 
  (setq x (make-instance 'mp-Rul-After))
  (defun proto-mp-Rul-After () x))
;; has $.rule_exp
(let ((new-slots (list (list :name 'sv-rule_exp
  :readers '(sv-rule_exp)
  :writers '((setf sv-rule_exp))
  :initform '(sv-undef)
  :initfunction (constantly (sv-undef))))))
(dolist (slot-defn (sb-mop:class-direct-slots (find-class 'mp-Rul-After)))
(push (list :name (sb-mop:slot-definition-name slot-defn)
  :readers (sb-mop:slot-definition-readers slot-defn)
  :writers (sb-mop:slot-definition-writers slot-defn)
  :initform (sb-mop:slot-definition-initform slot-defn)
  :initfunction (sb-mop:slot-definition-initfunction slot-defn))
new-slots))
(sb-mop:ensure-class 'mp-Rul-After :direct-slots new-slots))

;; method emit
(if (not (ignore-errors (find-method 'sv-emit () ())))
  (defgeneric sv-emit (sv-self)
      (:documentation "a method")))
(defmethod sv-emit ((sv-self mp-Rul-After))
  (block mp6-function
    (progn (mp-Main::sv-say (list "TODO Rul::After"))(progn (write-line (format nil "~{~a~}" (list )) *error-output*) (sb-ext:quit)))))

(defmethod sv-perl ((self mp-Rul-After))
  (mp-Main::sv-lisp_dump_object "::Rul::After" (list (let ((m (make-instance 'mp-Pair))) (setf (sv-key m) "rule_exp") (setf (sv-value m) (sv-rule_exp self)) m) )))




