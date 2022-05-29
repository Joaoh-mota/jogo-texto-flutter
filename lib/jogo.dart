import 'cena.dart';

class Jogo {
  final List<Cena> _cenaData = [
    Cena(
        textoDaHistoria: 'Seu carro estoura o pneu',
        escolha1: 'Você pega uma carona',
        escolha2: 'Você fica na estrada'),
    Cena(
        textoDaHistoria: 'A noite esfria cada vez mais',
        escolha1: 'Você pega uma carona',
        escolha2: 'Espere, eu sei trocar um pneu'),
    Cena(
        textoDaHistoria:
            'Conforme você vai estrada a fora começa a chover cada vez mais',
        escolha1: 'Voce pede para o motorista ir devagar',
        escolha2: 'você aproveita o momento'),
    Cena(
        textoDaHistoria: 'Você troca seu pneu e vai embora',
        escolha1: 'Reiniciar',
        escolha2: ''),
    Cena(
        textoDaHistoria:
            'Você chega ao seu destino em segurança e vai dormir num hotel',
        escolha1: 'Reiniciar',
        escolha2: ''),
    Cena(
        textoDaHistoria: 'Opa, ele fica zangado e te põe pra descer',
        escolha1: 'Reiniciar',
        escolha2: ''),
  ];

  String getCena() {
    return _cenaData[_numeroCena].textoDaHistoria;
  }

  String getEscolha1() {
    return _cenaData[_numeroCena].escolha1;
  }

  String getEscolha2() {
    return _cenaData[_numeroCena].escolha2;
  }

  int _numeroCena = 0;

  void proximaCena(int choiceNumber) {
    _numeroCena = _fluxoCenas[_numeroCena][choiceNumber];
  }

  final List<List<int>> _fluxoCenas = [
    [0, 2, 1],
    [1, 2, 3],
    [2, 5, 4],
    [3, 0, 0],
    [4, 0, 0],
    [5, 0, 0],
  ];

  void restart() {
    _numeroCena = 0;
  }

  bool visibilidadeBtn() {
    if (_numeroCena == 0 || _numeroCena == 1 || _numeroCena == 2) {
      return true;
    }
    return false;
  }
}
