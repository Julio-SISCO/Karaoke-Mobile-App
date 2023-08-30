import 'package:http/http.dart' as http;

void main() {
  fetchSongLyrics();
}

void fetchSongLyrics() async {
  var headers = {
    'X-RapidAPI-Key': "25480ff818mshd62708b0d31fd4fp171815jsne2cc5a76213b",
    'X-RapidAPI-Host': "genius-song-lyrics1.p.rapidapi.com",
  };

  var uri = Uri.https(
      "genius-song-lyrics1.p.rapidapi.com", "/search/", {'q': '<REQUIRED>', 'per_page': '10', 'page': '1'});

  var response = await http.get(uri, headers: headers);

  if (response.statusCode == 200) {
    print(response.body);
  } else {
    print('Request failed with status: ${response.statusCode}');
  }
}
