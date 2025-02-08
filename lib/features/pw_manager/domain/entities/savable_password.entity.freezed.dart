// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'savable_password.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SavablePassword {

 String get name => throw _privateConstructorUsedError; String get value => throw _privateConstructorUsedError; String get description => throw _privateConstructorUsedError; int get sort => throw _privateConstructorUsedError; DateTime get updatedAt => throw _privateConstructorUsedError;







/// Create a copy of SavablePassword
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$SavablePasswordCopyWith<SavablePassword> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $SavablePasswordCopyWith<$Res>  {
  factory $SavablePasswordCopyWith(SavablePassword value, $Res Function(SavablePassword) then) = _$SavablePasswordCopyWithImpl<$Res, SavablePassword>;
@useResult
$Res call({
 String name, String value, String description, int sort, DateTime updatedAt
});



}

/// @nodoc
class _$SavablePasswordCopyWithImpl<$Res,$Val extends SavablePassword> implements $SavablePasswordCopyWith<$Res> {
  _$SavablePasswordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of SavablePassword
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? value = null,Object? description = null,Object? sort = null,Object? updatedAt = null,}) {
  return _then(_value.copyWith(
name: null == name ? _value.name : name // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _value.value : value // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _value.description : description // ignore: cast_nullable_to_non_nullable
as String,sort: null == sort ? _value.sort : sort // ignore: cast_nullable_to_non_nullable
as int,updatedAt: null == updatedAt ? _value.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  )as $Val);
}

}


/// @nodoc
abstract class _$$SavablePasswordImplCopyWith<$Res> implements $SavablePasswordCopyWith<$Res> {
  factory _$$SavablePasswordImplCopyWith(_$SavablePasswordImpl value, $Res Function(_$SavablePasswordImpl) then) = __$$SavablePasswordImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String name, String value, String description, int sort, DateTime updatedAt
});



}

/// @nodoc
class __$$SavablePasswordImplCopyWithImpl<$Res> extends _$SavablePasswordCopyWithImpl<$Res, _$SavablePasswordImpl> implements _$$SavablePasswordImplCopyWith<$Res> {
  __$$SavablePasswordImplCopyWithImpl(_$SavablePasswordImpl _value, $Res Function(_$SavablePasswordImpl) _then)
      : super(_value, _then);


/// Create a copy of SavablePassword
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? value = null,Object? description = null,Object? sort = null,Object? updatedAt = null,}) {
  return _then(_$SavablePasswordImpl(
name: null == name ? _value.name : name // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _value.value : value // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _value.description : description // ignore: cast_nullable_to_non_nullable
as String,sort: null == sort ? _value.sort : sort // ignore: cast_nullable_to_non_nullable
as int,updatedAt: null == updatedAt ? _value.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc


class _$SavablePasswordImpl  implements _SavablePassword {
  const _$SavablePasswordImpl({required this.name, required this.value, required this.description, required this.sort, required this.updatedAt});

  

@override final  String name;
@override final  String value;
@override final  String description;
@override final  int sort;
@override final  DateTime updatedAt;

@override
String toString() {
  return 'SavablePassword(name: $name, value: $value, description: $description, sort: $sort, updatedAt: $updatedAt)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$SavablePasswordImpl&&(identical(other.name, name) || other.name == name)&&(identical(other.value, value) || other.value == value)&&(identical(other.description, description) || other.description == description)&&(identical(other.sort, sort) || other.sort == sort)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,name,value,description,sort,updatedAt);

/// Create a copy of SavablePassword
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$SavablePasswordImplCopyWith<_$SavablePasswordImpl> get copyWith => __$$SavablePasswordImplCopyWithImpl<_$SavablePasswordImpl>(this, _$identity);








}


abstract class _SavablePassword implements SavablePassword {
  const factory _SavablePassword({required final  String name, required final  String value, required final  String description, required final  int sort, required final  DateTime updatedAt}) = _$SavablePasswordImpl;
  

  

@override String get name;@override String get value;@override String get description;@override int get sort;@override DateTime get updatedAt;
/// Create a copy of SavablePassword
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$SavablePasswordImplCopyWith<_$SavablePasswordImpl> get copyWith => throw _privateConstructorUsedError;

}
