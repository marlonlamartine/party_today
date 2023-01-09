import 'package:flutter/material.dart';

class ColorStyles {
  //atributo estático para armazenar uma unica instancia dessa classe, também
  //podendo ser vazio
  static ColorStyles? _instance;

  // declaração de não existência de um construtor, impossibilitando de ser
  // instanciada
  ColorStyles._();

  //verifica se o atributo estático _instance é nulo, se sim atribui uma
  //instancia ao atributo _instance
  static ColorStyles get instance {
    _instance ??= ColorStyles._();
    return _instance!;
  }

  Color get primary => const Color(0xFFFF794F);
  Color get greylight => const Color(0xFFE9EDF0);
  Color get greydark => const Color(0xFFCAD2DA);
}

//extensão pra retornar as cores criadas de forma mais simples
extension ColorStylesExtensions on BuildContext {
  ColorStyles get colors => ColorStyles.instance;
}
