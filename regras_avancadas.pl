melhor_equipa_geral(Ano, Liga, Equipa) :-
    desempenho(Ano, Liga, Equipa, _, Vitorias, _, _, GolosMarcados, _, _, Pontos),
    not((desempenho(Ano, Liga, _, _, Vitorias2, _, _, GolosMarcados2, _, _, Pontos2),
         (Vitorias2 > Vitorias; (Vitorias2 = Vitorias, GolosMarcados2 > GolosMarcados; Pontos2 > Pontos)))).

melhor_equipa_periodo(InicioAno, FimAno, Liga, Equipa) :-
    findall(Pontos, (between(InicioAno, FimAno, Ano), desempenho(Ano, Liga, Equipa, _, _, _, _, _, _, _, Pontos)), PontosList),
    max_list(PontosList, MelhorPontos),
    desempenho(_, Liga, Equipa, _, _, _, _, _, _, _, MelhorPontos).
