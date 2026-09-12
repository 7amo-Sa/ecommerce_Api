import 'package:dio/dio.dart';
Dio dio = Dio();

void main() async {
  await new_productr();
  await add_to_favorite();
  await edit_prodect();
  await delete_prodect();
  await get_prodects();
  await get_search();
  await get_best_seller_products();
  await get_top_rated_products();
}
new_productr() async {
  try {
    var response = await dio.post(
      'https://nti-ecommerce-api-production-896c.up.railway.app/api/new_product',
      options: Options(
        headers: {
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJmcmVzaCI6ZmFsc2UsImlhdCI6MTc4ODc5NDM3NSwianRpIjoiZjAzNTVmOWQtNWRiZC00MjgzLTg1YzQtMjAwNGQ5ZmZjNTFjIiwidHlwZSI6ImFjY2VzcyIsInN1YiI6OCwibmJmIjoxNzg4Nzk0Mzc1LCJjc3JmIjoiMzA4Yjg2NmUtN2JkZi00YTlmLWI3MmItY2E4ZDhiN2NiZWQ5IiwiZXhwIjoxNzg4Nzk1Mjc1fQ.s2wzX2L5hZfx6UjUmQ0g4sbc-Wua_6YSwU-2eXpFsYU',
        },
      ),
      data: FormData.fromMap({
        'name': 'new test pr',
        'description': 'product 1 description',
        'rating': '4,5',
        'best_seller': '1',
        'price': '80',
        'image': await MultipartFile.fromFile(
          'E:/picture/WhatsApp Image 2026-01-27 at 4.31.48 PM.jpeg',
        ),
        'category_id': '2',
      }),
    );
    print(response.data.toString());
  } catch (e) {
    handleException(e);
  }
}

add_to_favorite() async {
  try {
    var response = await dio.post(
      'https://nti-ecommerce-api-production-896c.up.railway.app/api/add_to_favorite',
      options: Options(
        headers: {
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJmcmVzaCI6ZmFsc2UsImlhdCI6MTc4ODc5NDM3NSwianRpIjoiZjAzNTVmOWQtNWRiZC00MjgzLTg1YzQtMjAwNGQ5ZmZjNTFjIiwidHlwZSI6ImFjY2VzcyIsInN1YiI6OCwibmJmIjoxNzg4Nzk0Mzc1LCJjc3JmIjoiMzA4Yjg2NmUtN2JkZi00YTlmLWI3MmItY2E4ZDhiN2NiZWQ5IiwiZXhwIjoxNzg4Nzk1Mjc1fQ.s2wzX2L5hZfx6UjUmQ0g4sbc-Wua_6YSwU-2eXpFsYU',
        },
      ),
      data: FormData.fromMap({'product_id': '1'}),
    );
    print(response.data.toString());
  } catch (e) {
    handleException(e);
  }
}

edit_prodect() async {
  try {
    var response = await dio.put(
      'https://nti-ecommerce-api-production-896c.up.railway.app/api/product/3',
      options: Options(
        headers: {
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJmcmVzaCI6ZmFsc2UsImlhdCI6MTc4ODc5NDM3NSwianRpIjoiZjAzNTVmOWQtNWRiZC00MjgzLTg1YzQtMjAwNGQ5ZmZjNTFjIiwidHlwZSI6ImFjY2VzcyIsInN1YiI6OCwibmJmIjoxNzg4Nzk0Mzc1LCJjc3JmIjoiMzA4Yjg2NmUtN2JkZi00YTlmLWI3MmItY2E4ZDhiN2NiZWQ5IiwiZXhwIjoxNzg4Nzk1Mjc1fQ.s2wzX2L5hZfx6UjUmQ0g4sbc-Wua_6YSwU-2eXpFsYU',
        },
      ),
      data: FormData.fromMap({
        'name': 'product 3 +',
        'description': 'product 3 + description',
        'rating': '5',
        'best_seller': '1',
        'price': '50',
        'image': await MultipartFile.fromFile(
          'E:/picture/WhatsApp Image 2026-01-27 at 4.31.48 PM.jpeg',
        ),
        'category_id': '2',
      }),
    );
    print(response.data.toString());
  } catch (e) {
    handleException(e);
  }
}

delete_prodect() async {
  try {
    var response = await dio.delete(
      'https://nti-ecommerce-api-production-896c.up.railway.app/api/product/3',
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

get_prodects() async {
  try {
    var response = await dio.get(
      'https://nti-ecommerce-api-production-896c.up.railway.app/api/products',
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

get_search() async {
  try {
    var response = await dio.get(
      'https://nti-ecommerce-api-production-896c.up.railway.app/apiproducts/search?q=p',
      options: Options(
        headers: {
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJmcmVzaCI6ZmFsc2UsImlhdCI6MTc4ODc5NDM3NSwianRpIjoiZjAzNTVmOWQtNWRiZC00MjgzLTg1YzQtMjAwNGQ5ZmZjNTFjIiwidHlwZSI6ImFjY2VzcyIsInN1YiI6OCwibmJmIjoxNzg4Nzk0Mzc1LCJjc3JmIjoiMzA4Yjg2NmUtN2JkZi00YTlmLWI3MmItY2E4ZDhiN2NiZWQ5IiwiZXhwIjoxNzg4Nzk1Mjc1fQ.s2wzX2L5hZfx6UjUmQ0g4sbc-Wua_6YSwU-2eXpFsYU',
        },
      ),
      queryParameters: {'q': 'p'},
    );
    print(response.data.toString());
  } catch (e) {
    handleException(e);
  }
}

get_best_seller_products() async {
  try {
    var response = await dio.get(
      'https://nti-ecommerce-api-production-896c.up.railway.app/api/best_seller_products',
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

get_top_rated_products() async {
  try {
    var response = await dio.get(
      'https://nti-ecommerce-api-production-896c.up.railway.app/api/top_rated_products',
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
