import java.util.Scanner;

public class Main {
    public static void main(String args[]) {
        Scanner input = new Scanner(System.in);
        System.out.print("Input mark: ");
        int mark = input.nextInt();
        String grade;

        //Using if-else-if:
        if (mark >= 90) {
            grade = "A+";
        } else if (mark >= 80) {
            grade = "A";
        } else if (mark >= 75) {
            grade = "B+";
        } else if (mark >= 65) {
            grade = "B";
        } else if (mark >= 60) {
            grade = "C+";
        } else if (mark >= 50) {
            grade = "C";
        } else if (mark >= 45) {
            grade = "D";
        } else if (mark >= 40) {
            grade = "E";
        } else if (mark >= 0) {
            grade = "G";
        } else {
            grade = "Invalid";
        }

        System.out.println("Grade: " + grade);

        // Using switch-case:
        mark = (int) Math.floor(mark / 5);

        switch (mark) {
            case 20: case 19: case 18:
                grade = "A+";
                break;
            case 17: case 16:
                grade = "A";
                break;
            case 15:
                grade = "B+";
                break;
            case 14: case 13:
                grade = "B";
                break;
            case 12:
                grade = "C+";
                break;
            case 11: case 10:
                grade = "C";
                break;
            case 9:
                grade = "D";
                break;
            case 8:
                grade = "E";
                break;
            case 7: case 6: case 5: case 4: case 3: case 2: case 1: case 0:
                grade = "G";
                break;
            default:
                grade = "Invalid";
                break;
        }

        System.out.println("Grade: " + grade);
    }
}
