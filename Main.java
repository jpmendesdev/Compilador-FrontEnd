import java.io.*;

public class Main {
    public static void main(String[] args) throws Exception {
        FileReader fr = new FileReader("teste2.txt");
        Yylex lexer = new Yylex(fr);
        Parser parser = new Parser(lexer);
        Object result = parser.parse();
        System.out.println("Análise sintática concluída!");
    }
}
