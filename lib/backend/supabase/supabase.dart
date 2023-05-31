import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';
export 'storage/storage.dart';

const _kSupabaseUrl = 'https://fstbuwoypragtzavlwhd.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZzdGJ1d295cHJhZ3R6YXZsd2hkIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODM3NjMyOTksImV4cCI6MTk5OTMzOTI5OX0.g3XDb_P7NYbkRjoz7SCXDjOATbczP6aoq6TWIf4pH8A';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
      );
}
