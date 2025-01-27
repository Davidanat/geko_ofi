part of 'pages.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: 'Sign In',
      subtitle: "Masuk ke akun anda",
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
            child: Text(
              "Email Address",
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black)),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyFontStyle,
                  hintText: 'Type your email address'),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            child: Text(
              "Password",
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black)),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyFontStyle,
                  hintText: 'Type your password'),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 24),
            height: 45,
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: isLoading
                ? loadingIndicator
                : ElevatedButton(
                    onPressed: () async {
                      setState(() {
                        isLoading = true;
                      });

                      // await context.read<UserCubit>().signIn(
                      //     emailController.text, passwordController.text);

                      // // ignore: use_build_context_synchronously
                      // UserState state = context.read<UserCubit>().state;

                      // if (state is UserLoaded) {
                      //   // ignore: use_build_context_synchronously
                      //   context.read<FoodCubit>().getFoods();
                      //   // ignore: use_build_context_synchronously
                      //   context.read<TransactionCubit>().getTransactions();
                      //   Get.to(() => MainPage());
                      // } else {
                      //   Get.snackbar("", "",
                      //       backgroundColor: "D9435E".toColor(),
                      //       icon: Icon(
                      //         MdiIcons.closeCircleOutline,
                      //         color: Colors.white,
                      //       ),
                      //       titleText: Text(
                      //         "Sign In Failed",
                      //         style: GoogleFonts.poppins(
                      //             color: Colors.white,
                      //             fontWeight: FontWeight.w600),
                      //       ),
                      //       messageText: Text(
                      //         (state as UserLoadingFailed).message,
                      //         style: GoogleFonts.poppins(color: Colors.white),
                      //       ));
                      setState(() {
                        isLoading = false;
                      });
                      Get.to(() => MainPage());
                      // }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: mainColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    child: Text(
                      'Sign In',
                      style: GoogleFonts.poppins(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                  ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 24),
            height: 45,
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: ElevatedButton(
              onPressed: () {
                Get.to(() => SignUpPage());
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: greyColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
              child: Text(
                'Create New Account',
                style: GoogleFonts.poppins(
                    color: Colors.white, fontWeight: FontWeight.w500),
              ),
            ),
          )
        ],
      ),
    );
  }
}
