import 'package:flutter/material.dart';
import 'package:samosa_app/themes/colors.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32.0, top: 16.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.75,
        height: MediaQuery.of(context).size.height * 0.55,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('assets/grain.png'),
            fit: BoxFit.fill,
            filterQuality: FilterQuality.high,
            opacity: 0.85,
          ),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.5),
              offset: Offset(0, 20),
              blurRadius: 25,
              spreadRadius: 0,
            ),
          ],
          borderRadius: BorderRadius.circular(48.0),
          gradient: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.black, lightWhite],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                flex: 3,
                child: Center(
                  child: Image.asset(
                    'assets/bowl_of_samosa.png',
                    height: 250,
                    width: 250,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Text(
                'Chinese Samosa',
                style: TextStyle(
                  color: lightWhite,
                  fontSize: 25.5,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Text(
                'Chinese samosa a deep-fried snack'
                ' prepared with homemade '
                'pastry sheets and tasty noodles stuffing.',
                softWrap: true,
                style: TextStyle(
                  color: veryLightWhite,
                  fontSize: 15.1,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Flexible(
                flex: 1,
                child: Center(
                  child: ElevatedButton(
                    style: ButtonStyle(
                      overlayColor: const MaterialStatePropertyAll(darkGrey),
                      elevation: const MaterialStatePropertyAll(16.0),
                      padding: const MaterialStatePropertyAll(
                        EdgeInsets.only(
                            left: 48.0, right: 48.0, top: 14, bottom: 14.0),
                      ),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(64.0),
                        ),
                      ),
                      backgroundColor:
                          const MaterialStatePropertyAll(lightOrange),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Add to Dish',
                          style: TextStyle(
                              color: lightWhite,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(width: 8.0),
                        Image.asset(
                          'assets/dish_icon.png',
                          height: 32,
                          width: 32,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
