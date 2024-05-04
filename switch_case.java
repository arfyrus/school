import java.util.Scanner;

public class Main {
    public static void main(String args[]) {
        Scanner input = new Scanner(System.in);
        System.out.print("Masukkan markah: ");
        int markah = input.nextInt();
        String Gred;

        //Using if-else-if:
        if (markah >= 90) {
            Gred = "A+";
        } else if (markah >= 80) {
            Gred = "A";
        } else if (markah >= 75) {
            Gred = "B+";
        } else if (markah >= 65) {
            Gred = "B";
        } else if (markah >= 60) {
            Gred = "C+";
        } else if (markah >= 50) {
            Gred = "C";
        } else if (markah >= 45) {
            Gred = "D";
        } else if (markah >= 40) {
            Gred = "E";
        } else if (markah >= 0) {
            Gred = "G";
        } else {
            Gred = "Gred yang diberi bukan di antara 0 dan 100.";
        }

        System.out.println("Gred: " + Gred);

        // Using switch-case:
        markah = (int) Math.floor(markah / 5);

        switch (markah) {
            case 20: case 19: case 18:
                Gred = "A+";
                break;
            case 17: case 16:
                Gred = "A";
                break;
            case 15:
                Gred = "B+";
                break;
            case 14: case 13:
                Gred = "B";
                break;
            case 12:
                Gred = "C+";
                break;
            case 11: case 10:
                Gred = "C";
                break;
            case 9:
                Gred = "D";
                break;
            case 8:
                Gred = "E";
                break;
            case 7: case 6: case 5: case 4: case 3: case 2: case 1: case 0:
                Gred = "G";
                break;
            default:
                Gred = "Gred yang diberi bukan di antara 0 dan 100.";
                break;
        }

        System.out.println("Gred: " + Gred);
    }
}
