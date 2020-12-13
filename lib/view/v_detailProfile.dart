
import 'package:edubox_pkl/entity/users.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailProfile extends StatefulWidget {
  final Datum profil;
  DetailProfile({Key key, @required this.profil}) : super(key: key);

  @override
  _DetailProfileState createState() => _DetailProfileState();
}

class _DetailProfileState extends State<DetailProfile> {
  Datum get profil => widget.profil;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Edubox',
        home: Scaffold(
            resizeToAvoidBottomPadding: false,
            backgroundColor: Colors.grey[350],
            appBar: PreferredSize(
                child: AppBar(
                  backgroundColor: Colors.white,
                ),
                preferredSize: Size.fromHeight(0.1)),
            body: SingleChildScrollView(
              child: Expanded(
                  child: Column(
                children: [
                  searchBarTop(),
                  imageTop(),
                  titleSection(),
                  Container(
                    height: 8,
                    color: Colors.grey[100],
                  ),
                  information(),
                  Container(
                    height: 8,
                    color: Colors.grey[100],
                  ),
                  description()
                ],
              )),
            )));
  }

  Widget titleSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(bottom: 12),
                  child: Text(
                    profil.firstName,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(bottom: 12),
                    child: Text(
                      profil.lastName,
                      style: TextStyle(fontSize: 14),
                    )),
                Container(
                  child: Row(
                    children: [
                      Center(
                        child: Text(
                          'Terjual 60',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        height: 28,
                        width: 75,
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.grey[400], width: 1),
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(7))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Center(
                              child: Icon(
                                Icons.star,
                                color: Colors.orange,
                                size: 15,
                              ),
                            ),
                            Center(
                              child: Text(
                                '5.0',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 13),
                              ),
                            ),
                            Center(
                              child: Text(
                                '(29)',
                                style:
                                    TextStyle(fontSize: 13, color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 28,
                        width: 75,
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.grey[400], width: 1),
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(7))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Center(
                              child: Text(
                                'Diskusi',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 13),
                              ),
                            ),
                            Center(
                              child: Text(
                                '(1)',
                                style:
                                    TextStyle(fontSize: 13, color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Divider(),
                Container(
                  child: Row(
                    children: [
                      Center(
                        child: Text(
                          'Dijual oleh',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      Container(
                        width: 5,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.check_circle,
                              size: 18,
                              color: Colors.green,
                            ),
                            Container(
                              width: 2,
                            ),
                            Text(
                              profil.email,
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: 100,
            ),
            child: Icon(
              Icons.notifications_none,
              size: 40,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }

  Widget searchBarTop() {
    return AppBar(
      backgroundColor: Colors.white,
      leading: Icon(
        Icons.arrow_back,
        color: Colors.grey,
      ),
      title: fieldSearch(),
      actions: [
        Icon(
          Icons.share,
          color: Colors.grey,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Icon(
            Icons.shopping_cart,
            color: Colors.grey,
          ),
        ),
        Icon(
          Icons.more_vert,
          color: Colors.grey,
        ),
      ],
    );
  }

  Widget fieldSearch() {
    return Container(
      height: 40,
      width: 250,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.all(Radius.circular(7)),
      ),
      child: TextField(
        style: TextStyle(fontSize: 15, height: 1.3, color: Colors.black),
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Search',
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey,
              size: 16,
            )),
      ),
    );
  }

  Widget information() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    'Informasi Produk',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 20,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Berat',
                      ),
                      Text(
                        '1000 gram',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 20,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Kondisi',
                      ),
                      Text(
                        'Baru',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 20,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Asuransi',
                      ),
                      Text(
                        'Ya',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 20,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Pemesanan Min',
                      ),
                      Text(
                        '1 Buah',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 20,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Kategori',
                      ),
                      Text(
                        'Hoodie Pria',
                        style: TextStyle(color: Colors.green),
                      )
                    ],
                  ),
                ),
                Container(height: 20),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Etalase',
                      ),
                      Text('Semua Etalase',
                          style: TextStyle(
                            color: Colors.green,
                          ))
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget description() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    'Deskripsi Produk',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 15,
                ),
                Text(
                  'Medium : 67 CM x 56 CM',
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  'Large : 69 CM x 58 CM',
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  'Extra Large : 73 CM x 62 CM',
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  'Double Extra Large : 73 CM x 72 CM',
                  style: TextStyle(color: Colors.grey),
                ),
                Container(
                  height: 20,
                ),
                Text(
                  'Baca Selengkapnya',
                  style: TextStyle(color: Colors.green),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget imageTop() {
    return Container(
      child: Image.network(
        profil.avatar,
        fit: BoxFit.contain,
      ),
    );
  }
}
