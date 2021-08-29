import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:insta_calculator/models/calc.dart';
import 'package:insta_calculator/routes/history.dart';
import 'package:insta_calculator/routes/home/buttons.dart';
import 'package:insta_calculator/routes/home/fields.dart';
import 'package:insta_calculator/widgets/drawer.dart';
import 'package:provider/provider.dart';

class HomeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: NeumorphicAppBar(
        title: Text("InstaCalc"),
        actions: [
          Hero(
            tag: 'history',
            child: NeumorphicButton(
              child: Icon(Icons.history),
              onPressed: () => Navigator.of(context).pushNamed('/history'),
            ),
          ),
        ],
      ),
      drawer: CustomDrawer(),
      body: ContentContainer(),
    );
  }
}

class ContentContainer extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          flex: 5,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: FieldContainer(),
          ),
        ),
        Flexible(
          flex: 15,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: ButtonContainer(),
          ),
        ),
      ],
    );
  }
}
