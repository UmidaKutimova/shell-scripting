# Simple Function

## 📌 Description

A **function** is a reusable block of code that performs a specific task.

In Bash, functions allow us to group commands together and execute them whenever we need them.

This example creates a function named `greet` and then calls it.

---

## 📝 Code

```bash
#!/bin/bash

greet() {
  echo "Hello from a function!"
}

greet
```

---

# 🔍 Code Explanation

## 1. `#!/bin/bash`

```bash
#!/bin/bash
```

This is called a **shebang**.

It tells the operating system to execute the script using **Bash**.

* `#!` — identifies the interpreter.
* `/bin/bash` — path to the Bash program.

---

# 2. `greet`

```bash
greet
```

`greet` is the name of our function.

The function name describes what the function does.

In this example, `greet` is responsible for printing a greeting message.

---

# 3. `()`

```bash
greet()
```

The parentheses `()` indicate that we are defining a **function**.

The basic Bash function syntax is:

```bash
function_name() {
  commands
}
```

The parentheses are empty because this function does not receive any arguments.

---

# 4. `{`

```bash
{
```

The opening curly brace `{` marks the beginning of the **function body**.

The commands that belong to the function are placed between:

```bash
{
```

and:

```bash
}
```

---

# 5. `echo`

```bash
echo "Hello from a function!"
```

`echo` prints text to the terminal.

In this example, the function prints:

```text
Hello from a function!
```

The command is inside the function, so it will not execute simply because the function was defined.

It executes when the function is **called**.

---

# 6. `}`

```bash
}
```

The closing curly brace marks the end of the function body.

Everything between `{` and `}` belongs to the function.

So:

```bash
greet() {
  echo "Hello from a function!"
}
```

means:

> Define a function called `greet` that executes the `echo` command.

---

# 7. Calling the Function

After defining the function, we have:

```bash
greet
```

This is called **calling** or **invoking** the function.

When Bash reaches:

```bash
greet
```

it executes the commands inside the function:

```bash
echo "Hello from a function!"
```

Therefore, the terminal displays:

```text
Hello from a function!
```

---

# 🔄 How the Code Works

The script works in two main stages.

### Stage 1 — Function Definition

Bash reads:

```bash
greet() {
  echo "Hello from a function!"
}
```

At this point, Bash creates the function.

The `echo` command is **not executed yet**.

---

### Stage 2 — Function Call

Bash reaches:

```bash
greet
```

Now the function is called.

Bash executes the command inside the function:

```bash
echo "Hello from a function!"
```

Output:

```text
Hello from a function!
```

---

# 💻 Final Output

```text
Hello from a function!
```

---

# 🧠 Function Definition vs Function Call

These two concepts are important.

## Function Definition

```bash
greet() {
  echo "Hello from a function!"
}
```

This **creates** the function.

It tells Bash what the function should do.

---

## Function Call

```bash
greet
```

This **runs** the function.

It tells Bash to execute the commands inside the function.

---

# 📐 General Function Syntax

A simple Bash function can be written as:

```bash
function_name() {
  commands
}
```

For example:

```bash
say_hello() {
  echo "Hello!"
}
```

Then call it:

```bash
say_hello
```

---

# 🔁 Why Use Functions?

Functions are useful because they allow us to:

* reuse code
* organize scripts
* avoid repeating commands
* make scripts easier to read
* divide a large script into smaller tasks

For example, instead of writing the same command multiple times:

```bash
echo "Hello from a function!"
echo "Hello from a function!"
echo "Hello from a function!"
```

we can create a function once:

```bash
greet() {
  echo "Hello from a function!"
}
```

and call it multiple times:

```bash
greet
greet
greet
```

Output:

```text
Hello from a function!
Hello from a function!
Hello from a function!
```

---

# 🖥️ How to Run

Create a Bash script:

```bash
touch simple_function.sh
```

Open it with Vim:

```bash
vim simple_function.sh
```

Add the code:

```bash
#!/bin/bash

greet() {
  echo "Hello from a function!"
}

greet
```

Save and exit Vim:

```text
Esc
:wq
Enter
```

Make the script executable:

```bash
chmod +x simple_function.sh
```

Run the script:

```bash
./simple_function.sh
```

---

# 📚 Key Concepts

| Syntax              | Meaning                         |
| ------------------- | ------------------------------- |
| `#!/bin/bash`       | Tells the system to use Bash    |
| `greet`             | Function name                   |
| `()`                | Indicates a function definition |
| `{`                 | Starts the function body        |
| `echo`              | Prints text                     |
| `}`                 | Ends the function body          |
| `greet`             | Calls the function              |
| Function definition | Creates the function            |
| Function call       | Executes the function           |

---

# 🎯 Main Idea

A Bash function has two important steps:

```text
Function Definition
        ↓
greet() {
  commands
}
        ↓
Function Call
        ↓
greet
        ↓
Commands are executed
```

The most important distinction is:

> **Defining a function tells Bash what it should do. Calling a function tells Bash to actually do it.**
