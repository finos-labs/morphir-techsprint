package morphir.techsprint.minimal

/** Generated based on Minimal.Type
*/
object Type{

  final case class EventTimestamp(
    dateTime: morphir.techsprint.minimal.BasicTypes.ZonedDateTime,
    qualification: morphir.techsprint.minimal.Enum.EventTimestampQualificationEnum
  ){}
  
  final case class ReportableEvent(
    originatingWorkflowStep: morphir.techsprint.minimal.Type.WorkflowStep,
    reportableTrade: morphir.techsprint.minimal.Type.TradeState
  ){}
  
  final case class Trade(
    tradeDate: morphir.techsprint.minimal.BasicTypes.Date
  ){}
  
  final case class TradeState(
    trade: morphir.techsprint.minimal.Type.Trade
  ){}
  
  final case class WorkflowStep(
    timestamp: morphir.sdk.List.List[morphir.techsprint.minimal.Type.EventTimestamp]
  ){}

}