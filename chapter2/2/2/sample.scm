					; ‚¢‚ë‚¢‚ë—ûK
(car (cons 1 2))

(cdr (cons 1 2))

(define y (cons (cons 1 2) (cons 3 4)))
y
(cdr y)
(car (cdr y))

(define 1-through-4 (list 1 2 3 4))
1-through-4

(car 1-through-4)
; 3‚ğ•Ô‚·
(car (cdr (cdr 1-through-4)))

(pair? (cons 1 2))
(pair? (cons (cons 1 2) (cons 3 4)))
(pair? 1)

(null? )

(define (fee age)
  (cond
   ((or (<= age 3) (>= age 65)) 0)
   ((<= 4 age 6) 50)
   ((<= 7 age 12) 100)
   ((<= 13 age 15) 150)
   ((<= 16 age 18) 180)
   (else 200)))(define (fee age)
  (cond
   ((or (<= age 3) (>= age 65)) 0)
   ((<= 4 age 6) 50)
   ((<= 7 age 12) 100)
   ((<= 13 age 15) 150)
   ((<= 16 age 18) 180)
   (else 200)))

(fee 50)


(define (scale-tree tree factor)
  (cond ((null? tree) nil)
        ((not (pair? tree)) (* tree factor))
        (else (cons (scale-tree (car tree) factor)
                    (scale-tree (cdr tree) factor)))))

(scale-tree (list 1 (list 2 (list 3 4) 5) (list 6 7))
            10)
(10 (20 (30 40) 50) (60 70))
