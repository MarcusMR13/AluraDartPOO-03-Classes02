void main(List<String> arguments) {
  String nome = "Jinx";
  int idade = 17;
  double peso = 52.0; //kg
  double altura = 1.63; //metros
  String nomeArma1 = "PowPow";
  int municao1 = -5;
  int municaoTotal1 = 200;
  String nomeArma2 = "Fishbones";
  int municao2 = 1;
  int municaoTotal2 = 3;
  String nomeArma3 = "Zapper";
  int municao3 = 3;
  int municaoTotal3 = 7;

  //funcMostrarMunicao(
  //arma: campeao1.nomeArma, municao: municao1, municaoTotal: municaoTotal1);

  Campeao campeao1 = Campeao(
      nome: nome,
      idade: idade,
      peso: peso,
      altura: altura,
      nomeArma: nomeArma1,
      municao: municao1,
      municaoTotal: municaoTotal1);

  print(campeao1.temosMunicao());
}

class Campeao {
  String nome;
  int idade;
  double peso;
  double altura;
  String nomeArma;
  int municao;
  int municaoTotal;

  Campeao(
      {required this.nome,
      required this.idade,
      required this.peso,
      required this.altura,
      required this.nomeArma,
      required this.municao,
      required this.municaoTotal});

  temosMunicao() {
    if (municao == 0) {
      print("coe mano recarrega ai");
    } else if (municao >= 1 && municao <= 10) {
      print(
          "A municao da $nomeArma ta próxima de acabar com $municao de $municaoTotal totais!");
    } else if (municao > 10 && municao <= municaoTotal) {
      print(
          "Munição ta bala, quase ou completamente carregada com $municao de $municaoTotal totais");
    } else if (municao < 0 || municao > municaoTotal) {
      print("Informações Inválidas");
    }
  }
}

void funcMostrarMunicao(
    {required String arma, required int municao, required municaoTotal}) {
  if (municao == 0) {
    print("coe mano recarrega ai");
  } else if (municao >= 1 && municao <= 10) {
    print(
        "A municao da $arma ta próxima de acabar com $municao de $municaoTotal totais!");
  } else if (municao > 10 && municao <= municaoTotal) {
    print(
        "Munição ta bala, quase ou completamente carregada com $municao de $municaoTotal totais");
  } else if (municao < 0 || municao > municaoTotal) {
    print("Informações Inválidas");
  }
}
