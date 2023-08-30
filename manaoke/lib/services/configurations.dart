var headers = {
  'X-RapidAPI-Key': "25480ff818mshd62708b0d31fd4fp171815jsne2cc5a76213b",
  'X-RapidAPI-Host': "genius-song-lyrics1.p.rapidapi.com",
};

var uri = Uri.https(
  "genius-song-lyrics1.p.rapidapi.com",
  "/search/",
  {'q': '<REQUIRED>', 'per_page': '10', 'page': '1'},
);
