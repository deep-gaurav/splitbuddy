// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GTransactionType _$gTransactionTypeEXPENSE_SPLIT =
    const GTransactionType._('EXPENSE_SPLIT');
const GTransactionType _$gTransactionTypeCROSS_GROUP_SETTLEMENT =
    const GTransactionType._('CROSS_GROUP_SETTLEMENT');
const GTransactionType _$gTransactionTypeCASH_PAID =
    const GTransactionType._('CASH_PAID');

GTransactionType _$gTransactionTypeValueOf(String name) {
  switch (name) {
    case 'EXPENSE_SPLIT':
      return _$gTransactionTypeEXPENSE_SPLIT;
    case 'CROSS_GROUP_SETTLEMENT':
      return _$gTransactionTypeCROSS_GROUP_SETTLEMENT;
    case 'CASH_PAID':
      return _$gTransactionTypeCASH_PAID;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GTransactionType> _$gTransactionTypeValues =
    new BuiltSet<GTransactionType>(const <GTransactionType>[
  _$gTransactionTypeEXPENSE_SPLIT,
  _$gTransactionTypeCROSS_GROUP_SETTLEMENT,
  _$gTransactionTypeCASH_PAID,
]);

Serializer<GSplitInput> _$gSplitInputSerializer = new _$GSplitInputSerializer();
Serializer<GSplitInputNonGroup> _$gSplitInputNonGroupSerializer =
    new _$GSplitInputNonGroupSerializer();
Serializer<GTransactionType> _$gTransactionTypeSerializer =
    new _$GTransactionTypeSerializer();

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

class _$GSplitInputNonGroupSerializer
    implements StructuredSerializer<GSplitInputNonGroup> {
  @override
  final Iterable<Type> types = const [
    GSplitInputNonGroup,
    _$GSplitInputNonGroup
  ];
  @override
  final String wireName = 'GSplitInputNonGroup';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSplitInputNonGroup object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'amount',
      serializers.serialize(object.amount, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userId;
    if (value != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GSplitInputNonGroup deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSplitInputNonGroupBuilder();

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
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GTransactionTypeSerializer
    implements PrimitiveSerializer<GTransactionType> {
  @override
  final Iterable<Type> types = const <Type>[GTransactionType];
  @override
  final String wireName = 'GTransactionType';

  @override
  Object serialize(Serializers serializers, GTransactionType object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  GTransactionType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GTransactionType.valueOf(serialized as String);
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

class _$GSplitInputNonGroup extends GSplitInputNonGroup {
  @override
  final int amount;
  @override
  final String? email;
  @override
  final String? userId;

  factory _$GSplitInputNonGroup(
          [void Function(GSplitInputNonGroupBuilder)? updates]) =>
      (new GSplitInputNonGroupBuilder()..update(updates))._build();

  _$GSplitInputNonGroup._({required this.amount, this.email, this.userId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        amount, r'GSplitInputNonGroup', 'amount');
  }

  @override
  GSplitInputNonGroup rebuild(
          void Function(GSplitInputNonGroupBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSplitInputNonGroupBuilder toBuilder() =>
      new GSplitInputNonGroupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSplitInputNonGroup &&
        amount == other.amount &&
        email == other.email &&
        userId == other.userId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSplitInputNonGroup')
          ..add('amount', amount)
          ..add('email', email)
          ..add('userId', userId))
        .toString();
  }
}

class GSplitInputNonGroupBuilder
    implements Builder<GSplitInputNonGroup, GSplitInputNonGroupBuilder> {
  _$GSplitInputNonGroup? _$v;

  int? _amount;
  int? get amount => _$this._amount;
  set amount(int? amount) => _$this._amount = amount;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  GSplitInputNonGroupBuilder();

  GSplitInputNonGroupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _amount = $v.amount;
      _email = $v.email;
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSplitInputNonGroup other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSplitInputNonGroup;
  }

  @override
  void update(void Function(GSplitInputNonGroupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSplitInputNonGroup build() => _build();

  _$GSplitInputNonGroup _build() {
    final _$result = _$v ??
        new _$GSplitInputNonGroup._(
            amount: BuiltValueNullFieldError.checkNotNull(
                amount, r'GSplitInputNonGroup', 'amount'),
            email: email,
            userId: userId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
