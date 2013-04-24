(define (cuberoot-iter guess x)
  (if (good-enough? guess x)
      guess
      (cuberoot-iter (improve guess x) x)))

(define (cube x) (* x x x))

(define (improve guess x)
  (/ (+ (* 2 guess) (/ x (* guess guess))) 3))

(define (good-enough? guess x)
  (< (abs (/ (- (cube guess) x) x)) 0.001))

(define (cuberoot x)
  (cuberoot-iter 1.0 x))

(cuberoot 27)