import 'package:flutter/material.dart';
import 'package:price_comparison_app/app_colors/app_color.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 80,
        backgroundColor: AppColors.blue,
        title: Text('Info',style: TextStyle(color: AppColors.lightGreen)),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.lightGreen,
          ),
        ),

      ),
      body: Padding(
        padding: EdgeInsets.all(17.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle('Application Details'),
            SizedBox(height: 14.0),
            _buildSectionContent(
              'This application is developed by PriceWise Company. Our team of experienced developers and designers has worked hard to create this app to provide a seamless user experience.',
            ),
            SizedBox(height: 16.0),
            _buildSectionTitle('Admins Information'),
            SizedBox(height: 14.0),
            _buildSectionContent(
              'The admins for this application is [Youmna Essam] and [Fatma Alaa].'
                  'You can reach out to them at (Youmnaessam20@gmail.com)....(fatma.alaa.hassan@gmail.com)'
                  'or call them at +02 111 9255 410 .',
            ),
            SizedBox(height: 16.0),
            _buildSectionTitle('Communicate with Us'),
            SizedBox(height: 14.0),
            _buildSectionContent(
              'If you have any problems or questions, please don\'t hesitate to contact us.'
                  ' You can send an email to supportpricewise@gmail.com '
                  'or fill out the contact form on our website.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: AppColors.lightGreen,
        fontSize: 18.0,
      ),
    );
  }

  Widget _buildSectionContent(String content) {
    return Text(
      content,
      style: TextStyle(
        fontSize: 16.0,
      ),
    );
  }
}