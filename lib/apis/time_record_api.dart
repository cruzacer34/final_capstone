import 'dart:convert';
import 'package:final_capstone/models/time_record.dart';
import 'package:final_capstone/utilities/global_constants.dart';
import 'package:http/http.dart' as http;

class TimeRecordApi {
  static Future<void> addTimeRecord(TimeRecord timeRecord, DateTime today) async {
    try {
      final url = Uri.parse(
          '$firebaseUrl/profiles/my_profile/time_record.json');
      await http.post(
        url,
        body: json.encode(timeRecord),
      );
    } catch (e) {
      rethrow;
    }
  }

  static Future<List<TimeRecord>> fetchTimeRecords() async {
    List<TimeRecord> timeRecords = [];
    try {
      final url = Uri.parse(
          '$firebaseUrl/profiles/my_profile/time_record.json');
      final response = await http.get(url);
      final responseData = json.decode(response.body);
      responseData.forEach((key, value) {
        timeRecords.add(TimeRecord.fromJson(value as Map<String, dynamic>));
      });
    } catch (e) {
      rethrow;
    }
    return timeRecords;
  }
}
