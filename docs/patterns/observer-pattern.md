---
title: "Understanding the Observer Pattern: A Counter UI Example"
description: "Discover the Observer Pattern in software design. Understand its concepts and benefits through a practical JavaScript example."
---

# Understanding the Observer Pattern: A Counter UI Example

The Observer Pattern is a behavioral design pattern that establishes a one-to-many relationship between objects. When the state of one object (the subject) changes, all its dependents (observers) are notified and updated automatically. This pattern is particularly useful for designing systems where changes in one component need to be reflected in other components without tightly coupling them.

## Key Concepts

- **Observable (Subject)**: The object that maintains the state and notifies observers of any changes.
- **Observer**: The object that receives updates from the observable.

## Benefits

- **Loose Coupling**: The subject and observers are loosely coupled, allowing for more flexible and maintainable code.
- **Dynamic Relationships**: Observers can be added or removed at runtime, allowing for dynamic relationships between objects.

## Example: Counter UI in JavaScript

Let's illustrate the Observer Pattern with a simple example of a counter UI. We will create a counter that updates its display whenever the value changes.

### HTML

```html
<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Counter UI</title>
  </head>
  <body>
    <button id="incrementButton">Increment</button>
    <div id="counterDisplay">0</div>
    <script src="counter.js"></script>
  </body>
</html>
```

### JavaScript (counter.js)

```javascript
class Observable {
  constructor() {
    this.observers = [];
  }

  subscribe(func) {
    this.observers.push(func);
  }

  unsubscribe(func) {
    this.observers = this.observers.filter((observer) => observer !== func);
  }

  notify(data) {
    for (const observer of this.observers) {
      observer(data);
    }
  }
}

class Counter extends Observable {
  constructor() {
    super();
    this.count = 0;
  }

  increment() {
    this.count++;
    this.notify(this.count);
  }
}

const counter = new Counter();
const displayElement = document.querySelector("#counterDisplay");

counter.subscribe((data) => {
  displayElement.textContent = data;
});

document.querySelector("#incrementButton").addEventListener("click", () => {
  counter.increment();
});
```

## Pub/Sub Pattern for Better Decoupling and Performance

In scenarios where less coupling and better performance are desired, the **Pub/Sub (Publish/Subscribe) pattern** can be used. This pattern involves publishers and subscribers connected by channels. Channels are managed outside the code, in infrastructure, libraries, other processes, cloud services, etc., and are potentially asynchronous.

### Key Concepts of Pub/Sub

- **Publisher**: Sends messages to a channel.
- **Subscriber**: Receives messages from a channel.
- **Channel**: The medium through which messages are sent and received. It is typically managed externally.

### Benefits

- **Less Coupling**: Publishers and subscribers do not need to know about each other, leading to lower coupling.
- **Scalability**: Since channels can be managed independently and can be asynchronous, the system can scale more effectively.
