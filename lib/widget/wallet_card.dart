import 'package:flutter/material.dart';

class WalletCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String amount;
  final String? additionalInfo;
  final VoidCallback? onPressedWithdraw;
  final VoidCallback? onPressedTransfer;
  final VoidCallback onPressedMore;

  const WalletCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.amount,
    this.additionalInfo,
    this.onPressedWithdraw,
    this.onPressedTransfer,
    required this.onPressedMore,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 5),
                    Text(subtitle, style: const TextStyle(fontSize: 14, color: Colors.grey)),
                  ],
                ),
                Text(amount, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ],
            ),
            if (additionalInfo != null) ...[
              const SizedBox(height: 10),
              Text(additionalInfo!, style: const TextStyle(fontSize: 14, color: Colors.grey)),
            ],
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (onPressedWithdraw != null)
                  ElevatedButton(
                    onPressed: onPressedWithdraw,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    child: const Text('Withdraw'),
                  ),
                if (onPressedTransfer != null)
                  ElevatedButton(
                    onPressed: onPressedTransfer,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    child: const Text('Transfer'),
                  ),
                ElevatedButton(
                  onPressed: onPressedMore,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlue,
                  ),
                  child: const Text('More'),
                ),
              ],
            ),
          ],
        ),
      ),
    );

  }

}
