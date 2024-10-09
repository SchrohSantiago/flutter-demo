import 'package:flutter/material.dart';

class DesignScreen extends StatelessWidget {

  const DesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Design demo'),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
           Container(
            width: double.infinity, // O puedes establecer un ancho fijo
            height: 300, // Establecer altura para la imagen
            child: FadeInImage(
              fit: BoxFit.cover, // Ajustar la imagen al contenedor
              placeholder: AssetImage('assets/loading.gif'),
              image: NetworkImage('https://images.stockcake.com/public/e/e/c/eec9628a-5645-4d08-98e7-dd522e8025bb_large/serene-river-landscape-stockcake.jpg'),
          ),
        ),
          Header(), 
          SocialButtons(),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(style: TextStyle(
              fontSize: 14,
            )
            ,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed auctor nibh vitae pretium vulputate. Suspendisse in nibh lectus. Vestibulum posuere pretium sem, non venenatis sem placerat mattis. Praesent scelerisque lobortis nulla, ut elementum magna elementum at. Nulla eget vestibulum tellus, vitae varius est. Phasellus viverra sem sit amet est posuere, ut malesuada lacus luctus. Phasellus velit neque, malesuada eu lobortis id, tincidunt vitae massa. In viverra tincidunt diam ac lacinia. Phasellus egestas cursus odio a ultricies.',
            maxLines: 6,
            overflow: TextOverflow.ellipsis, // Para que no rompa el contenedor el texto
            ),
          )
        ],
      ),
    );
  }
}

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(border: Border.all(width: 1)),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      padding: const EdgeInsets.all(10),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [Icon(Icons.phone), Text('Phone')],
          ),
          Column(
            children: [Icon(Icons.share), Text('Share')],
          ),
          Column(
            children: [Icon(Icons.telegram), Text('Telegram')],
          )
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        border: Border.all(width: 1)
      ),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      padding: const EdgeInsets.all(10),
      // child: SingleChildScrollView( // Para evitar desbordamientos...
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Distribucion de divs
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('demo'),
                Text('demo')
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red,
            ),
          SizedBox(
            width: 10,
            height: 10,
          ), // Caja con espacios
          Text('3')
        ],
      ),
    );
  }
}