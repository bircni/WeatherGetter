package weather;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;

public class MAIN {
    static String place ="resources/place.txt";
    public static void main(String[] args){
        getLocation();
    }

    public static void getLocation(){
        try {
            Scanner readFile = new Scanner(new File(place));
            if(readFile.hasNextLine()) System.out.println("Your location: " + readFile.nextLine());
            else {
                System.out.println("nix drin");
                System.out.println("Please provide your location (your postalcode): \n");
                writeFile(place);
                getLocation();
            }
            readFile.close();
        } catch (FileNotFoundException x) {
            System.out.println("An error occurred.");
            x.printStackTrace();
        }
    }
    private static void writeFile(String file)
    {
        try {
            FileWriter writeInFile = new FileWriter(file);
            writeInFile.write(readLocation());
            writeInFile.close();
            //System.out.println("Successfully done!");
        } catch (IOException error) {
            System.out.println("An error is encountered.");
            error.printStackTrace();
        }
    }
    private static String readLocation(){
        String temp = Integer.toString(readInt());
        if(checkPostcode(temp)) return temp;
        else {System.out.println("Nothing set!"); return "";}
    }
    public static int readInt() {
        int result = 0;
        Scanner s = new Scanner(System.in);
        try {
            result = Integer.parseInt(s.nextLine());
        } catch (Exception e) {
            System.out.println("Please provide an integer number!");
            result = readInt();
        }
        return result;
    }

    public static boolean checkPostcode(String postCode) {
        return postCode.matches("\\b((?:0[1-46-9]\\d{3})|(?:[1-357-9]\\d{4})|(?:[4][0-24-9]\\d{3})|(?:[6][013-9]\\d{3}))\\b");
    }
}
