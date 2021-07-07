import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

   final String url;

  void getData() async {
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      String data = response.body;
      var decodeData = jsonDecode(data);
      print(data);
      return decodeData;
    } else {
  print(response.statusCode);
    }
  }
}