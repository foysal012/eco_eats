import 'package:eco_eats/resource/app_colors/app_colors.dart';
import 'package:eco_eats/resource/constant/app_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';

class CategoryDetailsPage extends StatefulWidget {
  const CategoryDetailsPage({super.key});

  @override
  State<CategoryDetailsPage> createState() => _CategoryDetailsPageState();
}

class _CategoryDetailsPageState extends State<CategoryDetailsPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SizedBox(
        height: height,
        width: width,
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                decoration: const BoxDecoration(
                    color: AppColors.appHeaderBackground
                ),
                child: Stack(
                  children: [
                    Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/images/fruits.png'))
                        )
                    ),

                    Positioned(
                        top: 25.0,
                        left: 10.0,
                        right: 10.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () => Navigator.of(context).pop(),
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: const Icon(Icons.arrow_back_ios),
                              ),
                            ),
                            const Text('Details',
                              style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: const Icon(Icons.notifications),
                            ),
                          ],
                        )
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                padding: const EdgeInsets.only(
                    top: 20.0,
                    left: 10.0,
                    right: 10.0
                ),
                alignment: Alignment.centerLeft,
                decoration: const BoxDecoration(
                    color: AppColors.appBodyBackground
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Fresh Orange',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            color: Colors.black
                        ),
                      ),
                      const Gap(5.0),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RatingBarIndicator(
                                rating: 3.75,
                                itemBuilder: (context, index) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                itemCount: 5,
                                itemSize: 30.0,
                                direction: Axis.horizontal,
                              ),
                              const Gap(5.0),

                              RichText(
                                text: const TextSpan(
                                    children: [
                                      TextSpan(text: '\$ 2.99',
                                          style: TextStyle(fontSize: 18.0,
                                              color: AppColors.primaryColor, fontWeight: FontWeight.bold)),
                                      TextSpan(text: ' / kg',
                                          style: TextStyle(fontSize: 18.0,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))
                                    ]
                                ),

                              )
                            ],
                          ),

                          const Row(
                            children: [
                              CircleAvatar(
                                radius: 20.0,
                                backgroundColor: AppColors.appHeaderBackground,
                                child: Icon(Icons.remove),
                              ),
                              Gap(5.0),

                              Text('1',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Gap(5.0),

                              CircleAvatar(
                                radius: 20.0,
                                backgroundColor: AppColors.primaryColor,
                                child: Icon(Icons.add),
                              )
                            ],
                          )
                        ],
                      ),

                      const Gap(20.0),
                      const Text('Product Details',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Colors.black
                        ),
                      ),
                      const Gap(5.0),

                      Text(AppString.productDetails,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.0,
                            color: Colors.black
                        ),
                      ),

                      const Gap(20.0),
                      const Text('Related Product',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Colors.black
                        ),
                      ),
                      const Gap(5.0),

                      SizedBox(
                        height: 180,
                        child: ListView.builder(
                          itemCount: 10,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Stack(
                              children: [
                                Container(
                                  height: 200,
                                  width: 140,
                                  margin: const EdgeInsets.only(
                                      right: 15
                                  ),
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color(0xffFFFFFF)

                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 90,
                                        width: width,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: const Color(0xffE4F3EC),
                                        ),
                                      ),

                                      const Gap(10),

                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'Fruits',
                                            style: TextStyle(
                                                color: Colors.black38,
                                                fontWeight: FontWeight.w800,
                                                fontSize: 16
                                            ),
                                          ),

                                          RatingBarIndicator(
                                            rating: 5,
                                            itemBuilder: (context, index) => const Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            itemCount: 5,
                                            itemSize: 20.0,
                                            unratedColor: Colors.amber.withAlpha(50),
                                            direction:Axis.horizontal,
                                          ),

                                          const Text(
                                            '120TK /KG',
                                            style: TextStyle(
                                                color: Colors.black38,
                                                fontWeight: FontWeight.w800,
                                                fontSize: 16
                                            ),
                                          ),
                                        ],
                                      )

                                    ],
                                  ),
                                ),

                                Positioned(
                                  bottom: 0,
                                  right: 15,
                                  child: InkWell(
                                    onTap:(){
                                      debugPrint('$index');
                                    },
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: const BoxDecoration(
                                          color: AppColors.primaryColor,
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(5),
                                              topLeft: Radius.circular(5),
                                              topRight: Radius.circular(5),
                                              bottomRight: Radius.circular(10)
                                          )
                                      ),
                                      child: const Icon(Icons.add, color: Colors.white,),
                                    ),
                                  ),
                                ),


                                Positioned(
                                  top: 15,
                                  right: 33,
                                  child: InkWell(
                                    onTap:(){
                                      debugPrint('$index');
                                    },
                                    child: Container(
                                      height: 35,
                                      width: 35,
                                      decoration: const BoxDecoration(
                                          color: AppColors.primaryColor,
                                          shape: BoxShape.circle
                                      ),
                                      child: const Icon(Icons.favorite, color: Colors.white,),
                                    ),
                                  ),
                                )
                              ],
                            );
                          },
                        ),
                      ),
                      const Gap(20.0),

                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
          child: Container(
            height: 80,
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
              color: AppColors.appBodyBackground,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Total Price',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black38,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    Text('\$2.99',
                      style: TextStyle(
                          fontSize: 16,
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 28.0,
                    vertical: 14.0
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: AppColors.primaryColor,
                  ),
                  child: Text('Add to Cart',
                    style: TextStyle(
                        fontSize: 14,
                        color: AppColors.appWhite,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}
