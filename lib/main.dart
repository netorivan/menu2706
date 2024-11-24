import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const menu());
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
        colorSchemeSeed: const Color.fromARGB(255, 18, 208, 75),
      ),
      home: const principal(),
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
            const DrawerHeader(
                child: UserAccountsDrawerHeader(
                    accountName: Text('NESTOR IVAN CASTRO MARIN'),
                    accountEmail: Text('netorivan2801@gmail.com'))),
            ListTile(
              title: const Text('HOME'),
              leading: const Icon(Icons.add_home),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(),
            ListTile(
              title: const Text('PLACES'),
              leading: const Icon(Icons.place),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const places()),
                );
              },
            ),
            const Divider(),
            ListTile(
              title: const Text('GASTRONOMY'),
              leading: const Icon(Icons.free_breakfast),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const gastronomy()),
                );
              },
            ),
            const Divider(),
            ListTile(
              title: const Text('WHERE TO GO'),
              leading: const Icon(Icons.car_rental_sharp),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const tour()),
                );
              },
            ),
            const Divider(),
            ListTile(
              title: const Text('ABOUT ME'),
              leading: const Icon(Icons.people_alt_sharp),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const NESTOR()),
                );
              },
            ),
            const Divider(),
            ListTile(
              title: const Text('SETTIGNS'),
              leading: const Icon(Icons.settings),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const settings()),
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
        title: const Text(
          'NEIVA',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 126, 11, 101)),
        ),
        backgroundColor: const Color.fromARGB(255, 174, 241, 243),
      ),
      body: ListView(
        children: [
          Image.asset('imagens/iluminado.jpeg'),
          const Divider(),
          const Center(
              child: Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('MUNICIPIO DE SANTA MARIA-HUILA',
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 25,
                      color: Color.fromRGBO(146, 238, 149, 1))),
            ),
          )),
          const Image(
              image: NetworkImage(
                  'https://3.bp.blogspot.com/-O3jZOWqP9bE/UEiKHSjVqoI/AAAAAAAAqyg/Cw5vUM38y-g/s1600/FOTOS+MONUMENTOS+DE+NEIVA.JPG')),
          const Divider(),
          const Center(
              child: Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Monumentos a los caballos',
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 25,
                      color: Color(0xFFD0FF00))),
            ),
          )),
          const Image(
              image: NetworkImage(
                  'https://www.shutterstock.com/image-photo/neiva-huila-colombia-may-2019-600w-1766850350.jpg')),
          const Divider(),
          const Center(
              child: Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
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
        title:
            const Text('PLACES', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: ListView(
        children: [
          Image.asset(
            'imagens/place1.jpeg',
            height: 600,
          ),
          const Divider(),
          const Card(
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
          const Divider(),
          Image.asset('imagens/place2.jpeg'),
          const Card(
            color: Color.fromARGB(255, 248, 216, 206),
            child: Padding(
              padding: EdgeInsets.all(8.0),
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
        title: const Text('CONOCE MAS SOBRE MÍ'),
      ),
      body: ListView(
        children: [
          Image.asset(
            'imagens/amigos.jpg',
            width: 300,
            height: 300,
          ),
          const ListTile(
            title: Text('NESTOR IVAN CASTRO MARIN'),
            subtitle: Text('nombre y apellidos'),
            leading: Icon(Icons.person_2_sharp),
          ),
          const ListTile(
            title: Text('aqui encontraras todo sobre mí'),
            subtitle: Text('info'),
            leading: Icon(Icons.question_answer),
          ),
          const ListTile(
            title: Text('TODOS LOS DIAS EXCEPTO DE LUNES A DOMINGO'),
            subtitle: Text('HORARIO DE ATENCION'),
            leading: Icon(Icons.schedule),
          ),
          const ListTile(
            title: Text('nicastro7@misena.edu.co'),
            subtitle: Text('CORREO'),
            leading: Icon(Icons.mail_lock),
          ),
          const ListTile(
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
        title: const Text(
          'SANTA MARIA GASTRONOMY',
          strutStyle: StrutStyle(fontSize: 50),
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            const Card(
              child: Padding(
                padding: EdgeInsets.all(9.0),
                child: Center(
                    child: Text(
                  'tacos a lo huilense!',
                  style: TextStyle(),
                )),
              ),
            ),
            Image.asset('imagens/eat1.jpeg'),
            const Divider(),
            const Card(
              child: Text(
                  'degustaciones como: almohabana, tamales,y lechona son las mas comunes en nuestro lugar'),
            ),
            const Padding(
              padding: EdgeInsets.all(9.0),
              child: Text('tacos a lo huilense!'),
            ),
            Image.asset('imagens/eat2.jpeg'),
            const Divider(),
            const Card(
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
        title: const Card(
          child: Text('LUGARES DONDE PUEDES IR',
              style: TextStyle(fontWeight: FontWeight.bold)),
        ),
      ),
      body: const Column(),
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
//hoy terminamos guia 6 /11/07/2024

//GA6-220501096-AA4-EV02 establecer los componentes frontend de la aplicación web  
//GA6-220501096-AA4-EV03 - Diseño frontend que cumpla con los requerimientos del proyecto  
 
//creamos una version web. primero abrimos terminal aqui en el codigo, luego inserto el codigo que nos dejo en el chat
//que es...flutter build web --web-renderer html --release con esto el construye sus archivos y luego 
// abrimos disco local c, proyect_flutterfirts_class,menu2706,build, 