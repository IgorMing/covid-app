// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countries.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Countries on _Countries, Store {
  Computed<int> _$totalCountriesComputed;

  @override
  int get totalCountries =>
      (_$totalCountriesComputed ??= Computed<int>(() => super.totalCountries))
          .value;
  Computed<List<Country>> _$filteredCountriesComputed;

  @override
  List<Country> get filteredCountries => (_$filteredCountriesComputed ??=
          Computed<List<Country>>(() => super.filteredCountries))
      .value;

  final _$dataAtom = Atom(name: '_Countries.data');

  @override
  ObservableList<Country> get data {
    _$dataAtom.context.enforceReadPolicy(_$dataAtom);
    _$dataAtom.reportObserved();
    return super.data;
  }

  @override
  set data(ObservableList<Country> value) {
    _$dataAtom.context.conditionallyRunInAction(() {
      super.data = value;
      _$dataAtom.reportChanged();
    }, _$dataAtom, name: '${_$dataAtom.name}_set');
  }

  final _$filterAtom = Atom(name: '_Countries.filter');

  @override
  String get filter {
    _$filterAtom.context.enforceReadPolicy(_$filterAtom);
    _$filterAtom.reportObserved();
    return super.filter;
  }

  @override
  set filter(String value) {
    _$filterAtom.context.conditionallyRunInAction(() {
      super.filter = value;
      _$filterAtom.reportChanged();
    }, _$filterAtom, name: '${_$filterAtom.name}_set');
  }

  final _$fetchAsyncAction = AsyncAction('fetch');

  @override
  Future fetch() {
    return _$fetchAsyncAction.run(() => super.fetch());
  }

  final _$_CountriesActionController = ActionController(name: '_Countries');

  @override
  dynamic setFilter(String value) {
    final _$actionInfo = _$_CountriesActionController.startAction();
    try {
      return super.setFilter(value);
    } finally {
      _$_CountriesActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'data: ${data.toString()},filter: ${filter.toString()},totalCountries: ${totalCountries.toString()},filteredCountries: ${filteredCountries.toString()}';
    return '{$string}';
  }
}
