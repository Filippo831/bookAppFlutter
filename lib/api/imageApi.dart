import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

//'https://bing-image-search1.p.rapidapi.com/images/search?q=',
//'x-rapidapi-host': 'bing-image-search1.p.rapidapi.com',
//'x-rapidapi-key': '381ea1fe6fmsha0118ae3803305dp1abd96jsn5ba87b7fb627',

Future<List<Image>> fetchImages(String title) async {
  final response = await http.get(
      Uri.http('bing-image-search1.p.rapidapi.com', '/images', {'q': title}),
      headers: {
        'x-rapidapi-host': 'bing-image-search1.p.rapidapi.com',
        'x-rapidapi-key': '381ea1fe6fmsha0118ae3803305dp1abd96jsn5ba87b7fb627',
      });
  if (response.statusCode == 200) {
    var jsonFile = jsonDecode(response.body);
    jsonFile.values.forEach((value) {
      imageList.add(Image.fromJson(value));
    });
    return imageList;
  } else {
    throw Exception('failed to load images');
  }
}

List<Image> imageList;

class Image {
  var contentUrl;
  var accentColor;

  Image({
    this.contentUrl,
    this.accentColor,
  });
  factory Image.fromJson(Map<String, dynamic> json) {
    return Image(
      contentUrl: json['contentUrl'],
      accentColor: json['accentColor'],
    );
    //json['value'].forEach(
    //(element) {
    //imageList.add(
    //Image(
    //contentUrl: element['contentUrl'],
    //accentColor: element['accentColor'],
    //),
    //);
    //},
    //);
    //return imageList;
  }
}
