import 'dart:convert';
import 'package:flutter_login/utils/get_all_assets_response.dart';
import 'package:flutter_login/utils/get_all_nominee_response.dart';
import 'package:http/http.dart' as http;

void main() async {
  print(jsonEncode(await getAllNominees()));
}

const token =
    "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjc1OCwidXNlckVtYWlsIjoic2FtYWtzakBoaC52b20iLCJ1c2VyTW9iaWxlIjoiODM4NTkzMDYwNiIsImlhdCI6MTcwMTY4OTc0NSwiZXhwIjoxNzAyMjk0NTQ1fQ.Y9P9PRSrl5BC3uIhAyr4GKguylcUOfZii7vEhxPU_RE";

Future<GetAllCategoryResponse?> getAllAssets() async {
  var url = Uri.parse('http://35.154.102.222/node/api/asset/category/all');
  final res = await http.get(url, headers: {"Authorization": token});
  return GetAllCategoryResponse.fromJson(jsonDecode(res.body));
}

Future<GetNomineeResponse> getAllNominees() async {
  var url = Uri.parse('http://35.154.102.222/node/api/nominee/all');
  final res = await http.get(url, headers: {"Authorization": token});
  print(res.body);
  return GetNomineeResponse.fromJson(jsonDecode(res.body));
}
