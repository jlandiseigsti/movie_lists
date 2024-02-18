import 'package:http/http.dart' as http;
import 'package:riverpod/riverpod.dart';

final baseClient = Provider((ref) => http.Client());