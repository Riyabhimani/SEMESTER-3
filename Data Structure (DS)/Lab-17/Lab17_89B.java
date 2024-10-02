import java.util.HashMap;
import java.util.Scanner;

public class Lab17_89B {
    public static void main(String[] args) {
        // Create a HashMap to store the dictionary
        HashMap<String, String> dictionary = new HashMap<>();
        
        // Scanner for user input
        Scanner scanner = new Scanner(System.in);
        
        while (true) {
            System.out.println("\nDictionary Operations:");
            System.out.println("1. Add a word (key-value pair)");
            System.out.println("2. Get the meaning of a word (value)");
            System.out.println("3. Remove a word (key)");
            System.out.println("4. Display all words in the dictionary");
            System.out.println("5. Exit");
            System.out.print("Choose an option: ");
            int choice = scanner.nextInt();
            scanner.nextLine(); // Consume the newline

            switch (choice) {
                case 1:
                    // Add a word (key-value pair)
                    System.out.print("Enter the word (key): ");
                    String word = scanner.nextLine();
                    System.out.print("Enter the meaning (value): ");
                    String meaning = scanner.nextLine();
                    dictionary.put(word, meaning);
                    System.out.println("Word added successfully!");
                    break;

                case 2:
                    // Get the meaning of a word (value)
                    System.out.print("Enter the word to search: ");
                    String searchWord = scanner.nextLine();
                    if (dictionary.containsKey(searchWord)) {
                        System.out.println("The meaning of \"" + searchWord + "\" is: " + dictionary.get(searchWord));
                    } else {
                        System.out.println("Word not found in the dictionary.");
                    }
                    break;

                case 3:
                    // Remove a word (key)
                    System.out.print("Enter the word to remove: ");
                    String removeWord = scanner.nextLine();
                    if (dictionary.containsKey(removeWord)) {
                        dictionary.remove(removeWord);
                        System.out.println("Word removed successfully!");
                    } else {
                        System.out.println("Word not found in the dictionary.");
                    }
                    break;

                case 4:
                    // Display all words in the dictionary
                    System.out.println("Dictionary contents:");
                    for (HashMap.Entry<String, String> entry : dictionary.entrySet()) {
                        System.out.println("Word: " + entry.getKey() + ", Meaning: " + entry.getValue());
                    }
                    break;

                case 5:
                    // Exit the program
                    System.out.println("Exiting the dictionary program.");
                    scanner.close();
                    System.exit(0);
                    break;

                default:
                    System.out.println("Invalid option! Please choose a valid one.");
                    break;
            }
        }
    }
}