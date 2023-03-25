import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  Widget singleProducts() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      height: 230,
      width: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Image.network(
                'https://toppng.com/uploads/preview/potato-11528323572j6pvppppbl.png'),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'fresh Potatos',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Text(
                  '50.RS / 50 GRAMS',
                  style: TextStyle(
                    color: Colors.grey,
                    // fontWeight: FontWeight.bold
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left: 2),
                        height: 30,
                        width: 50,
                        decoration: BoxDecoration(
                            // color: Colors.blue,
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(children: [
                          Expanded(
                            child: Text(
                              '50 Gram',
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                          Center(
                            child: Icon(
                              Icons.arrow_drop_down,
                              size: 20,
                              color: Colors.yellow,
                            ),
                          )
                        ]),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Container(
                        height: 30,
                        width: 50,
                        // color: Colors.red,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            //    color: Colors.red,
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.remove,
                              size: 15,
                              color: Colors.yellow,
                            ),
                            Text(
                              '1',
                              style: TextStyle(
                                  color: Colors.yellow,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.add,
                              size: 15,
                              color: Colors.yellow,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 231, 230, 230),
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Home',
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
        actions: [
          CircleAvatar(
            radius: 12,
            backgroundColor: Color(0xffd4d181),
            child: Icon(
              Icons.search,
              size: 18,
              color: Colors.black,
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: CircleAvatar(
                  radius: 12,
                  backgroundColor: Color(0xffd4d181),
                  child: Icon(
                    Icons.shop,
                    size: 18,
                    color: Colors.black,
                  ))),
        ],
        backgroundColor: Colors.yellow,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://api.deepai.org/job-view-file/350193aa-b72e-44a2-b546-5eb0dfa54bca/outputs/output.jpg'),
                ),
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
              ),
              // color: Colors.red,
              child: Row(children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    //   color: Colors.red,
                    child: Column(children: [
                      Padding(
                          padding:
                              const EdgeInsets.only(right: 130, bottom: 10),
                          child: Container(
                            height: 50,
                            width: 60,
                            //  color: Colors.blue,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 151, 139, 29),
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(30),
                                )),
                            child: Text(
                              'VEGI',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  shadows: [
                                    BoxShadow(
                                        color: Colors.green,
                                        blurRadius: 3,
                                        offset: Offset(3, 3))
                                  ]),
                            ),
                          )),
                      Text(
                        '30% Off',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.green[100],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          'On all vegetables products',
                          style: TextStyle(
                            // fontSize: 40,
                            color: Colors.green[100],
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
                Expanded(
                  child: Container(),
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Herbs seasonsing'),
                  Text(
                    'View All',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Fresh Fruits'),
                  Text(
                    'View All',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
