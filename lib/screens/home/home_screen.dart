import 'package:dicoding_submission_flutter_beginner/api/WisataApi.dart';
import 'package:dicoding_submission_flutter_beginner/model/DataWisata.dart';
import 'package:dicoding_submission_flutter_beginner/screens/details/detail_screen.dart';
import 'package:dicoding_submission_flutter_beginner/widgets/CustomAppBar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: MyAppBar(
          title: 'Tempat Wisata Purwakarta',
        ),
        body: FutureBuilder<List<DataWisata>>(
          future: WisataApi.getlocaldata(context),
          builder: (context, snapshot) {
            final dataWisata = snapshot.data;

            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return Center(child: CircularProgressIndicator());
              default:
                if (snapshot.hasError) {
                  return Center(child: Text('Error fetching Data.'));
                } else {
                  return ListView.builder(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      itemCount: dataWisata!.length,
                      itemBuilder: (context, index) {
                        final listWisata = dataWisata[index];

                        return Card(
                          color: Color(0X9AFFFFFF),
                          child: ListTile(
                              leading: CircleAvatar(
                                backgroundImage: 
                                NetworkImage(listWisata.gambarUrl),
                              ),
                              title: Text(listWisata.nama),
                              subtitle: Text(listWisata.kategori),
                              onTap: () =>
                                  Navigator.push(
                                      context,
                                      new MaterialPageRoute(
                                          builder: (context) =>
                                              DetailScreen(
                                                  detailWisata: listWisata)))),
                        );
                      });
                }
            }
          },
        ),
      );
}