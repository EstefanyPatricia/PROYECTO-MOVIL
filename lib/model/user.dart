import 'package:fashon_stoke/model/dod.dart';
import 'package:fashon_stoke/model/id.dart';
import 'package:fashon_stoke/model/loging.dart';
import 'package:fashon_stoke/model/name.dart';
import 'package:fashon_stoke/model/picture.dart';
import 'package:fashon_stoke/model/registered.dart';
import 'package:json_annotation/json_annotation.dart';

import '../pages/tracking_page.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  String gender;
  Name name;
  Location location;
  String email;
  Login login;
  Dob dob;
  Registered registered;
  String phone;
  String cell;
  Id id;
  Picture picture;
  String nat;

  User(
      {required this.gender,
      required this.name,
      required this.location,
      required this.email,
      required this.login,
      required this.dob,
      required this.registered,
      required this.phone,
      required this.cell,
      required this.id,
      required this.picture,
      required this.nat});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

