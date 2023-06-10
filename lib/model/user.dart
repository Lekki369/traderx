class Login {
  final String email;
  final String phoneNo;
  final String username;
  final String password;
  final String deviceIdentifier;
  final bool registerAsNewDevice;
  final String otp;
  final String channel;
  Login({
    required this.email,
    required this.phoneNo,
    required this.username,
    required this.password,
    required this.deviceIdentifier,
    required this.channel,
    required this.otp,
    required this.registerAsNewDevice,
  });
}
