// In an array of 20 elements, arrange 15 different values, which are generated 
// randomly between 1,00,000 to 9,99,999. Use hash function to generate key and 
// linear probing to avoid collision. H(x) = (x mod 18) + 2. Write a program to input 
// and display the final values of array.

import java.util.*;

/**
 * Lab17_88A
 */
public class Hashing {

     // Hash function H(x) = (x mod 18) + 2
     public static int hashFunction(int x) {
        return (x % 18) + 2;
    }
    
    public static void main(String[] args) {
            int[] hashTable = new int[20];  // Array of 20 elements
            for (int i = 0; i < hashTable.length; i++) {
                hashTable[i] = -1;  // Initialize the array with -1 (indicating empty)
            }

        Random random = new Random();
        HashSet<Integer> uniqueNumbers = new HashSet<>();

        while (uniqueNumbers.size() < 15) {
            int randomValue = random.nextInt(20) + 1;  // Random number between 1 and 20
            uniqueNumbers.add(randomValue);
        }

        for (int number : uniqueNumbers) {
            int hashIndex = hashFunction(number);
            while (hashTable[hashIndex]!= -1) {
                hashIndex = (hashIndex + 1) % 20;  // Linear probing
            }
            hashTable[hashIndex] = number;
        }

        System.out.println("Final values of array:");
        for (int i = 0; i < hashTable.length; i++) {
            System.out.println("Index " + i + ": " + (hashTable[i] == -1 ? "Empty" : hashTable[i]));
        }
        System.out.println();
    }
}