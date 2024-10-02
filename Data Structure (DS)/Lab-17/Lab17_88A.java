// In an array of 20 elements, arrange 15 different values, which are generated 
// randomly between 1,00,000 to 9,99,999. Use hash function to generate key and 
// linear probing to avoid collision. H(x) = (x mod 18) + 2. Write a program to input 
// and display the final values of array.

import java.util.*;

public class Lab17_88A {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter Number of Elements");
        int n = sc.nextInt();

        int[] arr = new int[n];
        // Random random = new Random();

        for(int i = 0; i <15 ; i++){
            // int num;
            // do {
            //     num = random.nextInt(1000000) + 1000000;
            // }
            // while(Arrays.binarySearch(arr , num) >= 0);

            arr[i] = sc.nextInt();
        }

        for(int i=15 ; i < n ; i++){
            int key = (arr[i] %18) + 2;
            int index = key ;

            while (arr[index] != 0) {
                index = (index+1) % n;
            }

            arr[index] = arr[i] ;
        }

        System.out.println("Final values of the array :");
        for(int i=0 ; i<arr.length ; i++){
            System.out.print(arr[i] + " ");
            if((i+1) % 10 == 0){
                System.out.println();
            }
        }

        sc.close();

    }
}
