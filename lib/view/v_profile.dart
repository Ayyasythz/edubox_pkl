import 'package:edubox_pkl/entity/users.dart';
import 'package:edubox_pkl/services/api_service.dart';
import 'package:edubox_pkl/view/v_detailProfile.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  @override
  createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  //  User _user;

  List<Datum> _users;
  bool _loading;

  @override
  void initState() {
    super.initState();
    _loading = true;
    ApiService.getUsers().then((users) {
      setState(() {
        _users = users;
        _loading = false;
      });
    });
  }

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   Webservice().getUser().then((value) => _user.data);
  // }

  // void _populateProfile(){
  //   WebService().load(Data.all).then((profiles) => {
  //     setState(() => {
  //       _profiles = profiles
  //     })
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _users == null ? 0 : _users.length,
        itemBuilder: (context, index) {
          var item = _users[index];
          return Card(
              child: Expanded(
            child: ListTile(
                leading: SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.network(item.avatar),
                ),
                title: Text(item.firstName),
                subtitle: Text(item.lastName),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              DetailProfile(profil: _users[index])));
                }),
          ));
        });
  }
}
