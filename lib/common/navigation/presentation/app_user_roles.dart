import 'package:csspace_app/common/navigation/presentation/paths/custom_route_path.dart';

enum Roles{
  user,
  teacher,
  // admin;
}

extension AuthenticatedNavigation on Roles {
  String get pathSegment {
    return switch (this) {
      Roles.user => "user",
      Roles.teacher => "teacher",
      // Roles.admin => "admin",
    };
  }

  static Roles? fromSegment(String segment) {
    switch (segment) {
      case "user":
        return Roles.user;
      case "teacher":
        return Roles.teacher;
      // case "admin":
      //   return Roles.admin;
    }
    return null;
  }

  static Roles fromRoutePath(CustomRoutePath configuration) {
    switch (configuration) {
      case UserRoutePath():
        return Roles.user;
      case LectorRoutePath():
        return Roles.teacher;
    }
  }
}
