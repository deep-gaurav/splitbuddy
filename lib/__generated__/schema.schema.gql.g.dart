// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GSplitInput> _$gSplitInputSerializer = new _$GSplitInputSerializer();

class _$GSplitInputSerializer implements StructuredSerializer<GSplitInput> {
  @override
  final Iterable<Type> types = const [GSplitInput, _$GSplitInput];
  @override
  final String wireName = 'GSplitInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSplitInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'amount',
      serializers.serialize(object.amount, specifiedType: const FullType(int)),
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GSplitInput deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSplitInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GSplitInput extends GSplitInput {
  @override
  final int amount;
  @override
  final String userId;

  factory _$GSplitInput([void Function(GSplitInputBuilder)? updates]) =>
      (new GSplitInputBuilder()..update(updates))._build();

  _$GSplitInput._({required this.amount, required this.userId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(amount, r'GSplitInput', 'amount');
    BuiltValueNullFieldError.checkNotNull(userId, r'GSplitInput', 'userId');
  }

  @override
  GSplitInput rebuild(void Function(GSplitInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSplitInputBuilder toBuilder() => new GSplitInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSplitInput &&
        amount == other.amount &&
        userId == other.userId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSplitInput')
          ..add('amount', amount)
          ..add('userId', userId))
        .toString();
  }
}

class GSplitInputBuilder implements Builder<GSplitInput, GSplitInputBuilder> {
  _$GSplitInput? _$v;

  int? _amount;
  int? get amount => _$this._amount;
  set amount(int? amount) => _$this._amount = amount;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  GSplitInputBuilder();

  GSplitInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _amount = $v.amount;
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSplitInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSplitInput;
  }

  @override
  void update(void Function(GSplitInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSplitInput build() => _build();

  _$GSplitInput _build() {
    final _$result = _$v ??
        new _$GSplitInput._(
            amount: BuiltValueNullFieldError.checkNotNull(
                amount, r'GSplitInput', 'amount'),
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'GSplitInput', 'userId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
