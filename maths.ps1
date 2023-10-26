# Initialize variables
$operation = ""
$num1 = 0
$num2 = 0

# Continuously run the program until the user chooses to exit
while ($true) {
    # Display the menu
    Write-Host "Calculator Menu:"
    Write-Host "1. Addition (+)"
    Write-Host "2. Subtraction (-)"
    Write-Host "3. Multiplication (*)"
    Write-Host "4. Division (/)"
    Write-Host "5. Exit"

    # Prompt the user to select an operation
    $choice = Read-Host "Select an operation (1/2/3/4/5)"

    # Use a switch statement to perform the selected operation
    switch ($choice) {
        1 { $operation = "addition" }
        2 { $operation = "subtraction" }
        3 { $operation = "multiplication" }
        4 { $operation = "division" }
        5 {
            Write-Host "Exiting the calculator. Goodbye!"
            exit
        }
        default { Write-Host "Invalid choice. Please select a valid operation." }
    }

    # Prompt the user to enter two numbers and convert them to numbers
    $num1 = [double](Read-Host "Enter the first number")
    $num2 = [double](Read-Host "Enter the second number")

    # Perform the calculation based on the selected operation
    switch ($operation) {
        "addition" { $result = $num1 + $num2 }
        "subtraction" { $result = $num1 - $num2 }
        "multiplication" { $result = $num1 * $num2 }
        "division" { $result = [math]::Round($num1 / $num2, 2) }
    }

    # Display the result
    Write-Host "Result: $result"
}
