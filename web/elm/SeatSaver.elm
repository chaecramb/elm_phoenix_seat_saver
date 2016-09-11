module SeatSaver exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class)
import Html.App as Html

main : Program Never
main =
  Html.beginnerProgram
    { model = init
    , update = update
    , view = view
    }


-- Model

type alias Seat =
  { seatNo : Int
  , occupied : Bool
  }


type alias Model =
  List Seat


init : Model
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
  

-- Update

type Msg = Toggle Seat

update : Msg -> Model -> Model
update msg model =
  case msg of
    Toggle seatToToggle ->
      let updateSeat seatFromModel =
        if seatFromModel.seatNo == seatToToggle.seatNo then 
          { seatFromModel | occupied = not seatFromModel.occupied }
        else seatFromModel
      in 
        List.map updateSeat model


-- View

view : Model -> Html String
view model =
  ul [ class "seats" ] (List.map seatItem model)


seatItem : Seat -> Html String
seatItem seat = 
  li [ class "seat available" ] [text (toString seat.seatNo)]

