module Finos.Labs.Morphir.Techsprint.Rule exposing (..)

import Morphir.SDK.LocalDate exposing (LocalDate)
import Morphir.SDK.LocalTime exposing (LocalTime)
import Com.Rosetta.Model.Type exposing (ZonedDateTime)
import Com.Rosetta.Model.Type exposing (Date)

import Finos.Labs.Morphir.Techsprint.Enum as Enum
import Finos.Labs.Morphir.Techsprint.Enum exposing (TradeIdentifierTypeEnum)
import Finos.Labs.Morphir.Techsprint.Enum exposing (PartyRoleEnum)
import Finos.Labs.Morphir.Techsprint.Enum exposing (RegimeNameEnum)
import Finos.Labs.Morphir.Techsprint.Enum exposing (SupervisoryBodyEnum)
import Finos.Labs.Morphir.Techsprint.Enum exposing (ExecutionVenueTypeEnum)
import Finos.Labs.Morphir.Techsprint.Enum exposing (ReportingRoleEnum)
import Finos.Labs.Morphir.Techsprint.Enum exposing (OrganizationCharacteristicEnum)
import Finos.Labs.Morphir.Techsprint.Enum exposing (TransactionCharacteristicEnum)
import Finos.Labs.Morphir.Techsprint.Enum exposing (ClearingExceptionReasonEnum)
import Finos.Labs.Morphir.Techsprint.Enum exposing (CreditDocumentEnum)
import Finos.Labs.Morphir.Techsprint.Enum exposing (NatureOfPartyEnum)
import Finos.Labs.Morphir.Techsprint.Enum exposing (FinancialSectorEnum)
import Finos.Labs.Morphir.Techsprint.Enum exposing (NonFinancialSectorEnum)
import Finos.Labs.Morphir.Techsprint.Enum exposing (SECEntityClassificationEnum)
import Finos.Labs.Morphir.Techsprint.Enum exposing (EventTimestampQualificationEnum)
import Finos.Labs.Morphir.Techsprint.Enum exposing (CategoryEnum)
import Finos.Labs.Morphir.Techsprint.Enum exposing (NaturalPersonRoleEnum)
import Finos.Labs.Morphir.Techsprint.Enum exposing (GoverningLawEnum)
import Finos.Labs.Morphir.Techsprint.Type exposing (ReportableEvent)
import Finos.Labs.Morphir.Techsprint.Type exposing (WorkflowStep)
import Finos.Labs.Morphir.Techsprint.Type exposing (MessageInformation)
import Finos.Labs.Morphir.Techsprint.Type exposing (EventTimestamp)
import Finos.Labs.Morphir.Techsprint.Type exposing (BusinessEvent)
import Finos.Labs.Morphir.Techsprint.Type exposing (Instruction)
import Finos.Labs.Morphir.Techsprint.Type exposing (PrimitiveInstruction)
import Finos.Labs.Morphir.Techsprint.Type exposing (TradeState)
import Finos.Labs.Morphir.Techsprint.Type exposing (Trade)
import Finos.Labs.Morphir.Techsprint.Type exposing (Identifier)
import Finos.Labs.Morphir.Techsprint.Type exposing (Party)
import Finos.Labs.Morphir.Techsprint.Type exposing (NaturalPerson)
import Finos.Labs.Morphir.Techsprint.Type exposing (AssignedIdentifier)
import Finos.Labs.Morphir.Techsprint.Type exposing (PartyRole)
import Finos.Labs.Morphir.Techsprint.Type exposing (ReportableInformation)
import Finos.Labs.Morphir.Techsprint.Type exposing (RegulatorApplicability)
import Finos.Labs.Morphir.Techsprint.Type exposing (PartyInformation)
import Finos.Labs.Morphir.Techsprint.Type exposing (RelatedParty)
import Finos.Labs.Morphir.Techsprint.Type exposing (CFTCPartyInformation)
import Finos.Labs.Morphir.Techsprint.Type exposing (ClearingException)
import Finos.Labs.Morphir.Techsprint.Type exposing (ClearingExceptionDeclaration)
import Finos.Labs.Morphir.Techsprint.Type exposing (ESMAPartyInformation)
import Finos.Labs.Morphir.Techsprint.Type exposing (CorporateSector)
import Finos.Labs.Morphir.Techsprint.Type exposing (NonFinancialSector)
import Finos.Labs.Morphir.Techsprint.Type exposing (SECPartyInformation)
import Finos.Labs.Morphir.Techsprint.Type exposing (ContractDetails)
import Finos.Labs.Morphir.Techsprint.Type exposing (PartyContractInformation)
import Finos.Labs.Morphir.Techsprint.Type exposing (NaturalPersonRole)
import Finos.Labs.Morphir.Techsprint.Type exposing (CFTCPart45TransactionReport)
-- This file is auto-generated from the ISDA Common Domain Model, do not edit.
-- Version: ${project.version}

cFTCPart45TransactionReport : ReportableEvent -> CFTCPart45TransactionReport
cFTCPart45TransactionReport reportableEvent =
	{ 	tradeDate = tradeDate reportableEvent
	, 	eventTimestamp = eventTimestamp reportableEvent
	}

tradeDate : ReportableEvent -> Date
tradeDate reportableEvent =
	reportableEvent.reportableTrade.trade.tradeDate
		
eventTimestamp : ReportableEvent -> ZonedDateTime
eventTimestamp reportableEvent =
	reportableEvent.originatingWorkflowStep.timestamp
		
		


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
