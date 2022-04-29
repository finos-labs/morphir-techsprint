module Finos.Labs.Morphir.Techsprint.Rule exposing (..)

import Morphir.SDK.LocalDate exposing (LocalDate)
import Morphir.SDK.LocalTime exposing (LocalTime)
import Com.Rosetta.Model.Type exposing (ZonedDateTime)
import Com.Rosetta.Model.Type exposing (Date)

import Finos.Labs.Morphir.Techsprint.Enum as Enum
import Finos.Labs.Morphir.Techsprint.Enum exposing (EventTimestampQualificationEnum)
import Finos.Labs.Morphir.Techsprint.Type exposing (ReportableEvent)
import Finos.Labs.Morphir.Techsprint.Type exposing (WorkflowStep)
import Finos.Labs.Morphir.Techsprint.Type exposing (EventTimestamp)
import Finos.Labs.Morphir.Techsprint.Type exposing (TradeState)
import Finos.Labs.Morphir.Techsprint.Type exposing (Trade)
import Finos.Labs.Morphir.Techsprint.Type exposing (CFTCPart45TransactionReport)
-- This file is auto-generated from the ISDA Common Domain Model, do not edit.
-- Version: ${project.version}

cFTCPart45TransactionReport : ReportableEvent -> CFTCPart45TransactionReport
cFTCPart45TransactionReport reportableEvent =
	{ 	tradeDate = tradeDate reportableEvent
	, 	eventTimestamp = eventTimestamp reportableEvent
	}

eventTimestamp : ReportableEvent -> Maybe ZonedDateTime
eventTimestamp reportableEvent =
	reportableEvent.originatingWorkflowStep.timestamp
	|> List.filter
		(\ item -> item.qualification == Enum.EventCreationDateTime
		)
	|> List.map
		(\ item -> item.dateTime
		)
	|> onlyElement
		
tradeDate : ReportableEvent -> Date
tradeDate reportableEvent =
	reportableEvent.reportableTrade.trade.tradeDate
		
		


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
