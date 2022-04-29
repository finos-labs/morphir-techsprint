package morphir.techsprint.minimal

/** Generated based on Minimal.BasicTypes
*/
object BasicTypes{

  final case class Date(
    day: morphir.sdk.Basics.Int,
    month: morphir.sdk.Basics.Int,
    year: morphir.sdk.Basics.Int
  ){}
  
  final case class ZonedDateTime(
    date: morphir.sdk.LocalDate.LocalDate,
    time: morphir.sdk.LocalTime.LocalTime,
    timezone: morphir.sdk.String.String
  ){}

}