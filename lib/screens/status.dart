import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:band_name/services/socket_service.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final socketService = Provider.of<SocketService>(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Server status: ${socketService.serverStatus}')],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.message),
        onPressed: () {
          // emitir emitir-mensaje
          socketService.socket
              .emit('emitir-mensaje', {'nombre': 'jaiver', 'mensaje': 'Hola'});
        },
      ),
    );
  }
}
