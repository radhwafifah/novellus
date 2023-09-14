import 'package:flutter/material.dart';
import 'package:novellus1/resources/models/literary_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LiteraryDatabase {
  final SupabaseClient _supabase = Supabase.instance.client;

  final String table = "literaryWorks";

  Future<List<Map<String, dynamic>>> select({required int id}) async {
    try {
      final data = await _supabase.from(table).select().eq("userId", id);
      return List<Map<String, dynamic>>.from(data);
    } catch (e) {
      debugPrint(e.toString());
    }
    return [];
  }

  Future insert({required LiteraryModel model}) async {
    try {
      return await _supabase.from(table).insert(model.toMap()).select();
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future update({required int id, required LiteraryModel model}) async {
    try {
      await _supabase.from(table).update(model.toMap()).eq("id", id);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future delete({required int id}) async {
    try {
      await _supabase.from(table).delete().eq("id", id);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  selectAll() {}
}
