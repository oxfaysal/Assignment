import 'package:assignment/conts/app_text_style.dart';
import 'package:assignment/widgets/image.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 16, right: 16, top: 60, bottom: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Discover", style: AppTextStyle.titleBlack36),
            SizedBox(height: 16),
            Text(
              "What’s new today".toUpperCase(),
              style: AppTextStyle.titleBlack13,
            ),
            SizedBox(height: 22),
            Image.network(
              "https://images.unsplash.com/photo-1768933294235-afd2214040d7",
              height: 380,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            SizedBox(height: 22),

            Row(
              spacing: 10,
              children: [
                CircleAvatar(
                  radius: 22,
                  backgroundImage: NetworkImage(
                    "https://avatars.githubusercontent.com/u/248434219",
                  ),
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Faysal", style: AppTextStyle.titleBlack13w700),
                    Text("@oxfaysal", style: AppTextStyle.titleBlack11w400),
                  ],
                ),
              ],
            ),

            SizedBox(height: 56),

            Text("Browse all".toUpperCase(), style: AppTextStyle.titleBlack13),

            SizedBox(height: 22),

            Row(
              spacing: 10,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5 - 21,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      galleryImage(
                        imageUrl:
                            "https://images.unsplash.com/photo-1570481662006-a3a1374699e8",
                        height: 220,
                      ),
                      galleryImage(
                        imageUrl:
                            "https://images.unsplash.com/photo-1573865526739-10659fec78a5",
                        height: 310,
                      ),
                      galleryImage(
                        imageUrl:
                            "https://images.unsplash.com/photo-1516475429286-465d815a0df7",
                        height: 220,
                      ),
                      galleryImage(
                        imageUrl:
                            "https://images.unsplash.com/photo-1506014299253-3725319c0f69",
                        height: 310,
                      ),
                      galleryImage(
                        imageUrl:
                            "https://images.unsplash.com/photo-1516496636080-14fb876e029d",
                        height: 310,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5 - 21,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      galleryImage(
                        imageUrl:
                            "https://images.unsplash.com/photo-1540968221243-29f5d70540bf",
                        height: 310,
                      ),
                      galleryImage(
                        imageUrl:
                            "https://images.unsplash.com/photo-1508231610255-092c15bf08f7",
                        height: 310,
                      ),
                      galleryImage(
                        imageUrl:
                            "https://images.unsplash.com/photo-1633867573885-34f80cc0072a",
                        height: 220,
                      ),
                      galleryImage(
                        imageUrl:
                            "https://images.unsplash.com/photo-1555169062-013468b47731",
                        height: 310,
                      ),
                      galleryImage(
                        imageUrl:
                            "https://images.unsplash.com/photo-1617111490936-07b47eafdcd4",
                        height: 220,
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 22),

            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 52,
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: BorderSide(width: 2, color: Color(0xFF000000)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                  )
                ),
                child: Text(
                  "see more".toUpperCase(),
                  style: AppTextStyle.titleBlack13,
                ),
              ),
            ),

            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
