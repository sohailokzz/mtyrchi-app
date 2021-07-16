import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class MtyrchiAPI {
  static String url = "https://mtyrchi.org";

  String apiLink(String endPoint) {
    print('$url/api/$endPoint');
    return '$url/api/$endPoint';
  }

  Future<dynamic> getAsync(String endPoint) async {
    var response = await http.get(Uri.parse(apiLink(endPoint)));
    return jsonDecode(utf8.decode(response.bodyBytes));
  }

  static String getBackgroundImageUrl() {
    return "$url/uploads/bidding-site-setting/image/background.jpg";
  }
}
