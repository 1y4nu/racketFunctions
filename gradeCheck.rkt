#lang htdp/bsl

; Using structures to create students and evaluate their grades.

(define-struct student(name grade))

(define student1 (make-student "Henry" 80))
(define student2 (make-student "Jake" 95))

(define (gradeCheck studentGrade)
  (cond
    [(and (>= studentGrade 80)(< studentGrade 90)) "A"]
    [(> studentGrade 90) "A+"]))

(check-expect(gradeCheck (student-grade student1)) "A")
(check-expect(gradeCheck (student-grade student2)) "A+")