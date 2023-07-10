import 'package:flutter/material.dart';
import 'package:agora_rtc_engine/rtc_engine.dart';
import 'dart:async';
import 'dart:developer';
import 'package:permission_handler/permission_handler.dart';
import 'package:videovoiceandchat/pages/call.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _channelController = TextEditingController();
  bool _validateError = false;
  ClientRole? _role = ClientRole.Broadcaster;

  @override
  void initState() {
    _channelController;
    super.initState();
  }

  Future<void> onJoin() async {
    setState(() {
      _channelController.text.isEmpty
          ? _validateError = true
          : _validateError = false;
    });
    if (_channelController.text.isNotEmpty) {
      await _handleCameraAndMic(Permission.camera);
      await _handleCameraAndMic(Permission.microphone);
      // ignore: use_build_context_synchronously
      await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CallPage(
              role: _role,
              channelName: _channelController.text,
            ),
          ));
    }
  }

  Future<void> _handleCameraAndMic(Permission permission) async {
    final status = await permission.request();
    log(status.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 5,
                ),
                Image.asset(
                  'lib/images/visionpro.jpg',
                  height: 135,
                  width: 180,
                ),
                const SizedBox(
                  height: 5,
                ),
                const SizedBox(
                  height: 5,
                ),
                TextField(
                  controller: _channelController,
                  decoration: InputDecoration(
                      errorText:
                          _validateError ? 'Channel name is mandatory' : null,
                      border: const UnderlineInputBorder(
                        borderSide: BorderSide(width: 1),
                      ),
                      hintText: 'Enter Channel name'),
                ),
                RadioListTile(
                  title: const Text('Broadcaster'),
                  value: ClientRole.Broadcaster,
                  groupValue: _role,
                  onChanged: (ClientRole? value) {
                    setState(() {
                      _role = value;
                    });
                  },
                ),
                RadioListTile(
                  title: const Text('Audience'),
                  value: ClientRole.Audience,
                  groupValue: _role,
                  onChanged: (ClientRole? value) {
                    setState(() {
                      _role = value;
                    });
                  },
                ),
                ElevatedButton(
                  onPressed: onJoin,
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.deepPurple,
                      minimumSize: const Size(double.infinity, 40)),
                  child: Text(_role == ClientRole.Audience
                      ? 'JOIN CALL'
                      : 'START CALL'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
