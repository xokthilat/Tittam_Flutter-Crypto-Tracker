import 'package:cross_connectivity/cross_connectivity.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tittam/core/service/network_connectivity.dart';

class MockConnectedNetworkConnectivity extends Mock implements Connectivity {
  @override
  Future<bool> checkConnection() async {
    return true;
  }
}

class MockDisconnectedNetworkConnectivity extends Mock implements Connectivity {
  @override
  Future<bool> checkConnection() async {
    return false;
  }
}

void main() {
  late final Connectivity mockConnectedConnectivity;
  late final NetworkConnectivity networkConnectedConnectivity;

  late final Connectivity mockDisconnectedConnectivity;
  late final NetworkConnectivity networkDisconnectedConnectivity;
  setUpAll(() {
    mockConnectedConnectivity = MockConnectedNetworkConnectivity();
    mockDisconnectedConnectivity = MockDisconnectedNetworkConnectivity();

    networkConnectedConnectivity =
        NetworkConnectivity(connectivity: mockConnectedConnectivity);
    networkDisconnectedConnectivity =
        NetworkConnectivity(connectivity: mockDisconnectedConnectivity);
  });
  group("Network connectivity", () {
    test('should return connected status', () async {
      var status = await networkConnectedConnectivity.status;
      expect(status, true);
    });

    test('should return disconnected status', () async {
      var status = await networkDisconnectedConnectivity.status;
      expect(status, false);
    });
  });
}
