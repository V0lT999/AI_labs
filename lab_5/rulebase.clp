;; ����������� ������� �������� �������� ��� �������� 3x3
(deftemplate Field
 (slot s11 (type NUMBER))
 (slot s12 (type NUMBER))
 (slot s13 (type NUMBER))
 (slot s21 (type NUMBER))
 (slot s22 (type NUMBER))
 (slot s23 (type NUMBER))
 (slot s31 (type NUMBER))
 (slot s32 (type NUMBER))
 (slot s33 (type NUMBER))
 (slot Level(type NUMBER)) ; ������� ������
 (slot Id (type NUMBER)(default 0)) ; ���������� ����� �������
 (slot State(type NUMBER)(default 0)) ; �������������� ������ �����
 (slot From (type NUMBER)) ; ����� ������� ��������
 (slot Exp (type NUMBER)) ; �������� ������� �������
)
;; ����������� ���������� ����������
(defglobal
 ?*Id* = 0
)
;; ������� ���������� ����������� �������������� �������� ���������
(deffunction Get_Id()
 (bind ?*Id* (+ ?*Id* 1))
 ?*Id*
)
;; ������� �������
(deffunction W(?Level ?s11 ?s12 ?s13 ?s21 ?s23 ?s31 ?s32 ?s33)
 (bind ?a ?Level)
 (if (not (= ?s11 1)) then (bind ?a (+ 1 ?a)) )
 (if (not (= ?s12 2)) then (bind ?a (+ 1 ?a)) )
 (if (not (= ?s13 3)) then (bind ?a (+ 1 ?a)) )
 (if (not (= ?s21 4)) then (bind ?a (+ 1 ?a)) )
 (if (not (= ?s23 5)) then (bind ?a (+ 1 ?a)) )
 (if (not (= ?s31 6)) then (bind ?a (+ 1 ?a)) )
 (if (not (= ?s32 7)) then (bind ?a (+ 1 ?a)) )
 (if (not (= ?s33 8)) then (bind ?a (+ 1 ?a))
 ?a
)
;; ������� ��������� ���������
(deffacts start
 (Field (s11 0) (s12 4) (s13 3) ; �������� ���������
 (s21 6) (s22 2) (s23 1) ; ����� �� �������
 (s31 7) (s32 5) (s33 8) ; ����
 (Level 0) ; ��� ������ ������
 (From 0)
 (Exp (W 0 0 4 3 6 1 7 5 8)) ; �������� ��������� �������
 (Id (Get_Id)) ; ���������� ����� �������
 )
 (min (W 0 0 4 3 6 1 7 5 8))
)
)
(defrule del_no_min_nodes
 (declare (salience 160))
 ?fmin <- (min ?min)
 ?node <- (Field (Exp ?E&:(> ?E ?min)) (State 0))
 =>
 (retract ?node)
 ;(printout t "del_no_min_nodes" ?node crlf)
)
;; ���� ������� �������, �� �������� ���
(defrule start_select_answer
 (declare (salience 500))
 ?f <-(Field (s11 1) (s12 2) (s13 3)
 (s21 4) (s22 0) (s23 5)
 (s31 6) (s32 7) (s33 8)
 (State ~2) (From ?Id) )
 =>
 (printout t "start select answer Id-" (fact-slot-value ?f Id) crlf)
 (modify ?f (State 2))
)
;; �������� ��� ������� ������ �������, ���������� �� State=2
(defrule select_answer
 (declare (salience 500))
 (Field (State 2) (From ?Id))
 ?f <- (Field (Id ?Id) (State ~2))
 =>
 (modify ?f (State 2))
 (printout t "select answer Id=" ?Id " - " ?f crlf)
)
;; ������� ���������
(defrule delete_not_answer
 (declare (salience 400))
 (Field (State 2))
 ?f <- (Field (State ~2))
 =>
 (retract ?f)
 (printout t "delete not answer" crlf)
)
;; ������ ������� ���� ������� ���
(defrule Stop_l
 (declare (salience 200))
 (Field(State ?x))
 (not (Field(State 0|2)))
 =>
(halt)
 (printout t "==> No Solutions" crlf)
)
;; ������ ������� ���� ������� ����
(defrule Stop_2
 (declare (salience 200))
 (Field(State 2))
 =>
 (facts)
 (halt)
 (printout t "==> Solution is Ok!" crlf)
)