# Comparing String

## Description

This example shows how to check whether a password is correct using an `if` statement in Bash.

## Code

```bash
#!/bin/bash

password="12345"

if [ "$password" = "12345" ]; then
    echo "Password is correct"
else
    echo "Password is wrong"
fi
```

## Explanation

### 1. Shebang

```bash
#!/bin/bash
```

This tells the system to run the script using the Bash shell.

* `#!` → tells the system which interpreter to use
* `/bin/bash` → the location of the Bash interpreter

---

### 2. Creating a Variable

```bash
password="12345"
```

This creates a variable named `password`.

* `password` → variable name
* `=` → assigns a value to the variable
* `"12345"` → value stored in the variable

There must be **no spaces** around `=` when assigning a variable.

Correct:

```bash
password="12345"
```

Incorrect:

```bash
password = "12345"
```

---

### 3. The `if` Statement

```bash
if [ "$password" = "12345" ]; then
```

The `if` statement checks whether a condition is true.

Let's look at every part:

```text
if
```

Starts the condition.

```text
[
```

Starts the test condition.

```text
"$password"
```

Gets the value stored in the `password` variable.

The `$` means **use the value of the variable**.

```text
=
```

Checks whether two values are equal.

```text
"12345"
```

The value that we compare with the password.

```text
]
```

Ends the test condition.

```text
then
```

Means: **if the condition is true, execute the following commands.**

---

### 4. Spaces Inside `[ ]`

Spaces are important in Bash conditions.

Correct:

```bash
[ "$password" = "12345" ]
```

There must be a space:

* after `[`
* before `]`
* before and after `=`

Do not write:

```bash
["$password"="12345"]
```

The spaces are part of the Bash syntax.

---

### 5. `echo`

```bash
echo "Password is correct"
```

`echo` prints text to the terminal.

If the password is correct, this message is displayed:

```text
Password is correct
```

---

### 6. `else`

```bash
else
```

`else` is used when the `if` condition is **false**.

In this example:

* If the password is `12345` → the first `echo` runs.
* If the password is not `12345` → the second `echo` runs.

---

### 7. Wrong Password Message

```bash
echo "Password is wrong"
```

This message is displayed when the condition is false.

---

### 8. `fi`

```bash
fi
```

`fi` marks the **end of the `if` statement**.

Bash uses `fi` to close an `if` block.

The basic structure is:

```bash
if [ condition ]; then
    # commands
else
    # commands
fi
```

Think of it as:

```text
if    → start
then  → if true
else  → if false
fi    → end
```

---

## Indentation

The commands inside `if` and `else` are usually indented:

```bash
if [ "$password" = "12345" ]; then
    echo "Password is correct"
else
    echo "Password is wrong"
fi
```

The indentation makes the code easier to read.

You can use **Tab** or spaces for indentation.

The indentation itself is not what makes the `if` work. The important syntax is:

```bash
if [ condition ]; then
    ...
fi
```

---

## How the Script Works

The script follows these steps:

```text
1. Create the password variable
        ↓
2. Check the password
        ↓
3. Is it equal to "12345"?
       ↙       ↘
     Yes        No
      ↓          ↓
  Correct      Wrong
```

## How to Run

Make the script executable:

```bash
chmod +x password_check.sh
```

Run the script:

```bash
./password_check.sh
```

## Output

If the password is correct:

```text
Password is correct
```

If the value of `password` is changed to another value, for example:

```bash
password="54321"
```

the output will be:

```text
Password is wrong
```

## What I Learned

* How to create a variable
* How to compare two values
* How to use an `if` statement
* How to use `[ ]` for a condition
* How to use the `=` comparison operator
* How to use `then`
* How to use `else`
* How to use `fi` to close an `if` statement
* Why spaces are important inside `[ ]`
* How to use indentation to make code easier to read
