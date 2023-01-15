import 'package:desing_fonts/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

class GraficasCircularesPage extends StatefulWidget {
  const GraficasCircularesPage({Key? key}) : super(key: key);

  @override
  State<GraficasCircularesPage> createState() => _GraficasCircularesPageState();
}

class _GraficasCircularesPageState extends State<GraficasCircularesPage> {
  double porcentaje = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          setState(() {
            porcentaje += 10.0;
            if (porcentaje > 100) {
              porcentaje = 0.0;
            }
          });
        },
        child: const Icon(Icons.refresh_outlined),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          child: RadialProgress(
            porcentaje: porcentaje,
            colorPrimario: Colors.black,
            colorSecundario: Colors.grey,
            grosorPrimario: 10,
            grosorSecundario: 10,
          ),
        ),
        //Text('$porcentaje %',style: const TextStyle(fontSize: 50),),
      ),
    );
  }
}
