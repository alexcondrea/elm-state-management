module Model exposing (Model)

{-| TODO: Make this a real comment

    Model
-}

import Checkbox exposing (CheckboxModel)

type alias Model =
    { tncCheckbox : CheckboxModel
    , marketingCheckbox: CheckboxModel
    }
