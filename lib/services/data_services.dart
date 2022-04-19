import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:smart_farm/modal/data_modal.dart';


class DataServices{
  String baseURL="http://mark.bslmeiyu.com/api";
  
  Future<List<DataModel>> getInfo() async {
    var apiURL ='/getplaces';
    http.Response res = await http.get(Uri.parse(baseURL+apiURL));
    try{
      if(res.statusCode==200){
         List<dynamic> list = json.decode(res.body);
         print(list);
         return list.map((e)=> DataModel.fromJson(e)).toList();
      }
      return <DataModel>[];
    }catch(e){
      print(e);
      return <DataModel>[];
    }
  }
}