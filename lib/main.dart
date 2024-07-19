import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(menu());
}

class menu extends StatelessWidget {
  const menu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorSchemeSeed: Colors.purple,
      ),
      home: principal(),
    ); //aqui termina el codigo para decir que es la pagina principal
    //yo coloque ese tema para ver si le cambiaba el color a la barra del inicio pero creo que no
  }
}

// esta cabecera es donde empieza home y es la pagina donde regresa todas y donde se encuentra la lista de despliegue con el menu
class principal extends StatefulWidget {
  const principal({super.key});

  @override
  State<principal> createState() => _principalState();
}

//este es la cabecera del menu de despliegue y muestra lo primero es el icono de home que nos trae de vuelta a la pagina principal
class _principalState extends State<principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          //este cajon, implementa el espacio cuadrado de la cabecera dandole nombre y correo
          //tambien encontramos el listado del menu de la lista desplegable
          children: [
            DrawerHeader(
                child: UserAccountsDrawerHeader(
                    accountName: Text('NESTOR IVAN CASTRO MARIN'),
                    accountEmail: Text('netorivan2801@gmail.com'))),
            ListTile(
              title: Text('HOME'),
              leading: Icon(Icons.add_home),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(),
            ListTile(
              title: Text('PLACES'),
              leading: Icon(Icons.place),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => places()),
                );
              },
            ),
            Divider(),
            ListTile(
              title: Text('GASTRONOMY'),
              leading: Icon(Icons.free_breakfast),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => gastronomy()),
                );
              },
            ),
            Divider(),
            ListTile(
              title: Text('WHERE TO GO'),
              leading: Icon(Icons.car_rental_sharp),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => tour()),
                );
              },
            ),
            Divider(),
            ListTile(
              title: Text('ABOUT ME'),
              leading: Icon(Icons.people_alt_sharp),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => NESTOR()),
                );
              },
            ),
            Divider(),
            ListTile(
              title: Text('SETTIGNS'),
              leading: Icon(Icons.settings),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => settings()),
                );
              },
            )
          ],
        ),
      ),
      //aqui finaliza lo que es el listado de despliegue osea el drawer cajon y empezamos donde lo metimnos en la cabecera
      //del codigo dimos un espacio y introducimos despues de home principal
      //y aqui empieza la pagina principal con una imagen y dos textos

      appBar: AppBar(
        title: Text(
          'NEIVA',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 126, 11, 101)),
        ),
        backgroundColor: Color.fromARGB(255, 174, 241, 243),
      ),
      body: ListView(
        children: [
          Image.asset('imagens/iluminado.jpeg'),
          Divider(),
          Center(
              child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('MUNICIPIO DE SANTA MARIA-HUILA',
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 25,
                      color: Color.fromRGBO(146, 238, 149, 1))),
            ),
          )),
          Image(
              image: NetworkImage(
                  'https://3.bp.blogspot.com/-O3jZOWqP9bE/UEiKHSjVqoI/AAAAAAAAqyg/Cw5vUM38y-g/s1600/FOTOS+MONUMENTOS+DE+NEIVA.JPG')),
          Divider(),
          Center(
              child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Monumentos a los caballos',
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 25,
                      color: Color(0xFFD0FF00))),
            ),
          )),
          Image(
              image: NetworkImage(
                  'https://www.shutterstock.com/image-photo/neiva-huila-colombia-may-2019-600w-1766850350.jpg')),
          Divider(),
          Center(
              child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  'El Mohán es una figura legendaria de la cultura colombiana. Según la leyenda, el Mohán era un ser mítico que protegía el río Magdalena y odiaba la contaminación del agua.',
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 25,
                      color: Color.fromARGB(255, 194, 224, 243))),
            ),
          )),
        ],
      ),
    );
    //aqui termina la vista principal de nuestra pagina
  }
}
//page of place//

class places extends StatelessWidget {
  const places({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PLACES', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: ListView(
        children: [
          Image.asset(
            'imagens/place1.jpeg',
            height: 600,
          ),
          Divider(),
          Card(
            child: ListTile(
              title: Text(
                'VEREDA DE SAN MIGUEL',
                selectionColor: Color.fromARGB(0, 80, 80, 224),
              ),
              leading: Icon(Icons.add_a_photo_rounded),
              subtitle: Text(
                  'las puestas de sol son una verdadera maravilla, entre su ecosistema',
                  selectionColor: Color.fromARGB(0, 29, 233, 97)),
            ),
          ),
          Divider(),
          Image.asset('imagens/place2.jpeg'),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: ListTile(
                  title: Center(
                      child: Text(
                    'puente de los lamentos',
                    style: TextStyle(
                        wordSpacing: 23, fontSize: 25, color: Colors.cyan),
                  )),
                  leading: Icon(Icons.share),
                ),
              ),
            ),
            color: const Color.fromARGB(255, 248, 216, 206),
          )
        ],
      ),
    );
  }
}

/// ABOUT ME//
///

class NESTOR extends StatelessWidget {
  const NESTOR({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CONOCE MAS SOBRE MÍ'),
      ),
      body: ListView(
        children: [
          Image.asset(
            'imagens/amigos.jpg',
            width: 300,
            height: 300,
          ),
          ListTile(
            title: Text('NESTOR IVAN CASTRO MARIN'),
            subtitle: Text('nombre y apellidos'),
            leading: Icon(Icons.person_2_sharp),
          ),
          ListTile(
            title: Text('aqui encontraras todo sobre mí'),
            subtitle: Text('info'),
            leading: Icon(Icons.question_answer),
          ),
          ListTile(
            title: Text('TODOS LOS DIAS EXCEPTO DE LUNES A DOMINGO'),
            subtitle: Text('HORARIO DE ATENCION'),
            leading: Icon(Icons.schedule),
          ),
          ListTile(
            title: Text('nicastro7@misena.edu.co'),
            subtitle: Text('CORREO'),
            leading: Icon(Icons.mail_lock),
          ),
          ListTile(
            title: Text('3196361319-3007756869'),
            subtitle: Text('contactos telefonicos'),
            leading: Icon(Icons.phone_android),
          ),
        ],
      ),
    );
  }
}

//page of gastronomy//
class gastronomy extends StatelessWidget {
  const gastronomy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SANTA MARIA GASTRONOMY',
          strutStyle: StrutStyle(fontSize: 50),
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(9.0),
                child: Center(
                    child: Text(
                  'tacos a lo huilense!',
                  style: TextStyle(),
                )),
              ),
            ),
            Image.asset('imagens/eat1.jpeg'),
            Divider(),
            Card(
              child: Text(
                  'degustaciones como: almohabana, tamales,y lechona son las mas comunes en nuestro lugar'),
            ),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: Text('tacos a lo huilense!'),
            ),
            Image.asset('imagens/eat2.jpeg'),
            Divider(),
            Card(
              child: Text(
                  'degustaciones como: almohabana, tamales,y lechona son las mas comunes en nuestro lugar'),
            ),
          ],
        ),
      ),
    );
  }
}

//page of tour//
class tour extends StatelessWidget {
  const tour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Card(
          child: Text('LUGARES DONDE PUEDES IR',
              style: TextStyle(fontWeight: FontWeight.bold)),
        ),
      ),
      body: Column(),
    );
  }
}

//page of settings//
class settings extends StatelessWidget {
  const settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
//creamos una version web. primero abrimos terminal aqui en el codigo, luego inserto el codigo que nos dejo en el chat
//que es...flutter build web --web-renderer html --release con esto el construye sus archivos y luego 
// abrimos disco local c, proyect_flutterfirts_class,menu2706,build, 