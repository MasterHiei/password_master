// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'localization_settings_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocalizationSettingsState {

 I18n get initialValue => throw _privateConstructorUsedError; I18n get currentValue => throw _privateConstructorUsedError;







/// Create a copy of LocalizationSettingsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$LocalizationSettingsStateCopyWith<LocalizationSettingsState> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $LocalizationSettingsStateCopyWith<$Res>  {
  factory $LocalizationSettingsStateCopyWith(LocalizationSettingsState value, $Res Function(LocalizationSettingsState) then) = _$LocalizationSettingsStateCopyWithImpl<$Res, LocalizationSettingsState>;
@useResult
$Res call({
 I18n initialValue, I18n currentValue
});



}

/// @nodoc
class _$LocalizationSettingsStateCopyWithImpl<$Res,$Val extends LocalizationSettingsState> implements $LocalizationSettingsStateCopyWith<$Res> {
  _$LocalizationSettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of LocalizationSettingsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? initialValue = null,Object? currentValue = null,}) {
  return _then(_value.copyWith(
initialValue: null == initialValue ? _value.initialValue : initialValue // ignore: cast_nullable_to_non_nullable
as I18n,currentValue: null == currentValue ? _value.currentValue : currentValue // ignore: cast_nullable_to_non_nullable
as I18n,
  )as $Val);
}

}


/// @nodoc
abstract class _$$LocalizationSettingsStateImplCopyWith<$Res> implements $LocalizationSettingsStateCopyWith<$Res> {
  factory _$$LocalizationSettingsStateImplCopyWith(_$LocalizationSettingsStateImpl value, $Res Function(_$LocalizationSettingsStateImpl) then) = __$$LocalizationSettingsStateImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 I18n initialValue, I18n currentValue
});



}

/// @nodoc
class __$$LocalizationSettingsStateImplCopyWithImpl<$Res> extends _$LocalizationSettingsStateCopyWithImpl<$Res, _$LocalizationSettingsStateImpl> implements _$$LocalizationSettingsStateImplCopyWith<$Res> {
  __$$LocalizationSettingsStateImplCopyWithImpl(_$LocalizationSettingsStateImpl _value, $Res Function(_$LocalizationSettingsStateImpl) _then)
      : super(_value, _then);


/// Create a copy of LocalizationSettingsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? initialValue = null,Object? currentValue = null,}) {
  return _then(_$LocalizationSettingsStateImpl(
initialValue: null == initialValue ? _value.initialValue : initialValue // ignore: cast_nullable_to_non_nullable
as I18n,currentValue: null == currentValue ? _value.currentValue : currentValue // ignore: cast_nullable_to_non_nullable
as I18n,
  ));
}


}

/// @nodoc


class _$LocalizationSettingsStateImpl extends _LocalizationSettingsState  {
  const _$LocalizationSettingsStateImpl({required this.initialValue, required this.currentValue}): super._();

  

@override final  I18n initialValue;
@override final  I18n currentValue;

@override
String toString() {
  return 'LocalizationSettingsState(initialValue: $initialValue, currentValue: $currentValue)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LocalizationSettingsStateImpl&&(identical(other.initialValue, initialValue) || other.initialValue == initialValue)&&(identical(other.currentValue, currentValue) || other.currentValue == currentValue));
}


@override
int get hashCode => Object.hash(runtimeType,initialValue,currentValue);

/// Create a copy of LocalizationSettingsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LocalizationSettingsStateImplCopyWith<_$LocalizationSettingsStateImpl> get copyWith => __$$LocalizationSettingsStateImplCopyWithImpl<_$LocalizationSettingsStateImpl>(this, _$identity);








}


abstract class _LocalizationSettingsState extends LocalizationSettingsState {
  const factory _LocalizationSettingsState({required final  I18n initialValue, required final  I18n currentValue}) = _$LocalizationSettingsStateImpl;
  const _LocalizationSettingsState._(): super._();

  

@override I18n get initialValue;@override I18n get currentValue;
/// Create a copy of LocalizationSettingsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LocalizationSettingsStateImplCopyWith<_$LocalizationSettingsStateImpl> get copyWith => throw _privateConstructorUsedError;

}
