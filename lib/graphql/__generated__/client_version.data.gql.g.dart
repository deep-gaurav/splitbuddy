// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_version.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GsupportedClientConstraintsData>
    _$gsupportedClientConstraintsDataSerializer =
    new _$GsupportedClientConstraintsDataSerializer();

class _$GsupportedClientConstraintsDataSerializer
    implements StructuredSerializer<GsupportedClientConstraintsData> {
  @override
  final Iterable<Type> types = const [
    GsupportedClientConstraintsData,
    _$GsupportedClientConstraintsData
  ];
  @override
  final String wireName = 'GsupportedClientConstraintsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GsupportedClientConstraintsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'supportedClient',
      serializers.serialize(object.supportedClient,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GsupportedClientConstraintsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GsupportedClientConstraintsDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'supportedClient':
          result.supportedClient = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GsupportedClientConstraintsData
    extends GsupportedClientConstraintsData {
  @override
  final String G__typename;
  @override
  final String supportedClient;

  factory _$GsupportedClientConstraintsData(
          [void Function(GsupportedClientConstraintsDataBuilder)? updates]) =>
      (new GsupportedClientConstraintsDataBuilder()..update(updates))._build();

  _$GsupportedClientConstraintsData._(
      {required this.G__typename, required this.supportedClient})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GsupportedClientConstraintsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        supportedClient, r'GsupportedClientConstraintsData', 'supportedClient');
  }

  @override
  GsupportedClientConstraintsData rebuild(
          void Function(GsupportedClientConstraintsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GsupportedClientConstraintsDataBuilder toBuilder() =>
      new GsupportedClientConstraintsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GsupportedClientConstraintsData &&
        G__typename == other.G__typename &&
        supportedClient == other.supportedClient;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, supportedClient.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GsupportedClientConstraintsData')
          ..add('G__typename', G__typename)
          ..add('supportedClient', supportedClient))
        .toString();
  }
}

class GsupportedClientConstraintsDataBuilder
    implements
        Builder<GsupportedClientConstraintsData,
            GsupportedClientConstraintsDataBuilder> {
  _$GsupportedClientConstraintsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _supportedClient;
  String? get supportedClient => _$this._supportedClient;
  set supportedClient(String? supportedClient) =>
      _$this._supportedClient = supportedClient;

  GsupportedClientConstraintsDataBuilder() {
    GsupportedClientConstraintsData._initializeBuilder(this);
  }

  GsupportedClientConstraintsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _supportedClient = $v.supportedClient;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GsupportedClientConstraintsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GsupportedClientConstraintsData;
  }

  @override
  void update(void Function(GsupportedClientConstraintsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GsupportedClientConstraintsData build() => _build();

  _$GsupportedClientConstraintsData _build() {
    final _$result = _$v ??
        new _$GsupportedClientConstraintsData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GsupportedClientConstraintsData', 'G__typename'),
            supportedClient: BuiltValueNullFieldError.checkNotNull(
                supportedClient,
                r'GsupportedClientConstraintsData',
                'supportedClient'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
