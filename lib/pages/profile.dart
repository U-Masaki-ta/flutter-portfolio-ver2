import 'package:flutter/material.dart';
import 'package:portfolio/theme.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({Key? key}) : super(key: key);
  @override
  ProfileWidgetState createState() => ProfileWidgetState();
}

class ProfileWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return (_createProfile(context));
  }

  Widget _createProfile(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    //double screenHeight = MediaQuery.of(context).size.height;
    double mW = screenWidth * 0.05;
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 500, minHeight: 600),
        child: SizedBox(
          height: 600,
          child: Container(
            //padding: EdgeInsets.only(top: ),
            margin: EdgeInsets.fromLTRB(mW, kToolbarHeight, mW, kToolbarHeight),
            decoration: BoxDecoration(
              color: customSwatch.shade200,
              borderRadius: BorderRadius.circular(15),
            ),
            child: _profileArea(),
          ),
        ),
      ),
    );
  }

  Widget _profileArea() {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      //crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.fromLTRB(0, 30, 0, 20),
          width: 100,
          height: 100,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/imgs/profile.jpg'),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 15),
          child: const Center(
            child: Text("中山 雅貴\nMasaki Nakayama",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                )),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 15),
          child: const Center(
            child: Text("中京大学工学部\n情報工学科4年\nラシキアゼミ所属",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                )),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(30, 20, 30, 10),
          child: const Center(
            child: Text(
                'イラスト・写真・ゲーム・旅行・読書\n'
                'など多趣味な人間です. アウトドア系\n'
                'の趣味があまり出来ていないのが最近\n'
                'の悩みですが, その分インドアの趣味\n'
                'を充実させています. 大学では主にア\n'
                'プリケーション開発に注力して活動し\n'
                'ています.',
                style: TextStyle(
                  overflow: TextOverflow.fade,
                  fontSize: 14,
                  color: Colors.black,
                )),
          ),
        ),
      ],
    );
  }
}
