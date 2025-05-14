% Melhor equipa por pontos
melhor_equipa_por_pontos(Ano, Liga, Equipa) :-
    desempenho(Ano, Liga, Equipa, _, _, _, _, _, _, _, Pontos),
    not((desempenho(Ano, Liga, _, _, _, _, _, _, _, _, Pontos2),
         Pontos2 > Pontos)).

% Melhor ataque (mais golos marcados)
melhor_ataque(Ano, Liga, Equipa) :-
    desempenho(Ano, Liga, Equipa, _, _, _, _, GolosMarcados, _, _, _),
    not((desempenho(Ano, Liga, _, _, _, _, _, GolosMarcados2, _, _, _),
         GolosMarcados2 > GolosMarcados)).

% Melhor defesa (menos golos sofridos)
melhor_defesa(Ano, Liga, Equipa) :-
    desempenho(Ano, Liga, Equipa, _, _, _, _, _, GolosSofridos, _, _),
    not((desempenho(Ano, Liga, _, _, _, _, _, _, GolosSofridos2, _, _),
         GolosSofridos2 < GolosSofridos)).

% Melhor diferença de golos
melhor_diferenca_golos(Ano, Liga, Equipa) :-
    desempenho(Ano, Liga, Equipa, _, _, _, _, _, _, DiferencaGolos, _),
    not((desempenho(Ano, Liga, _, _, _, _, _, _, _, DiferencaGolos2, _),
         DiferencaGolos2 > DiferencaGolos)).
