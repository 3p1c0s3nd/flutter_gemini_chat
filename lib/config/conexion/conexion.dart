import 'package:dio/dio.dart';

Future<String> conexionApi(String mensaje) async {
  try {
    final dio = Dio();
    final respuesta = await dio.post(
        "https://test-gemini-google.vercel.app/api/chat",
        data: {'message': mensaje});

    return respuesta.data["message"].toString();
  } catch (e) {
    return e.toString();
  }
}
