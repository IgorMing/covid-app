// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Summary on _Summary, Store {
  Computed<CountriesModel> _$filteredCountriesComputed;

  @override
  CountriesModel get filteredCountries => (_$filteredCountriesComputed ??=
          Computed<CountriesModel>(() => super.filteredCountries))
      .value;
  Computed<bool> _$loadingComputed;

  @override
  bool get loading =>
      (_$loadingComputed ??= Computed<bool>(() => super.loading)).value;

  final _$dataAtom = Atom(name: '_Summary.data');

  @override
  SummaryModel get data {
    _$dataAtom.context.enforceReadPolicy(_$dataAtom);
    _$dataAtom.reportObserved();
    return super.data;
  }

  @override
  set data(SummaryModel value) {
    _$dataAtom.context.conditionallyRunInAction(() {
      super.data = value;
      _$dataAtom.reportChanged();
    }, _$dataAtom, name: '${_$dataAtom.name}_set');
  }

  final _$filterAtom = Atom(name: '_Summary.filter');

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

  final _$_SummaryActionController = ActionController(name: '_Summary');

  @override
  dynamic setFilter(String value) {
    final _$actionInfo = _$_SummaryActionController.startAction();
    try {
      return super.setFilter(value);
    } finally {
      _$_SummaryActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'data: ${data.toString()},filter: ${filter.toString()},filteredCountries: ${filteredCountries.toString()},loading: ${loading.toString()}';
    return '{$string}';
  }
}
