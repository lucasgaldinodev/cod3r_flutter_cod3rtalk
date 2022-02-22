import './models/cliente.dart';
import './models/item.dart';
import './models/produto.dart';
import './models/venda.dart';

main() {
  var itemUm = Item(
    quantidade: 1,
    produto: new Produto(
      nome: 'Carro',
      preco: 30000.00,
    ),
  );

  var venda = Venda(
    cliente: Cliente(
      nome: 'Leo',
    ),
    itens: [
      Item(
        quantidade: 3,
        produto: Produto(
          nome: 'Livro',
          preco: 30.00,
        ),
      ),
      Item(
        quantidade: 10,
        produto: Produto(
          nome: 'Caneta',
          preco: 3.00,
        ),
      ),
      itemUm,
    ],
  );

  print("Valor total da venda é R\$ ${venda.valorTotal}");
}
