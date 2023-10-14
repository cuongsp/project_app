import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(StatelessDemo());
}
class StatelessDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(title: Text('Stateless')),
      body: ListView(
        children: [
          BuildCarWidget(
            make: "Toyota",
            model: "Fortuner",
            imageSrc: "https://truongdaotaolaixehcm.com/wp-content/uploads/2018/03/nhung-sai-lam-lon-khi-bao-duong-xe-o-to-1024x768.jpg",
          ),
          BuildCarWidget(
            make: "Toyota",
            model: "Prius",
            imageSrc: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSmowPGYpiogWt3a5fk48E_9YY_dRCXLiZR0qEqH8gR0_onC-mCE78d2wqJhS35uTQ504&usqp=CAU",
          ),
          BuildCarWidget(
            make: "Toyota",
            model: "Hilux Vigo",
            imageSrc: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnBy_PM6Y4yVcSWVEoxwXDP_9AEXyNBd1LA3YI3uD5haOwDh-IauDd0_hXSQKEouMmmcc&usqp=CAU",
          ),
        ],
    ),
      ),
    );
  }
}

class BuildCarWidget extends StatelessWidget{
  final String make;
  final String model;
  final String imageSrc;
  BuildCarWidget({ required this.make,required this.model,required this.imageSrc});

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(bottom: 8, top: 8),
      child:Container(
        decoration: BoxDecoration(border: Border.all()),
        child: Column(
          children: [
            Text(make, style: TextStyle(color: Colors.green, fontSize: 20.0)),
            Text(model),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Image.network(imageSrc),
            )

          ],
        ),
      ),
      );

  }
}