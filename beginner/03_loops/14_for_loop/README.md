# For Loop Over a List

## 📌 Description

A `for` loop is used to repeat a command for each item in a list.

In this example, the loop goes through three fruits:

* `apple`
* `banana`
* `grape`

For each fruit, the script prints its name.

---

## 📝 Code

```bash
#!/bin/bash

for fruit in apple banana grape; do
  echo "Fruit: $fruit"
done
```

---

## 🔍 Code Explanation

### 1. `#!/bin/bash`

```bash
#!/bin/bash
```

This is called a **shebang**.

It tells the operating system to run this script using the **Bash shell**.

* `#!` — special characters that identify the interpreter.
* `/bin/bash` — the path to the Bash program.

---

### 2. `for`

```bash
for
```

`for` starts a **for loop**.

A loop repeats a block of code multiple times.

Here, the loop will run once for each fruit.

---

### 3. `fruit`

```bash
fruit
```

`fruit` is a **variable**.

It temporarily stores the current item from the list.

The variable name can be changed:

```bash
for item in apple banana grape; do
```

The name `fruit` was chosen because the values are fruits.

---

### 4. `in`

```bash
in
```

`in` tells Bash which values the loop should go through.

In this example:

```bash
apple banana grape
```

are the values in the list.

So Bash processes them one by one:

```text
apple
banana
grape
```

---

### 5. `do`

```bash
do
```

`do` marks the beginning of the commands that should be executed for each item.

Everything between `do` and `done` belongs to the loop.

---

### 6. `echo`

```bash
echo
```

`echo` prints text to the terminal.

Example:

```bash
echo "Hello"
```

Output:

```text
Hello
```

---

### 7. `$fruit`

```bash
$fruit
```

The `$` symbol tells Bash to use the **value stored in the variable**.

For example:

```bash
fruit="apple"
echo "$fruit"
```

Output:

```text
apple
```

Without `$`:

```bash
echo "fruit"
```

Output:

```text
fruit
```

So:

```bash
echo "Fruit: $fruit"
```

prints the current value of `fruit`.

---

### 8. `done`

```bash
done
```

`done` marks the **end of the loop**.

Bash returns to the `for` statement and takes the next item from the list.

---

## 🔄 How the Loop Works

The loop processes each fruit one by one.

### First iteration

```text
fruit = apple
```

Bash executes:

```bash
echo "Fruit: $fruit"
```

Output:

```text
Fruit: apple
```

### Second iteration

```text
fruit = banana
```

Output:

```text
Fruit: banana
```

### Third iteration

```text
fruit = grape
```

Output:

```text
Fruit: grape
```

After `grape`, there are no more items, so the loop ends.

---

## 💻 Final Output

```text
Fruit: apple
Fruit: banana
Fruit: grape
```

---

## 🧠 General Syntax

The general structure of a Bash `for` loop over a list is:

```bash
for variable in item1 item2 item3; do
  command
done
```

For example:

```bash
for color in red green blue; do
  echo "Color: $color"
done
```

Output:

```text
Color: red
Color: green
Color: blue
```

---

## 🖥️ How to Run

Create a script:

```bash
touch for_list.sh
```

Open it:

```bash
vim for_list.sh
```

Add the code:

```bash
#!/bin/bash

for fruit in apple banana grape; do
  echo "Fruit: $fruit"
done
```

Save and exit Vim:

```text
Esc
:wq
Enter
```

Make the file executable:

```bash
chmod +x for_list.sh
```

Run the script:

```bash
./for_list.sh
```

---

## 📚 Key Concepts

| Syntax        | Meaning                        |
| ------------- | ------------------------------ |
| `#!/bin/bash` | Use Bash to execute the script |
| `for`         | Starts a for loop              |
| `fruit`       | Loop variable                  |
| `in`          | Specifies the list of values   |
| `do`          | Starts the loop body           |
| `echo`        | Prints text                    |
| `$fruit`      | Gets the value of the variable |
| `done`        | Ends the loop                  |

---

## 🎯 Practice

Try changing the list:

```bash
for fruit in apple orange mango watermelon; do
  echo "Fruit: $fruit"
done
```

Then create your own list of:

1. Animals
2. Colors
3. Countries
4. Programming languages
5. Numbers

The goal is to understand how the variable changes during each iteration.
