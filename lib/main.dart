import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dev_icons/dev_icons.dart';

void main() {
  runApp(OnePageApp());
}

class OnePageApp extends StatelessWidget {
  const OnePageApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hello, I am Berkan!",
      theme: theme,
      home: Home(),
    );
  }

  ThemeData get theme => ThemeData(
        fontFamily: GoogleFonts.inter().fontFamily,
        textTheme: ThemeData.light().textTheme.apply(fontFamily: GoogleFonts.inter().fontFamily),
      );
}

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: body),
    );
  }

  Widget get body => ListView(
        padding: const EdgeInsets.all(32.0),
        physics: BouncingScrollPhysics(),
        children: [
          avatar,
          buildTitle("BERKAN ASLAN"),
          buildParagraph(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. " +
                "Nam eget magna magna. Pellentesque quis mi efficitur " +
                "sapien rutrum finibus. Duis placerat tortor in eleifend " +
                "sagittis. Nulla sed nisi tristique, tempor odio quis, finibus odio.",
          ),
          icons,
        ],
      );

  Widget get avatar => CircleAvatar(
        radius: 136,
        backgroundColor: Colors.red,
        child: CircleAvatar(backgroundColor: Colors.blue, radius: 128),
      );

  Widget buildTitle(String text) => Text(
        text,
        style: TextStyle(fontSize: 64, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      );

  Widget buildParagraph(String text) => Text(
        text,
        style: TextStyle(fontSize: 12),
        textAlign: TextAlign.center,
      );

  Widget get icons => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            iconsRow1,
            iconsRow2,
          ],
        ),
      );
}

Widget get iconsRow1 => Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          DevIcon(icon: DevIcons.html5Plain),
          DevIcon(icon: DevIcons.css3Plain),
          DevIcon(icon: DevIcons.bootstrapPlain),
          DevIcon(icon: DevIcons.typescriptPlain),
          DevIcon(icon: DevIcons.javaPlain),
          DevIcon(icon: DevIcons.dartPlain),
        ],
      ),
    );

Widget get iconsRow2 => Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          DevIcon(icon: DevIcons.flutterPlain),
          DevIcon(icon: DevIcons.angularjsPlain),
          DevIcon(icon: DevIcons.springPlain),
          DevIcon(icon: DevIcons.gitPlain),
          DevIcon(icon: DevIcons.amazonwebservicesPlainWordmark),
          DevIcon(icon: DevIcons.androidPlain),
          DevIcon(icon: DevIcons.firebasePlain),
          DevIcon(icon: DevIcons.wordpressPlain),
        ],
      ),
    );

class DevIcon extends StatelessWidget {
  final IconData icon;

  const DevIcon({Key key, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: Colors.black54,
      size: 64,
    );
  }
}
