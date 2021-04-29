import 'package:dio/dio.dart';

import '../models/avatar_model.dart';

class AvatarRepository {
  Dio dio;
  final url =
      'https://last-airbender-api.herokuapp.com/api/v1/characters/avatar';

  AvatarRepository(Dio client) : dio = client ?? Dio();

  Future<List<AvatarModel>> fetch() async {
    final response = await dio.get(url);
    final list = response.data as List;
    return list.map((json) => AvatarModel.fromJson(json)).toList();
  }
}
