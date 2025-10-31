import 'package:eco_eats/model/payment_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../resource/app_colors/app_colors.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {

  List<PaymentModel> paymentDataList = [
    PaymentModel(imgIcon: 'assets/images/visa.png', paymentName: 'Visacard', accountNo: '**** **** 9863'),
    PaymentModel(imgIcon: 'assets/images/master.png', paymentName: 'Mastercard', accountNo: '**** **** 8475'),
    PaymentModel(imgIcon: 'assets/images/amex.jpeg', paymentName: 'Amexcard', accountNo: '**** **** 4128'),
    PaymentModel(imgIcon: 'assets/images/jscb.png', paymentName: 'JCBcard', accountNo: '**** **** 9743'),
    PaymentModel(imgIcon: 'assets/images/discover.jpeg', paymentName: 'Discovercard', accountNo: '**** **** 5239'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        leadingWidth: 35.0,
        leading: const CircleAvatar(
          backgroundColor: Colors.white12,
          child: Icon(Icons.arrow_back_ios_new, color: Colors.white),
        ),
        title: const Text('Checkout',
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.appWhite
          ),
        ),
        actions: const [
          CircleAvatar(
            backgroundColor: Colors.white12,
            child: Icon(Icons.notifications_active, color: Colors.white,),
          ),
          Gap(10.0)
        ],
      ),

      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Address',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: AppColors.appBlack,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text('Add New',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.green,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            const Gap(10.0),
            
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: AppColors.appWhite,
                borderRadius: BorderRadius.circular(10.0)
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.check_circle_rounded, color: Colors.green,),
                  Gap(10.0),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Home',
                        style: TextStyle(
                            fontSize: 14.0,
                            color: AppColors.appBlack,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Text('House 10, Road 5, Mohammadpur,\nDhaka 1212',
                        style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black38,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  Gap(10.0),

                  Icon(Icons.edit, color: Colors.black38),
                ],
              ),
            ),
            const Gap(5.0),

            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: AppColors.appWhite,
                  borderRadius: BorderRadius.circular(10.0)
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.check_circle_outline, color: Colors.black38,),
                  Gap(10.0),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Office',
                        style: TextStyle(
                            fontSize: 14.0,
                            color: AppColors.appBlack,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Text('House 5, Road 9, Mohammadpur,\nDhaka 1209',
                        style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black38,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  Gap(10.0),

                  Icon(Icons.edit, color: Colors.black38),
                ],
              ),
            ),
            const Gap(10.0),

            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Payment',
                  style: TextStyle(
                      fontSize: 16.0,
                      color: AppColors.appBlack,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Text('Add New',
                  style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.green,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            const Gap(10.0),

            SizedBox(
              height: 250,
              width: MediaQuery.sizeOf(context).width,
              child: ListView.builder(
                itemCount: paymentDataList.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final dataInfo = paymentDataList[index];
                  return Container(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('${dataInfo.imgIcon}'),
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Container(
                          height: 120,
                          width: 150,
                          decoration: const BoxDecoration(
                            color: AppColors.appWhite,
                          ),
                          child: Column(
                            children: [
                              Text('${dataInfo.paymentName}',
                              style: const TextStyle(
                                fontSize: 14.0,
                                color: AppColors.appBlack,
                                fontWeight: FontWeight.w700
                              ),
                              ),
                              const Gap(5.0),

                              Text('${dataInfo.accountNo}',
                              style: const TextStyle(
                                fontSize: 14.0,
                                color: Colors.black38,
                                fontWeight: FontWeight.w700
                              ),
                              ),
                              const Gap(10.0),

                              IconButton(
                                  onPressed: (){}, 
                                  icon: const Icon(Icons.check_circle, color: Colors.green,)
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )

        ],
        ),
      ),

      bottomNavigationBar: SafeArea(
          child: Container(
            height: 80,
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            decoration: const BoxDecoration(
              color: AppColors.appBodyBackground,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
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
                GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(Icons.done_outline_sharp, color: AppColors.primaryColor),
                                  const Gap(10.0),

                                  const Text('Order Successfull',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: AppColors.appBlack,
                                    fontWeight: FontWeight.bold
                                  ),
                                  ),
                                  const Gap(5.0),

                                  const Text('Your order #9685365 is successfully placed',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black38,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  const Gap(10.0),

                                  GestureDetector(
                                    onTap: (){
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 28.0,
                                          vertical: 14.0
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30.0),
                                        color: AppColors.primaryColor,
                                      ),
                                      child: const Text('Track My Order',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: AppColors.appWhite,
                                            fontWeight: FontWeight.w700
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Gap(10.0),

                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 28.0,
                                          vertical: 14.0
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30.0),
                                        border: Border.all(
                                        color: AppColors.primaryColor,
                                        width: 2.0
                                        )
                                      ),
                                      child: const Text('Go Back',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.green,
                                            fontWeight: FontWeight.w700
                                        ),
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          );
                        },
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 28.0,
                        vertical: 14.0
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: AppColors.primaryColor,
                    ),
                    child: const Text('Payment',
                      style: TextStyle(
                          fontSize: 14,
                          color: AppColors.appWhite,
                          fontWeight: FontWeight.w700
                      ),
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
