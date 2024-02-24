// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_version.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GsupportedClientConstraintsVars>
    _$gsupportedClientConstraintsVarsSerializer =
    new _$GsupportedClientConstraintsVarsSerializer();

class _$GsupportedClientConstraintsVarsSerializer
    implements StructuredSerializer<GsupportedClientConstraintsVars> {
  @override
  final Iterable<Type> types = const [
    GsupportedClientConstraintsVars,
    _$GsupportedClientConstraintsVars
  ];
  @override
  final String wireName = 'GsupportedClientConstraintsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GsupportedClientConstraintsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GsupportedClientConstraintsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GsupportedClientConstraintsVarsBuilder().build();
  }
}

class _$GsupportedClientConstraintsVars
    extends GsupportedClientConstraintsVars {
  factory _$GsupportedClientConstraintsVars(
          [void Function(GsupportedClientConstraintsVarsBuilder)? updates]) =>
      (new GsupportedClientConstraintsVarsBuilder()..update(updates))._build();

  _$GsupportedClientConstraintsVars._() : super._();

  @override
  GsupportedClientConstraintsVars rebuild(
          void Function(GsupportedClientConstraintsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GsupportedClientConstraintsVarsBuilder toBuilder() =>
      new GsupportedClientConstraintsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GsupportedClientConstraintsVars;
  }

  @override
  int get hashCode {
    return 625353523;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GsupportedClientConstraintsVars')
        .toString();
  }
}

class GsupportedClientConstraintsVarsBuilder
    implements
        Builder<GsupportedClientConstraintsVars,
            GsupportedClientConstraintsVarsBuilder> {
  _$GsupportedClientConstraintsVars? _$v;

  GsupportedClientConstraintsVarsBuilder();

  @override
  void replace(GsupportedClientConstraintsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GsupportedClientConstraintsVars;
  }

  @override
  void update(void Function(GsupportedClientConstraintsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GsupportedClientConstraintsVars build() => _build();

  _$GsupportedClientConstraintsVars _build() {
    final _$result = _$v ?? new _$GsupportedClientConstraintsVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
