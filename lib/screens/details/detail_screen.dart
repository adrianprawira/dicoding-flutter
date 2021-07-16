import 'package:dicoding_submission_flutter_beginner/constants.dart';
import 'package:dicoding_submission_flutter_beginner/model/DataWisata.dart';
import 'package:dicoding_submission_flutter_beginner/widgets/CustomAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final DataWisata detailWisata;

  const DetailScreen({Key? key, required this.detailWisata}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: MyAppBar(
        title: detailWisata.nama,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(aDefaultPadding),
                child: Image.network(
                detailWisata.gambarUrl,
              fit: BoxFit.cover,),
              ),
              Text(
                'Penjelasan',
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              Container(
                padding: EdgeInsets.all(aDefaultPadding),
                child: Text(
                detailWisata.deskripsi,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
              )],
      
          ),),
      ),
    );
  }