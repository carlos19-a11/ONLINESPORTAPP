import 'package:flutter/material.dart';
import 'package:onlinesports/Repositories/Constant.dart';

class CheckoutCard extends StatelessWidget {
  const CheckoutCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: (15),
        horizontal: (30),
      ),
      // height: 174,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xFFDADADA).withOpacity(0.15),
          )
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  height: (40),
                  width: (40),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF5F6F9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset("assets/icons/factura.png"),
                ),
                const Spacer(),
                const Text("Añadir código de cupón"),
                const SizedBox(width: 10),
                // ignore: prefer_const_constructors
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: KPrimaryColor,
                )
              ],
            ),
            const SizedBox(height: (20)),
            //getProportionateScreenHeight
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text.rich(
                  TextSpan(
                    text: "Total:\n",
                    children: [
                      TextSpan(
                        text: "\$600.000",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: (190),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("COMPRAR"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
