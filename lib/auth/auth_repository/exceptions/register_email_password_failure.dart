class RegisterWithEmailAndPasswordFailure {
  final String message;

  const RegisterWithEmailAndPasswordFailure(
      [this.message = 'An Unknown error occured.']);

  factory RegisterWithEmailAndPasswordFailure.code(String code) {
    switch (code) {
      case 'weak-password':
        return RegisterWithEmailAndPasswordFailure(
            'Please enter a stronger password.');
      case 'invalid-email':
        return RegisterWithEmailAndPasswordFailure(
            'Email is not valid or badly formatted.');
      case 'email-already-in-use':
        return RegisterWithEmailAndPasswordFailure(
            'An account already exists for that email.');
      case 'operation-not-allowed':
        return RegisterWithEmailAndPasswordFailure(
            'Operation is not allowed. Please contact support for help.');
      case 'user-disable':
        return RegisterWithEmailAndPasswordFailure(
            'This user has been disabled Please contact support for help.');
      default:
        return RegisterWithEmailAndPasswordFailure();
    }
  }
}
