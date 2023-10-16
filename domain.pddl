(define (domain cleaning-domain)
  (:requirements :strips :typing)
  (:types office box - object)
  (:predicates
    (robot-location ?o - office)
    (box-location ?b - box ?o - office)
    (dirty ?o - office)
    (clean ?o - office)
    (empty ?o - office)
    (adjacent ?from - office ?to - office) ; New predicate
  )
  ; Define adjacent relation for simplicity (edit as per your scenario)
  (:action set-adjacent
    :parameters (?from - office ?to - office)
    :precondition (not (adjacent ?from ?to))
    :effect (adjacent ?from ?to)
  )
  (:action clean-office
    :parameters (?o - office)
    :precondition (and
      (robot-location ?o)
      (dirty ?o)
    )
    :effect (and
      (clean ?o)
      (not (dirty ?o))
    )
  )
  (:action move
    :parameters (?from - office ?to - office)
    :precondition (and
      (robot-location ?from)
      (adjacent ?from ?to)
      (empty ?to)
    )
    :effect (and
      (robot-location ?to)
      (not (robot-location ?from))
    )
  )
  (:action push
    :parameters (?b - box ?from - office ?to - office)
    :precondition (and
      (box-location ?b ?from)
      (adjacent ?from ?to)
      (empty ?to)
    )
    :effect (and
      (box-location ?b ?to)
      (not (box-location ?b ?from))
      (robot-location ?to) ; Robot moves when pushing the box
      (not (robot-location ?from))
    )
  )
)

