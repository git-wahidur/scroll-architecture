// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductsEvent()';
}


}

/// @nodoc
class $ProductsEventCopyWith<$Res>  {
$ProductsEventCopyWith(ProductsEvent _, $Res Function(ProductsEvent) __);
}


/// Adds pattern-matching-related methods to [ProductsEvent].
extension ProductsEventPatterns on ProductsEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadCategories value)?  loadCategories,TResult Function( LoadProductsByCategory value)?  loadProductsByCategory,TResult Function( Refresh value)?  refresh,TResult Function( Search value)?  search,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadCategories() when loadCategories != null:
return loadCategories(_that);case LoadProductsByCategory() when loadProductsByCategory != null:
return loadProductsByCategory(_that);case Refresh() when refresh != null:
return refresh(_that);case Search() when search != null:
return search(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadCategories value)  loadCategories,required TResult Function( LoadProductsByCategory value)  loadProductsByCategory,required TResult Function( Refresh value)  refresh,required TResult Function( Search value)  search,}){
final _that = this;
switch (_that) {
case LoadCategories():
return loadCategories(_that);case LoadProductsByCategory():
return loadProductsByCategory(_that);case Refresh():
return refresh(_that);case Search():
return search(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadCategories value)?  loadCategories,TResult? Function( LoadProductsByCategory value)?  loadProductsByCategory,TResult? Function( Refresh value)?  refresh,TResult? Function( Search value)?  search,}){
final _that = this;
switch (_that) {
case LoadCategories() when loadCategories != null:
return loadCategories(_that);case LoadProductsByCategory() when loadProductsByCategory != null:
return loadProductsByCategory(_that);case Refresh() when refresh != null:
return refresh(_that);case Search() when search != null:
return search(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadCategories,TResult Function( String category)?  loadProductsByCategory,TResult Function()?  refresh,TResult Function( String query)?  search,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadCategories() when loadCategories != null:
return loadCategories();case LoadProductsByCategory() when loadProductsByCategory != null:
return loadProductsByCategory(_that.category);case Refresh() when refresh != null:
return refresh();case Search() when search != null:
return search(_that.query);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadCategories,required TResult Function( String category)  loadProductsByCategory,required TResult Function()  refresh,required TResult Function( String query)  search,}) {final _that = this;
switch (_that) {
case LoadCategories():
return loadCategories();case LoadProductsByCategory():
return loadProductsByCategory(_that.category);case Refresh():
return refresh();case Search():
return search(_that.query);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadCategories,TResult? Function( String category)?  loadProductsByCategory,TResult? Function()?  refresh,TResult? Function( String query)?  search,}) {final _that = this;
switch (_that) {
case LoadCategories() when loadCategories != null:
return loadCategories();case LoadProductsByCategory() when loadProductsByCategory != null:
return loadProductsByCategory(_that.category);case Refresh() when refresh != null:
return refresh();case Search() when search != null:
return search(_that.query);case _:
  return null;

}
}

}

/// @nodoc


class LoadCategories implements ProductsEvent {
  const LoadCategories();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadCategories);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductsEvent.loadCategories()';
}


}




/// @nodoc


class LoadProductsByCategory implements ProductsEvent {
  const LoadProductsByCategory(this.category);
  

 final  String category;

/// Create a copy of ProductsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadProductsByCategoryCopyWith<LoadProductsByCategory> get copyWith => _$LoadProductsByCategoryCopyWithImpl<LoadProductsByCategory>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadProductsByCategory&&(identical(other.category, category) || other.category == category));
}


@override
int get hashCode => Object.hash(runtimeType,category);

@override
String toString() {
  return 'ProductsEvent.loadProductsByCategory(category: $category)';
}


}

/// @nodoc
abstract mixin class $LoadProductsByCategoryCopyWith<$Res> implements $ProductsEventCopyWith<$Res> {
  factory $LoadProductsByCategoryCopyWith(LoadProductsByCategory value, $Res Function(LoadProductsByCategory) _then) = _$LoadProductsByCategoryCopyWithImpl;
@useResult
$Res call({
 String category
});




}
/// @nodoc
class _$LoadProductsByCategoryCopyWithImpl<$Res>
    implements $LoadProductsByCategoryCopyWith<$Res> {
  _$LoadProductsByCategoryCopyWithImpl(this._self, this._then);

  final LoadProductsByCategory _self;
  final $Res Function(LoadProductsByCategory) _then;

/// Create a copy of ProductsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? category = null,}) {
  return _then(LoadProductsByCategory(
null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Refresh implements ProductsEvent {
  const Refresh();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Refresh);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductsEvent.refresh()';
}


}




/// @nodoc


class Search implements ProductsEvent {
  const Search(this.query);
  

 final  String query;

/// Create a copy of ProductsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchCopyWith<Search> get copyWith => _$SearchCopyWithImpl<Search>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Search&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'ProductsEvent.search(query: $query)';
}


}

/// @nodoc
abstract mixin class $SearchCopyWith<$Res> implements $ProductsEventCopyWith<$Res> {
  factory $SearchCopyWith(Search value, $Res Function(Search) _then) = _$SearchCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class _$SearchCopyWithImpl<$Res>
    implements $SearchCopyWith<$Res> {
  _$SearchCopyWithImpl(this._self, this._then);

  final Search _self;
  final $Res Function(Search) _then;

/// Create a copy of ProductsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(Search(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
