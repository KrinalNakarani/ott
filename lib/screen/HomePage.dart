import 'package:flutter/material.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  List img = [
    "assets/images/A_P.png",
    "assets/images/d_h.png",
    "assets/images/netflix.png",
    "assets/images/sony.png",
    "assets/images/voot.png",
    "assets/images/zee5.png"
  ];
  List link = [
    "https://www.primevideo.com/?ref_=dvm_pds_amz_in_as_s_g_146_mkw_slgAX6a65-dc&mrntrk=pcrid_423192672131_slid__pgrid_82649959367_pgeo_9062198_x__ptid_kwd-303629226711",
    "https://www.hotstar.com/in",
    "https://www.netflix.com/in/",
    "https://www.sonyliv.com/",
    "https://www.voot.com/",
    "https://www.zee5.com/?utm_source=GoogleSearch&utm_medium=Mark_CPA&utm_campaign=Search_SVOD_ZEE5-Brand-ZEE5-Only-Ex-Performance&utm_term=zee5&utm_content=Brand-ZEE5-Only-Ex&gclid=Cj0KCQjw5ZSWBhCVARIsALERCvysTFAFIQfUG_fF4VWQKFzIfH2C7ppu35GKhU8DmdRHctyglZk7gBkaAj2kEALw_wcB&gclsrc=aw.ds"
  ];
  List Name = [
    "Amazon Prime Video",
    "Disney + hotstar",
    "Netflix",
    "SonyLiv",
    "Voot",
    "Zee5"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("OTT"),
          centerTitle: true,
        ),
        body: Container(
          height: double.infinity,
          color: Colors.black,
          child: ListView.builder(
            itemCount: img.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'second',
                      arguments: link[index]);
                },
                child: Container(
                  height: 450,
                  width: 400,
                  margin: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Container(
                        height: 400,
                        width: 400,
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                img[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "${Name[index]}",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
