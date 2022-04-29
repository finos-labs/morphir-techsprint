module Com.Rosetta.Model.Rule exposing (..)

import Morphir.SDK.LocalDate exposing (LocalDate)
import Morphir.SDK.LocalTime exposing (LocalTime)
import Com.Rosetta.Model.Type exposing (ZonedDateTime)
import Com.Rosetta.Model.Type exposing (Date)

-- This file is auto-generated from the ISDA Common Domain Model, do not edit.
-- Version: ${project.version}



onlyElement : List a -> Maybe a
onlyElement list =
    case list of
        [ a ] ->
            Just a

        _ ->
            Nothing
            
flatten : List (List a) -> List a
flatten =
    List.foldr (++) []
