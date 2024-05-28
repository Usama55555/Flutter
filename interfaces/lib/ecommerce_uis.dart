import 'package:flutter/material.dart';

class Bank extends StatefulWidget {
  const Bank({super.key});

  @override
  State<Bank> createState() => _BankState();
}

class _BankState extends State<Bank> {
  final List<Map> items = [
    {"image": "https://images.pexels.com/photos/1426715/pexels-photo-1426715.jpeg?auto=compress&cs=tinysrgb&w=600", "title": "Breakfast Set", "price": 20},
    {"image": "https://images.pexels.com/photos/5745991/pexels-photo-5745991.jpeg?auto=compress&cs=tinysrgb&w=600", "title": "Veg Burger", "price": 30},
  ];
  final String address = "Khanewal, Punjab";
  final String phone = "03111611854";
  final double total = 500;
  final double delivery = 100;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text('Ecommerce UIs'),backgroundColor: Colors.deepOrangeAccent,),
      body: PageView(
        children: [
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 30.0),
                    child: Text(
                      "CART",
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade700),
                    )),
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(16.0),
                    itemCount: items.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Stack(
                        children: <Widget>[
                          Container(
                            width: double.infinity,
                            margin: const EdgeInsets.only(right: 30.0, bottom: 10.0),
                            child: Material(
                              borderRadius: BorderRadius.circular(5.0),
                              elevation: 3.0,
                              child: Container(
                                padding: const EdgeInsets.all(16.0),
                                child: Row(
                                  children: <Widget>[
                                    SizedBox(
                                      height: 80,
                                      child: Image(image: NetworkImage(items[index]["image"])),
                                    ),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            items[index]["title"],
                                            style: const TextStyle(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(
                                            height: 20.0,
                                          ),
                                          Text(
                                            "\$${items[index]['price']}",
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18.0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 20,
                            right: 15,
                            child: Container(
                              height: 30,
                              width: 30,
                              alignment: Alignment.center,
                              child: MaterialButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                                padding: const EdgeInsets.all(0.0),
                                color: Colors.pinkAccent,
                                child: const Icon(
                                  Icons.clear,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          )
                        ],
                      );
                    },
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "Subtotal      \$50",
                        style:
                        TextStyle(color: Colors.grey.shade700, fontSize: 16.0),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "Delivery       \$05",
                        style:
                        TextStyle(color: Colors.grey.shade700, fontSize: 16.0),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Text(
                        "Cart Subtotal     \$55",
                        style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: MaterialButton(
                          height: 50.0,
                          color: Colors.pinkAccent,
                          child: Text(
                            "Secure Checkout".toUpperCase(),
                            style: const TextStyle(color: Colors.white),
                          ),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SingleChildScrollView(
    padding:
    const EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0, bottom: 10.0),
    child: Column(
    children: <Widget>[
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
    const Text("Subtotal"),
    Text("Rs. $total"),
    ],
    ),
    const SizedBox(
    height: 10.0,
    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
    const Text("Delivery fee"),
    Text("Rs. $delivery"),
    ],
    ),
    const SizedBox(
    height: 10.0,
    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
    Text(
    "Total",
    style: Theme.of(context).textTheme.titleLarge,
    ),
    Text("Rs. ${total + delivery}",
    style: Theme.of(context).textTheme.titleLarge),
    ],
    ),
    const SizedBox(
    height: 20.0,
    ),
    Container(
    color: Colors.grey.shade200,
    padding: const EdgeInsets.all(8.0),
    width: double.infinity,
    child: Text("Delivery Address".toUpperCase())),
    Column(
    children: <Widget>[
    RadioListTile(
    selected: true,
    value: address,
    groupValue: address,
    title: Text(address),
    onChanged: (value) {},
    ),
    RadioListTile(
    selected: false,
    value: "New Address",
    groupValue: address,
    title: const Text("Choose new delivery address"),
    onChanged: (value) {},
    ),
    Container(
    color: Colors.grey.shade200,
    padding: const EdgeInsets.all(8.0),
    width: double.infinity,
    child: Text("Contact Number".toUpperCase())),
    RadioListTile(
    selected: true,
    value: phone,
    groupValue: phone,
    title: Text(phone),
    onChanged: (value) {},
    ),
    RadioListTile(
    selected: false,
    value: "New Phone",
    groupValue: phone,
    title: const Text("Choose new contact number"),
    onChanged: (value) {},
    ),
    ],
    ),
    const SizedBox(
    height: 20.0,
    ),
    Container(
    color: Colors.grey.shade200,
    padding: const EdgeInsets.all(8.0),
    width: double.infinity,
    child: Text("Payment Option".toUpperCase())),
    RadioListTile(
    groupValue: true,
    value: true,
    title: const Text("Cash on Delivery"),
    onChanged: (value) {},
    ),
    SizedBox(
    width: double.infinity,
    child: ElevatedButton(
    style: ElevatedButton.styleFrom(
    backgroundColor: Theme.of(context).primaryColor,
    ),
    onPressed: () => {},
    child: const Text(
    "Confirm Order",
    style: TextStyle(color: Colors.white),
    ),
    ),
    )
    ],
    ),
    )

        ],
      ),
    );
  }
}
