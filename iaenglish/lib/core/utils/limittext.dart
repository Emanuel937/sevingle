String limitedText(String text, {int max = 30}) {
  if (text.isEmpty) return "";
  if (text.length <= max) return text;

  return text.substring(0, max) + "...";
}
