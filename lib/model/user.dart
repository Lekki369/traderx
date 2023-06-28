class User {
  final String email;
  final String phoneNo;
  final String username;
  final String password;
  final String deviceIdentifier;
  final String registerAsNewDevice;
  final bool otp;
  final String channel;
  User({
    this.email = "",
    this.phoneNo = "",
    this.username = "mikebiz@mailinator.com",
    this.password = "123456",
    this.deviceIdentifier = "dev-from-mobile",
    this.channel = "MOBILE",
    this.otp = false,
    this.registerAsNewDevice = "registerAsNewDevice",
  });

  factory User.fromJson(Map<String, dynamic> user) {
    return User();
  }

  static Map<String, dynamic> toJson(User user) => {
        "username": user.username,
        "password": user.password,
        "deviceIdentifier": user.deviceIdentifier,
        "registerAsNewDevice": user.registerAsNewDevice,
        "otp": user.otp,
        "channel": user.channel,
      };
}
