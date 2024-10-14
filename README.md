# Tic-Tac-Toe

This project is from The Odin Project: [Tic Tac Toe](https://www.theodinproject.com/lessons/ruby-tic-tac-toe), where I build a command-line implementation of the game.

Two human players take turns, and the board is displayed between each turn.

## Assignment Overview

The game is built using Object-Oriented Programming (OOP) principles. The goal is to practice structuring code into classes, using instance variables, and methods to handle the game logic while keeping code modular and easy to maintain.

### Project Structure:

- **Players**: Two human players take turns marking the board.
- **Game Board**: Displayed between each turn and updated as players make their moves.

### Key OOP Considerations:

- **Classes**: Think about the entities in the game. Likely candidates for classes are `Game`, `Board`, and `Player`.
- **Instance Variables**: Store the current game state, including the board and player moves, as instance variables within the appropriate classes.
- **Methods**: Each class will have methods that handle specific responsibilities, such as displaying the board, checking for a win condition, and switching players.

### Design Tips:

- **Encapsulation**: Minimize information sharing between classes. Each class should handle its own responsibilities and interact with others through well-defined interfaces (methods).
- **Turn-Based Logic**: Use a loop to alternate turns between players, displaying the updated board after each turn.
- **Win Condition**: Check for a winner after every move, and declare a winner or draw if applicable.

## Installation

### Prerequisites:

- Ensure you have Ruby installed on your machine.
  ```bash
  ruby -v
  ```

### Steps:

1. Clone the repository:
   ```bash
   git clone https://github.com/jambalong/tic-tac-toe.git
   ```

2. Navigate into the project directory:
   ```bash
   cd tic-tac-toe
   ```

3. Run the Tic-Tac-Toe game:
   ```bash
   ruby main.rb
   ```
