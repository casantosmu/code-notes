---
title: "Understanding State Machines: A Video Game Menu Example"
description: "Explore finite state machines (FSM) with this practical guide. Learn how to implement robust state transitions for a video game menu using JavaScript."
---

# Understanding State Machines: A Video Game Menu Example

State machines are powerful tools used to manage the state of an application or system. They are especially useful in scenarios where the system can be in one of many states, and events trigger transitions between these states. We'll explore the concept of state machines using a practical example: a video game menu.

## What is a State Machine?

A state machine consists of:

- **States**: Different conditions or modes in which the system can exist.
- **Events**: Inputs or triggers that cause the system to transition from one state to another.
- **Transitions**: The movement from one state to another, triggered by an event.
- **Actions**: Tasks performed during the transition from one state to another.

## Example: Video Game Menu State Machine

Let's consider a simple video game menu with the following states:

- **MenuMain**: The main menu of the game.
- **MenuOptions**: The options menu where settings can be adjusted.
- **Playing**: The state where the game is actively being played.
- **Paused**: The state where the game is paused.
- **Exiting**: The state where the game is preparing to exit.
- **Closing**: The final state where the game is closed.

### States, Events, and Actions

Here is a table outlining the states, events, and actions for our video game menu:

| Current State | Event         | New State   | Action            |
| ------------- | ------------- | ----------- | ----------------- |
| MenuMain      | SelectPlay    | Playing     | Start the game    |
| MenuMain      | SelectOptions | MenuOptions | Show options      |
| MenuMain      | SelectExit    | Exiting     | Exit the game     |
| MenuOptions   | SelectBack    | MenuMain    | Back to main menu |
| Playing       | Pause         | Paused      | Pause the game    |
| Paused        | Resume        | Playing     | Resume the game   |
| Paused        | Exit          | MenuMain    | Back to main menu |
| Exiting       | ConfirmExit   | Closing     | Close the game    |
| Exiting       | CancelExit    | MenuMain    | Back to main menu |

### JavaScript Implementation

Now, let's see how we can implement this state machine in JavaScript.

```javascript
class StateMachine {
  constructor() {
    this.state = "MenuMain";
    this.states = {
      MenuMain: {
        SelectPlay: { newState: "Playing", action: this.startGame },
        SelectOptions: { newState: "MenuOptions", action: this.showOptions },
        SelectExit: { newState: "Exiting", action: this.exitGame },
      },
      MenuOptions: {
        SelectBack: { newState: "MenuMain", action: this.backToMainMenu },
      },
      Playing: {
        Pause: { newState: "Paused", action: this.pauseGame },
      },
      Paused: {
        Resume: { newState: "Playing", action: this.resumeGame },
        Exit: { newState: "MenuMain", action: this.backToMainMenu },
      },
      Exiting: {
        ConfirmExit: { newState: "Closing", action: this.closeGame },
        CancelExit: { newState: "MenuMain", action: this.backToMainMenu },
      },
    };
  }

  transition(event) {
    const stateConfig = this.states[this.state];
    const eventConfig = stateConfig[event];

    if (eventConfig) {
      this.state = eventConfig.newState;
      eventConfig.action();
    } else {
      console.error(`Event "${event}" is not valid from state "${this.state}"`);
    }
  }

  startGame() {
    console.log("Starting the game...");
  }

  showOptions() {
    console.log("Showing options...");
  }

  exitGame() {
    console.log("Exiting the game...");
  }

  backToMainMenu() {
    console.log("Returning to main menu...");
  }

  pauseGame() {
    console.log("Pausing the game...");
  }

  resumeGame() {
    console.log("Resuming the game...");
  }

  closeGame() {
    console.log("Closing the game...");
  }
}

// Example usage
const menu = new StateMachine();
menu.transition("SelectPlay"); // Starting the game...
menu.transition("Pause"); // Pausing the game...
menu.transition("SelectOptions"); // Event "SelectOptions" is not valid from state "Paused"
```
