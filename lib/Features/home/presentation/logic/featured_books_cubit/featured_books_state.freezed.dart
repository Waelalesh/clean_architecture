// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'featured_books_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FeaturedBooksState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeaturedBooksState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FeaturedBooksState()';
}


}

/// @nodoc
class $FeaturedBooksStateCopyWith<$Res>  {
$FeaturedBooksStateCopyWith(FeaturedBooksState _, $Res Function(FeaturedBooksState) __);
}


/// @nodoc


class _FeaturedBooksInitial implements FeaturedBooksState {
  const _FeaturedBooksInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeaturedBooksInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FeaturedBooksState.initial()';
}


}




/// @nodoc


class _FeaturedBooksLoading implements FeaturedBooksState {
  const _FeaturedBooksLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeaturedBooksLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FeaturedBooksState.loading()';
}


}




/// @nodoc


class _FeaturedBooksError implements FeaturedBooksState {
  const _FeaturedBooksError(this.message);
  

 final  String message;

/// Create a copy of FeaturedBooksState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeaturedBooksErrorCopyWith<_FeaturedBooksError> get copyWith => __$FeaturedBooksErrorCopyWithImpl<_FeaturedBooksError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeaturedBooksError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'FeaturedBooksState.error(message: $message)';
}


}

/// @nodoc
abstract  class _$FeaturedBooksErrorCopyWith<$Res> implements $FeaturedBooksStateCopyWith<$Res> {
  factory _$FeaturedBooksErrorCopyWith(_FeaturedBooksError value, $Res Function(_FeaturedBooksError) _then) = __$FeaturedBooksErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$FeaturedBooksErrorCopyWithImpl<$Res>
    implements _$FeaturedBooksErrorCopyWith<$Res> {
  __$FeaturedBooksErrorCopyWithImpl(this._self, this._then);

  final _FeaturedBooksError _self;
  final $Res Function(_FeaturedBooksError) _then;

/// Create a copy of FeaturedBooksState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_FeaturedBooksError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _FeaturedBooksSuccess implements FeaturedBooksState {
  const _FeaturedBooksSuccess(final  List<BookEntity> books): _books = books;
  

 final  List<BookEntity> _books;
 List<BookEntity> get books {
  if (_books is EqualUnmodifiableListView) return _books;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_books);
}


/// Create a copy of FeaturedBooksState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeaturedBooksSuccessCopyWith<_FeaturedBooksSuccess> get copyWith => __$FeaturedBooksSuccessCopyWithImpl<_FeaturedBooksSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeaturedBooksSuccess&&const DeepCollectionEquality().equals(other._books, _books));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_books));

@override
String toString() {
  return 'FeaturedBooksState.success(books: $books)';
}


}

/// @nodoc
abstract  class _$FeaturedBooksSuccessCopyWith<$Res> implements $FeaturedBooksStateCopyWith<$Res> {
  factory _$FeaturedBooksSuccessCopyWith(_FeaturedBooksSuccess value, $Res Function(_FeaturedBooksSuccess) _then) = __$FeaturedBooksSuccessCopyWithImpl;
@useResult
$Res call({
 List<BookEntity> books
});




}
/// @nodoc
class __$FeaturedBooksSuccessCopyWithImpl<$Res>
    implements _$FeaturedBooksSuccessCopyWith<$Res> {
  __$FeaturedBooksSuccessCopyWithImpl(this._self, this._then);

  final _FeaturedBooksSuccess _self;
  final $Res Function(_FeaturedBooksSuccess) _then;

/// Create a copy of FeaturedBooksState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? books = null,}) {
  return _then(_FeaturedBooksSuccess(
null == books ? _self._books : books // ignore: cast_nullable_to_non_nullable
as List<BookEntity>,
  ));
}


}

// dart format on
