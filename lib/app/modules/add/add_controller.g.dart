// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $AddController = BindInject(
  (i) => AddController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AddController on _AddControllerBase, Store {
  final _$selectedAtom = Atom(name: '_AddControllerBase.selected');

  @override
  int get selected {
    _$selectedAtom.reportRead();
    return super.selected;
  }

  @override
  set selected(int value) {
    _$selectedAtom.reportWrite(value, super.selected, () {
      super.selected = value;
    });
  }

  final _$_AddControllerBaseActionController =
      ActionController(name: '_AddControllerBase');

  @override
  dynamic setSelected(dynamic value) {
    final _$actionInfo = _$_AddControllerBaseActionController.startAction(
        name: '_AddControllerBase.setSelected');
    try {
      return super.setSelected(value);
    } finally {
      _$_AddControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selected: ${selected}
    ''';
  }
}
