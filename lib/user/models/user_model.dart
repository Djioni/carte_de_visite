class UserModel {
  UserModel({
    this.email,
    this.behavior,
    this.balance,
    this.username,
    this.profile,
  });

  String email;
  String behavior;
  int balance;
  String username;
  String profile;

  UserModel copyWith({
    String email,
    String behavior,
    int balance,
    String username,
    String profile,
  }) =>
      UserModel(
        email: email ?? this.email,
        behavior: behavior ?? this.behavior,
        balance: balance ?? this.balance,
        username: username ?? this.username,
        profile: profile ?? this.profile,
      );

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        email: json["email"] == null ? null : json["email"],
        behavior: json["behavior"] == null ? null : json["behavior"],
        balance: json["balance"] == null ? null : json["balance"],
        username: json["username"] == null ? null : json["username"],
        profile: json["profile"] == null ? null : json["profile"],
      );

  Map<String, dynamic> toJson() => {
        "email": email == null ? null : email,
        "behavior": behavior == null ? null : behavior,
        "balance": balance == null ? null : balance,
        "username": username == null ? null : username,
        "profile": profile == null ? null : profile,
      };
}
