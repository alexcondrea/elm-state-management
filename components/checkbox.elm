module Checkbox exposing (..)

{-| This library fills a bunch of important niches in Elm. A `Maybe` can help
you with optional arguments, error handling, and records with optional fields.

# Definition
@docs update, view, subscriptions, init

-}

import Msg exposing (Msg)
import Html exposing (Html, input, text, label)
import Html.Attributes exposing (style, checked, type_)
import Html.Events exposing (onClick)

{-| TODO: Make this a real comment

    Model
-}
type alias CheckboxModel =
    { label : String
    , value: Bool
    }

checkbox : CheckboxModel -> Msg -> Html Msg
checkbox model msg =
  label
    [ style [("padding", "20px")]
    ]
    [ input [ type_ "checkbox", checked model.value, onClick msg ] []
    , text model.label
    ]
