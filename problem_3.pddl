(define (problem cleaning-test-case-3)
  (:domain cleaning-domain)
  (:objects
    o1 o2 o3 o4 o5 o6 o7 o8 o9 - office
    boxA boxB boxC boxD - box  ; 4 boxes test
  )
  (:init
    (robot-location o4)
    (box-location boxA o5)  ; Box A is in o5
    (box-location boxB o6)  ; Box B is in o6
    (box-location boxC o2)  ; Box C is in o2
    (box-location boxD o3)  ; Box D is in o3
    (dirty o1) (dirty o2) (dirty o3) (dirty o4) (dirty o5) (dirty o6) (dirty o7) (dirty o8) (dirty o9)
    (empty o1) (empty o7) (empty o8) (empty o9)  ; rooms without boxes
    ; Adjacent relations 
    (adjacent o1 o2) (adjacent o1 o4)
    (adjacent o2 o1) (adjacent o2 o3) (adjacent o2 o5)
    (adjacent o3 o2) (adjacent o3 o6)
    (adjacent o4 o1) (adjacent o4 o5) (adjacent o4 o7)
    (adjacent o5 o2) (adjacent o5 o4) (adjacent o5 o6) (adjacent o5 o8)
    (adjacent o6 o3) (adjacent o6 o5) (adjacent o6 o9)
    (adjacent o7 o4) (adjacent o7 o8)
    (adjacent o8 o5) (adjacent o8 o7) (adjacent o8 o9)
    (adjacent o9 o6) (adjacent o9 o8)
  )
  (:goal
    (and
      (robot-location o9)
      (box-location boxA o5)  ; Box A target location
      (box-location boxB o8)  ; Box B target location
      (box-location boxC o1)  ; Box C target location
      (box-location boxD o9)  ; Box D target location
    )
  )
)
