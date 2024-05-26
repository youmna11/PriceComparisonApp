import 'package:flutter/material.dart';
import 'package:price_comparison_app/app_colors/app_color.dart';
import 'package:url_launcher/url_launcher.dart';

class HelpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 80,
        backgroundColor: AppColors.blue,
        title: Text(
          'Help',
          style: TextStyle(color: AppColors.lightGreen),
        ),
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
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 14.0),
            Text("Application Website",style: TextStyle(
                color: AppColors.lightGreen,
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 10,),
            Text("You can visit our website at www.supportpricewise.com to learn more about our application and its features."),
            SizedBox(height: 10,),
            InkWell(
                onTap: (){
                  _launchURL('https://www.supportpricewise.com');
                },
                child: Text("https://www.supportpricewise.com",style: TextStyle(decoration:
                TextDecoration.underline,color: Colors.blue),)
            ),

            SizedBox(height: 16.0),
            Text("Communicate with Us",style: TextStyle(
                color: AppColors.lightGreen,
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 10,),
            Text("If you have any problems or questions, please don\'t hesitate to contact us."
                " You can send an email to supportpricewise@gmail.com or fill out the contact form on our website"),
            SizedBox(height: 10,),
            InkWell(
                onTap: (){
                  _launchURL('mailto:supportpricewise@gmail.com');
                },
                child: Text('mailto:supportpricewise@gmail.com',style: TextStyle(decoration:
                TextDecoration.underline,color: Colors.blue),)
            ),

          ],
        ),
      ),
    );
  }

  Widget _buildSectionContent(String title, String content, {required void Function() onTap}) {
    return InkWell(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: AppColors.lightGreen, // Set title text color to black
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            content,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black, // Set content text color to black
            ),
          ),
        ],
      ),
    );
  }

  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }
}
