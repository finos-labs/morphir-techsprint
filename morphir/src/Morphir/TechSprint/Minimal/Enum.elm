module Morphir.TechSprint.Minimal.Enum exposing (..)

{-| This module contains enumerations.
-}


{-| The enumeration values to qualify the timestamps that can be associated with a lifecycle event. The reason for such approach is that the experience of integrating the DTCC and CME data representations suggests that a wide set of timestamps are currently utilized among service providers, while there is not at present an objective set of criteria that could help suggest a defined set of timestamps as part of the CDM. Implementers are expected to evaluate the current enumeration values to determine whether those meet their requirements. If not, they are expected to engage with the CDM team to evaluate the addition of further value(s) to this enumeration, which will then participate to the development of a compendium for further evaluation at a later point in order to determine whether this modeling is appropriate.

    - ClearingDateTime: The date and time on the trade was cleared.
    - ClearingConfirmationDateTime: The date and time on which trade was confirmed as cleared.
    - ClearingSubmissionDateTime: The date and time on which the event was submitted for clearing.
    - EventCreationDateTime: The date and time on which the event was created.
    - EventExpirationDateTime: The date and time on which the event will be considered expired.
    - EventProcessingDateTime: The date and time on which the event was processed.
    - EventSentDateTime: The date and time on which the event was sent.
    - EventSubmittedDateTime: The date and time on which the event was submitted.
    - ExecutionDateTime: The date and time on which the trade execution was performed.
    - TransactionCreationDateTime: The date and time on which the transaction has been created. This timestamp is specified as such by the CME ClearPort Matched IRS Trade submission API specification: 'The transaction date time of the trade. Represents the date & time on which the trade was initially generated either by CME Clearing or firm. The transaction date time may be assigned by CME Clearing at the point the trade is reported as cleared. Transaction date time can also be provided by an external submitter of the trade at the point the trade is submitted.'

-}
type EventTimestampQualificationEnum
    = ClearingDateTime
    | ClearingConfirmationDateTime
    | ClearingSubmissionDateTime
    | EventCreationDateTime
    | EventExpirationDateTime
    | EventProcessingDateTime
    | EventSentDateTime
    | EventSubmittedDateTime
    | ExecutionDateTime
    | TransactionCreationDateTime
