enum OtpFlow { register, forgotPassword, phoneVerification }

class OtpArgs {
  final OtpFlow flow;
  final String destination;
  final String destinationLabel;

  const OtpArgs(
      {required this.flow,
      required this.destination,
      required this.destinationLabel});
}
