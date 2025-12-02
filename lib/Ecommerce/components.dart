import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var appColor = Color(0xFFF83758);

class InputComponentEcommerce extends StatelessWidget {
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final String hintText;

  const InputComponentEcommerce({
    required this.prefixIcon,
    required this.hintText,
    this.suffixIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12,
      children: [
        Expanded(
          child: TextFormField(
            style: TextStyle(color: Colors.black),
            cursorColor: Color(0xFFA8A8A9),
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xFFF3F3F3),
              prefixIcon: IconButton(
                padding: EdgeInsets.symmetric(horizontal: 16),
                onPressed: () {},
                icon: Icon(prefixIcon, color: Color(0xFF626262)),
              ),
              suffixIcon: IconButton(
                padding: EdgeInsets.symmetric(horizontal: 16),
                onPressed: () {},
                icon: Icon(suffixIcon, color: Color(0xFF626262)),
              ),
              hintText: hintText,
              hintStyle: GoogleFonts.montserrat(
                color: Color(0xFF676767),
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Color(0xFFA8A8A9)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Color(0xFFA8A8A9)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            "Forget Password?",
            style: GoogleFonts.montserrat(
              color: appColor,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}

class RedButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const RedButton({this.onPressed, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 21, horizontal: 109),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          backgroundColor: appColor,
        ),
        child: Text(
          text,
          style: GoogleFonts.montserrat(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}

class SocialMediaIcon extends StatelessWidget {
  final String ImageAssetRe;

  const SocialMediaIcon({required this.ImageAssetRe, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Color(0xFFFCF3F6),
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: appColor, width: 2),
      ),
      child: Image.asset(ImageAssetRe),
    );
  }
}

class LogoTitle extends StatelessWidget {
  Color appColor;
  double? width;
  double? height;
  double fontSize;

  LogoTitle({
    required this.appColor,
    super.key,
    this.width,
    this.height,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 9,
      children: [
        Image.asset("assets/images/logo.png", width: width, height: height),
        Text(
          "Stylish",
          style: GoogleFonts.libreCaslonText(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: appColor,
          ),
        ),
      ],
    );
  }
}

class SearchBarPart extends StatelessWidget {
  final IconData? prefixIcon;
  final Color? prefixIconColor;
  final String hintText;
  final Color hintTextColor;
  final double hintTextFontSize;
  final IconData? suffixIcon;
  final Color? suffixIconColor;
  final InputBorder? border;

  const SearchBarPart({
    super.key,
    this.prefixIcon,
    this.prefixIconColor,
    required this.hintText,
    required this.hintTextColor,
    required this.hintTextFontSize,
    this.suffixIcon,
    this.suffixIconColor,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon:
            prefixIcon == null
                ? null
                : Icon(prefixIcon, color: prefixIconColor),

        hintText: hintText,
        hintStyle: GoogleFonts.montserrat(
          color: hintTextColor,
          fontSize: hintTextFontSize,
          fontWeight: FontWeight.w500,
        ),

        suffixIcon:
            suffixIcon == null
                ? null
                : Icon(suffixIcon, color: suffixIconColor),

        border: border,
      ),
    );
  }
}

class ListOfRowScrollable extends StatelessWidget {
  final String assetImage;
  final String text;
  final String? text2;
  final String? text3;
  final String? text4;
  final String? text5;
  final CrossAxisAlignment crossAxisAlignment;
  final bool isCircle;

  const ListOfRowScrollable({
    required this.assetImage,
    required this.text,
    this.text2,
    this.text3,
    this.text4,
    this.text5,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.isCircle = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return isCircle
        ? Column(
          crossAxisAlignment: crossAxisAlignment,
          spacing: 10,
          children: [
            CircleAvatar(backgroundImage: AssetImage(assetImage), radius: 35),
            Text(
              text,
              style: GoogleFonts.montserrat(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
              maxLines: 2,
            ),
          ],
        )
        : Container(
          width: 170,
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: crossAxisAlignment,
            spacing: 3,
            children: [
              Image.asset(assetImage, fit: BoxFit.cover),
              Text(
                text,
                style: GoogleFonts.montserrat(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
                maxLines: 2,
              ),

              if (text2 != null)
                Text(
                  text2!,
                  style: GoogleFonts.montserrat(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 2,
                ),

              if (text3 != null)
                Text(
                  text3!,
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                  maxLines: 2,
                ),

              if (text4 != null && text5 != null)
                Row(
                  spacing: 10,
                  children: [
                    Text(
                      text4!,
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      maxLines: 2,
                    ),
                    Text(
                      text5!,
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: appColor,
                      ),
                      maxLines: 2,
                    ),
                  ],
                ),
            ],
          ),
        );
  }
}

class ElevatedButtonHome extends StatelessWidget {
  final String text;
  final Color textColor;
  final FontWeight textFontWeight;
  final IconData? icon;
  final Color iconColor;
  final WidgetStateProperty<Color?> backgroundColor;
  final BorderSide? borderSide;
  final WidgetStateProperty<double>? elevation;

  ElevatedButtonHome({
    required this.backgroundColor,
    required this.text,
    this.textFontWeight = FontWeight.w500,
    this.elevation,
    this.textColor = Colors.black,
    this.iconColor = Colors.black,
    this.icon,
    this.borderSide,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: elevation,
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: borderSide ?? BorderSide.none,
          ),
        ),
        backgroundColor: backgroundColor,
        padding: WidgetStateProperty.all(
          const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
      ),
      onPressed: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 5,
        children: [
          Text(
            text,
            style: GoogleFonts.montserrat(
              fontSize: 15,
              color: textColor,
              fontWeight: textFontWeight,
            ),
          ),
          if (icon != null) Icon(icon, color: iconColor),
        ],
      ),
    );
  }
}
