import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: My_Table(),
  debugShowCheckedModeBanner: false,));
}

class My_Table extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: DataTable(
       columns: <DataColumn>[
        DataColumn(label: Text("Name",style: TextStyle(fontStyle: FontStyle.italic),
        ),
        ),
        DataColumn(label: Text("Age",style: TextStyle(fontStyle: FontStyle.italic),
        ),
        ),
        DataColumn(label: Text("Role",style: TextStyle(fontStyle: FontStyle.italic)),
        ),],
         rows:const<DataRow> [

      DataRow(
        cells: <DataCell>[
          DataCell(Text('Seniya')),
          DataCell(Text('21')),
          DataCell(Text('Student')),
        ],
      ),
           DataRow(
             cells: <DataCell>[
      DataCell(Text('Sterin')),
    DataCell(Text('21')),
    DataCell(Text('Student')),
    ],
     ),
           DataRow(
             cells: <DataCell>[
               DataCell(Text('Susan')),
               DataCell(Text('20')),
               DataCell(Text('Student')),
             ],
           ),
           DataRow(
             cells: <DataCell>[
               DataCell(Text('Vijay')),
               DataCell(Text('20')),
               DataCell(Text('Student')),
             ],
           ),
           DataRow(
             cells: <DataCell>[
               DataCell(Text('Vinayak')),
               DataCell(Text('21')),
               DataCell(Text('Student')),
             ],
           ),
         ],
   ));
  }
}