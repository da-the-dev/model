import 'package:model/model.dart';
import 'package:test/test.dart';
import 'package:equatable/equatable.dart';

class User extends Equatable with Model {
  // TODO: fields should be final. Model's `fromJson` should use the class's constructor
  String? id;
  String? name;

  User({
    this.id,
    this.name,
  });

  // TODO: This preferably should be moved to Model
  @override
  List<Object?> get props => [id, name];
}

void main() {
  test("class to json", () {
    final user = User(id: "543efgtyt543erew", name: "john doe");
    expect(
      user.toJson(),
      {
        "id": "543efgtyt543erew",
        "name": "john doe",
      },
    );
  });

  test("class from json", () {
    var user = User();
    user.fromJson({
      "id": "543efgtyt543erew",
      "name": "john doe",
    });
    expect(
      user,
      User(
        id: "543efgtyt543erew",
        name: "john doe",
      ),
    );
  });
}
