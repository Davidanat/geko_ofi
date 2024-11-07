part of 'pages.dart';

class PaymentMethodPage extends StatelessWidget {
  final String paymentURL;

  const PaymentMethodPage(this.paymentURL, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: IllustrationPage(
          title: "Finish Your Payment",
          subtitle: "Please select your favourite\npayment method",
          picturePath: 'assets/Payment.png',
          buttonTap1: () async {
            await launchUrl(paymentURL as Uri);
          },
          buttonTitle1: 'Payment Method',
          buttonTap2: () {
            Get.to(() => SuccessOrderPage());
          },
          buttonTitle2: 'Continue',
        ));
  }
}
