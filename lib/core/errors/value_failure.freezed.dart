// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'value_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ValueFailure<T> {

 T? get value => throw _privateConstructorUsedError;
@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( T? value)  invalidPassword,}) => throw _privateConstructorUsedError;
@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( T? value)?  invalidPassword,}) => throw _privateConstructorUsedError;
@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( T? value)?  invalidPassword,required TResult orElse(),}) => throw _privateConstructorUsedError;
@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _InvalidPassword<T> value)  invalidPassword,}) => throw _privateConstructorUsedError;
@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _InvalidPassword<T> value)?  invalidPassword,}) => throw _privateConstructorUsedError;
@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _InvalidPassword<T> value)?  invalidPassword,required TResult orElse(),}) => throw _privateConstructorUsedError;

@JsonKey(ignore: true)
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


@pragma('vm:prefer-inline') @override $Res call({Object? value = freezed,}) {
  return _then(_$InvalidPasswordImpl<T>(
value: freezed == value ? _value.value : value // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}


}

/// @nodoc


class _$InvalidPasswordImpl<T>  implements _InvalidPassword<T> {
  const _$InvalidPasswordImpl({this.value});

  

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

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$InvalidPasswordImplCopyWith<T, _$InvalidPasswordImpl<T>> get copyWith => __$$InvalidPasswordImplCopyWithImpl<T, _$InvalidPasswordImpl<T>>(this, _$identity);

@override
@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( T? value)  invalidPassword,}) {
  return invalidPassword(value);
}
@override
@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( T? value)?  invalidPassword,}) {
  return invalidPassword?.call(value);
}
@override
@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( T? value)?  invalidPassword,required TResult orElse(),}) {
  if (invalidPassword != null) {
    return invalidPassword(value);
  }
  return orElse();
}
@override
@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _InvalidPassword<T> value)  invalidPassword,}) {
  return invalidPassword(this);
}
@override
@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _InvalidPassword<T> value)?  invalidPassword,}) {
  return invalidPassword?.call(this);
}
@override
@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _InvalidPassword<T> value)?  invalidPassword,required TResult orElse(),}) {
  if (invalidPassword != null) {
    return invalidPassword(this);
  }
  return orElse();
}

}


abstract class _InvalidPassword<T> implements ValueFailure<T> {
  const factory _InvalidPassword({final  T? value}) = _$InvalidPasswordImpl<T>;
  

  

@override  T? get value;
@override @JsonKey(ignore: true)
_$$InvalidPasswordImplCopyWith<T, _$InvalidPasswordImpl<T>> get copyWith => throw _privateConstructorUsedError;

}
