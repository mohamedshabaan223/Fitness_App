class ValidatorService {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your Email';
    }
    // A basic regex for email validation
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(value)) {
      return 'Please enter a valid Email';
    }
    return null;
  }
 static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your Password';
    }
    if (value.length<7) {
      return 'Please make the Password length at least 8 character';
    }
    return null;
  }
 static String? usernameValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Username is required';
  }

  if (value.length < 3) {
    return 'Username must be at least 3 characters';
  }

  if (value.length > 20) {
    return 'Username must not exceed 20 characters';
  }

  final usernameRegex = RegExp(r'^[a-zA-Z][a-zA-Z0-9._]*$');

  if (!usernameRegex.hasMatch(value)) {
    return 'Username can contain letters, numbers, . and _ only';
  }

  return null; // ✅ valid
}

}