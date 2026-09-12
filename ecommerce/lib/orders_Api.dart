import 'package:dio/dio.dart';

Dio dio = Dio();

void main() async {
  await place_order();
  await cancle_order();
  await complete_order();
  await get_orders();
}
place_order() async {
  try {
    var response = await dio.post(
      'https://nti-ecommerce-api-production-896c.up.railway.app/api/place_order',
      options: Options(
        headers: {
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJmcmVzaCI6ZmFsc2UsImlhdCI6MTc4ODc5NDM3NSwianRpIjoiZjAzNTVmOWQtNWRiZC00MjgzLTg1YzQtMjAwNGQ5ZmZjNTFjIiwidHlwZSI6ImFjY2VzcyIsInN1YiI6OCwibmJmIjoxNzg4Nzk0Mzc1LCJjc3JmIjoiMzA4Yjg2NmUtN2JkZi00YTlmLWI3MmItY2E4ZDhiN2NiZWQ5IiwiZXhwIjoxNzg4Nzk1Mjc1fQ.s2wzX2L5hZfx6UjUmQ0g4sbc-Wua_6YSwU-2eXpFsYU',
        },
      ),
      data: {
    "items": [
        {
            "product_id": 1,
            "quantity": 2
        },
        {
            "product_id": 2,
            "quantity": 1
        }
    ]
}
    );
    print(response.data.toString());
  } catch (e) {
    handleException(e);
  }
}

cancle_order() async {
  try {
    var response = await dio.post(
      'https://nti-ecommerce-api-production-896c.up.railway.app/api/orders/cancel/1',
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
complete_order() async {
  try {
    var response = await dio.post(
      'https://nti-ecommerce-api-production-896c.up.railway.app/api/orders/complete/3',
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

get_orders() async {
  try {
    var response = await dio.get(
      'https://nti-ecommerce-api-production-896c.up.railway.app/api/orders',
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
