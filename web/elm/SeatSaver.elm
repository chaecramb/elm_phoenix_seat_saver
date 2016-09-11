module SeatSaver exposing (..)

import Html

main =
  view init

-- Model

type alias Seat =
  { seatNo : Into
  , occupied : Bool
  }


type alias Model =
  List Seat


init =
  [ { seatNo = 1, occupied = False }
  , { seatNo = 2, occupied = False }
  , { seatNo = 3, occupied = False }
  , { seatNo = 4, occupied = False }
  , { seatNo = 5, occupied = False }
  , { seatNo = 6, occupied = False }
  , { seatNo = 7, occupied = False }
  , { seatNo = 8, occupied = False }
  , { seatNo = 9, occupied = False }
  , { seatNo = 10, occupied = False }
  , { seatNo = 11, occupied = False }
  , { seatNo = 12, occupied = False }
  ]
  

-- View

view =
  Html.text "Woohoo, I'm in a View"
