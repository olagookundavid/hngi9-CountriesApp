import 'package:countryapp/network/network_enum.dart';

typedef NetworkCallBack<R> = R Function(dynamic);
typedef NetworkOnFailureCallBackWithMessage<R> = R Function(
    NetworkResponseErrorType, String?);
