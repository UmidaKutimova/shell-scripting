# Looping Through Array Elements in Bash

## 📌 Overview

A Bash array can contain multiple values.

A `for` loop can be used to go through each element of an array one by one.

This is useful when we need to perform the same operation for every value in an array.

---

## 📝 Example

```bash
#!/bin/bash

numbers=(10 20 30 40)

for n in "${numbers[@]}"; do
  echo "Number: $n"
done
```

### Output

```text
Number: 10
Number: 20
Number: 30
Number: 40
```

---

# 🔍 Code Explanation

## 1. Shebang

```bash
#!/bin/bash
```

### `#!`

This is called a **shebang**.

It tells the operating system which interpreter should execute the script.

### `/bin/bash`

This specifies the Bash interpreter.

So:

```bash
#!/bin/bash
```

means:

> Run this script using Bash.

---

# 2. Creating the Array

```bash
numbers=(10 20 30 40)
```

### `numbers`

This is the name of the array.

### `=`

The assignment operator assigns the values to the array.

There must be **no spaces** around `=`.

Correct:

```bash
numbers=(10 20 30 40)
```

Incorrect:

```bash
numbers = (10 20 30 40)
```

### `(...)`

Parentheses are used to create the array.

The array contains four elements:

| Index | Value |
| ----: | ----: |
|   `0` |  `10` |
|   `1` |  `20` |
|   `2` |  `30` |
|   `3` |  `40` |

Bash arrays use **zero-based indexing**.

---

# 3. The `for` Loop

```bash
for n in "${numbers[@]}"; do
```

This line starts the loop.

The general structure is:

```bash
for variable in values; do
  commands
done
```

The loop takes each value and temporarily stores it in the loop variable.

---

## `for`

```bash
for
```

`for` is a Bash keyword used to create a loop.

It means:

> Repeat the commands for each item.

---

## `n`

```bash
n
```

`n` is the **loop variable**.

During each iteration, it contains the current array element.

For example:

```text
First iteration  → n=10
Second iteration → n=20
Third iteration  → n=30
Fourth iteration → n=40
```

The variable could have another name:

```bash
for number in "${numbers[@]}"; do
```

Here, `number` would be the loop variable.

---

# 4. `in`

```bash
in
```

`in` specifies the values that the loop should go through.

In this example:

```bash
for n in "${numbers[@]}"; do
```

it means:

> For each element in `numbers`, put the current value into `n`.

---

# 5. `"${numbers[@]}"`

```bash
"${numbers[@]}"
```

This accesses **all elements** of the `numbers` array.

### `${...}`

`${...}` is used for **parameter expansion**.

It tells Bash to use the value of a variable or array expression.

### `numbers`

The name of the array.

### `[@]`

`[@]` means all elements of the array.

Therefore:

```bash
"${numbers[@]}"
```

represents:

```text
10
20
30
40
```

---

# 6. Why Use Double Quotes?

```bash
"${numbers[@]}"
```

The array expansion is placed inside double quotes.

This is important because Bash treats each array element as a separate item.

For example, if an array contains values with spaces:

```bash
names=("John Smith" "Alice Brown")
```

then:

```bash
"${names[@]}"
```

keeps:

```text
John Smith
Alice Brown
```

as separate array elements.

For loops, the recommended form is:

```bash
for item in "${array[@]}"; do
```

---

# 7. `do`

```bash
do
```

`do` marks the beginning of the commands that should be executed during each loop iteration.

Structure:

```bash
for item in values; do
  commands
done
```

Everything between `do` and `done` belongs to the loop.

---

# 8. `echo`

```bash
echo "Number: $n"
```

`echo` prints text to the terminal.

During each iteration, `$n` contains the current number.

For example:

```text
n=10
```

produces:

```text
Number: 10
```

Then:

```text
n=20
```

produces:

```text
Number: 20
```

And so on.

---

# 9. `$n`

```bash
$n
```

`$n` accesses the current value stored in the variable `n`.

The loop changes its value on every iteration.

| Iteration |  `n` | Output       |
| --------: | ---: | ------------ |
|         1 | `10` | `Number: 10` |
|         2 | `20` | `Number: 20` |
|         3 | `30` | `Number: 30` |
|         4 | `40` | `Number: 40` |

---

# 10. `done`

```bash
done
```

`done` marks the **end of the `for` loop**.

Bash executes the commands between `do` and `done` once for every array element.

---

# 🔄 How the Loop Works

The array is:

```bash
numbers=(10 20 30 40)
```

The loop:

```bash
for n in "${numbers[@]}"; do
  echo "Number: $n"
done
```

works like this:

### First iteration

```text
n = 10
```

```text
Number: 10
```

### Second iteration

```text
n = 20
```

```text
Number: 20
```

### Third iteration

```text
n = 30
```

```text
Number: 30
```

### Fourth iteration

```text
n = 40
```

```text
Number: 40
```

After the last element, the loop finishes.

---

# 📚 Important Syntax

| Syntax            | Meaning                              |
| ----------------- | ------------------------------------ |
| `for`             | Starts a `for` loop                  |
| `n`               | Loop variable                        |
| `in`              | Specifies the values to iterate over |
| `"${numbers[@]}"` | All elements of the array            |
| `do`              | Starts the loop body                 |
| `echo`            | Prints output                        |
| `$n`              | Current value of the loop variable   |
| `done`            | Ends the loop                        |

---

# 💡 General Pattern

The general pattern for looping through a Bash array is:

```bash
for item in "${array[@]}"; do
  echo "$item"
done
```

For example:

```bash
#!/bin/bash

colors=("red" "green" "blue")

for color in "${colors[@]}"; do
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

# 🧠 Key Concepts

### Arrays store multiple values

```bash
numbers=(10 20 30 40)
```

### `for` processes elements one by one

```bash
for n in "${numbers[@]}"; do
```

### `"${array[@]}"` accesses all elements

```bash
"${numbers[@]}"
```

### The loop variable contains the current element

```bash
$n
```

### `do` and `done` define the loop body

```bash
do
  ...
done
```

---

# 📌 Summary

To loop through every element of a Bash array, use:

```bash
for item in "${array[@]}"; do
  echo "$item"
done
```

For the example:

```bash
numbers=(10 20 30 40)
```

the loop visits every element in order:

```text
10 → 20 → 30 → 40
```

This is one of the most common ways to process array elements in Bash.
