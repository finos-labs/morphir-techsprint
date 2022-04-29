package morphir

import morphir.sdk.LocalDate
import morphir.techsprint.minimal.BasicTypes.{Date, ZonedDateTime}
import morphir.techsprint.minimal.Enum.EventTimestampQualificationEnum.EventCreationDateTime
import morphir.techsprint.minimal.Rule
import morphir.techsprint.minimal.Type.{EventTimestamp, ReportableEvent, Trade, TradeState, WorkflowStep}

object App {
  def main(args: Array[String]): Unit = {
    val localDate = java.time.LocalDate.now()
    val localTime = java.time.LocalTime.now()
    val zone = "UTC"
    val report = Rule.cFTCPart45TransactionReport(
      ReportableEvent(WorkflowStep(
        List(EventTimestamp(
          ZonedDateTime(localDate, localTime, zone),
          EventCreationDateTime)
        )),
        TradeState(Trade(Date(23, 1, 2020)))
      )
    )

    println(report)
  }
}
