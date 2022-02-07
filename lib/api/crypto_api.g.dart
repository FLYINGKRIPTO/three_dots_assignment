// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _CryptoAPIClient implements CryptoAPIClient {
  _CryptoAPIClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://min-api.cryptocompare.com/data/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<CryptoResponse> getCoins(limit, page, tsym, api_key) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'limit': limit,
      r'page': page,
      r'tsym': tsym,
      r'api_key': api_key
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CryptoResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/top/totalvolfull',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CryptoResponse.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
