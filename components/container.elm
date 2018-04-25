module Container exposing (..)

import Model exposing (Model)
import Msg exposing (Msg(..))
import Html exposing (Html, text, div)
import Checkbox exposing (checkbox)

container : Model -> Html Msg
container model = div []
  [checkbox model.tncCheckbox ToggleTNC
  , checkbox model.marketingCheckbox ToggleMarketing
  ]
