import 'package:cross_connectivity/cross_connectivity.dart';

class NetworkConnectivity {
  final Connectivity connectivity;
  NetworkConnectivity({required this.connectivity});
  Future<bool> get status async {
    var isConnected = await connectivity.checkConnection();
    if (isConnected) {
      return true;
    } else {
      return false;
    }
  }
}
