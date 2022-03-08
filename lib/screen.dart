import 'package:flutter/material.dart';
import 'package:theme_case/global_theme.dart';

//Вызов в main
class ThemeNew extends StatelessWidget {
  const ThemeNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: globalTheme(),
      home: ThemeScreen(),
    );
  }
}

class ThemeScreen extends StatefulWidget {
  const ThemeScreen({Key? key}) : super(key: key);
  @override
  _ThemeScreenState createState() => _ThemeScreenState();
}

class _ThemeScreenState extends State<ThemeScreen> {
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle =
    TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);
    const borderStyle = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(36)),
        borderSide: BorderSide(color: Color(0xFF49D7E0), width: 3));


    return Scaffold(
        appBar: AppBar(
          title: const Text("AppBar -->"),
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: const Icon(Icons.add_alert_sharp)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.announcement_sharp)),
            TextButton(
              onPressed: () {},
              child: const Text("Кнопочка"),
              style: buttonStyle,
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  child: Container(
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height : 60,
                          child: Image(image: AssetImage('assets/flowers.png'),),
                        ),
                        SizedBox(height: 30),
                        Text("Место под логотип с подписью", style: Theme.of(context).textTheme.bodyText1),
                      ],
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.ac_unit_outlined),
                  title: Text("Пункт первый", style: Theme.of(context).textTheme.bodyText2),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.wb_sunny),
                  title: Text("Пункт второй", style: Theme.of(context).textTheme.bodyText2),
                  onTap: () {},
                ),
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.anchor),
                  title: Text("Пункт третий", style: Theme.of(context).textTheme.bodyText2),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.wb_cloudy),
                  title: Text("Пункт четвертый", style: Theme.of(context).textTheme.bodyText2),
                  onTap: () {},
                ),]
          ),
        ),

        body: SingleChildScrollView(
          child: Container(
            
      width: double.infinity,
      child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const SizedBox(
              width: 110,
              height: 84,
              child: Image(image: AssetImage('assets/dart-logo.png')),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 260,
              child: Text(
                'Введите логин в виде 10 цифр номера телефона',
                style: Theme.of(context).textTheme.headline1,
                textAlign: TextAlign.center,

              ),
            ),
            SizedBox(
              height: 30,
            ),
            const SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  enabledBorder: borderStyle,
                  focusedBorder: borderStyle,
                  labelText: 'Ваш номер',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            const SizedBox(
              width: 300,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  enabledBorder: borderStyle,
                  focusedBorder: borderStyle,
                  labelText: 'Пароль',
                ),
              ),
            ),
            SizedBox(
              height: 28,
            ),
            SizedBox(
                width: 154,
                height: 42,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Войти'),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36.0),
                    ),
                  ),
                )),
            SizedBox(
              height: 32,
            ),
            InkWell(
                child: Text(
                  'Регистрация',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                onTap: () {}),
            SizedBox(
              height: 20,
            ),
            InkWell(
                child: Text('Забыли пароль?', style: Theme.of(context).textTheme.bodyText2),
                onTap: () {})
          ],
      ),
    ),
        ));
  }
}
