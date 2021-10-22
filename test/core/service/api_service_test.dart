import 'package:flutter_test/flutter_test.dart';
import 'package:tittam/constants.dart';
import 'package:tittam/core/service/api_holder.dart';

void main() {
  group("fetch list of coin holder", () {
    const apiHolder = ApiHolder.fetchListCoin();

    test("should return base url", () {
      expect(apiHolder.baseURL, baseUrl);
    });
    test("should return application/json in header", () {
      var expectedHeader = {"Content-Type": "application/json"};
      expect(apiHolder.header, expectedHeader);
    });
    test("should return application/json in header", () {
      var expectedHeader = {"Content-Type": "application/json"};
      expect(apiHolder.header, expectedHeader);
    });
    test("should return correct path", () {
      var expectedPath = "coins/markets";
      expect(apiHolder.path, expectedPath);
    });
    test("should return correct http method", () {
      var expectedHttpMethod = "GET";
      expect(apiHolder.method, expectedHttpMethod);
    });
    test("should return null body", () {
      expect(apiHolder.body, null);
    });
    test("should return correct query parameters", () {
      var expectedqueryParameter = {
        "vs_currency": "usd",
        "order": "market_cap_desc",
        "per_page": 100,
        "page": 1,
        "sparkline": false
      };
      expect(apiHolder.queryParameters, expectedqueryParameter);
    });
  });
}
