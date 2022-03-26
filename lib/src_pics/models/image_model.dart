class ImageModel {
  int id = 0;
  String url = '';
  String title = '';

  ImageModel({
    required this.id,
    required this.url,
    required this.title,
  });

  ImageModel.formJson(Map<String, dynamic> parsedJson) {
    id = parsedJson['id'];
    url = parsedJson['url'];
    title = parsedJson['title'];
  }

  // ImageModel.formJson(Map<String, dynamic> parsedJson)
  //   : id = parsedJson['id'],
  //   url = parsedJson[''],
  //   title = parsedJson['title'];

}
