import 'package:dio/dio.dart';

Dio dio = Dio();

void main() async {
  await register();
  await login();
  await refresh_token();
  await get_user_data();
  await update_profile();
  await delete_user();
}

register() async {
  try {
    var response = await dio.post(
      'https://nti-ecommerce-api-production-896c.up.railway.app/api/register',
      data: FormData.fromMap({
        'name': 'MohamedSayed',
        'password': '12345678',
        'image' : await MultipartFile.fromFile('E:/GettyImage.png',),
        'email': 'mohamedsayed015542@gmail.com',
        'phone': '01061675237',
      }),
    );
    print(response.data.toString());
  } catch (e) {
    handleException(e);
  }
}

login() async {
  try {
    var response = await dio.post(
      'https://nti-ecommerce-api-production-896c.up.railway.app/api/login',
      data: FormData.fromMap({
        'email': 'mohamedsayed015542@gmail.com',
        'password': '12345678',
      }),
    );
    print(response.data.toString());
  } catch (e) {
    handleException(e);
  }
}

refresh_token() async {
  try {
    var response = await dio.post(
      'https://nti-ecommerce-api-production-896c.up.railway.app/api/refresh_token',
      options: Options(
        headers: {
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJmcmVzaCI6ZmFsc2UsImlhdCI6MTc4ODc5MjQzNCwianRpIjoiZDllNDQ2N2EtOGU3OC00MzQ3LWEwZDYtNjBjOTYzNWRmZWY5IiwidHlwZSI6InJlZnJlc2giLCJzdWIiOjgsIm5iZiI6MTc4ODc5MjQzNCwiY3NyZiI6IjRlMzJiNDA0LWQ3N2YtNDBhMy1hNDYwLWM5ZmZiNDFjNmMyNyIsImV4cCI6MTc5MTM4NDQzNH0.Ehw12Joy8E6MmqRxbggH1D8Klkk7tNtFTvaxlMFf5Rg',
        },
      ),
    );
    print(response.data.toString());
  } catch (e) {
    handleException(e);
  }
}

update_profile() async {
  try {
    var response = await dio.put(
      'https://nti-ecommerce-api-production-896c.up.railway.app/api/update_profile',
      options: Options(
        headers: {
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJmcmVzaCI6ZmFsc2UsImlhdCI6MTc4ODc5MjQ2MywianRpIjoiNmFlZDBmNTktODM3MC00ODVjLWJhMTEtODg5MzZjMDA0YjVjIiwidHlwZSI6ImFjY2VzcyIsInN1YiI6OCwibmJmIjoxNzg4NzkyNDYzLCJjc3JmIjoiODlkMzJlZDItOTY3NS00OTI3LTg0ZGQtMzA2ZWZjZWEyOTAzIiwiZXhwIjoxNzg4NzkzMzYzfQ.oj3JoYHme_a-Esxizf6aWNfZ84wttmyjN5noWm-bgl0',
        },
      ),
      data: FormData.fromMap({
        'name': 'MohamedAhmed',
        'image' : await MultipartFile.fromFile('E:/WhatsApp Image 2026-09-06 at 8.29.03 PM.png',),
        'phone': '01061675238',
         }),
    );
    print(response.data.toString());
  } catch (e) {
    handleException(e);
  }
}

get_user_data() async {
  try {
    var response = await dio.get(
      'https://nti-ecommerce-api-production-896c.up.railway.app/api/get_user_data',
      options: Options(
        headers: {
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJmcmVzaCI6ZmFsc2UsImlhdCI6MTc4ODc5MjQ2MywianRpIjoiNmFlZDBmNTktODM3MC00ODVjLWJhMTEtODg5MzZjMDA0YjVjIiwidHlwZSI6ImFjY2VzcyIsInN1YiI6OCwibmJmIjoxNzg4NzkyNDYzLCJjc3JmIjoiODlkMzJlZDItOTY3NS00OTI3LTg0ZGQtMzA2ZWZjZWEyOTAzIiwiZXhwIjoxNzg4NzkzMzYzfQ.oj3JoYHme_a-Esxizf6aWNfZ84wttmyjN5noWm-bgl0',
        },
      ),
      data: FormData.fromMap({
        'username': 'MohamedAhmed',
        'image' : await MultipartFile.fromFile('E:/WhatsApp Image 2026-09-06 at 8.29.03 PM.png',),
        }),
    );
    print(response.data.toString());
  } catch (e) {
    handleException(e);
  }
}

delete_user() async {
  try {
    var response = await dio.delete(
      'https://nti-ecommerce-api-production-896c.up.railway.app/api/delete_user',
      options: Options(
        headers: {
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJmcmVzaCI6ZmFsc2UsImlhdCI6MTc4ODc5MjQ2MywianRpIjoiNmFlZDBmNTktODM3MC00ODVjLWJhMTEtODg5MzZjMDA0YjVjIiwidHlwZSI6ImFjY2VzcyIsInN1YiI6OCwibmJmIjoxNzg4NzkyNDYzLCJjc3JmIjoiODlkMzJlZDItOTY3NS00OTI3LTg0ZGQtMzA2ZWZjZWEyOTAzIiwiZXhwIjoxNzg4NzkzMzYzfQ.oj3JoYHme_a-Esxizf6aWNfZ84wttmyjN5noWm-bgl0',
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
