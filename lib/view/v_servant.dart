import 'package:edubox_pkl/entity/servant.dart';
import 'package:flutter/material.dart';


class ServantView extends StatefulWidget {
  @override
  _ServantViewState createState() => _ServantViewState();
}

class _ServantViewState extends State<ServantView> {
  @override
  Widget build(BuildContext context) {
    return _listServant(context);
  }

  Widget _listServant(BuildContext context) {
    List<Servant> items = new List<Servant>();

    items.add(new Servant("Arjuna", "Berserker",
        "https://1.bp.blogspot.com/-M_iEvNOyG40/XRQOXfMLTGI/AAAAAAAAIy0/t7xJ0d7xGdo9f5ldbyAoSDJgEErH4U92ACLcBGAs/s1600/BerserkerArjunaAlterStage4.jpg"));
    items.add(new Servant("Artoria Pendragon", "Saber",
        "https://static.wikia.nocookie.net/fategrandorder/images/4/43/Artoria1.png/revision/latest?cb=20170206150711"));
    items.add(new Servant("Gilgamesh", "Archer",
        "https://static.wikia.nocookie.net/villains/images/4/4f/Gilgamesh4.jpg/revision/latest?cb=20171122165939"));
    items.add(new Servant("Jeanne d'Arc", "Avenger",
        "https://static.wikia.nocookie.net/fategrandorder/images/e/eb/Jalter_1999_Costume.png/revision/latest?cb=20200430200119"));
    items.add(new Servant("Karna", "Lancer",
        "https://gamepress.gg/grandorder/sites/grandorder/files/styles/servant_image/public/2017-12/Karna4.png?itok=q0i2I-db"));
    items.add(new Servant("Merlin", "Caster",
        "https://gamepress.gg/grandorder/sites/grandorder/files/styles/servant_image/public/2017-09/1503.jpg?itok=lDkbyj3t"));
    items.add(new Servant("Miyamoto Musashi", "Saber",
        "https://gamepress.gg/grandorder/sites/grandorder/files/2017-09/MusashiStage01.png"));
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
              leading: SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.network(items[index].image)),
              title: Text(items[index].servantName),
              subtitle: Text(items[index].className)),
        );
      }, 
    );
  }
}
