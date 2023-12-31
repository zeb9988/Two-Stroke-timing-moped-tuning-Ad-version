import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:turingg/piston.dart';
import 'package:turingg/portshape.dart';
import 'package:turingg/splash.dart';
import 'package:turingg/table.dart';
import 'package:turingg/textss.dart';
import 'package:turingg/tips.dart';
import 'package:turingg/transfer.dart';
import 'package:turingg/turing.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:math';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'Blow.dart';
import 'Usefullink.dart';
import 'adhelper.dart';
import 'exhaust.dart';
import 'exhaustduration.dart';
import 'intake.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // MobileAds.instance.initialize();
// RequestConfiguration requestConfiguration= RequestConfiguration(
//   testDeviceIds:
// );
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Number Multiplier',
      home: SplashScreen(),
    );
  }
}

class MultiplierApp extends StatefulWidget {
  @override
  _MultiplierAppState createState() => _MultiplierAppState();
}

class _MultiplierAppState extends State<MultiplierApp> {
  TextEditingController displacement = TextEditingController();
  TextEditingController rpm = TextEditingController();
  TextEditingController exhaustDuration = TextEditingController();
  TextEditingController exhaustHeight = TextEditingController();
  TextEditingController exhaustWidth = TextEditingController();
  TextEditingController exhaustSquareToMeanRatio = TextEditingController();
  TextEditingController exhaustMeanArea2 = TextEditingController();
  TextEditingController resultController = TextEditingController();
  TextEditingController exhaustHalfOpenAreaMultiple = TextEditingController();
  TextEditingController exhaustHalfOpenAreacm2 = TextEditingController();
  TextEditingController exhaustAnglearea = TextEditingController();
  TextEditingController exhaustTAm = TextEditingController();
  TextEditingController portOpentime = TextEditingController();
  TextEditingController exhaustTAmrestrictionRPM = TextEditingController();
  TextEditingController exhaustmostUsefulRPMlow = TextEditingController();
  TextEditingController exhaustmostusefulRPMhigh = TextEditingController();
  TextEditingController transferduration = TextEditingController();
  TextEditingController blowdowndegree = TextEditingController();
  TextEditingController blowdownpercent = TextEditingController();
  TextEditingController transferheightmm = TextEditingController();
  TextEditingController transferwidthmm = TextEditingController();
  TextEditingController transfersquaretomeanmultiple = TextEditingController();
  TextEditingController transferareacm2 = TextEditingController();
  TextEditingController transferhalfopenareamultiple = TextEditingController();
  TextEditingController transferhalfopenareacm2 = TextEditingController();
  TextEditingController transferAnglearea = TextEditingController();
  TextEditingController transferTAm = TextEditingController();
  TextEditingController transferTAmrestrictionRPM = TextEditingController();
  TextEditingController transfermostusefulRPMlow = TextEditingController();
  TextEditingController transfermostusefulRPMhigh = TextEditingController();
  TextEditingController intakedurationsdegree = TextEditingController();
  TextEditingController intakeheightmm = TextEditingController();
  TextEditingController intakewidthmm = TextEditingController();
  TextEditingController intakesquaretomeanmultiple = TextEditingController();
  TextEditingController intakemeanareacm2 = TextEditingController();
  TextEditingController intakehalfopenareamultiple = TextEditingController();
  TextEditingController intakehalfopenareacm2 = TextEditingController();
  TextEditingController intakeAnglearea = TextEditingController();
  TextEditingController intakeTAm = TextEditingController();
  TextEditingController intakeTAmrestrictionRPM = TextEditingController();
  TextEditingController intakemostusefulRPMlow = TextEditingController();
  TextEditingController intakemostusefulRPMhigh = TextEditingController();
  TextEditingController carburetorminsizeRPMmm = TextEditingController();
  TextEditingController rimsizeinches = TextEditingController();
  TextEditingController tireheightinches = TextEditingController();
  TextEditingController gearratio = TextEditingController();
  TextEditingController frontsprocket = TextEditingController();
  TextEditingController backsprocket = TextEditingController();
  TextEditingController speedkmh = TextEditingController();
  TextEditingController speedmph = TextEditingController();

  @override
  void initState() {
    super.initState();
    loadSavedData();
  }

  void loadSavedData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      displacement.text = prefs.getString('number1') ?? '49';
      rpm.text = prefs.getString('number2') ?? '7000';
      exhaustDuration.text = prefs.getString('number3') ?? '150';
      exhaustHeight.text = prefs.getString('number4') ?? '14';
      exhaustWidth.text = prefs.getString('number5') ?? '25';
      exhaustSquareToMeanRatio.text = prefs.getString('number6') ?? '0.8';
      exhaustMeanArea2.text = prefs.getString('number7') ?? '';
      exhaustHalfOpenAreaMultiple.text = prefs.getString('number8') ?? '0.70';
      exhaustHalfOpenAreacm2.text = prefs.getString('number9') ?? '';
      exhaustAnglearea.text = prefs.getString('number10') ?? '';
      exhaustTAm.text = prefs.getString('number11') ?? '';
      portOpentime.text = prefs.getString('number12') ?? '';
      exhaustTAmrestrictionRPM.text = prefs.getString('number13') ?? '';
      exhaustmostUsefulRPMlow.text = prefs.getString('number14') ?? '';
      exhaustmostusefulRPMhigh.text = prefs.getString('number15') ?? '';
      transferduration.text = prefs.getString('number16') ?? '105';
      blowdowndegree.text = prefs.getString('number17') ?? '';
      blowdownpercent.text = prefs.getString('number18') ?? '';
      transferheightmm.text = prefs.getString('number19') ?? '8';
      transferwidthmm.text = prefs.getString('number20') ?? '55';
      transfersquaretomeanmultiple.text = prefs.getString('number21') ?? '0.95';
      transferareacm2.text = prefs.getString('number22') ?? '';
      transferhalfopenareamultiple.text = prefs.getString('number23') ?? '0.75';
      transferhalfopenareacm2.text = prefs.getString('number24') ?? '';
      transferAnglearea.text = prefs.getString('number25') ?? '';
      transferTAm.text = prefs.getString('number26') ?? '';
      transferTAmrestrictionRPM.text = prefs.getString('number27') ?? '';
      transfermostusefulRPMlow.text = prefs.getString('number28') ?? '';
      transfermostusefulRPMhigh.text = prefs.getString('number29') ?? '';
      intakedurationsdegree.text = prefs.getString('number30') ?? '138';
      intakeheightmm.text = prefs.getString('number31') ?? '13';
      intakewidthmm.text = prefs.getString('number32') ?? '27';
      intakesquaretomeanmultiple.text = prefs.getString('number33') ?? '0.9';
      intakemeanareacm2.text = prefs.getString('number34') ?? '';
      intakehalfopenareamultiple.text = prefs.getString('number35') ?? '0.65';
      intakehalfopenareacm2.text = prefs.getString('number36') ?? '';
      intakeAnglearea.text = prefs.getString('number37') ?? '';
      intakeTAm.text = prefs.getString('number38') ?? '';
      intakeTAmrestrictionRPM.text = prefs.getString('number39') ?? '';
      intakemostusefulRPMlow.text = prefs.getString('number40') ?? '';
      intakemostusefulRPMhigh.text = prefs.getString('number41') ?? '';
      carburetorminsizeRPMmm.text = prefs.getString('number42') ?? '';
      rimsizeinches.text = prefs.getString('number43') ?? '16';
      tireheightinches.text = prefs.getString('number44') ?? '2.25';
      gearratio.text = prefs.getString('number45') ?? '5.05';
      frontsprocket.text = prefs.getString('number46') ?? '17';
      backsprocket.text = prefs.getString('number47') ?? '45';
      speedkmh.text = prefs.getString('number48') ?? '';
      speedmph.text = prefs.getString('number49') ?? '';

