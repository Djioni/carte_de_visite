
class User {
  final String username;
  final String behavior;
  final int balance;
  final String email;
  final String profile;
  final String investisseur;

  User(
    this.username,
    this.behavior,
    this.balance,
    this.email,
    this.profile,
    this.investisseur
  );

  User.fromJson(Map<String, dynamic> json)
      : username = json["username"],
        behavior = json["behavior"],
        balance = json["balance"],
        email = json["email"],
        investisseur = json["investisseur"],
        profile = json["profile"];
}
