package Compilador;
import static Compilador.Token.*;
%%
% {
    private void imprimir(String token, String lexema {
        System.out.print(lexama + " ==>> " + token);
}
%}

%class Lexer
%type Token
nomeVariavel = [_a-zA-Z][_a-zA-z0-9]*
