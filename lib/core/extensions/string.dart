extension GetStringUtils on String?
{

  bool get isEmail => RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
  ).hasMatch(this ?? '');

  bool get emailContainsAtSign => this != null && this!.contains('@');
  bool get emailEndsWithDomain => RegExp(r'\.[a-zA-Z]{2,}$').hasMatch(this ?? '');

  bool get hasValidPassword
  {
    if (this == null) return false;

    final value = this!;
    return RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*(),.?":{}|<>_\-+=/\\\[\]~`]).{8,}$',
    ).hasMatch(value);
  }

  bool get passwordHasUpperCase => RegExp(r'[A-Z]').hasMatch(this ?? '');
  bool get passwordHasLowerCase => RegExp(r'[a-z]').hasMatch(this ?? '');
  bool get passwordHasDigit => RegExp(r'\d').hasMatch(this ?? '');
  bool get passwordHasSpecialChar => RegExp(r'[!@#$%^&*(),.?":{}|<>_\-+=/\\\[\]~`]').hasMatch(this ?? '');
  bool get passwordIsLongEnough => (this ?? '').length >= 8;

  bool get isFullName
  {
    if (this == null) return false;
    final fullNameRegExp = RegExp(r"^(?!.*[^\p{L} \-'])[A-Za-zÀ-ÖØ-öø-ÿ]+([ '-][A-Za-zÀ-ÖØ-öø-ÿ]+)*$", unicode: true,);
    return fullNameRegExp.hasMatch(this!.trim());
  }
}
