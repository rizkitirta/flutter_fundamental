import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/colors.dart';
import 'package:provider/provider.dart';

class AddColorPage extends StatelessWidget {
  // const AddColorPage({ Key? key }) : super(key: key);
  static const routeName = 'add-color';
  TextEditingController titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var colorClass = Provider.of<MultiColor>(context, listen: false);
    void saveData() {
      colorClass.addColor(titleController.text);
      Navigator.pop(context);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Add Product"),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              saveData();
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
                decoration: InputDecoration(
                    labelText: "Color Name",
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40))),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    saveData();
                  },
                  child: Text("Save"),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
