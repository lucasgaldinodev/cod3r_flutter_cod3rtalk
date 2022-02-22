import './produto.dart';

class Item {
  Produto produto;
  int quantidade;
  double? _preco;

  Item({
    required this.produto,
    required this.quantidade,
  });

  double get preco {
    _preco = produto.preco;
    return _preco!;
  }

  // void set preco(double novoPreco) {
  //   if (novoPreco > 0) {
  //     _preco = novoPreco;
  //   }
  // }
}
