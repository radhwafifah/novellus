import 'package:flutter/material.dart';
import 'package:novellus1/resources/models/chapters_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ChaptersDatabase {
  final SupabaseClient _supabase = Supabase.instance.client;

  final String table = "chapters";

  Future<List<Map<String, dynamic>>> select() async {
    try {
      final data = await _supabase.from(table).select();
      return List<Map<String, dynamic>>.from(data);
    } catch (e) {
      debugPrint(e.toString());
    }
    return[];
  }

  Future insert({required ChaptersModel model}) async{
    try {
      await _supabase.from(table).insert(model.toMap());
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future update({required int id, required ChaptersModel model}) async{
    try {
      await _supabase.from(table).update(model.toMap()).eq("id", id);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future delete({required int id}) async{
    try {
      await _supabase.from(table).delete().eq("id", id);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
