import java.util.Scanner;
 
public class Main
{
	private float initBalance;
	private float withdrawCash;
	private float finalBalance;
 
	Main()
	{
		Scanner scan = new Scanner(System.in);
 
		//System.out.println("Enter the initial balance");
		withdrawCash = scan.nextFloat();
		initBalance = scan.nextFloat();
 
		//System.out.println("Enter the withdraw amount");
		//System.out.printf(initBalance+"\n"+withdrawCash);
	}	
 
	public static void main(String s[])
	{
		Main transaction1 = new Main();
		
		//System.out.printf("%.2f",transaction1.finalBalanceGetter());
		transaction1.transaction();
		
	}
 
	boolean isMultiple()
	{
		if(withdrawCash%5==0)
			return true;
		else 
			return false;
	}
 
	boolean check()
	{
		if((withdrawCash+0.50)<=initBalance)
			return true;
		else
			return false;
	}
 
	void transaction()
	{
		if(isMultiple() && check())
		{
			finalBalance = (float)(initBalance - (withdrawCash+0.50));
			System.out.printf("%.2f",finalBalance);
		}
		else 
		{	
			finalBalance = initBalance;
			System.out.printf("%.2f",finalBalance);
		}
	}
 
	/*float finalBalanceGetter()
	{
		return finalBalance;
	}*/
	
 
	
} 