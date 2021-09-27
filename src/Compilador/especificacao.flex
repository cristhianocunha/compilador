Package Compilador;
import static Compilador.Token.*;
%%
%{
     private void imprimir(String token, String lexema) {
        System.out.println(lexema + “ ==>> “ + token);
}
%}

%class Lexer
%type Token
nomeVariavel = [a-zA-Z][a-zA-z0-9]*
inteiro = [0-9]+
decimal = [0-9]+[“.”]+[0-9]+
blocoComentario = “/*” ~”*/”
branco = [\t\n\r ]+
linhaComentario = {branco}* “//” .*
palavraChave = “if” | “class” | “int” | “while” | “do”
%%

{palavraChave}          { imprimir(“PALAVRA-CHAVE : “, yytext()); return PALAVRA_CHAVE; }
{nomeVariavel}          { imprimir(“VARIAVEL : “,yytest()); return NOME_VARIAVEL; }
{inteiro}		{ imprimir(“NUMERO INTEIRO : “,yytest()); return INT; }
{decima}		{ imprimir(“NUMERO DECIMAL : “,yytest()); return DEC; }
{blocoComentario}	{ imprimir(“COMENTARIO : “,yytest()); return COMENTARIO; }
{linhaComentario}	{ imprimir(“COMENTARIO : “,yytest()); return COMENTARIO; }
{branco}		{ return BRANCO; }
.		{imprimir(“<<< CARACTER INVALIDO!!! >>>  “,yytest()); return ERROR; }
<<EOF>>         {return null; }

 

