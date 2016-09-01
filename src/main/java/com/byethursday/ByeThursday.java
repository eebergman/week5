package com.byethursday;

import java.util.Scanner;

public class ByeThursday {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		boolean loopTheMenu = false;

		System.out.println("Welcome to the Zoo Information Program");

		do {
			System.out.println("Press 1 to view the DB" 
					+ "\nPress 2 to Add to the database"
					+ "\nPress 3 to Delete from the database");
			String userMenuInput = sc.nextLine();

			switch (userMenuInput) {
			case "1":
				DAO.readFromDB();
				break;
			case "2":
//				DAO.writeToDatabase();
				break;
			case "3":
				DAO.deleteFromDB();
				break;
			default:
				System.out.println("That is not a valid option, please try again.");
				loopTheMenu = true;
				break;
			}
		} while (loopTheMenu);
		
		
		
		sc.close();
	}

	

}
