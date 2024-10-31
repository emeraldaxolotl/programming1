//my (Jaya's) encoder in eclipse (ECLIPSE YAY!!!!!)
//I just love that word.
//I also love pretty much any word related to moons.
import java.util.Scanner;
public class Encoder{
	public static void main(String[] args){
		Scanner scanner = new Scanner(System.in);
		System.out.println("Enter your message: ");
		String message = scanner.nextLine();
		System.out.println("Enter the Key: ");
		int Key = scanner.nextInt();
		String encode = "";
		for(int i = 0; i < message.length(); i++){
			char letter = message.charAt(i);
			char encodedLetter = (char)(letter + Key);
			encode += encodedLetter;
		}
		System.out.println(encode);
		scanner.close();
	}
}
