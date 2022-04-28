package morphir.techsprint.minimal

/** Generated based on Minimal.Rule
*/
object Rule{

  final case class CFTCPart45TransactionReport(
    tradeDate: morphir.techsprint.minimal.BasicTypes.Date,
    eventTimestamp: morphir.sdk.Maybe.Maybe[morphir.techsprint.minimal.BasicTypes.ZonedDateTime]
  ){}
  
  def cFTCPart45TransactionReport(
    reportableEvent: morphir.techsprint.minimal.Type.ReportableEvent
  ): morphir.techsprint.minimal.Rule.CFTCPart45TransactionReport =
    morphir.techsprint.minimal.Rule.CFTCPart45TransactionReport(
      tradeDate = morphir.techsprint.minimal.Rule.tradeDate(reportableEvent),
      eventTimestamp = morphir.techsprint.minimal.Rule.eventTimestamp(reportableEvent)
    )
  
  def eventTimestamp(
    reportableEvent: morphir.techsprint.minimal.Type.ReportableEvent
  ): morphir.sdk.Maybe.Maybe[morphir.techsprint.minimal.BasicTypes.ZonedDateTime] =
    morphir.techsprint.minimal.Rule.onlyElement(morphir.sdk.List.map((item: morphir.techsprint.minimal.Type.EventTimestamp) =>
      item.dateTime)(morphir.sdk.List.filter((item: morphir.techsprint.minimal.Type.EventTimestamp) =>
      morphir.sdk.Basics.equal(item.qualification)(morphir.techsprint.minimal.Enum.EventCreationDateTime))(reportableEvent.originatingWorkflowStep.timestamp)))
  
  def onlyElement[A](
    list: morphir.sdk.List.List[A]
  ): morphir.sdk.Maybe.Maybe[A] =
    list match {
      case a :: Nil => 
        morphir.sdk.Maybe.Just(a)
      case _ => 
        morphir.sdk.Maybe.Nothing
    }
  
  def tradeDate(
    reportableEvent: morphir.techsprint.minimal.Type.ReportableEvent
  ): morphir.techsprint.minimal.BasicTypes.Date =
    reportableEvent.reportableTrade.trade.tradeDate

}