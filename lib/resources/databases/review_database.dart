
import 'package:supabase_flutter/supabase_flutter.dart';

class ReviewDatabase {
  final SupabaseClient _supabase = Supabase.instance.client;

  final String table = "reviews";


}