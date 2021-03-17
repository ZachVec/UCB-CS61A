(define (split-at lst n)
  (cond ((null? lst) (cons nil nil))
        ((= 0 n) (cons nil lst))
        (else (let ((res (split-at (cdr lst) (- n 1)))) 
          (cons (cons (car lst) (car res)) (cdr res))
        )) 
  )
)


(define (compose-all funcs)
  (if (null? funcs) (lambda (x) x)
      (let ((func (compose-all (cdr funcs))))
        (lambda (x) (func ((car funcs) x)))
      )
  )
)

