package app

import morphir.techsprint.minimal.BasicTypes.{Date, ZonedDateTime}
import morphir.techsprint.minimal.Enum.EventTimestampQualificationEnum.EventCreationDateTime
import morphir.techsprint.minimal.Rule
import morphir.techsprint.minimal.Rule.CFTCPart45TransactionReport
import morphir.techsprint.minimal.Type.{EventTimestamp, ReportableEvent, Trade, TradeState, WorkflowStep}

object MinimalApplication extends cask.MainRoutes{

  @cask.getJson("/")
  def hello() = {
    val localDate = java.time.LocalDate.now()
    val localTime = java.time.LocalTime.now()
    val zone = "UTC"
    val input = List(
      ReportableEvent(WorkflowStep(
        List(EventTimestamp(
          ZonedDateTime(localDate, localTime, zone),
          EventCreationDateTime)
        )),
        TradeState(Trade(Date(10, 2, 2022)))
      ),
      ReportableEvent(WorkflowStep(
        List(EventTimestamp(
          ZonedDateTime(localDate, localTime, zone),
          EventCreationDateTime)
        )),
        TradeState(Trade(Date(15, 2, 2022)))
      ),
      ReportableEvent(WorkflowStep(
        List(EventTimestamp(
          ZonedDateTime(localDate, localTime, zone),
          EventCreationDateTime)
        )),
        TradeState(Trade(Date(20, 2, 2022)))
      ),
      ReportableEvent(WorkflowStep(
        List(EventTimestamp(
          ZonedDateTime(localDate, localTime, zone),
          EventCreationDateTime)
        )),
        TradeState(Trade(Date(10, 2, 2021)))
      )
    )

    ujson.Arr(doReport(input))
  }

  def doReport(input: List[ReportableEvent]): List[ujson.Value] = {
    input
      .map(Rule.cFTCPart45TransactionReport)
      .map(reportLine =>
        ujson.Obj(
          "tradeDate" -> ujson.Str(reportLine.tradeDate.toString),
          "eventTimestamp" ->
            reportLine.eventTimestamp
              .map(ts =>
                java.time.ZonedDateTime.of(ts.date, ts.time, java.time.ZoneId.of(ts.timezone)).toEpochSecond.toDouble
              ).map(ujson.Num).getOrElse(ujson.Null)
        )
      )
  }

  initialize()
}
