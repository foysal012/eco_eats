import 'package:eco_eats/resource/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const Text('Cart',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppColors.appWhite
          ),
        ),
        actions: [
          const CircleAvatar(
            backgroundColor: Colors.white12,
            child: Icon(Icons.notifications_active, color: Colors.white,),
          ),
          const Gap(10.0)
        ],
      ),

      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Gap(10.0),
          
              ListView.separated(
                itemCount: 3,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 10);
                },
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: AppColors.appWhite
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10.0),
                              decoration: const BoxDecoration(
                                color: AppColors.appBodyBackground
                              ),
                              child: Image.asset('assets/images/fruits.png', height: 80, width: 80),
                            ),
                            const Gap(10.0),

                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Orange',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                Gap(2.5),

                                Text('Fruits',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black38
                                  ),
                                ),
                                Gap(2.5),

                                Text('\$ 1.50/kg',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.primaryColor
                                  ),
                                )
                              ],
                            ),
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
                  );
                }
              ),
              const Gap(10.0),

              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: AppColors.appWhite,
                  borderRadius: BorderRadius.circular(10.0)
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width * 0.7,
                          padding: const EdgeInsets.all(15.0),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              bottomLeft: Radius.circular(30.0)
                            ),
                            color: Colors.black12
                          ),
                          child: const Text('Enter Promo Code',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.black54
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 0.2,
                          padding: const EdgeInsets.all(15.0),
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30.0),
                                  bottomRight: Radius.circular(30.0)
                              ),
                              color: AppColors.primaryColor
                          ),
                          child: const Text('Apply',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: AppColors.appWhite
                            ),
                          ),
                        )
                      ]
                    ),
                    const Gap(10.0),
                    
                    const CustomCartItemInfoWidget(
                      text: 'Sub Total',
                      value: '05.69',
                    ),
                    const CustomCartItemInfoWidget(
                      text: 'Delivery Charges',
                      value: '02.00',
                    ),
                    const CustomCartItemInfoWidget(
                      text: 'Discount',
                      value: '00.00',
                    ),
                    const Text('-------------------------------------------',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black
                      ),
                    ),
                    const CustomCartItemInfoWidget(
                      text: 'Final Total',
                      value: '07.69',
                    ),

                  ],
                ),
              )
            ],
          ),
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
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 28.0,
                      vertical: 14.0
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: AppColors.primaryColor,
                  ),
                  child: const Text('Add to Cart',
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

class CustomCartItemInfoWidget extends StatelessWidget {
  const CustomCartItemInfoWidget({
    super.key,
    required this.text,
    required this.value
  });

  final String text;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('${text}',
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black38,
            fontWeight: FontWeight.bold
          ),
        ),
        Text('\$${value}',
          style: const TextStyle(
              fontSize: 14,
              color: Colors.black,
              fontWeight: FontWeight.bold
          ),
        ),
      ],
    );
  }
}
