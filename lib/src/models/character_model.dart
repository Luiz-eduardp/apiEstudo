class Character {
  String comando = "";
  String alternativas = "";
  String explicacao = "";
  String condicoes = "";
  String cooldown = "";

  Character(this.comando, this.explicacao, this.condicoes, this.alternativas,
      this.cooldown);

  Character.fromJson(Map<String, dynamic> json) {
    comando = json['comando'];
    explicacao = json['explicação'];
    condicoes = json['condições'];
    alternativas = json['alternativas'];
    cooldown = json['cooldown'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['comando'] = comando;
    data['explicação'] = explicacao;
    data['condições'] = condicoes;
    data['alternativas'] = alternativas;
    data['cooldown'] = cooldown;
    return data;
  }
}
