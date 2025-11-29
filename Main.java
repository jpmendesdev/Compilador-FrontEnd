import java.io.*;

public class Main {
    public static void main(String[] args) {
        try {
            BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
            scanner scanner = new scanner(reader);
            parser parser = new parser(scanner);
            System.out.println("Enter expressions (end with semicolon ';'):");

            while (true) {
                System.out.print("$");
                String input = reader.readLine();
                if (input == null || input.equalsIgnoreCase("exit")) break;

                try {
                    scanner.yyreset(new StringReader(input));
                    parser.parse();
                } catch (Exception e) {
                    System.out.println("Erro ao interpretar a expressão: " + e.getMessage());
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
