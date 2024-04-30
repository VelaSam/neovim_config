
import java.util.Scanner;

public class Hello {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Welcome to the greeting program!");
        System.out.print("Enter your name: ");

        String name = scanner.nextLine();

        greet(name);

        System.out.println("Would you like to be greeted again? (yes/no)");
        String response = scanner.nextLine();

        if (response.equalsIgnoreCase("yes")) {
            System.out.print("Enter another name: ");
            String anotherName = scanner.nextLine();
            greet(anotherName);
        } else {
            System.out.println("Goodbye!");
        }

        scanner.close();
    }

    public static void greet(String name) {
        System.out.println("Hello, " + name + "!");
        System.out.println("asjdkajsda");
        System.out.println();
        String hello = "hello"
        if(hello.equals("hello"){

        }

    }

}
