import 'package:bangun_datar_kelas_b/page/lingkaran-page.dart';
import 'package:bangun_datar_kelas_b/page/persegi-page.dart';
import 'package:bangun_datar_kelas_b/page/persegi-panjang-page.dart';
import 'package:bangun_datar_kelas_b/page/segitiga-page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              '𝕵𝕴𝕹𝕲𝕾𝕶𝖀𝖄',
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: [
            Row(
              children: [
                Expanded(
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PersegiApp()));
                        },
                        child: CustomMenu(
                            imageAsset: "assets/persegi.jpg",
                            title: "𝐏𝐄𝐑𝐒𝐄𝐆𝐈"))),
                Expanded(
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PersegiPanjangApp()));
                        },
                        child: CustomMenu(
                            imageAsset: "assets/persegi-panjang.jpg",
                            title: "𝐏𝐄𝐑𝐒𝐄𝐆𝐈 𝐏𝐀𝐍𝐉𝐀𝐍𝐆"))),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LingkaranApp()));
                        },
                        child: CustomMenu(
                            imageAsset: "assets/bulat.jpg", title: "𝐁𝐔𝐋𝐀𝐓"))),
                Expanded(
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SegitagaApp()));
                        },
                        child: CustomMenu(
                            imageAsset: "assets/segitiga.jpg",
                            title: "𝐒𝐄𝐆𝐈𝐓𝐈𝐆𝐀"))),
              ],
            ),
            Text(
              '',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                color: Colors.blueAccent,
                decorationStyle: TextDecorationStyle.solid,
                decoration: TextDecoration.underline,
                decorationThickness: 2,
              ),
            )
          ],
        ));
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key,
    required this.imageAsset,
    required this.title,
  });

  final String imageAsset;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Color(0xd4d4d4).withOpacity(1),
              offset: Offset(3, 3),
              blurRadius: 2,
              spreadRadius: 0,
            )
          ]),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            imageAsset,
            height: 50,
          ),
          Text(
            title,
            maxLines: 1,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w900,
              color: Colors.black,
              letterSpacing: 2,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
