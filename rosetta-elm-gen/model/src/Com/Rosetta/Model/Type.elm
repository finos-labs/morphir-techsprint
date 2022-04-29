module Com.Rosetta.Model.Type exposing (..)
import Morphir.SDK.LocalTime exposing (LocalTime)

type alias Date =
    { day : Int
    , month : Int
    , year : Int
    }

type alias ZonedDateTime =
    { date : Date
    , time : LocalTime
    , timezone : String
    }