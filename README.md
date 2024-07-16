# Tipsy

## Overview

Tipsy is an iOS application that helps users split the bill among friends and calculate the tip. Users can enter the total bill amount, select the tip percentage, and choose the number of people to split the bill. The app will then calculate and display the amount each person needs to pay.

## Features

- **Select Tip Percentage:** Choose between 0%, 10%, and 20% tip options.
- **Split Bill:** Use a stepper to select the number of people to split the bill.
- **Calculate Bill:** Input the total bill amount and calculate the per-person share.
- **Error Handling:** Alerts the user with a red text prompt if the total bill amount is not entered.

## Learning Goals

- **User Interface:** Design a user-friendly interface with buttons, labels, and steppers.
- **Timer API:** Implement a countdown timer to manage UI updates.
- **Conditional Statements:** Use switch statements to manage different tip percentage options.
- **Functions:** Define functions to calculate the bill amount and handle UI updates.
- **Animation:** Apply animations to enhance user experience.

## What I Learned

- Implemented dynamic UI updates using buttons and steppers.
- Utilized Swift's Timer API for managing time-based operations.
- Applied conditional statements and functions for clean code organization.
- Enhanced error handling and user feedback with color animations.

## Screenshots

![2019-09-17_15-41-11-d4efbdb7e4358edec9c8a6b4a62cfffa](https://github.com/user-attachments/assets/ea1a0d95-9a91-447d-bab3-4ea77c17ed86)

## Usage

1. **Enter Total Bill:**
   - Input the total bill amount in the text field.

2. **Select Tip Percentage:**
   - Tap one of the tip percentage buttons (0%, 10%, 20%).

3. **Choose Number of People:**
   - Use the stepper to select the number of people to split the bill.

4. **Calculate:**
   - Press the "Calculate" button to view the per-person bill amount.

## Code Overview

### Models

- **Bill.swift:** Defines the Bill struct used to store bill information.

### Controllers

- **CalculateViewController.swift:** Manages the main screen, handles user input, and performs the bill calculation.
- **ResultViewController.swift:** Displays the calculated per-person bill amount and other details.

### Helpers

- **BillBrain.swift:** Contains the logic for creating a bill and calculating the per-person bill amount.

## Running the Project

To run this project, follow these steps:
```bash
git clone https://github.com/yourusername/Tipsy.git
cd Tipsy
open Tipsy.xcodeproj
