using System;

class Calculator
{
    static void Main()
    {
        Console.WriteLine("Simple Calculator");

        while (true)
        {
            Console.Write("Enter the first number: ");
            if (!double.TryParse(Console.ReadLine(), out double num1))
            {
                Console.WriteLine("Invalid input. Please enter a valid number.");
                continue;
            }

            Console.Write("Enter the second number: ");
            if (!double.TryParse(Console.ReadLine(), out double num2))
            {
                Console.WriteLine("Invalid input. Please enter a valid number.");
                continue;
            }

            Console.WriteLine("Select an operation:");
            Console.WriteLine("1. Addition (+)");
            Console.WriteLine("2. Subtraction (-)");
            Console.WriteLine("3. Multiplication (*)");
            Console.WriteLine("4. Division (/)");

            Console.Write("Enter the operation number: ");
            if (!int.TryParse(Console.ReadLine(), out int operationChoice) || operationChoice < 1 || operationChoice > 4)
            {
                Console.WriteLine("Invalid choice. Please enter a number between 1 and 4.");
                continue;
            }

            double result = 0;

            switch (operationChoice)
            {
                case 1:
                    result = num1 + num2;
                    break;
                case 2:
                    result = num1 - num2;
                    break;
                case 3:
                    result = num1 * num2;
                    break;
                case 4:
                    if (num2 != 0)
                        result = num1 / num2;
                    else
                        Console.WriteLine("Error: Division by zero.");
                    break;
            }

            Console.WriteLine($"Result: {result}");

            Console.Write("Do you want to perform another calculation? (yes/no): ");
            string continueChoice = Console.ReadLine().ToLower();

            if (continueChoice != "yes")
                break;
        }
    }
}
