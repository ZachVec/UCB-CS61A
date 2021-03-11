(define (cddr s)
  (cdr (cdr s)))

(define (cadr s)
  (car (cdr s))
)

(define (caddr s)
  (car (cddr s))
)


(define (sign num)
  (cond
    ((zero? num) 0) 
    ((> num 0) 1)
    (else -1)
  )
)


(define (square x) (* x x))

(define (pow x y)
  (cond 
    ((zero? y) 1)
    ((odd? y) (* x (pow x (- y 1))))
    (else (square (pow x (quotient y 2))))
  )
)

