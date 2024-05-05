class StudenModel {
  String name;
  int bce;
  String week;
  int status;
  bool onSheet;
  bool onWhatsap;
  bool onBackup;
  DateTime created;
  StudenModel({
    required this.name,
    required this.bce,
    required this.week,
    required this.created,
    this.status = 2,
    this.onBackup = false,
    this.onSheet = false,
    this.onWhatsap = false,
  });
}

List statusList = ["Fail", "Pass", "todo"];
