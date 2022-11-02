import 'package:flutter/material.dart';
 void main(){
   runApp(MaterialApp(home: (Contact_list()),
   debugShowCheckedModeBanner: false,),);
 }
class Contact_list extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title:const Text("CONTACT LIST"),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          const Center(
              child: Text(
            "CONTACT LIST",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
          )),
          const SizedBox(
            height: 10,
          ),
          // Card(
          //   child:
      ListTile(
              title: const Text(
                "Abel Benzily",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
              ),
              subtitle: Text("7410852963  "),
              trailing: Wrap(
                children: const [
                  Icon(
                    Icons.sms_sharp,
                    color: Colors.blueGrey,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.phone,
                    color: Colors.blueGrey,
                  ),
                ],
              ),
              //
              leading: const CircleAvatar(
                radius:50,
                backgroundImage: NetworkImage(
                    "https://media.istockphoto.com/vectors/phone-contact-icon-in-flat-style-isolated-vector-illustration-symbol-vector-id1210969239?k=20&m=1210969239&s=170667a&w=0&h=_oA8Msw-8uLby1vuKxNPCEJoHeqM-01o8VkrJtoHzXA="),
              ),
            ),
          // ),
          // Card(
          //   child:
            ListTile(
              title: const Text(
                "Deepthi Bennan",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
              ),
              subtitle: Text("9638527410"),
              trailing: Wrap(
                children: const [
                  Icon(Icons.sms_sharp, color: Colors.blueGrey),
                  SizedBox(width: 15),
                  Icon(Icons.phone, color: Colors.blueGrey),
                ],
              ),
              // leading: Image.asset("name"),
              leading: const CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    "https://media.istockphoto.com/vectors/phone-contact-icon-in-flat-style-isolated-vector-illustration-symbol-vector-id1210969239?k=20&m=1210969239&s=170667a&w=0&h=_oA8Msw-8uLby1vuKxNPCEJoHeqM-01o8VkrJtoHzXA="),
              ),
            ),
    // ),
          // Card(
          //   child:
            ListTile(
              title: Text("Jishnu A Kumar",
                  style:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 15)),
              subtitle: Text("8529367410"),
              trailing: Wrap(
                children: const [
                  Icon(Icons.sms_sharp, color: Colors.blueGrey),
                  SizedBox(width: 15),
                  Icon(Icons.phone, color: Colors.blueGrey),
                ],
              ),
              // leading: Image.asset("name"),
          leading: CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  "https://media.istockphoto.com/vectors/phone-contact-icon-in-flat-style-isolated-vector-illustration-symbol-vector-id1210969239?k=20&m=1210969239&s=170667a&w=0&h=_oA8Msw-8uLby1vuKxNPCEJoHeqM-01o8VkrJtoHzXA=")),

        ),
      // ),
    ]
    ,
    )
    ,
    );
  }

}