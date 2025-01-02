import 'package:flutter/material.dart';
import 'package:interview_project/widget/feature_card.dart';
import 'package:interview_project/widget/life_line_card.dart';

import 'widget/life_line_card.dart';


class CardWalletsScreen extends StatelessWidget {
  const CardWalletsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card & Wallets'),
        leading: const Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: const Color(0xffedeeff),
                      border: Border.all(color: Colors.black12)
                    ),
                    padding: const EdgeInsets.all(10),
                    // height: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/card.png"),
                        const SizedBox(height: 10),
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Text(
                                'Card Status ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                ': Inactive',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffedeeff),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(0, 0),
                          spreadRadius: 3
                        )
                      ],
                      border: Border.all(color: const Color(0xff11116b))
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 35),
                    child: const Text("Guide",style: TextStyle(
                      color: Color(0xff11116b),
                    ),),
                  )

                ],
              ),

              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(16.0),

                decoration: BoxDecoration(
                  color: Colors.white,
                    border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Activate your LifelineCard',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      '₹ 3499/- Life Time',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    const Text(
                      '₹ 9999/Year',
                      style: TextStyle(
                        fontSize: 16,
                        decoration: TextDecoration.lineThrough,
                        color: Colors.red,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text('Offer Ends Soon!'),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 15  ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xff11116b),
                        boxShadow: [
                          const BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 1),spreadRadius: 1,blurRadius: 1
                          )
                        ]
                      ),
                      child: const Text("Activate Now",style: TextStyle(color: Colors.white),),
                    ),
                    const SizedBox(height: 10),
                    Divider(
                      color: Colors.grey.shade300,
                    ),
                    const SizedBox(height: 10),

                    const Text("Our Features",style: TextStyle(
                      fontWeight: FontWeight.w600,fontSize: 18
                    ),),
                    const SizedBox(height: 10),

                    Row(
                      children: [
                        commonTextWidget("Udhar Limit :₹ 74425"),
                        commonTextWidget("CP EMI Limit :₹74425"),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FeatureCard(title: 'Udhar', icon: Icons.handshake),
                        FeatureCard(title: 'CP EMI', icon: Icons.attach_money),
                        FeatureCard(title: 'Business Funds', icon: Icons.business),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Wallet',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              const LifelineCard(),
              const SizedBox(height: 10),
              const LifelineCard(),
            ],
          ),
        ),
      ),
    );
  }

  Widget commonTextWidget(String text)=>Container(
    margin: const EdgeInsets.symmetric(horizontal: 5),
    padding: const EdgeInsets.symmetric(horizontal: 5),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey),
      borderRadius: BorderRadius.circular(5)
    ),
    child: Text(text,style: const TextStyle(color: Colors.grey),),
  );
}



