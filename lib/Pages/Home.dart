import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<String> categories = [
    "Healthy",
    "Technology",
    "Finance",
    "Arts",
    "Sports"
  ]; // List of categories

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 30.0,
                left: 15,
              ),
              child: Row(
                children: [
                  Container(
                    width: 303,
                    height: 32,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 15.0),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            width: 32,
                            child: IntrinsicHeight(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset('lib/assets/Vector.png'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 240, 241, 250),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(
                            width: 1.5,
                            color: Color.fromARGB(255, 240, 241, 250),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 240, 241, 250),
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 240, 241, 250),
                          ),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 240, 241, 250),
                          ),
                        ),
                        hintText: 'Dogecoin to the Moon...',
                        hintStyle: TextStyle(
                          color: Color.fromARGB(121, 77, 77, 77),
                          fontSize: 12,
                        ),
                      ),
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 93, 101),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Image.asset("lib/assets/Group 38.png"),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 24.0, bottom: 16, left: 18, right: 18),
              child: Row(
                children: [
                  Text("Latest News"),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Text(
                      "See All",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 0, 128, 255)),
                    ),
                  ),
                  Image.asset(
                    "lib/assets/Combined Shape.png",
                    height: 12,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 240,
              child: Container(
                color: Color.fromARGB(0, 0, 0, 0),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 10,
                  ),
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 308,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(0, 0, 0, 0),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Stack(
                          // Use a Stack to overlay text on the image
                          children: [
                            Image.asset(
                              index == 0
                                  ? "lib/assets/Frame 34.png"
                                  : "lib/assets/Frame 35.png",
                              width: 308,
                              height: 240,
                              fit: BoxFit.cover,
                            ),
                            Positioned(
                              // Position the text within the Stack
                              bottom: 16,
                              left: 16,
                              right: 16,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'by Ryan Browne',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      backgroundColor:
                                          Color.fromARGB(0, 255, 255, 255),
                                    ),
                                  ),
                                  Text(
                                    index == 0
                                        ? 'Crypto investors should be prepared to lose all their money, BOE governor says'
                                        : 'Asia-Pacific markets trade broadly higher, oil prices climb',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      backgroundColor:
                                          Color.fromARGB(0, 255, 255, 255),
                                    ),
                                  ),
                                  SizedBox(height: 23),
                                  Text(
                                    index == 0
                                        ? '“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.”'
                                        : 'Stock markets in Asia-Pacific were broadly higher on Monday following “a big miss” in the April U.S. jobs report, while oil futures advanced.”',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      backgroundColor:
                                          Color.fromARGB(0, 255, 255, 255),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18, top: 18),
              child: Container(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          _selectedIndex = index;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 32,
                          width: 100,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: _selectedIndex == index
                                  ? Colors.red
                                  : Color.fromARGB(255, 240, 241, 250),
                              width: 2,
                            ),
                            color: _selectedIndex == index
                                ? const Color.fromARGB(255, 255, 93, 101)
                                : const Color.fromARGB(255, 255, 255, 255),
                          ),
                          child: Text(
                            categories[index], // Display the category name
                            style: TextStyle(
                              color: _selectedIndex == index
                                  ? Color.fromARGB(255, 255, 255, 255)
                                  : Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Container(
                height: 128 * 3,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 345,
                      height: 128,
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Stack(
                          children: [
                            // Ensure images fill the available space
                            Image.asset(
                              index == 0
                                  ? "lib/assets/Frame 33.png"
                                  : index == 1
                                      ? "lib/assets/Frame 34 (1).png"
                                      : "lib/assets/Frame 32.png",
                              width: 400,
                              height: 128,
                              fit: BoxFit.cover,
                            ),
                            Positioned(
                              bottom: 16,
                              left: 16,
                              right: 16,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    index == 0
                                        ? "5 things to know about the 'conundrum' of lupus"
                                        : index == 1
                                            ? '4 ways families can ease anxiety together'
                                            : "What to do if you're planning or attending a wedding during the pandemic",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      backgroundColor:
                                          Color.fromARGB(0, 255, 255, 255),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        index == 0
                                            ? 'Matt Villano'
                                            : index == 1
                                                ? 'Zain Korsgaard'
                                                : 'Kristen Rogers',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          backgroundColor:
                                              Color.fromARGB(0, 255, 255, 255),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 110,
                                      ),
                                      Text(
                                        'Sunday, 9 May 2021',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          backgroundColor:
                                              Color.fromARGB(0, 255, 255, 255),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
