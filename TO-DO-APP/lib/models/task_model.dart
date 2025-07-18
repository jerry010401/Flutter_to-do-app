class Task {
  final String title;
  final DateTime dateTime;

  Task({required this.title, required this.dateTime});

  Map<String, dynamic> toJson() => {
        'title': title,
        'dateTime': dateTime.toIso8601String(),
      };

  factory Task.fromJson(Map<String, dynamic> json) => Task(
        title: json['title'],
        dateTime: DateTime.parse(json['dateTime']),
      );
}
