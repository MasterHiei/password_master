// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppFailure {

 Object get e => throw _privateConstructorUsedError;







@JsonKey(ignore: true)
$AppFailureCopyWith<AppFailure> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $AppFailureCopyWith<$Res>  {
  factory $AppFailureCopyWith(AppFailure value, $Res Function(AppFailure) then) = _$AppFailureCopyWithImpl<$Res, AppFailure>;
@useResult
$Res call({
 Object e
});



}

/// @nodoc
class _$AppFailureCopyWithImpl<$Res,$Val extends AppFailure> implements $AppFailureCopyWith<$Res> {
  _$AppFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

@pragma('vm:prefer-inline') @override $Res call({Object? e = null,}) {
  return _then(_value.copyWith(
e: null == e ? _value.e : e ,
  )as $Val);
}

}


/// @nodoc
abstract class _$$UnexpectedErrorImplCopyWith<$Res> implements $AppFailureCopyWith<$Res> {
  factory _$$UnexpectedErrorImplCopyWith(_$UnexpectedErrorImpl value, $Res Function(_$UnexpectedErrorImpl) then) = __$$UnexpectedErrorImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 Object e
});



}

/// @nodoc
class __$$UnexpectedErrorImplCopyWithImpl<$Res> extends _$AppFailureCopyWithImpl<$Res, _$UnexpectedErrorImpl> implements _$$UnexpectedErrorImplCopyWith<$Res> {
  __$$UnexpectedErrorImplCopyWithImpl(_$UnexpectedErrorImpl _value, $Res Function(_$UnexpectedErrorImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? e = null,}) {
  return _then(_$UnexpectedErrorImpl(
null == e ? _value.e : e ,
  ));
}


}

/// @nodoc


class _$UnexpectedErrorImpl extends _UnexpectedError  {
  const _$UnexpectedErrorImpl(this.e): super._();

  

@override final  Object e;

@override
String toString() {
  return 'AppFailure.unexpectedError(e: $e)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$UnexpectedErrorImpl&&const DeepCollectionEquality().equals(other.e, e));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(e));

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$UnexpectedErrorImplCopyWith<_$UnexpectedErrorImpl> get copyWith => __$$UnexpectedErrorImplCopyWithImpl<_$UnexpectedErrorImpl>(this, _$identity);








}


abstract class _UnexpectedError extends AppFailure {
  const factory _UnexpectedError(final  Object e) = _$UnexpectedErrorImpl;
  const _UnexpectedError._(): super._();

  

@override  Object get e;
@override @JsonKey(ignore: true)
_$$UnexpectedErrorImplCopyWith<_$UnexpectedErrorImpl> get copyWith => throw _privateConstructorUsedError;

}
