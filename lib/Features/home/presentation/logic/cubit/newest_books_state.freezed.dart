// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'newest_books_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NewestBooksState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewestBooksState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NewestBooksState()';
}


}

/// @nodoc
class $NewestBooksStateCopyWith<$Res>  {
$NewestBooksStateCopyWith(NewestBooksState _, $Res Function(NewestBooksState) __);
}


/// @nodoc


class _NewestBooksInitial implements NewestBooksState {
  const _NewestBooksInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewestBooksInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NewestBooksState.initial()';
}


}




/// @nodoc


class _NewestBooksLoading implements NewestBooksState {
  const _NewestBooksLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewestBooksLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NewestBooksState.loading()';
}


}




/// @nodoc


class _NewestBooksError implements NewestBooksState {
  const _NewestBooksError(this.message);
  

 final  String message;

/// Create a copy of NewestBooksState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NewestBooksErrorCopyWith<_NewestBooksError> get copyWith => __$NewestBooksErrorCopyWithImpl<_NewestBooksError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewestBooksError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'NewestBooksState.error(message: $message)';
}


}

/// @nodoc
abstract  class _$NewestBooksErrorCopyWith<$Res> implements $NewestBooksStateCopyWith<$Res> {
  factory _$NewestBooksErrorCopyWith(_NewestBooksError value, $Res Function(_NewestBooksError) _then) = __$NewestBooksErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$NewestBooksErrorCopyWithImpl<$Res>
    implements _$NewestBooksErrorCopyWith<$Res> {
  __$NewestBooksErrorCopyWithImpl(this._self, this._then);

  final _NewestBooksError _self;
  final $Res Function(_NewestBooksError) _then;

/// Create a copy of NewestBooksState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_NewestBooksError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _NewestBooksSuccess implements NewestBooksState {
  const _NewestBooksSuccess(final  List<BookEntity> books): _books = books;
  

 final  List<BookEntity> _books;
 List<BookEntity> get books {
  if (_books is EqualUnmodifiableListView) return _books;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_books);
}


/// Create a copy of NewestBooksState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NewestBooksSuccessCopyWith<_NewestBooksSuccess> get copyWith => __$NewestBooksSuccessCopyWithImpl<_NewestBooksSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewestBooksSuccess&&const DeepCollectionEquality().equals(other._books, _books));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_books));

@override
String toString() {
  return 'NewestBooksState.success(books: $books)';
}


}

/// @nodoc
abstract  class _$NewestBooksSuccessCopyWith<$Res> implements $NewestBooksStateCopyWith<$Res> {
  factory _$NewestBooksSuccessCopyWith(_NewestBooksSuccess value, $Res Function(_NewestBooksSuccess) _then) = __$NewestBooksSuccessCopyWithImpl;
@useResult
$Res call({
 List<BookEntity> books
});




}
/// @nodoc
class __$NewestBooksSuccessCopyWithImpl<$Res>
    implements _$NewestBooksSuccessCopyWith<$Res> {
  __$NewestBooksSuccessCopyWithImpl(this._self, this._then);

  final _NewestBooksSuccess _self;
  final $Res Function(_NewestBooksSuccess) _then;

/// Create a copy of NewestBooksState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? books = null,}) {
  return _then(_NewestBooksSuccess(
null == books ? _self._books : books // ignore: cast_nullable_to_non_nullable
as List<BookEntity>,
  ));
}


}

// dart format on
