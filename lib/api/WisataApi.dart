import 'dart:convert';

import 'package:dicoding_submission_flutter_beginner/model/DataWisata.dart';
import 'package:flutter/material.dart';

class WisataApi {

  static Future<List<DataWisata>> getlocaldata(BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final data = await assetBundle.loadString('assets/data/list.json');
    final body = json.decode(data);

    return body.map<DataWisata>(DataWisata.fromJson).toList();
  }
}