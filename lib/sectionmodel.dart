class SectionInfo {
  late String price;
  SectionInfo.fromMap(Map<String, String> sectionInfoMap) {
    price = sectionInfoMap["price"]!;
  }
}
