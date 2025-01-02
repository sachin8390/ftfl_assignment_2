import 'package:flutter/material.dart';

class LifelineCard extends StatelessWidget {
  const LifelineCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 450,
        height: 150,
        child: Stack(
          children: [
            ClipPath(
              clipper: MyCustomClipper(),
              child: Container(
                width: 350,
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.grey.shade300)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: [
                  Spacer(),
                  const Row(
                    children: [
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.blue,
                        child: Icon(Icons.check, color: Colors.white),
                      ),
                      SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Lifeline Card Wallet',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Upcoming EMI/Udhar',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '4356',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '4356',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Withdraw',style: TextStyle(color: Color(0xff53559f)),),
                      const Text('Transfer',style: TextStyle(color: Color(0xff53559f)),),
                      Container(
                          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 3),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffe3e5fe),
                              border: Border.all(color: const Color(0xff53559f))
                          ),
                          child: const Text('More',style: TextStyle(color: Color(0xff53559f)),)),
                    ],
                  ),
                  const SizedBox(height: 7)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo((size.width / 3) * 2 - 20, size.height);
    path.quadraticBezierTo(
      (size.width / 3) * 2 - 2,
      size.height,
      (size.width / 3) * 2,
      size.height - 14,
    );
    path.lineTo((size.width / 3) * 2, size.height - 30);
    path.quadraticBezierTo(
      (size.width / 3) * 2,
      size.height - 40,
      (size.width / 3) * 2 + 20,
      size.height - 40,
    );
    path.lineTo(size.width - 20, size.height - 40);
    path.quadraticBezierTo(
      size.width,
      size.height - 40,
      size.width,
      size.height - 60,
    );
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

