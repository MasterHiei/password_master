// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'value.failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ValueFailure<T> {

 T? get value => throw _privateConstructorUsedError;







/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$ValueFailureCopyWith<T, ValueFailure<T>> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $ValueFailureCopyWith<T,$Res>  {
  factory $ValueFailureCopyWith(ValueFailure<T> value, $Res Function(ValueFailure<T>) then) = _$ValueFailureCopyWithImpl<T, $Res, ValueFailure<T>>;
@useResult
$Res call({
 T? value
});



}

/// @nodoc
class _$ValueFailureCopyWithImpl<T,$Res,$Val extends ValueFailure<T>> implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = freezed,}) {
  return _then(_value.copyWith(
value: freezed == value ? _value.value : value // ignore: cast_nullable_to_non_nullable
as T?,
  )as $Val);
}

}


/// @nodoc
abstract class _$$InvalidPasswordImplCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidPasswordImplCopyWith(_$InvalidPasswordImpl<T> value, $Res Function(_$InvalidPasswordImpl<T>) then) = __$$InvalidPasswordImplCopyWithImpl<T, $Res>;
@override @useResult
$Res call({
 T? value
});



}

/// @nodoc
class __$$InvalidPasswordImplCopyWithImpl<T,$Res> extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidPasswordImpl<T>> implements _$$InvalidPasswordImplCopyWith<T, $Res> {
  __$$InvalidPasswordImplCopyWithImpl(_$InvalidPasswordImpl<T> _value, $Res Function(_$InvalidPasswordImpl<T>) _then)
      : super(_value, _then);


/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = freezed,}) {
  return _then(_$InvalidPasswordImpl<T>(
value: freezed == value ? _value.value : value // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}


}

/// @nodoc


class _$InvalidPasswordImpl<T> extends _InvalidPassword<T>  {
  const _$InvalidPasswordImpl({this.value}): super._();

  

@override final  T? value;

@override
String toString() {
  return 'ValueFailure<$T>.invalidPassword(value: $value)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$InvalidPasswordImpl<T>&&const DeepCollectionEquality().equals(other.value, value));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(value));

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$InvalidPasswordImplCopyWith<T, _$InvalidPasswordImpl<T>> get copyWith => __$$InvalidPasswordImplCopyWithImpl<T, _$InvalidPasswordImpl<T>>(this, _$identity);








}


abstract class _InvalidPassword<T> extends ValueFailure<T> {
  const factory _InvalidPassword({final  T? value}) = _$InvalidPasswordImpl<T>;
  const _InvalidPassword._(): super._();

  

@override T? get value;
/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$InvalidPasswordImplCopyWith<T, _$InvalidPasswordImpl<T>> get copyWith => throw _privateConstructorUsedError;

}
