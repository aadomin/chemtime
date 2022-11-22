// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stake_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StakeItem _$StakeItemFromJson(Map<String, dynamic> json) {
  return _StakeItem.fromJson(json);
}

/// @nodoc
mixin _$StakeItem {
  double get stake => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get selected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StakeItemCopyWith<StakeItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StakeItemCopyWith<$Res> {
  factory $StakeItemCopyWith(StakeItem value, $Res Function(StakeItem) then) =
      _$StakeItemCopyWithImpl<$Res, StakeItem>;
  @useResult
  $Res call({double stake, String description, bool selected});
}

/// @nodoc
class _$StakeItemCopyWithImpl<$Res, $Val extends StakeItem>
    implements $StakeItemCopyWith<$Res> {
  _$StakeItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stake = null,
    Object? description = null,
    Object? selected = null,
  }) {
    return _then(_value.copyWith(
      stake: null == stake
          ? _value.stake
          : stake // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StakeItemCopyWith<$Res> implements $StakeItemCopyWith<$Res> {
  factory _$$_StakeItemCopyWith(
          _$_StakeItem value, $Res Function(_$_StakeItem) then) =
      __$$_StakeItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double stake, String description, bool selected});
}

/// @nodoc
class __$$_StakeItemCopyWithImpl<$Res>
    extends _$StakeItemCopyWithImpl<$Res, _$_StakeItem>
    implements _$$_StakeItemCopyWith<$Res> {
  __$$_StakeItemCopyWithImpl(
      _$_StakeItem _value, $Res Function(_$_StakeItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stake = null,
    Object? description = null,
    Object? selected = null,
  }) {
    return _then(_$_StakeItem(
      stake: null == stake
          ? _value.stake
          : stake // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StakeItem with DiagnosticableTreeMixin implements _StakeItem {
  const _$_StakeItem(
      {required this.stake, required this.description, required this.selected});

  factory _$_StakeItem.fromJson(Map<String, dynamic> json) =>
      _$$_StakeItemFromJson(json);

  @override
  final double stake;
  @override
  final String description;
  @override
  final bool selected;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StakeItem(stake: $stake, description: $description, selected: $selected)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StakeItem'))
      ..add(DiagnosticsProperty('stake', stake))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('selected', selected));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StakeItem &&
            (identical(other.stake, stake) || other.stake == stake) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.selected, selected) ||
                other.selected == selected));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, stake, description, selected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StakeItemCopyWith<_$_StakeItem> get copyWith =>
      __$$_StakeItemCopyWithImpl<_$_StakeItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StakeItemToJson(
      this,
    );
  }
}

abstract class _StakeItem implements StakeItem {
  const factory _StakeItem(
      {required final double stake,
      required final String description,
      required final bool selected}) = _$_StakeItem;

  factory _StakeItem.fromJson(Map<String, dynamic> json) =
      _$_StakeItem.fromJson;

  @override
  double get stake;
  @override
  String get description;
  @override
  bool get selected;
  @override
  @JsonKey(ignore: true)
  _$$_StakeItemCopyWith<_$_StakeItem> get copyWith =>
      throw _privateConstructorUsedError;
}
