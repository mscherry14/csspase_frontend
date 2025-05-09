enum StatusEnum {
  waiting("waiting"),
  rejected("rejected"),
  completed("completed");

  final String text;

  const StatusEnum(this.text);
}