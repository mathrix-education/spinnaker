import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import "dart:collection";

class QualityLinks {
  String videoId;

  QualityLinks(this.videoId);

  getQualitiesSync() {
    return getQualitiesAsync();
  }

  Future<SplayTreeMap> getQualitiesAsync() async {
    try {
      print(authToken);
      var response =
          await http.get('https://player.vimeo.com/video/$videoId/config', headers: {"Authorization": authToken});
      print("DOZO DOZO *******************");
      print(response.body);
      var jsonData = jsonDecode(response.body)['request']['files']['progressive'];
      SplayTreeMap videoList = SplayTreeMap.fromIterable(jsonData,
          key: (item) => "${item['quality']} ${item['fps']}", value: (item) => item['url']);

      return videoList;
    } catch (error) {
      // print('=====> REQUEST ERROR: $error');
      return null;
    }
  }

  final String clientSecret =
      'SvSYy7ytAomeDfRrCiJOIInPE6RZlKAW4huySmrKNrUar+QCrMX2OTsPq4SUjvOGzF6pDRQ6PIBysuQXiVByhAua80syJM1GM8mnadx5CoRcyRz2OtnAbfzTDPsBomt6';
  final String clientId = '5e5498029ce644737d24e1fc62abd1ed1abdc1b2';

  /// https://developer.vimeo.com/api/authentication#working-with-basic-authentication
  get authToken {
    String encodedCredential = base64.encode(utf8.encode('{$clientId}:{$clientSecret}'));
    return 'basic $encodedCredential'; // TODO: not working at all....
  }
}
