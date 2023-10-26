#!/bin/bash

# Initialize variables
operation=""
num1=0
num2=0

# Continuously run the program until the user chooses to exit
while true; do
    # Display the menu
    echo "Calculator Menu:"
    echo "1. Addition (+)"
    echo "2. Subtraction (-)"
    echo "3. Multiplication (*)"
    echo "4. Division (/)"
    echo "5. Exit"

    # Prompt the user to select an operation
    read -p "Select an operation (1/2/3/4/5): " choice

    # Use a case statement to perform the selected operation
    case $choice in
        1) operation="addition" ;;
        2) operation="subtraction" ;;
        3) operation="multiplication" ;;
        4) operation="division" ;;
        5) echo "Exiting the calculator. Goodbye!"
           exit ;;
        *) echo "Invalid choice. Please select a valid operation." ;;
    esac

    # Prompt the user to enter two numbers
    read -p "Enter the first number: " num1
    read -p "Enter the second number: " num2

    # Perform the calculation based on the selected operation
    case $operation in
        "addition") result=$((num1 + num2)) ;;
        "subtraction") result=$((num1 - num2)) ;;
        "multiplication") result=$((num1 * num2)) ;;
        "division") result=$(awk "BEGIN {print $num1 / $num2}") ;;
    esac

    # Display the result
    echo "Result: $result"
done

