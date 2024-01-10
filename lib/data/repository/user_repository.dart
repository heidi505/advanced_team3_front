import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:team3_kakao/_core/constants/http.dart';
import 'package:team3_kakao/data/dto/response_dto.dart';
import 'package:team3_kakao/data/dto/user_requestDTO.dart';
import 'package:team3_kakao/data/model/user.dart';
import 'package:team3_kakao/data/model/user_mock.dart';


// MVVM패턴 : View -> Provider(전역프로바이더or뷰모델) -> Repository(통신+파싱을 책임)
// 나중에 싱글톤으로 바꿀것
class UserRepository {


  Future<ResponseDTO> fetchLogin(LoginReqDTO requestDTO) async {
    try {

      Response response = await dio.post("/sign-in", data: requestDTO.toJson());


      ResponseDTO responseDTO = new ResponseDTO.fromJson(response.data);


      responseDTO.data = new User.fromJson(responseDTO.data);


      List<String>? jwt = response.headers["Authorization"];

      if (jwt != null) {
        responseDTO.token = jwt.first; // jwt[0]과 같음
      }

      Logger().d(responseDTO.data);
      // 필요할때만 쓰기
      // responseDTO.data = User.fromJson(responseDTO.data);

      return responseDTO;
    } catch (e) {
      // 200이 아니면 catch로 감
      return new ResponseDTO(
        success: false
      );
    }
  }
//
}
