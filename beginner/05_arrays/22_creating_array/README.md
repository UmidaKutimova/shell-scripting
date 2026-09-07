# Creating Array in Bash

## 📌 Overview

In Bash, an **array** is a variable that can store multiple values under one variable name.

Instead of creating separate variables:

```bash
fruit1="apple"
fruit2="banana"
fruit3="grape"
```

we can store all values in one array:

```bash
fruits=("apple" "banana" "grape")
```

---

## 📝 Example

```bash
#!/bin/bash

fruits=("apple" "banana" "grape")

echo "First fruit: ${fruits[0]}"
echo "All fruits: ${fruits[@]}"
echo "Number of fruits: ${#fruits[@]}"
```

### Output

```text
First fruit: apple
All fruits: apple banana grape
Number of fruits: 3
```

---

# 🔍 Code Explanation

## 1. Shebang

```bash
#!/bin/bash
```

### `#!`

`#!` is called a **shebang**.

It tells the operating system which interpreter should be used to execute the script.

### `/bin/bash`

This is the path to the **Bash interpreter**.

Therefore:

```bash
#!/bin/bash
```

means:

> Execute this script using Bash.

---

## 2. Creating an Array

```bash
fruits=("apple" "banana" "grape")
```

### `fruits`

This is the name of the array.

### `=`

The assignment operator assigns values to the variable.

There must be **no spaces** around `=`.

Correct:

```bash
fruits=("apple" "banana" "grape")
```

Incorrect:

```bash
fruits = ("apple" "banana" "grape")
```

### `(...)`

Parentheses are used to create a Bash array.

### `"apple" "banana" "grape"`

These are the individual elements of the array.

The elements are separated by spaces.

So the array contains:

```text
apple
banana
grape
```

---

# 🔢 Array Index

Bash arrays use **zero-based indexing**.

This means the first element has index `0`.

| Index | Value  |
| ----: | ------ |
|   `0` | apple  |
|   `1` | banana |
|   `2` | grape  |

For example:

```bash
${fruits[0]}
```

returns:

```text
apple
```

And:

```bash
${fruits[1]}
```

returns:

```text
banana
```

---

# 3. Accessing One Array Element

```bash
echo "First fruit: ${fruits[0]}"
```

### `echo`

`echo` prints text to the terminal.

### `"First fruit: ..."`

The double quotes create one string.

### `${fruits[0]}`

This accesses the element at index `0`.

The general syntax is:

```bash
${array_name[index]}
```

Example:

```bash
${fruits[0]}
```

Output:

```text
apple
```

---

# 4. Accessing All Array Elements

```bash
echo "All fruits: ${fruits[@]}"
```

### `${fruits[@]}`

`[@]` means **all elements of the array**.

General syntax:

```bash
${array_name[@]}
```

For our array:

```bash
${fruits[@]}
```

returns:

```text
apple banana grape
```

Therefore:

```bash
echo "All fruits: ${fruits[@]}"
```

outputs:

```text
All fruits: apple banana grape
```

---

# 5. Counting Array Elements

```bash
echo "Number of fruits: ${#fruits[@]}"
```

This expression calculates how many elements are in the array.

### `#`

The `#` is used here to get the **length/count**.

### `fruits`

The array name.

### `[@]`

Selects all elements.

So:

```bash
${#fruits[@]}
```

means:

> Get the number of elements in the `fruits` array.

Because our array contains three elements:

```text
apple
banana
grape
```

the result is:

```text
3
```

---

# 📚 Important Array Syntax

| Syntax          | Meaning                   |
| --------------- | ------------------------- |
| `fruits=(...)`  | Create an array           |
| `${fruits[0]}`  | Access the first element  |
| `${fruits[1]}`  | Access the second element |
| `${fruits[@]}`  | Access all elements       |
| `${#fruits[@]}` | Count all elements        |

---

# 💡 Key Concepts

### Arrays start from index `0`

The first element is:

```bash
${fruits[0]}
```

not:

```bash
${fruits[1]}
```

### No spaces around `=`

Correct:

```bash
fruits=("apple" "banana" "grape")
```

Incorrect:

```bash
fruits = ("apple" "banana" "grape")
```

### `${...}`

The `${...}` syntax is used for **parameter expansion**.

It allows Bash to retrieve or manipulate the value of a variable.

Examples:

```bash
${fruits[0]}
${fruits[@]}
${#fruits[@]}
```

---

# 🧠 Complete Example

```bash
#!/bin/bash

fruits=("apple" "banana" "grape")

echo "First fruit: ${fruits[0]}"
echo "All fruits: ${fruits[@]}"
echo "Number of fruits: ${#fruits[@]}"
```

### Execution

Make the script executable:

```bash
chmod +x array.sh
```

Run it:

```bash
./array.sh
```

### Result

```text
First fruit: apple
All fruits: apple banana grape
Number of fruits: 3
```

---

# 📌 Summary

Bash arrays allow multiple values to be stored under one variable name.

The basic structure is:

```bash
array_name=("value1" "value2" "value3")
```

To access an element:

```bash
${array_name[index]}
```

To access all elements:

```bash
${array_name[@]}
```

To count elements:

```bash
${#array_name[@]}
```

Bash arrays use **zero-based indexing**, so the first element always has index `0`.
