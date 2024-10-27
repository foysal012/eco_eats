import 'package:eco_eats/resource/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController searchController = TextEditingController();


  @override
  void dispose() {
    // TODO: implement dispose
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: const Color(0xffF6FBF7),
      body: Container(
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  width: width,
                  decoration: const BoxDecoration(
                    color: AppColors.primaryColor
                  ),
                  child: Column(
                    children: [

                      const Gap(18),

                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white12,
                            child: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white,),
                          ),

                          Column(
                            children: [
                            Row(
                              children: [
                                Icon(Icons.location_on_outlined, color: Colors.white,),
                                Gap(7),
                                Text('Location', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),)
                              ],
                            )
                            ],
                          ),

                          CircleAvatar(
                            backgroundColor: Colors.white12,
                            child: Icon(Icons.notifications_active, color: Colors.white,),
                          )
                        ],
                      ),

                      const Gap(10),

                      const Text('Baridhara, Dhaka',
                      textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white
                        ),
                      ),

                      const Gap(20),

                      Container(
                        height: 60,
                        width: width,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(35),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex:7,
                              child: TextFormField(
                                controller: searchController,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Search Your Groceries',
                                  hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black45)
                                ),
                              ),
                            ),

                            Expanded(
                              flex: 1,
                              child: IconButton(
                                  onPressed: (){},
                                  icon: const Icon(
                                    Icons.search_outlined, color: AppColors.primaryColor,)
                              ),
                            )

                          ],
                        ),
                      )
                    ],
                  ),
                ),
            ),

            const Gap(10),

            Expanded(
              flex: 6,
              child: Container(
                height: height,
                width: width,
                padding: const EdgeInsets.all(10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 190,
                        width: width,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: AppColors.primaryColor,
                        ),
                        child: Column(
                          children: [
                            const Text('Get 40% discount\non your first order\nfrom app.',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                            ),
                            ),

                            const Gap(20),

                            Container(
                              height: 40,
                              width: 120,
                              decoration: BoxDecoration(
                                color: AppColors.appWhite.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Center(
                                child: Text('Shop Now',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                      const Gap(5),

                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 30,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: 4,
                              itemBuilder: (context, index) {
                              return const Padding(
                                padding: EdgeInsets.only(right: 8.0),
                                child: CircleAvatar(
                                  radius: 8.0,
                                  backgroundColor: AppColors.primaryColor,
                                ),
                              );
                              },
                          ),
                        ),
                      ),

                      const Gap(10),

                      const Text('Categories', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.appBlack),),

                      const Gap(5),

                      SizedBox(
                        height: 140,
                        child: ListView.builder(
                          itemCount: 10,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Container(
                                height: 150,
                                width: 120,
                                margin: const EdgeInsets.only(
                                  right: 15
                                ),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(60),
                                    topRight: Radius.circular(60),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                  color: Color(0xffFFFFFF)
                                ),
                                child: const Column(
                                  children: [
                                    Gap(10),

                                    CircleAvatar(
                                      radius: 45,
                                      backgroundColor: Color(0xffE4F3EC),
                                    ),

                                    Gap(10),

                                    Text(
                                      'Fruits',
                                      style: TextStyle(
                                          color: Colors.black38,
                                          fontWeight: FontWeight.w800,
                                          fontSize: 16
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                        ),
                      ),

                      const Gap(20),

                      const Text('Popluar', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.appBlack),),

                      const Gap(5),

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
                                            itemBuilder: (context, index) => Icon(
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
                                        decoration: BoxDecoration(
                                          color: AppColors.primaryColor,
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(5),
                                            topLeft: Radius.circular(5),
                                            topRight: Radius.circular(5),
                                            bottomRight: Radius.circular(10)
                                          )
                                        ),
                                        child: Icon(Icons.add, color: Colors.white,),
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
                                      decoration: BoxDecoration(
                                          color: AppColors.primaryColor,
                                          // borderRadius: BorderRadius.only(
                                          //     bottomLeft: Radius.circular(5),
                                          //     topRight: Radius.circular(10),
                                          //     topLeft: Radius.circular(5),
                                          //     bottomRight: Radius.circular(5)
                                          // ),
                                        shape: BoxShape.circle
                                      ),
                                      child: Icon(Icons.heart_broken, color: Colors.white,),
                                    ),
                                  ),
                                )
                              ],
                            );
                          },
                        ),
                      ),
                      const Gap(20),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
