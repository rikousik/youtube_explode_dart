import 'fragment.dart';

enum StreamSource { muxed, adaptive, dash }

///
abstract class StreamInfoProvider {
  ///
  static final RegExp contentLenExp = RegExp(r'clen=(\d+)');

  ///
  StreamSource get source;

  ///
  int get tag;

  ///
  String get url;

  ///
  String? get signature => null;

  ///
  String? get signatureParameter => null;

  ///
  int? get contentLength => null;

  ///
  int? get bitrate => null;

  ///
  String? get container;

  ///
  String? get audioCodec => null;

  ///
  String? get videoCodec => null;

  ///
  String? get videoQualityLabel => null;

  ///
  int? get videoWidth => null;

  ///
  int? get videoHeight => null;

  ///
  int? get framerate => null;

  ///
  List<Fragment>? get fragments => null;
}
