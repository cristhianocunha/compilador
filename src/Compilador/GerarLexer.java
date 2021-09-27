/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Compilador;

import java.io.*;

/**
 *
 * @author Cristhiano Cunha
 */
public class GerarLexer {
    public static void main(String [] args ) throws IOException {
        String arg = "C:\Users\Cristhiano Cunha\Documents\NetBeansProjects\Unidade2\src\Compilador\especificacao.flex"
        gerarLexer(arq);
    }
    public static void gerarLexer (String arq ){
        File file = new File(arq);
       jflex.Main.generate(file);
    }
}
