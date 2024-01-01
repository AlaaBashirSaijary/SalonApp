// import 'package:dio/dio.dart';
// class DioNetwork{
//  static late Dio dio;
//  static void DioIntial(){
//   dio= Dio(
//    BaseOptions(
//     baseUrl:'https://student.valuxapps.com/api/',
//     receiveDataWhenStatusError: true,
//    ),
//   );
//  }
// static Future<Response> postData({
// String lang= 'en',
//   required String url,
//  required Map<String,dynamic> data,
// })async{
//  dio.options.headers={
//   'Content-Type':'application/json',
//   'lang':lang
//  };
//  return await dio.post(url,data:data);
// }
//  static Future<Response> get({
//   String lang='en',
//   String? token,
//   required String endPoint,
//  })async{
//   dio.options.headers={
//    'lang':lang,
//    'Content-Type':'application/json',
//    'Authorization':token
//   };
//   return await dio.get(endPoint);
//  }
// }