      updateResultExhaust();
    });
  }

  void updateResultExhaust() {
    double number1 = double.tryParse(displacement.text) ?? 0;
    double number2 = double.tryParse(rpm.text) ?? 0;
    double number3 = double.tryParse(exhaustDuration.text) ?? 0;
    double number4 = double.tryParse(exhaustHeight.text) ?? 0;
    double number5 = double.tryParse(exhaustWidth.text) ?? 0;
    double number6 = double.tryParse(exhaustSquareToMeanRatio.text) ?? 0;
    // double number7 = double.tryParse(exhaustMeanArea2.text) ?? 0;
    double number7 = (number4 * number5 * number6) / 100;
    exhaustMeanArea2.text = number7.toString();
    double number8 = double.tryParse(exhaustHalfOpenAreaMultiple.text) ?? 0;
    double number9 = number7 * number8;
    exhaustHalfOpenAreacm2.text = number9.toString();

    double number10 = number9 / number1 * number3;
    exhaustAnglearea.text = number10.toString();

    double number11 = number3 / (number2 / 1000) / 6 * number9 / number1;
    exhaustTAm.text = number11.toString();
    double number12 = number3 * 1000 / (number2 * 6);
    portOpentime.text = number12.toString();
    double number13 = number11 / 0.145;
    exhaustTAmrestrictionRPM.text = number13.toString();
    double number14 = number10 / 0.9 * 1000;
    exhaustmostUsefulRPMlow.text = number14.toString();
    double number15 = number10 / 0.84 * 1000;
    exhaustmostusefulRPMhigh.text = number15.toString();
    double number16 = double.tryParse(transferduration.text) ?? 0;
    double number17 = (number3 - number16) / 2;
    blowdowndegree.text = number17.toString();
    double number18 = (number17 / number16) * 100;
    blowdownpercent.text = number18.toString();
    double number19 = double.tryParse(transferheightmm.text) ?? 0;
    double number20 = double.tryParse(transferwidthmm.text) ?? 0;
    double number21 = double.tryParse(transfersquaretomeanmultiple.text) ?? 0;
    double number22 = number19 * number20 * number21 / 100;
    transferareacm2.text = number22.toString();
    double number23 = double.tryParse(transferhalfopenareamultiple.text) ?? 0;
    double number24 = number23 * number22;
    transferhalfopenareacm2.text = number24.toString();
    double number25 = number24 / number1 * number16;
    transferAnglearea.text = number25.toString();
    double number26 = number16 / (number2 / 1000) / 6 * number24 / number1;
    transferTAm.text = number26.toString();
    double number27 = number26 / 0.09;
    transferTAmrestrictionRPM.text = number27.toString();
    double number28 = number25 / 0.6 * 1000;
    transfermostusefulRPMlow.text = number28.toString();
    double number29 = number25 / 0.48 * 1000;
    transfermostusefulRPMhigh.text = number29.toString();
    double number30 = double.tryParse(intakedurationsdegree.text) ?? 0;
    double number31 = double.tryParse(intakeheightmm.text) ?? 0;
    double number32 = double.tryParse(intakewidthmm.text) ?? 0;
    double number33 = double.tryParse(intakesquaretomeanmultiple.text) ?? 0;
    double number34 = number31 * number32 * number33 / 100;
    intakemeanareacm2.text = number34.toString();
    double number35 = double.tryParse(intakehalfopenareamultiple.text) ?? 0;
    double number36 = number34 * number35;
    intakehalfopenareacm2.text = number36.toString();
    double number37 = number36 / number1 * number30;
    intakeAnglearea.text = number37.toString();
    double number38 = number30 / (number2 / 1000) / 6 * number36 / number1;
    intakeTAm.text = number38.toString();
    double number39 = number38 / 0.15;
    intakeTAmrestrictionRPM.text = number39.toString();
    double number40 = number37 / 0.96 * 1000;
    intakemostusefulRPMlow.text = number40.toString();
    double number41 = number37 / 0.84 * 1000;
    intakemostusefulRPMhigh.text = number41.toString();
    double number42 = 0.75 * sqrt(number1 / 1000 * number2);
    carburetorminsizeRPMmm.text = number42.toString();
    double number43 = double.tryParse(rimsizeinches.text) ?? 0;
    double number44 = double.tryParse(tireheightinches.text) ?? 0;
    double number45 = double.tryParse(gearratio.text) ?? 0;
    double number46 = double.tryParse(frontsprocket.text) ?? 0;
    double number47 = double.tryParse(backsprocket.text) ?? 0;
    double number48 = number2 *
        60 /
        number45 /
        number47 *
        number46 *
        (number43 + (number44 * 2)) *
        3.1415 *
        2.54 /
        100000;
    speedkmh.text = number48.toString();
    double number49 = number48 / 1.609;
    speedmph.text = number49.toString();
  }

  void saveDataExhaust() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('number1', displacement.text);
    prefs.setString('number2', rpm.text);
    prefs.setString('number3', exhaustDuration.text);
    prefs.setString('number4', exhaustHeight.text);
    prefs.setString('number5', exhaustWidth.text);
    prefs.setString('number6', exhaustSquareToMeanRatio.text);
    prefs.setString('number7', exhaustMeanArea2.text);
    prefs.setString('number8', exhaustHalfOpenAreaMultiple.text);
    prefs.setString('number9', exhaustHalfOpenAreacm2.text);
    prefs.setString('number10', exhaustAnglearea.text);
    prefs.setString('number11', exhaustTAm.text);
    prefs.setString('number12', portOpentime.text);
    prefs.setString('number13', exhaustTAmrestrictionRPM.text);
    prefs.setString('number14', exhaustmostUsefulRPMlow.text);
    prefs.setString('number15', exhaustmostusefulRPMhigh.text);
    prefs.setString('number16', transferduration.text);
    prefs.setString('number17', blowdowndegree.text);
    prefs.setString('number18', blowdownpercent.text);
    prefs.setString('number19', transferheightmm.text);
    prefs.setString('number20', transferwidthmm.text);
    prefs.setString('number21', transfersquaretomeanmultiple.text);
    prefs.setString('number22', transferareacm2.text);
    prefs.setString('number23', transferhalfopenareamultiple.text);
    prefs.setString('number24', transferhalfopenareacm2.text);
    prefs.setString('number25', transferAnglearea.text);
    prefs.setString('number26', transferTAm.text);
    prefs.setString('number27', transferTAmrestrictionRPM.text);
    prefs.setString('number28', transfermostusefulRPMlow.text);
    prefs.setString('number29', transfermostusefulRPMhigh.text);
    prefs.setString('number30', intakedurationsdegree.text);
    prefs.setString('number31', intakeheightmm.text);
    prefs.setString('number32', intakewidthmm.text);
    prefs.setString('number33', intakesquaretomeanmultiple.text);
    prefs.setString('number34', intakemeanareacm2.text);
    prefs.setString('number35', intakehalfopenareamultiple.text);
    prefs.setString('number36', intakehalfopenareacm2.text);
    prefs.setString('number37', intakeAnglearea.text);
    prefs.setString('number38', intakeTAm.text);
    prefs.setString('number39', intakeTAmrestrictionRPM.text);
    prefs.setString('number40', intakemostusefulRPMlow.text);
    prefs.setString('number41', intakemostusefulRPMhigh.text);
    prefs.setString('number42', carburetorminsizeRPMmm.text);
    prefs.setString('number43', rimsizeinches.text);
    prefs.setString('number44', tireheightinches.text);
    prefs.setString('number45', gearratio.text);
    prefs.setString('number46', frontsprocket.text);
    prefs.setString('number47', backsprocket.text);
    prefs.setString('number48', speedkmh.text);
    prefs.setString('number49', speedmph.text);
  }

  void _launchEmail() async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: 'richardax@hotmail.com',
      query: 'subject=Questions%20or%20Comments', // Subject of the email
    );
    final String emailUri = params.toString();

    if (await launchUrl(Uri.parse(emailUri))) {
      await launchUrl(Uri.parse(emailUri));
    } else {
      throw 'Could not launch email';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color.fromARGB(255, 237, 239, 245).withOpacity(0.99),
      bottomNavigationBar: CustomBannerAd(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Thanks for using this app! I hope it will be helpful in tuning your moped.',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Input fields are white, calculated fields pink.',
                    style: TextStyle(fontSize: 16, color: Colors.pink),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'See instructions below.',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "An ad free version of this app is available here",
                    style: TextStyle(fontSize: 16),
                  ),
                  ClickableLink(
                      'https://play.google.com/store/apps/details?id=com.wTwostroketimingformopedtuninglst&pcampaignid=web_share',
                      'https://play.google.com/store/apps/details?id=com.wTwostroketimingformopedtuninglst&pcampaignid=web_share'),
                  // GestureDetector(
                  //   onTap: _launchEmail,
                  //   child: const Text.rich(
                  //     TextSpan(
                  //       children: [
                  //         TextSpan(
                  //           text: 'Please send me an email at ',
                  //           style: TextStyle(fontSize: 16),
                  //         ),
                  //         TextSpan(
                  //           text: 'richardax@hotmail.com',
                  //           style: TextStyle(
                  //             fontSize: 16,
                  //             color: Colors.blue,
                  //             decoration: TextDecoration.underline,
                  //           ),
                  //         ),
                  //         TextSpan(
                  //           text: ' if you have questions or comments.',
                  //           style: TextStyle(fontSize: 16),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  const SizedBox(height: 20),
                  const Text(
                    'This app was developed in order to tune a Puch Maxi stock cylinder.\n\n'
                    'The Puch Maxi has one gear and centrifugal clutch which means it has to have a full range rpm.\n\n'
                    'Therefore the prepopulated values are quite conservative.',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.black12,
              height: 2,
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Displacement cm3',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: SizedBox(
                width: 100,
                child: TextField(
                  controller: displacement,
                  onChanged: (value) {
                    updateResultExhaust();
                    saveDataExhaust();
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    // Use outlined border
                    isDense: true, // Make the TextField smaller
                    contentPadding: const EdgeInsets.all(8),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black12),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true, // Fill the TextField background
                    fillColor: const Color.fromARGB(
                        255, 245, 242, 242), // Choose a light color here
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'RPM to analyze',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: SizedBox(
                width: 100,
                child: TextField(
                  controller: rpm,
                  onChanged: (value) {
                    updateResultExhaust();
                    saveDataExhaust();
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    // Use outlined border
                    isDense: true, // Make the TextField smaller
                    contentPadding: const EdgeInsets.all(8),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2)),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    filled: true, // Fill the TextField background
                    fillColor: const Color.fromARGB(255, 245, 242, 242),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Exhaust duration °',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 100,
                    child: TextField(
                      controller: exhaustDuration,
                      onChanged: (value) {
                        updateResultExhaust();
                        saveDataExhaust();
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        // Use outlined border
                        isDense: true, // Make the TextField smaller
                        contentPadding: const EdgeInsets.all(8),
                        focusedBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2)),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(10)),
                        filled: true, // Fill the TextField background
                        fillColor: const Color.fromARGB(255, 245, 242, 242),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                        'Ideal 150-175° (lower gives more range,\nhigher gives more peak)'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Exhaust height mm',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 100,
                    child: TextField(
                      controller: exhaustHeight,
                      onChanged: (value) {
                        updateResultExhaust();
                        saveDataExhaust();
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        // Use outlined border
                        isDense: true, // Make the TextField smaller
                        contentPadding: const EdgeInsets.all(8),
                        focusedBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2)),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(10)),
                        filled: true, // Fill the TextField background
                        fillColor: const Color.fromARGB(255, 245, 242, 242),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                        'Note: Only the height uncovered at BDC. \nNot always the same as port height'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Exhaust width mm',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 100,
                    child: TextField(
                      controller: exhaustWidth,
                      onChanged: (value) {
                        updateResultExhaust();
                        saveDataExhaust();
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        // Use outlined border
                        isDense: true, // Make the TextField smaller
                        contentPadding: const EdgeInsets.all(8),
                        focusedBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2)),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(10)),
                        filled: true, // Fill the TextField background
                        fillColor: const Color.fromARGB(255, 245, 242, 242),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text('Stay below 70% of cylinder diameter'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Exhaust square to \nmean ratio',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 100,
                    child: TextField(
                      controller: exhaustSquareToMeanRatio,
                      onChanged: (value) {
                        updateResultExhaust();
                        saveDataExhaust();
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        // Use outlined border
                        isDense: true, // Make the TextField smaller
                        contentPadding: const EdgeInsets.all(8),
                        focusedBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2)),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(10)),
                        filled: true, // Fill the TextField background
                        fillColor: const Color.fromARGB(255, 245, 242, 242),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                        'Rectangle = 1, Oval = 0.785. Use 0.8 \nif you dont know.'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Exhaust mean area cm2',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: SizedBox(
                width: 100,
                child: TextField(
                  controller: exhaustMeanArea2,
                  onChanged: (value) {
                    updateResultExhaust();
                    // saveData();
                  },
                  keyboardType: TextInputType.number,
                  readOnly: true,
                  decoration: InputDecoration(
                    // Use outlined border
                    isDense: true, // Make the TextField smaller
                    contentPadding: const EdgeInsets.all(8),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    // focusedBorder: const OutlineInputBorder(
                    //     borderSide: BorderSide(color: Colors.black, width: 2)),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    filled: true, // Fill the TextField background
                    fillColor: const Color.fromARGB(255, 238, 212, 212),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Exhaust half open area multiple',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 100,
                    child: TextField(
                      controller: exhaustHalfOpenAreaMultiple,
                      onChanged: (value) {
                        updateResultExhaust();
                        saveDataExhaust();
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        // Use outlined border
                        isDense: true, // Make the TextField smaller
                        contentPadding: const EdgeInsets.all(8),
                        focusedBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2)),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(10)),
                        filled: true, // Fill the TextField background
                        fillColor: const Color.fromARGB(255, 245, 242, 242),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text('Leave at 0.7 if you dont know.'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Exhaust half open area cm2',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: SizedBox(
                width: 100,
                child: TextField(
                  controller: exhaustHalfOpenAreacm2,
                  onChanged: (value) {
                    updateResultExhaust();
                    // saveData();
                  },
                  keyboardType: TextInputType.number,
                  readOnly: true,
                  decoration: InputDecoration(
                    // Use outlined border
                    isDense: true, // Make the TextField smaller
                    contentPadding: const EdgeInsets.all(8),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    // focusedBorder: const OutlineInputBorder(
                    //     borderSide: BorderSide(color: Colors.black, width: 2)),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    filled: true, // Fill the TextField background
                    fillColor: const Color.fromARGB(255, 238, 212, 212),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Exhaust Angle area',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: SizedBox(
                width: 100,
                child: TextField(
                  controller: exhaustAnglearea,
                  onChanged: (value) {
                    updateResultExhaust();
                    // saveData();
                  },
                  keyboardType: TextInputType.number,
                  readOnly: true,
                  decoration: InputDecoration(
                    // Use outlined border
                    isDense: true, // Make the TextField smaller
                    contentPadding: const EdgeInsets.all(8),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    // focusedBorder: const OutlineInputBorder(
                    //     borderSide: BorderSide(color: Colors.black, width: 2)),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    filled: true, // Fill the TextField background
                    fillColor: const Color.fromARGB(255, 238, 212, 212),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Exhaust TAm',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 100,
                    child: TextField(
                      controller: exhaustTAm,
                      onChanged: (value) {
                        updateResultExhaust();
                        // saveData();
                      },
                      keyboardType: TextInputType.number,
                      readOnly: true,
                      decoration: InputDecoration(
                        // Use outlined border
                        isDense: true, // Make the TextField smaller
                        contentPadding: const EdgeInsets.all(8),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(10)),
                        // focusedBorder: const OutlineInputBorder(
                        //     borderSide: BorderSide(color: Colors.black, width: 2)),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(10)),
                        filled: true, // Fill the TextField background
                        fillColor: const Color.fromARGB(255, 238, 212, 212),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Needs to be > 0.145'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Port open time (ms)',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: SizedBox(
                width: 100,
                child: TextField(
                  controller: portOpentime,
                  onChanged: (value) {
                    updateResultExhaust();
                    // saveData();
                  },
                  keyboardType: TextInputType.number,
                  readOnly: true,
                  decoration: InputDecoration(
                    // Use outlined border
                    isDense: true, // Make the TextField smaller
                    contentPadding: const EdgeInsets.all(8),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    // focusedBorder: const OutlineInputBorder(
                    //     borderSide: BorderSide(color: Colors.black, width: 2)),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    filled: true, // Fill the TextField background
                    fillColor: const Color.fromARGB(255, 238, 212, 212),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Exhaust TAm restriction\n@RPM',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 100,
                    child: TextField(
                      controller: exhaustTAmrestrictionRPM,
                      onChanged: (value) {
                        updateResultExhaust();
                        // saveData();
                      },
                      keyboardType: TextInputType.number,
                      readOnly: true,
                      decoration: InputDecoration(
                        // Use outlined border
                        isDense: true, // Make the TextField smaller
                        contentPadding: const EdgeInsets.all(8),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(10)),
                        // focusedBorder: const OutlineInputBorder(
                        //     borderSide: BorderSide(color: Colors.black, width: 2)),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(10)),
                        filled: true, // Fill the TextField background
                        fillColor: const Color.fromARGB(255, 238, 212, 212),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                        'TAm @ rpm / 0.145 (needs to be >1 in \norder to not restrict at current rpm)'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Exhaust most useful RPM \n(low)',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: SizedBox(
                width: 100,
                child: TextField(
                  controller: exhaustmostUsefulRPMlow,
                  onChanged: (value) {
                    updateResultExhaust();
                    // saveData();
                  },
                  keyboardType: TextInputType.number,
                  readOnly: true,
                  decoration: InputDecoration(
                    // Use outlined border
                    isDense: true, // Make the TextField smaller
                    contentPadding: const EdgeInsets.all(8),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    // focusedBorder: const OutlineInputBorder(
                    //     borderSide: BorderSide(color: Colors.black, width: 2)),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    filled: true, // Fill the TextField background
                    fillColor: const Color.fromARGB(255, 238, 212, 212),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Exhaust most useful RPM \n(high)',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: SizedBox(
                width: 100,
                child: TextField(
                  controller: exhaustmostusefulRPMhigh,
                  onChanged: (value) {
                    updateResultExhaust();
                    // saveData();
                  },
                  keyboardType: TextInputType.number,
                  readOnly: true,
                  decoration: InputDecoration(
                    // Use outlined border
                    isDense: true, // Make the TextField smaller
                    contentPadding: const EdgeInsets.all(8),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    // focusedBorder: const OutlineInputBorder(
                    //     borderSide: BorderSide(color: Colors.black, width: 2)),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    filled: true, // Fill the TextField background
                    fillColor: const Color.fromARGB(255, 238, 212, 212),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Transfer duration °',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 100,
                    child: TextField(
                      controller: transferduration,
                      onChanged: (value) {
                        updateResultExhaust();
                        saveDataExhaust();
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        // Use outlined border
                        isDense: true, // Make the TextField smaller
                        contentPadding: const EdgeInsets.all(8),
                        focusedBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2)),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(10)),
                        filled: true, // Fill the TextField background
                        fillColor: const Color.fromARGB(255, 245, 242, 242),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text('Ideal 115-120°'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Blow down °',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 100,
                    child: TextField(
                      controller: blowdowndegree,
                      onChanged: (value) {
                        updateResultExhaust();
                        // saveData();
                      },
                      keyboardType: TextInputType.number,
                      readOnly: true,
                      decoration: InputDecoration(
                        // Use outlined border
                        isDense: true, // Make the TextField smaller
                        contentPadding: const EdgeInsets.all(8),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(10)),
                        // focusedBorder: const OutlineInputBorder(
                        //     borderSide: BorderSide(color: Colors.black, width: 2)),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(10)),
                        filled: true, // Fill the TextField background
                        fillColor: const Color.fromARGB(255, 238, 212, 212),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                        'Ideal 20-25° (lower gives more range, \nhigher gives more peak)'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Blow down %',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 100,
                    child: TextField(
                      controller: blowdownpercent,
                      onChanged: (value) {
                        updateResultExhaust();
                        // saveData();
                      },
                      keyboardType: TextInputType.number,
                      readOnly: true,
                      decoration: InputDecoration(
                        // Use outlined border
                        isDense: true, // Make the TextField smaller
                        contentPadding: const EdgeInsets.all(8),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(10)),
                        // focusedBorder: const OutlineInputBorder(
                        //     borderSide: BorderSide(color: Colors.black, width: 2)),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(10)),
                        filled: true, // Fill the TextField background
                        fillColor: const Color.fromARGB(255, 238, 212, 212),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text('Ideal 17-19%'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Transfer height mm',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextField(
                          controller: transferheightmm,
                          onChanged: (value) {
                            updateResultExhaust();
                            saveDataExhaust();
                          },
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            // Use outlined border
                            isDense: true, // Make the TextField smaller
                            contentPadding: const EdgeInsets.all(8),
                            focusedBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black, width: 2)),
                            border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.black12),
                                borderRadius: BorderRadius.circular(10)),
                            filled: true, // Fill the TextField background
                            fillColor: const Color.fromARGB(255, 245, 242, 242),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                            'Note: Only the height uncovered at BDC. \nNot always the same as port height'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Transfer width mm',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: SizedBox(
                width: 100,
                child: TextField(
                  controller: transferwidthmm,
                  onChanged: (value) {
                    updateResultExhaust();
                    saveDataExhaust();
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    // Use outlined border
                    isDense: true, // Make the TextField smaller
                    contentPadding: const EdgeInsets.all(8),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2)),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    filled: true, // Fill the TextField background
                    fillColor: const Color.fromARGB(255, 245, 242, 242),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Transfer square to mean multiple',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 100,
                    child: TextField(
                      controller: transfersquaretomeanmultiple,
                      onChanged: (value) {
                        updateResultExhaust();
                        saveDataExhaust();
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        // Use outlined border
                        isDense: true, // Make the TextField smaller
                        contentPadding: const EdgeInsets.all(8),
                        focusedBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2)),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(10)),
                        filled: true, // Fill the TextField background
                        fillColor: const Color.fromARGB(255, 245, 242, 242),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                        'Rectangle = 1, Oval = 0.785. Use 0.95 \nif you dont know.'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Transfer area cm2',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: SizedBox(
                width: 100,
                child: TextField(
                  controller: transferareacm2,
                  onChanged: (value) {
                    updateResultExhaust();
                    // saveData();
                  },
                  keyboardType: TextInputType.number,
                  readOnly: true,
                  decoration: InputDecoration(
                    // Use outlined border
                    isDense: true, // Make the TextField smaller
                    contentPadding: const EdgeInsets.all(8),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    // focusedBorder: const OutlineInputBorder(
                    //     borderSide: BorderSide(color: Colors.black, width: 2)),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    filled: true, // Fill the TextField background
                    fillColor: const Color.fromARGB(255, 238, 212, 212),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Transfer half open area multiple',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 100,
                    child: TextField(
                      controller: transferhalfopenareamultiple,
                      onChanged: (value) {
                        updateResultExhaust();
                        saveDataExhaust();
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        // Use outlined border
                        isDense: true, // Make the TextField smaller
                        contentPadding: const EdgeInsets.all(8),
                        focusedBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2)),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(10)),
                        filled: true, // Fill the TextField background
                        fillColor: const Color.fromARGB(255, 245, 242, 242),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text('Leave at 0.75 if you dont know.'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Transfer half open area cm2',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: SizedBox(
                width: 100,
                child: TextField(
                  controller: transferhalfopenareacm2,
                  onChanged: (value) {
                    updateResultExhaust();
                    // saveData();
                  },
                  keyboardType: TextInputType.number,
                  readOnly: true,
                  decoration: InputDecoration(
                    // Use outlined border
                    isDense: true, // Make the TextField smaller
                    contentPadding: const EdgeInsets.all(8),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    // focusedBorder: const OutlineInputBorder(
                    //     borderSide: BorderSide(color: Colors.black, width: 2)),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    filled: true, // Fill the TextField background
                    fillColor: const Color.fromARGB(255, 238, 212, 212),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Transfer Angle area',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: SizedBox(
                width: 100,
                child: TextField(
                  controller: transferAnglearea,
                  onChanged: (value) {
                    updateResultExhaust();
                    // saveData();
                  },
                  keyboardType: TextInputType.number,
                  readOnly: true,
                  decoration: InputDecoration(
                    // Use outlined border
                    isDense: true, // Make the TextField smaller
                    contentPadding: const EdgeInsets.all(8),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    // focusedBorder: const OutlineInputBorder(
                    //     borderSide: BorderSide(color: Colors.black, width: 2)),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    filled: true, // Fill the TextField background
                    fillColor: const Color.fromARGB(255, 238, 212, 212),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Transfer TAm',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 100,
                    child: TextField(
                      controller: transferTAm,
                      onChanged: (value) {
                        updateResultExhaust();
                        // saveData();
                      },
                      keyboardType: TextInputType.number,
                      readOnly: true,
                      decoration: InputDecoration(
                        // Use outlined border
                        isDense: true, // Make the TextField smaller
                        contentPadding: const EdgeInsets.all(8),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(10)),
                        // focusedBorder: const OutlineInputBorder(
                        //     borderSide: BorderSide(color: Colors.black, width: 2)),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(10)),
                        filled: true, // Fill the TextField background
                        fillColor: const Color.fromARGB(255, 238, 212, 212),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text('Needs to be > 0.09'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Transfer TAm restriction \n@RPM',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 100,
                    child: TextField(
                      controller: transferTAmrestrictionRPM,
                      onChanged: (value) {
                        updateResultExhaust();
                        // saveData();
                      },
                      keyboardType: TextInputType.number,
                      readOnly: true,
                      decoration: InputDecoration(
                        // Use outlined border
                        isDense: true, // Make the TextField smaller
                        contentPadding: const EdgeInsets.all(8),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(10)),
                        // focusedBorder: const OutlineInputBorder(
                        //     borderSide: BorderSide(color: Colors.black, width: 2)),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(10)),
                        filled: true, // Fill the TextField background
                        fillColor: const Color.fromARGB(255, 238, 212, 212),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                        'TAm @ rpm / 0.15 (needs to be >1 in \norder to not restrict at current rpm)'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Transfer most useful RPM (low)',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: SizedBox(
                width: 100,
                child: TextField(
                  controller: transfermostusefulRPMlow,
                  onChanged: (value) {
                    updateResultExhaust();
                    // saveData();
                  },
                  keyboardType: TextInputType.number,
                  readOnly: true,
                  decoration: InputDecoration(
                    // Use outlined border
                    isDense: true, // Make the TextField smaller
                    contentPadding: const EdgeInsets.all(8),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    // focusedBorder: const OutlineInputBorder(
                    //     borderSide: BorderSide(color: Colors.black, width: 2)),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    filled: true, // Fill the TextField background
                    fillColor: const Color.fromARGB(255, 238, 212, 212),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Transfer most useful RPM (high)',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: SizedBox(
                width: 100,
                child: TextField(
                  controller: transfermostusefulRPMhigh,
                  onChanged: (value) {
                    updateResultExhaust();
                    // saveData();
                  },
                  keyboardType: TextInputType.number,
                  readOnly: true,
                  decoration: InputDecoration(
                    // Use outlined border
                    isDense: true, // Make the TextField smaller
                    contentPadding: const EdgeInsets.all(8),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    // focusedBorder: const OutlineInputBorder(
                    //     borderSide: BorderSide(color: Colors.black, width: 2)),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    filled: true, // Fill the TextField background
                    fillColor: const Color.fromARGB(255, 238, 212, 212),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Intake durations °',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 100,
                    child: TextField(
                      controller: intakedurationsdegree,
                      onChanged: (value) {
                        updateResultExhaust();
                        saveDataExhaust();
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        // Use outlined border
                        isDense: true, // Make the TextField smaller
                        contentPadding: const EdgeInsets.all(8),
                        focusedBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2)),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(10)),
                        filled: true, // Fill the TextField background
                        fillColor: const Color.fromARGB(255, 245, 242, 242),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                        'Ideal 130-150 (>140 will decrease torque \nunder 4,000rpm)'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Intake height mm',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 100,
                    child: TextField(
                      controller: intakeheightmm,
                      onChanged: (value) {
                        updateResultExhaust();
                        saveDataExhaust();
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        // Use outlined border
                        isDense: true, // Make the TextField smaller
                        contentPadding: const EdgeInsets.all(8),
                        focusedBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2)),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(10)),
                        filled: true, // Fill the TextField background
                        fillColor: const Color.fromARGB(255, 245, 242, 242),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                        'Note: Only the height uncovered at TDC. \nNot always the same as port height'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Intake width mm',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: SizedBox(
                width: 100,
                child: TextField(
                  controller: intakewidthmm,
                  onChanged: (value) {
                    updateResultExhaust();
                    saveDataExhaust();
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    // Use outlined border
                    isDense: true, // Make the TextField smaller
                    contentPadding: const EdgeInsets.all(8),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2)),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    filled: true, // Fill the TextField background
                    fillColor: const Color.fromARGB(255, 245, 242, 242),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Intake square to mean multiple',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 100,
                    child: TextField(
                      controller: intakesquaretomeanmultiple,
                      onChanged: (value) {
                        updateResultExhaust();
                        saveDataExhaust();
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        // Use outlined border
                        isDense: true, // Make the TextField smaller
                        contentPadding: const EdgeInsets.all(8),
                        focusedBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2)),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(10)),
                        filled: true, // Fill the TextField background
                        fillColor: const Color.fromARGB(255, 245, 242, 242),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                        'Rectangle = 1, Oval = 0.785. Use \n0.9 if you dont know.'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Intake mean area cm2',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: SizedBox(
                width: 100,
                child: TextField(
                  controller: intakemeanareacm2,
                  onChanged: (value) {
                    updateResultExhaust();
                    // saveData();
                  },
                  keyboardType: TextInputType.number,
                  readOnly: true,
                  decoration: InputDecoration(
                    // Use outlined border
                    isDense: true, // Make the TextField smaller
                    contentPadding: const EdgeInsets.all(8),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    // focusedBorder: const OutlineInputBorder(
                    //     borderSide: BorderSide(color: Colors.black, width: 2)),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    filled: true, // Fill the TextField background
                    fillColor: const Color.fromARGB(255, 238, 212, 212),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Intake half open area multiple',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 100,
                    child: TextField(
                      controller: intakehalfopenareamultiple,
                      onChanged: (value) {
                        updateResultExhaust();
                        saveDataExhaust();
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        // Use outlined border
                        isDense: true, // Make the TextField smaller
                        contentPadding: const EdgeInsets.all(8),
                        focusedBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2)),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(10)),
                        filled: true, // Fill the TextField background
                        fillColor: const Color.fromARGB(255, 245, 242, 242),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text('Leave at 0.65 if you dont know.'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Intake half open area cm2',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: SizedBox(
                width: 100,
                child: TextField(
                  controller: intakehalfopenareacm2,
                  onChanged: (value) {
                    updateResultExhaust();
                    // saveData();
                  },
                  keyboardType: TextInputType.number,
                  readOnly: true,
                  decoration: InputDecoration(
                    // Use outlined border
                    isDense: true, // Make the TextField smaller
                    contentPadding: const EdgeInsets.all(8),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    // focusedBorder: const OutlineInputBorder(
                    //     borderSide: BorderSide(color: Colors.black, width: 2)),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    filled: true, // Fill the TextField background
                    fillColor: const Color.fromARGB(255, 238, 212, 212),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Intake Angle area',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: SizedBox(
                width: 100,
                child: TextField(
                  controller: intakeAnglearea,
                  onChanged: (value) {
                    updateResultExhaust();
                    // saveData();
                  },
                  keyboardType: TextInputType.number,
                  readOnly: true,
                  decoration: InputDecoration(
                    // Use outlined border
                    isDense: true, // Make the TextField smaller
                    contentPadding: const EdgeInsets.all(8),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    // focusedBorder: const OutlineInputBorder(
                    //     borderSide: BorderSide(color: Colors.black, width: 2)),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    filled: true, // Fill the TextField background
                    fillColor: const Color.fromARGB(255, 238, 212, 212),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Intake TAm',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 100,
                    child: TextField(
                      controller: intakeTAm,
                      onChanged: (value) {
                        updateResultExhaust();
                        // saveData();
                      },
                      keyboardType: TextInputType.number,
                      readOnly: true,
                      decoration: InputDecoration(
                        // Use outlined border
                        isDense: true, // Make the TextField smaller
                        contentPadding: const EdgeInsets.all(8),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(10)),
                        // focusedBorder: const OutlineInputBorder(
                        //     borderSide: BorderSide(color: Colors.black, width: 2)),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(10)),
                        filled: true, // Fill the TextField background
                        fillColor: const Color.fromARGB(255, 238, 212, 212),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text('Needs to be > 0.15 for piston port intake'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Intake TAm restriction @RPM',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 100,
                    child: TextField(
                      controller: intakeTAmrestrictionRPM,
                      onChanged: (value) {
                        updateResultExhaust();
                        // saveData();
                      },
                      keyboardType: TextInputType.number,
                      readOnly: true,
                      decoration: InputDecoration(
                        // Use outlined border
                        isDense: true, // Make the TextField smaller
                        contentPadding: const EdgeInsets.all(8),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(10)),
                        // focusedBorder: const OutlineInputBorder(
                        //     borderSide: BorderSide(color: Colors.black, width: 2)),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(10)),
                        filled: true, // Fill the TextField background
                        fillColor: const Color.fromARGB(255, 238, 212, 212),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                        'TAm @ rpm / 0.15 (needs to be >1 in \norder to not restrict at current rpm)'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Intake most useful RPM (low)',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: SizedBox(
                width: 100,
                child: TextField(
                  controller: intakemostusefulRPMlow,
                  onChanged: (value) {
                    updateResultExhaust();
                    // saveData();
                  },
                  keyboardType: TextInputType.number,
                  readOnly: true,
                  decoration: InputDecoration(
                    // Use outlined border
                    isDense: true, // Make the TextField smaller
                    contentPadding: const EdgeInsets.all(8),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    // focusedBorder: const OutlineInputBorder(
                    //     borderSide: BorderSide(color: Colors.black, width: 2)),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    filled: true, // Fill the TextField background
                    fillColor: const Color.fromARGB(255, 238, 212, 212),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Intake most useful RPM (high)',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: SizedBox(
                width: 100,
                child: TextField(
                  controller: intakemostusefulRPMhigh,
                  onChanged: (value) {
                    updateResultExhaust();
                    // saveData();
                  },
                  keyboardType: TextInputType.number,
                  readOnly: true,
                  decoration: InputDecoration(
                    // Use outlined border
                    isDense: true, // Make the TextField smaller
                    contentPadding: const EdgeInsets.all(8),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    // focusedBorder: const OutlineInputBorder(
                    //     borderSide: BorderSide(color: Colors.black, width: 2)),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    filled: true, // Fill the TextField background
                    fillColor: const Color.fromARGB(255, 238, 212, 212),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Carburetor min size @RPM (mm)',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 100,
                    child: TextField(
                      controller: carburetorminsizeRPMmm,
                      onChanged: (value) {
                        updateResultExhaust();
                        // saveData();
                      },
                      keyboardType: TextInputType.number,
                      readOnly: true,
                      decoration: InputDecoration(
                        // Use outlined border
                        isDense: true, // Make the TextField smaller
                        contentPadding: const EdgeInsets.all(8),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(10)),
                        // focusedBorder: const OutlineInputBorder(
                        //     borderSide: BorderSide(color: Colors.black, width: 2)),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(10)),
                        filled: true, // Fill the TextField background
                        fillColor: const Color.fromARGB(255, 238, 212, 212),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                        'Min size of carburetor in order to \nproduce power at RPM analyzed.'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Rim size (inches)',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: SizedBox(
                width: 100,
                child: TextField(
                  controller: rimsizeinches,
                  onChanged: (value) {
                    updateResultExhaust();
                    saveDataExhaust();
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    // Use outlined border
                    isDense: true, // Make the TextField smaller
                    contentPadding: const EdgeInsets.all(8),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2)),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    filled: true, // Fill the TextField background
                    fillColor: const Color.fromARGB(255, 245, 242, 242),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Tire height (inches)',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: SizedBox(
                width: 100,
                child: TextField(
                  controller: tireheightinches,
                  onChanged: (value) {
                    updateResultExhaust();
                    saveDataExhaust();
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    // Use outlined border
                    isDense: true, // Make the TextField smaller
                    contentPadding: const EdgeInsets.all(8),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2)),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    filled: true, // Fill the TextField background
                    fillColor: const Color.fromARGB(255, 245, 242, 242),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Gear ratio (crank revolutions per 1 \nfront sprocket revolution)',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: SizedBox(
                width: 100,
                child: TextField(
                  controller: gearratio,
                  onChanged: (value) {
                    updateResultExhaust();
                    saveDataExhaust();
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    // Use outlined border
                    isDense: true, // Make the TextField smaller
                    contentPadding: const EdgeInsets.all(8),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2)),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    filled: true, // Fill the TextField background
                    fillColor: const Color.fromARGB(255, 245, 242, 242),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Front sprocket',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: SizedBox(
                width: 100,
                child: TextField(
                  controller: frontsprocket,
                  onChanged: (value) {
                    updateResultExhaust();
                    saveDataExhaust();
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    // Use outlined border
                    isDense: true, // Make the TextField smaller
                    contentPadding: const EdgeInsets.all(8),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2)),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    filled: true, // Fill the TextField background
                    fillColor: const Color.fromARGB(255, 245, 242, 242),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Back sprocket',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: SizedBox(
                width: 100,
                child: TextField(
                  controller: backsprocket,
                  onChanged: (value) {
                    updateResultExhaust();
                    saveDataExhaust();
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    // Use outlined border
                    isDense: true, // Make the TextField smaller
                    contentPadding: const EdgeInsets.all(8),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2)),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    filled: true, // Fill the TextField background
                    fillColor: const Color.fromARGB(255, 245, 242, 242),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Speed (km/h)',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: SizedBox(
                width: 100,
                child: TextField(
                  controller: speedkmh,
                  onChanged: (value) {
                    updateResultExhaust();
                    // saveData();
                  },
                  keyboardType: TextInputType.number,
                  readOnly: true,
                  decoration: InputDecoration(
                    // Use outlined border
                    isDense: true, // Make the TextField smaller
                    contentPadding: const EdgeInsets.all(8),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    // focusedBorder: const OutlineInputBorder(
                    //     borderSide: BorderSide(color: Colors.black, width: 2)),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    filled: true, // Fill the TextField background
                    fillColor: const Color.fromARGB(255, 238, 212, 212),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Speed (mph)',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: SizedBox(
                width: 100,
                child: TextField(
                  controller: speedmph,
                  onChanged: (value) {
                    updateResultExhaust();
                    // saveData();
                  },
                  keyboardType: TextInputType.number,
                  readOnly: true,
                  decoration: InputDecoration(
                    // Use outlined border
                    isDense: true, // Make the TextField smaller
                    contentPadding: const EdgeInsets.all(8),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    // focusedBorder: const OutlineInputBorder(
                    //     borderSide: BorderSide(color: Colors.black, width: 2)),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    filled: true, // Fill the TextField background
                    fillColor: const Color.fromARGB(255, 238, 212, 212),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Info(),
            const turing(),
            const Exhaust(),
            const Transfer(),
            const Intake(),
            table(),
            DurationExhaust(),
            PostShape(),
            Blow(),
            Piston(),
            Tips(),
            Usefullinks(),
          ],
        ),
      ),
    );
  }
}

class ClickableLink extends StatelessWidget {
  final String title;
  final String url;

  ClickableLink(this.title, this.url);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _launchURL(url),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.blue,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
