import '../api/user.service.dart';

class UserFake implements UserService {
  @override
  Future deleteData() {
    // TODO: implement deleteData
    throw UnimplementedError();
  }

  @override
  Future getData() async {
  }

  @override
  Future postData() {
    // TODO: implement postData
    throw UnimplementedError();
  }

  @override
  Future putData() {
    // TODO: implement putData
    throw UnimplementedError();
  }

}