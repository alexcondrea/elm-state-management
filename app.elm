module App exposing (update, view, subscriptions, init)

{-| This library fills a bunch of important niches in Elm. A `Maybe` can help
you with optional arguments, error handling, and records with optional fields.

# Definition
@docs update, view, subscriptions, init

-}

import Html exposing (..)
import Model exposing (Model)
import Msg exposing (Msg(ToggleTNC, ToggleMarketing))
import Container exposing (container)

main : Program Never Model Msg
main =
    Html.program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
    }

{-| TODO: Make this a real comment

    update
-}
update : Msg -> Model -> (Model, Cmd Msg)
update msg model = (
    case msg of
        ToggleTNC ->
            { model | tncCheckbox = { label = model.tncCheckbox.label, value = not model.tncCheckbox.value } }
        ToggleMarketing ->
            { model | marketingCheckbox = { label = model.marketingCheckbox.label, value = not model.marketingCheckbox.value } }
    , Cmd.none)

{-| TODO: Make this a real comment

    view
-}
view : Model -> Html Msg
view model =
    div []
        [ container model ]

{-| TODO: Make this a real comment

    subscriptions
-}
subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none

initModel : Model
initModel =
    { tncCheckbox = {label = "Accept terms!", value = False }
    , marketingCheckbox = {label = "Send me Ads!", value = True }
    }

{-| TODO: Make this a real comment

    init
-}
init : (Model, Cmd Msg)
init =
    ( initModel
    , Cmd.none
    )
