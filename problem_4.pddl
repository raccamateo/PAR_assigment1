(define (problem cleaning-test-case-4)
  (:domain cleaning-domain)
  (:objects
    o1 o2 o3 o4 o5 o6 o7 o8 o9 - office
    boxA boxB boxC boxD boxE boxF - box  ; 6 boxes tes
  )
  (:init
    (robot-location o4)
    (box-location boxA o5)  ; Box A is in o5
    (box-location boxB o6)  ; Box B is in o6
    (box-location boxC o2)  ; Box C is in o2
    (box-location boxD o3)  ; Box D is in o3
    (box-location boxE o1)  ; Box E is in o1
    (box-location boxF o9)  ; Box F is in o9
    (dirty o1) (dirty o2) (dirty o3) (dirty o4) (dirty o5) (dirty o6) (dirty o7) (dirty o8) (dirty o9)
    (empty o4) (empty o7) (empty o8) ; rooms without boxes
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
      (robot-location o7)
      (box-location boxA o5)  ; Adjusted boxA location
      (box-location boxB o8)  ; Adjusted boxB location
      (box-location boxC o2)  ; Box C location
      (box-location boxD o3)  ; Box D location
      (box-location boxE o1)  ; Box E location
      (box-location boxF o4)  ; Box F location
    )
  )
)