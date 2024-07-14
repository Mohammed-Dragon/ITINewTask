import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      "lib/assets/1.png",
                      width: double
                          .infinity, // Ensure the image spans the full width
                      fit: BoxFit
                          .cover, // Make sure the image covers the entire container
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 52.0, left: 15),
                      child: Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(166, 230, 229, 229),
                          borderRadius: BorderRadius.circular(
                              8), // Add borderRadius to make rounded corners
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("lib/assets/Vector (1).png"),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 350),
                      child: Container(
                        height:
                            853, // Adjust as needed or consider using a different approach for dynamic height
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(55),
                            topRight: Radius.circular(55),
                          ),
                          color: Color.fromARGB(255, 243, 243, 243),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 88, left: 15, right: 15),
                          child: Text(
                            "LONDON — Cryptocurrencies “have no intrinsic value” and people who invest in them should be prepared to lose all their money, Bank of England Governor Andrew Bailey said. \n \n Digital currencies like bitcoin, ether and even dogecoin have been on a tear this year, reminding some investors of the 2017 crypto bubble in which bitcoin blasted toward 20,000, only to sink as low as 3,122 a year later.\n \n Asked at a press conference Thursday about the rising value of cryptocurrencies, Bailey said: “They have no intrinsic value. \n \n That doesn’t mean to say people don’t put value on them, because they can have extrinsic value. But they have no intrinsic value.” \n \n “I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.” Bailey’s comments echoed a similar warning from the U.K.’s Financial Conduct Authority. \n \n “Investing in cryptoassets, or investments and lending linked to them, generally involves taking very high risks with investors’ money,” the financial services watchdog said in January. \n \n  “If consumers invest in these types of product, they should be prepared to lose all their money.” Bailey, who was formerly the chief executive of the FCA, has long been a skeptic of crypto. In 2017, he warned: “If you want to invest in bitcoin, be prepared to lose all your money.”",
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 290.0, left: 40, right: 40),
                      child: Container(
                        width: 311,
                        height: 141,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(166, 190, 190, 190),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sunday, 9 May 2021',
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  backgroundColor:
                                      Color.fromARGB(0, 255, 255, 255),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Crypto investors should be prepared to lose all their money, BOE governor says',
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  backgroundColor:
                                      Color.fromARGB(0, 255, 255, 255),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Published by Ryan Browne',
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  backgroundColor:
                                      Color.fromARGB(0, 255, 255, 255),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 29,
            right: 16,
            child: FloatingActionButton(
              backgroundColor: const Color.fromARGB(255, 255, 93, 101),
              onPressed: () {},
              shape: CircleBorder(),
              child: Center(
                child: Image.asset(
                  "lib/assets/4.png",
                  fit: BoxFit.cover,
                  width: 24,
                  height: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
