import 'package:flutter/material.dart';

// Theme 1: Modern Blue
const Color kPrimaryColor = Color(0xFF0D47A1);
const Color kSecondaryColor = Color(0xFF42A5F5);
const Color kAccentColor = Color(0xFFFFCA28);
const Color kTextColor = Color(0xFF424242);
const Color kBackgroundColor = Color(0xFFFFFFFF);
const Color kLightGrayColor = Color(0xFFEEEEEE);

// const Color kPrimaryColor = Color(0xFF212121);
// const Color kSecondaryColor = Color(0xFF757575);
// const Color kAccentColor = Color(0xFFD32F2F);
// const Color kTextColor = Color(0xFFFAFAFA);
// const Color kBackgroundColor = Color(0xFF303030);
// const Color kLightGrayColor = Color(0xFFBDBDBD);

// const Color kPrimaryColor = Color(0xFF388E3C);
// const Color kSecondaryColor = Color(0xFF81C784);
// const Color kAccentColor = Color(0xFFFFA000);
// const Color kTextColor = Color(0xFF2E7D32);
// const Color kBackgroundColor = Color(0xFFF1F8E9);
// const Color kLightGrayColor = Color(0xFFC8E6C9);

// const Color kPrimaryColor = Color(0xFFD32F2F);
// const Color kSecondaryColor = Color(0xFFE57373);
// const Color kAccentColor = Color(0xFFFFEB3B);
// const Color kTextColor = Color(0xFFB71C1C);
// const Color kBackgroundColor = Color(0xFFFFEBEE);
// const Color kLightGrayColor = Color(0xFFFFCDD2);

// const Color kPrimaryColor = Color(0xFF512DA8);
// const Color kSecondaryColor = Color(0xFF9575CD);
// const Color kAccentColor = Color(0xFFFFC107);
// const Color kTextColor = Color(0xFF311B92);
// const Color kBackgroundColor = Color(0xFFF3E5F5);
// const Color kLightGrayColor = Color(0xFFD1C4E9);

// const Color kPrimaryColor = Color(0xFFA0C4FF);
// const Color kSecondaryColor = Color(0xFFB5EAEA);
// const Color kAccentColor = Color(0xFFFFADAD);
// const Color kTextColor = Color(0xFF333333);
// const Color kBackgroundColor = Color(0xFFFFFFFF);
// const Color kLightGrayColor = Color(0xFFF1F1F1);

// const Color kPrimaryColor = Color(0xFFB3E5FC); // Light Blue
// const Color kSecondaryColor = Color(0xFFFFF9C4); // Light Yellow
// const Color kAccentColor = Color(0xFFFFCCBC); // Light Coral
// const Color kTextColor = Color(0xFF616161); // Gray
// const Color kBackgroundColor = Color(0xFFFFFFFF); // White
// const Color kLightGrayColor = Color(0xFFE0E0E0); // Light Gray

// const Color kPrimaryColor = Color(0xFFB2DFDB); // Light Teal
// const Color kSecondaryColor = Color(0xFFE6EE9C); // Light Lime
// const Color kAccentColor = Color(0xFFFFE082); // Light Amber
// const Color kTextColor = Color(0xFF757575); // Gray
// const Color kBackgroundColor = Color(0xFFFFFFFF); // White
// const Color kLightGrayColor = Color(0xFFBDBDBD); // Light Gray

// const Color kPrimaryColor = Color(0xFFD1C4E9); // Light Lavender
// const Color kSecondaryColor = Color(0xFFF8BBD0); // Light Pink
// const Color kAccentColor = Color(0xFFFFE0B2); // Light Peach
// const Color kTextColor = Color(0xFF424242); // Dark Gray
// const Color kBackgroundColor = Color(0xFFFFFFFF); // White
// const Color kLightGrayColor = Color(0xFFE0E0E0); // Light Gray

// const Color kPrimaryColor = Color(0xFFB2EBF2); // Light Cyan
// const Color kSecondaryColor = Color(0xFFC8E6C9); // Light Green
// const Color kAccentColor = Color(0xFFFFF59D); // Light Yellow
// const Color kTextColor = Color(0xFF616161); // Gray
// const Color kBackgroundColor = Color(0xFFFFFFFF); // White
// const Color kLightGrayColor = Color(0xFFEEEEEE); // Light Gray

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: kAccentColor,
        ),
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: TextTheme(
          bodyText1: TextStyle(color: kTextColor),
          bodyText2: TextStyle(color: kTextColor),
        ),
      ),
      home: SampleScreen(),
    );
  }
}

class SampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample UI Screen'),
        backgroundColor: kPrimaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome to our Eyewear Store!',
              style: TextStyle(
                color: kTextColor,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Explore our collection and find the perfect pair of glasses.',
              style: TextStyle(
                color: kTextColor,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: kPrimaryColor,
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
              child: Text(
                'Shop Now',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                backgroundColor: kSecondaryColor,
                side: BorderSide(color: kSecondaryColor),
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
              child: Text(
                'Learn More',
                style: TextStyle(
                  color: kSecondaryColor,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              color: kLightGrayColor,
              child: Text(
                'Check out our latest offers!',
                style: TextStyle(
                  color: kTextColor,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
