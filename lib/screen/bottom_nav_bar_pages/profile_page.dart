import 'package:eco_eats/resource/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBodyBackground,
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 10.0
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Gap(40.0),
              const CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/images/profile.jpeg'),
              ),
              const Gap(10.0),
          
              const Text("Margot Robby"),
              const Gap(5.0),
          
              const Text("foysal66@gmail.com"),
              const Gap(20.0),
          
              ListTile(
                tileColor: AppColors.appWhite,
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0)
                ),
                leading: Container(
                  height: 30.0,
                  width: 30.0,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/discount.png')
                    )
                  ),
                ),
          
                title: const Text('Invites friends and earn \$5'),
                subtitle: const Text('Give your friends a unique referral code'),
                
                trailing: Container(
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                     color: Colors.black26,
                     borderRadius: BorderRadius.circular(8.0)
                    ),
                    child: const Icon(Icons.arrow_forward_ios, color: Colors.black,)),
              ),
              const Gap(20.0),
          
              CustomProfileCard(
                leadingIcon: Icons.alternate_email,
                trailingIcon: Icons.arrow_forward_ios,
                title: 'USER ID',
                subTitle: 'Your user id',
              ),
              const Gap(10.0),
          
              CustomProfileCard(
                leadingIcon: Icons.qr_code,
                trailingIcon: Icons.arrow_forward_ios,
                title: 'QR Code ',
                subTitle: 'Your qr code',
              ),
              const Gap(10.0),
          
              CustomProfileCard(
                leadingIcon: Icons.payment,
                trailingIcon: Icons.arrow_forward_ios,
                title: 'Payment Method',
                subTitle: 'Bkash, Rocket, Nagad, Upay, Cards',
              ),
              const Gap(10.0),
          
              CustomProfileCard(
                leadingIcon: Icons.card_giftcard,
                trailingIcon: Icons.arrow_forward_ios,
                title: 'Rewards',
                subTitle: 'Cashback, Offers & Vouchers',
              ),
              const Gap(10.0),
          
              CustomProfileCard(
                leadingIcon: Icons.settings,
                trailingIcon: Icons.arrow_forward_ios,
                title: 'Settings',
                subTitle: 'Languages, Notifications, Security & Privecy',
              ),
              const Gap(10.0),
          
              CustomProfileCard(
                leadingIcon: Icons.help,
                trailingIcon: Icons.arrow_forward_ios,
                title: 'Help & Feedback',
                subTitle: 'Customer Support, Your Quires, Q&A',
              ),
              const Gap(10.0),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomProfileCard extends StatelessWidget {
  const CustomProfileCard({
    super.key,
    required this.leadingIcon,
    required this.trailingIcon,
    required this.title,
    required this.subTitle
  });
  final IconData leadingIcon;
  final IconData trailingIcon;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: AppColors.appWhite,
      leading: Container(
        height: 30.0,
        width: 30.0,
        child: Icon(leadingIcon, color: AppColors.primaryColor),
      ),

      title: Text('${title}'),
      subtitle: Text('${subTitle}'),

      trailing: Container(
          padding: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(8.0)
          ),
          child: const Icon(Icons.arrow_forward_ios, color: Colors.black)),
    );
  }
}
