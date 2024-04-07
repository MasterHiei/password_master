// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_settings_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ThemeSettingsState {

 AppThemeMode get initialValue => throw _privateConstructorUsedError; AppThemeMode get currentValue => throw _privateConstructorUsedError;







@JsonKey(ignore: true)
$ThemeSettingsStateCopyWith<ThemeSettingsState> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $ThemeSettingsStateCopyWith<$Res>  {
  factory $ThemeSettingsStateCopyWith(ThemeSettingsState value, $Res Function(ThemeSettingsState) then) = _$ThemeSettingsStateCopyWithImpl<$Res, ThemeSettingsState>;
@useResult
$Res call({
 AppThemeMode initialValue, AppThemeMode currentValue
});



}

/// @nodoc
class _$ThemeSettingsStateCopyWithImpl<$Res,$Val extends ThemeSettingsState> implements $ThemeSettingsStateCopyWith<$Res> {
  _$ThemeSettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

@pragma('vm:prefer-inline') @override $Res call({Object? initialValue = null,Object? currentValue = null,}) {
  return _then(_value.copyWith(
initialValue: null == initialValue ? _value.initialValue : initialValue // ignore: cast_nullable_to_non_nullable
as AppThemeMode,currentValue: null == currentValue ? _value.currentValue : currentValue // ignore: cast_nullable_to_non_nullable
as AppThemeMode,
  )as $Val);
}

}


/// @nodoc
abstract class _$$ThemeSettingsStateImplCopyWith<$Res> implements $ThemeSettingsStateCopyWith<$Res> {
  factory _$$ThemeSettingsStateImplCopyWith(_$ThemeSettingsStateImpl value, $Res Function(_$ThemeSettingsStateImpl) then) = __$$ThemeSettingsStateImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 AppThemeMode initialValue, AppThemeMode currentValue
});



}

/// @nodoc
class __$$ThemeSettingsStateImplCopyWithImpl<$Res> extends _$ThemeSettingsStateCopyWithImpl<$Res, _$ThemeSettingsStateImpl> implements _$$ThemeSettingsStateImplCopyWith<$Res> {
  __$$ThemeSettingsStateImplCopyWithImpl(_$ThemeSettingsStateImpl _value, $Res Function(_$ThemeSettingsStateImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? initialValue = null,Object? currentValue = null,}) {
  return _then(_$ThemeSettingsStateImpl(
initialValue: null == initialValue ? _value.initialValue : initialValue // ignore: cast_nullable_to_non_nullable
as AppThemeMode,currentValue: null == currentValue ? _value.currentValue : currentValue // ignore: cast_nullable_to_non_nullable
as AppThemeMode,
  ));
}


}

/// @nodoc


class _$ThemeSettingsStateImpl extends _ThemeSettingsState  {
  const _$ThemeSettingsStateImpl({required this.initialValue, required this.currentValue}): super._();

  

@override final  AppThemeMode initialValue;
@override final  AppThemeMode currentValue;

@override
String toString() {
  return 'ThemeSettingsState(initialValue: $initialValue, currentValue: $currentValue)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ThemeSettingsStateImpl&&(identical(other.initialValue, initialValue) || other.initialValue == initialValue)&&(identical(other.currentValue, currentValue) || other.currentValue == currentValue));
}


@override
int get hashCode => Object.hash(runtimeType,initialValue,currentValue);

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$ThemeSettingsStateImplCopyWith<_$ThemeSettingsStateImpl> get copyWith => __$$ThemeSettingsStateImplCopyWithImpl<_$ThemeSettingsStateImpl>(this, _$identity);








}


abstract class _ThemeSettingsState extends ThemeSettingsState {
  const factory _ThemeSettingsState({required final  AppThemeMode initialValue, required final  AppThemeMode currentValue}) = _$ThemeSettingsStateImpl;
  const _ThemeSettingsState._(): super._();

  

@override  AppThemeMode get initialValue;@override  AppThemeMode get currentValue;
@override @JsonKey(ignore: true)
_$$ThemeSettingsStateImplCopyWith<_$ThemeSettingsStateImpl> get copyWith => throw _privateConstructorUsedError;

}
