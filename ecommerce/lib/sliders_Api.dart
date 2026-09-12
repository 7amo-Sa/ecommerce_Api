import 'package:dio/dio.dart';

Dio dio = Dio();

void main() async {
  await new_slider();
  await edit_slider();
  await delete_slider();
  await get_sliders();
}

new_slider() async {
  try {
    var response = await dio.post(
      'https://nti-ecommerce-api-production-896c.up.railway.app/api/new_slider',
      data: FormData.fromMap({
        'title': 'slider 02 title',
        'description': 'slider 01 description',
        'image': await MultipartFile.fromFile(
          'E:/picture/WhatsApp Image 2026-01-27 at 4.31.48 PM.jpeg',
        ),
      }),
    );
    print(response.data.toString());
  } catch (e) {
    handleException(e);
  }
}

edit_slider() async {
  try {
    var response = await dio.put(
      'https://nti-ecommerce-api-production-896c.up.railway.app/api/slider/1',
      options: Options(
        headers: {
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJmcmVzaCI6ZmFsc2UsImlhdCI6MTc4ODc5NDM3NSwianRpIjoiZjAzNTVmOWQtNWRiZC00MjgzLTg1YzQtMjAwNGQ5ZmZjNTFjIiwidHlwZSI6ImFjY2VzcyIsInN1YiI6OCwibmJmIjoxNzg4Nzk0Mzc1LCJjc3JmIjoiMzA4Yjg2NmUtN2JkZi00YTlmLWI3MmItY2E4ZDhiN2NiZWQ5IiwiZXhwIjoxNzg4Nzk1Mjc1fQ.s2wzX2L5hZfx6UjUmQ0g4sbc-Wua_6YSwU-2eXpFsYU',
        },
      ),
      data: FormData.fromMap({
        'title': 'task 1 +',
        'description': 'task 1 + description',
        'image': await MultipartFile.fromFile(
          'E:/picture/WhatsApp Image 2024-11-07 at 16.00.33_30cfac57.jpg',
        ),
      }),
    );
    print(response.data.toString());
  } catch (e) {
    handleException(e);
  }
}

delete_slider() async {
  try {
    var response = await dio.delete(
      'https://nti-ecommerce-api-production-896c.up.railway.app/api/slider/1',
      options: Options(
        headers: {
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJmcmVzaCI6ZmFsc2UsImlhdCI6MTc4ODc5NDM3NSwianRpIjoiZjAzNTVmOWQtNWRiZC00MjgzLTg1YzQtMjAwNGQ5ZmZjNTFjIiwidHlwZSI6ImFjY2VzcyIsInN1YiI6OCwibmJmIjoxNzg4Nzk0Mzc1LCJjc3JmIjoiMzA4Yjg2NmUtN2JkZi00YTlmLWI3MmItY2E4ZDhiN2NiZWQ5IiwiZXhwIjoxNzg4Nzk1Mjc1fQ.s2wzX2L5hZfx6UjUmQ0g4sbc-Wua_6YSwU-2eXpFsYU',
        },
      ),
    );
    print(response.data.toString());
  } catch (e) {
    handleException(e);
  }
}



get_sliders() async {
  try {
    var response = await dio.get(
      'https://nti-ecommerce-api-production-896c.up.railway.app/api/sliders',
    );
    print(response.data.toString());
  } catch (e) {
    handleException(e);
  }
}


void handleException(Object e) {
  if (e is DioException) {
    if (e.response?.data != null) {
      var errorResponse = e.response?.data as Map<String, dynamic>;
      print(errorResponse['message']);
    } else {
      print('Network error happened try again later');
    }
  } else {
    print('error happened try again later');
  }
}
