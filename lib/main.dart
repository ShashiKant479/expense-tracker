import 'package:flutter/material.dart';
import 'package:staragri/screen/add_expense.dart';
import 'package:staragri/screen/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Expense Tracker",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Expense Tracker")),
      ),
      body: ExpenseListFromDB(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return AddExpense();
          },),);
        },
        tooltip: 'Add Expense',
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
      ),
    );
  }
}
