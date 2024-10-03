import 'package:test_project/core/application/services/http/ihttp_client.dart';
import 'package:http/http.dart' as http;

class HttpClient implements IHttpClient {
  final client = http.Client();

  @override
  Future get({required String url}) async {
    return await client.get(Uri.parse(url));
  }
}
