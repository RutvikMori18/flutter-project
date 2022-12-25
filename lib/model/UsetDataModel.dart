/// id : 10
/// email : "byron.fields@reqres.in"
/// first_name : "Byron"
/// last_name : "Fields"
/// avatar : "https://reqres.in/img/faces/10-image.jpg"

class UserDataModel {
  UserDataModel({
    int? id,
    String? email,
    String? firstName,
    String? lastName,
    String? avatar,
  }) {
    _id = id;
    _email = email;
    _firstName = firstName;
    _lastName = lastName;
    _avatar = avatar;
  }

  UserDataModel.fromJson(dynamic json) {
    _id = json['id'];
    _email = json['email'];
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _avatar = json['avatar'];
  }
  int? _id;
  String? _email;
  String? _firstName;
  String? _lastName;
  String? _avatar;
  UserDataModel copyWith({
    int? id,
    String? email,
    String? firstName,
    String? lastName,
    String? avatar,
  }) =>
      UserDataModel(
        id: id ?? _id,
        email: email ?? _email,
        firstName: firstName ?? _firstName,
        lastName: lastName ?? _lastName,
        avatar: avatar ?? _avatar,
      );
  int? get id => _id;
  String? get email => _email;
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get avatar => _avatar;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['email'] = _email;
    map['first_name'] = _firstName;
    map['last_name'] = _lastName;
    map['avatar'] = _avatar;
    return map;
  }
}
