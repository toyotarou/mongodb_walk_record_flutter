import '../extensions/extensions.dart';

class StepModel {
  StepModel({
    required this.id,
    required this.date,
    required this.step,
    required this.distance,
    required this.v,
  });

  factory StepModel.fromJson(Map<String, dynamic> json) => StepModel(
        id: json['_id'].toString(),
        date: DateTime.parse('${json["date"]} 00:00:00'),
        step: json['step'].toString().toInt(),
        distance: json['distance'].toString().toInt(),
        v: json['__v'].toString().toInt(),
      );
  String id;
  DateTime date;
  int step;
  int distance;
  int v;

  Map<String, dynamic> toJson() => <String, dynamic>{
        '_id': id,
        'date':
            "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
        'step': step,
        'distance': distance,
        '__v': v,
      };
}
