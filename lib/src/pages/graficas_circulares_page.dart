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
          width: 300,
          height: 300,
          color: Colors.indigo,
          child: RadialProgress(porcentaje: porcentaje),
        ),
        //Text('$porcentaje %',style: const TextStyle(fontSize: 50),),
      ),
    );
  }
}
