package GameStore;
import java.util.Scanner;
public class GameMain {

	public static void main(String[] args) {
		Scanner sc= new Scanner(System.in);
		
		while(true) {
			System.out.println("Below are the games! Enter the choice");
			System.out.println("1. Call of Warfare - ₹1500");
			System.out.println("2. Speed Racers - ₹1200");
			System.out.println("3. Mystery Mansion - ₹1000");
			System.out.println("4. Pixel Adventure - ₹800");
			System.out.println("5. Puzzle Mania - ₹500");
			System.out.println("6. Checkout / Exit");
		
			
			System.out.println("Enter the choice: ");
			int choice= sc.nextInt();
			if (choice<1 || choice >6) {
				System.out.println("Invalid choice.");
				continue;
			}
			else if(choice == 6) {
				System.exit(0);
			}
			System.out.println("How many copies: ");
			int copies= sc.nextInt();
			
			System.out.println("Games added to your cart!!");
			System.out.println("              ");
			
			
//			GameStore g = new GameStore();
			
		}
		
		
	}
	

}
