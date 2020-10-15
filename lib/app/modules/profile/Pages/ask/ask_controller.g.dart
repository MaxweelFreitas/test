// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ask_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $AskController = BindInject(
  (i) => AskController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AskController on _AskControllerBase, Store {
  final _$valueAtom = Atom(name: '_AskControllerBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_AskControllerBaseActionController =
      ActionController(name: '_AskControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_AskControllerBaseActionController.startAction(
        name: '_AskControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_AskControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
