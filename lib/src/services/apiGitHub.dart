import 'package:http/http.dart' as http;

class ApiGitHub {
  getData() async {
    var url = Uri.https('api.github.com', '/users/Marcel0Henrique');

    var response = await http.get(url);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return {"erro:erro"};
    }
  }
}
