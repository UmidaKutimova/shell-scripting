# If-Else

## Description

This example shows how to use `if-else` statements in Bash to make a decision based on a condition.

## Code

```bash
#!/bin/bash

age=17

if [ $age -ge 18 ]; then
    echo "You are an adult"
else
    echo "You are not an adult yet"
fi
```

## Explanation

### 1. Shebang

```bash
#!/bin/bash
```

This tells the system to run the script using Bash.

* `#!` → tells the system which interpreter to use
* `/bin/bash` → the location of Bash

---

### 2. Creating a Variable

```bash
age=17
```

This creates a variable called `age`.

* `age` → variable name
* `=` → assigns a value
* `17` → value stored in the variable

There must be **no spaces** around `=`.

Correct:

```bash
age=17
```

Incorrect:

```bash
age = 17
```

---

### 3. The `if` Statement

```bash
if [ $age -ge 18 ]; then
```

The `if` statement checks a condition.

Let's look at each part:

```text
if
```

Starts the condition.

```text
[
```

Starts the test condition.

```text
$age
```

Gets the value stored in the `age` variable.

The `$` means **use the value of the variable**.

```text
-ge
```

Means **greater than or equal to**.

```text
18
```

The number that we compare with `age`.

```text
]
```

Ends the test condition.

```text
then
```

Means: if the condition is true, execute the following commands.

---

### 4. Spaces Inside `[ ]`

Spaces are important in Bash conditions.

Correct:

```bash
[ $age -ge 18 ]
```

There must be a space:

* after `[`
* before `]`
* between `$age`, `-ge`, and `18`

Do not write:

```bash
[$age -ge 18]
```

The spaces are part of the Bash syntax.

---

### 5. `-ge` Operator

```bash
-ge
```

`-ge` means:

**greater than or equal to**

Examples:

```text
18 -ge 18 → true
20 -ge 18 → true
17 -ge 18 → false
```

In this example:

```bash
age=17
```

So Bash checks:

```text
17 >= 18
```

This is false.

---

### 6. `then`

```bash
then
```

`then` tells Bash what to do if the `if` condition is true.

In this example:

```bash
if [ $age -ge 18 ]; then
    echo "You are an adult"
```

If `age` is 18 or greater, the message will be displayed.

---

### 7. `echo`

```bash
echo "You are an adult"
```

`echo` prints text to the terminal.

This line runs when the condition is true.

---

### 8. `else`

```bash
else
```

`else` runs when the `if` condition is false.

Here, `age` is `17`, so the condition is false.

Therefore, Bash runs:

```bash
echo "You are not an adult yet"
```

---

### 9. `fi`

```bash
fi
```

`fi` marks the **end of the `if-else` statement**.

Bash uses `fi` to close an `if` block.

The basic structure is:

```bash
if [ condition ]; then
    # commands if true
else
    # commands if false
fi
```

Think of it as:

```text
if    → start the condition
then  → if the condition is true
else  → if the condition is false
fi    → end the if statement
```

---

## Indentation

The commands inside `if` and `else` are indented:

```bash
if [ $age -ge 18 ]; then
    echo "You are an adult"
else
    echo "You are not an adult yet"
fi
```

Indentation makes the code easier to read.

You can use **Tab** or spaces for indentation.

Indentation is not required for Bash to understand the code, but it is a good programming practice.

---

## How the Script Works

The script checks whether the person is 18 or older.

```text
age = 17
   ↓
Is 17 greater than or equal to 18?
   ↓
No
   ↓
else
   ↓
"You are not an adult yet"
```

## How to Run

Make the script executable:

```bash
chmod +x if_else.sh
```

Run the script:

```bash
./if_else.sh
```

## Output

```text
You are not an adult yet
```

If you change:

```bash
age=17
```

to:

```bash
age=20
```

the output will be:

```text
You are an adult
```

## What I Learned

* How to use `if-else` statements in Bash
* How to compare numbers
* How to use the `-ge` operator
* How to use `if`
* How to use `then`
* How to use `else`
* How to use `fi`
* Why spaces are important inside `[ ]`
* How to use indentation
* How Bash makes decisions based on conditions
