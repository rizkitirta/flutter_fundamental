import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/products.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class AddProductPage extends StatefulWidget {
  // const AddProductPage({ Key? key }) : super(key: key);
  static const routeName = "/add-product";

  @override
  _AddProductPageState createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  TextEditingController titleController = TextEditingController();
  DateTime date;

  @override
  Widget build(BuildContext context) {
    var products = Provider.of<Products>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text("Add Product"),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              print("run add");
              products.addProduct(titleController.text, date);
              Navigator.pop(context);
            },
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Form(
          child: Column(
            children: [
              TextField(
                autocorrect: false,
                controller: titleController,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(labelText: "Product Name"),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: [
                    Text(
                      (date == null)
                          ? "No date choosen"
                          : DateFormat().add_yMMMMd().format(date),
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                        onPressed: () {
                          return showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2020),
                                  lastDate: DateTime(2050))
                              .then((value) {
                            setState(() {
                              date = value;
                            });
                          });
                        },
                        child: Text("Select date"))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
