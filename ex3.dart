class CustomDuration {
  final int milliseconds;


  CustomDuration.fromHours(int hours)
      : milliseconds = hours * 3600000;


  CustomDuration.fromMinutes(int minutes)
      : milliseconds = minutes * 60000;


  CustomDuration.fromSeconds(int seconds)
      : milliseconds = seconds * 1000;

  bool operator >(CustomDuration other) => milliseconds > other.milliseconds;


  CustomDuration operator +(CustomDuration other) =>
      CustomDuration.fromMilliseconds(milliseconds + other.milliseconds);
      
  CustomDuration operator -(CustomDuration other) {
    if (milliseconds < other.milliseconds) {
      throw Exception("Duration cannot be negative.");
    }
    return CustomDuration.fromMilliseconds(milliseconds - other.milliseconds);
  }

  CustomDuration.fromMilliseconds(this.milliseconds);
}