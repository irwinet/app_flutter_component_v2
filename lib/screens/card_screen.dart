import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10,),
          CustomCardType2(name: 'SpaceX', imageUrl: 'https://cloudfront-us-east-1.images.arcpublishing.com/metroworldnews/MH42ZQ7JZZEFVKPBFY4QBH4QKY.jpg',),
          SizedBox(height: 10,),
          CustomCardType2(imageUrl: 'https://i0.wp.com/www.novicus.com/wp-content/uploads/2016/08/Linux-logo-without-version-number-banner-sized.jpg?ssl=1',)
        ],
      ),
    );
  }
}