import 'package:bookly_app_test/core/utils/assets.dart';
import 'package:bookly_app_test/features/home/presentation/views/widgets/rating_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ItemBestSellerWidget extends StatelessWidget {
  const ItemBestSellerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/bookDetailsScreen');
      },
      child: Container(
        padding: const EdgeInsets.only(left: 12, bottom: 18),
        height: MediaQuery.sizeOf(context).height * .18,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 2 / 3,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AssetsData.bookImage),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: const Text(
                      "The Jungle Book The Jungle The Jungle Book The Jungle ",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "THe Author name",
                    style: TextStyle(
                      color: Colors.white.withOpacity(.6),
                      fontSize: 16,
                    ),
                  ),
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 12.0),
                        child: Text(
                          r"19.99 $",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      RatingWidget(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
