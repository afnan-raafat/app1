class myValid {
  String? nameValid(String? input) {
    if ((input?.toLowerCase().startsWith("afnan")??false) && (input?.length??0) > 4) {
      return null;
    }
    return "invalid name";
  }
}
