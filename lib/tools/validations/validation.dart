class Validations {
  String validateName(String value) {
    if (value.isEmpty) return 'Name is required.';
    final RegExp nameExp = new RegExp(r'^[A-za-z ]+$');
    if (!nameExp.hasMatch(value.trim()))
      return 'Please enter only alphabetical characters.';
    return null;
  }

  String validatePhoneNumber(String value) {
    if (value.isEmpty) return 'PhoneNumber is required.';
    final RegExp nameExp = new RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$');
    if (!nameExp.hasMatch(value.trim()))
      return 'Please enter valid phone number.';
    return null;
  }

  String validateEmail(String value) {
    if (value.isEmpty) return 'Email is required.';
    final RegExp nameExp = new RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
    if (!nameExp.hasMatch(value.trim())) return 'Invalid email address';
    return null;
  }

  String validatePassword(String value) {
    if (value.isEmpty) return 'Please choose a password.';
    return null;
  }

  String validateDate(String value) {
    if (value.isEmpty) return 'Date is required.';
    final RegExp nameExp = new RegExp(
        r'^([1-9]|1[012])[- /.]([1-9]|[12][0-9]|3[01])[- /.](19|20)\d\d$');
    if (!nameExp.hasMatch(value)) return 'Date format should be dd-mm-yyyy.';
    return null;
  }
}
