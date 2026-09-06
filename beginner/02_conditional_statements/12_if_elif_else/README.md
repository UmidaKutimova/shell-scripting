# If-Elif-Else

## Description

This example shows how to use `if`, `elif`, and `else` statements in Bash to check multiple conditions.

The script checks a student's grade and prints a message based on the grade.

## Code

```bash
#!/bin/bash

grade=85

if [ $grade -ge 90 ]; then
    echo "Excellent"
elif [ $grade -ge 70 ]; then
    echo "Good"
else
    echo "Satisfactory"
fi
```

## Explanation

### 1. Shebang

```bash
#!/bin/bash
```

This tells the system to run the script using Bash.

* `#!` → tells the system which interpreter to use
* `/bin/bash` → the location of the Bash interpreter

---

### 2. Creating a Variable

```bash
grade=85
```

This creates a variable named `grade`.

* `grade` → variable name
* `=` → assigns a value
* `85` → value stored in the variable

There must be **no spaces** around `=`.

Correct:

```bash
grade=85
```

Incorrect:

```bash
grade = 85
```

---

## 3. The `if` Statement

```bash
if [ $grade -ge 90 ]; then
```

This checks the first condition.

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
$grade
```

Gets the value stored in the `grade` variable.

The `$` means **use the value of the variable**.

```text
-ge
```

Means **greater than or equal to**.

```text
90
```

The number that we compare with `grade`.

```text
]
```

Ends the test condition.

```text
then
```

Means: if the condition is true, execute the following command.

---

## 4. Spaces Inside `[ ]`

Spaces are important in Bash conditions.

Correct:

```bash
[ $grade -ge 90 ]
```

There must be spaces:

* after `[`
* before `]`
* between `$grade` and `-ge`
* between `-ge` and `90`

Do not write:

```bash
[$grade -ge 90]
```

The spaces are part of the Bash syntax.

---

## 5. The `-ge` Operator

```bash
-ge
```

`-ge` means:

**greater than or equal to**

Examples:

```text
90 -ge 90 → true
95 -ge 90 → true
85 -ge 90 → false
```

In this example:

```text
85 -ge 90
```

is false.

Therefore, Bash does not execute:

```bash
echo "Excellent"
```

---

## 6. `then`

```bash
then
```

`then` tells Bash what to do when the condition is true.

For example:

```bash
if [ $grade -ge 90 ]; then
    echo "Excellent"
fi
```

If `grade` is 90 or higher, `Excellent` will be printed.

---

## 7. `echo`

```bash
echo "Excellent"
```

The `echo` command prints text to the terminal.

This command runs only if the first condition is true.

---

## 8. The `elif` Statement

```bash
elif [ $grade -ge 70 ]; then
```

`elif` means **else if**.

It checks another condition when the previous `if` condition was false.

The script first checks:

```text
Is grade >= 90?
```

The answer is:

```text
No
```

Then it checks:

```text
Is grade >= 70?
```

The answer is:

```text
Yes
```

So Bash executes:

```bash
echo "Good"
```

### Important

You can use multiple `elif` blocks when you need to check several conditions.

Example:

```bash
if [ condition1 ]; then
    ...
elif [ condition2 ]; then
    ...
elif [ condition3 ]; then
    ...
else
    ...
fi
```

---

## 9. Second `then`

```bash
elif [ $grade -ge 70 ]; then
```

The `then` after `elif` works the same way as the first `then`.

If this condition is true, Bash executes:

```bash
echo "Good"
```

---

## 10. `else`

```bash
else
```

`else` runs when **all previous conditions are false**.

In this example, `else` runs when:

```text
grade < 70
```

Then Bash executes:

```bash
echo "Satisfactory"
```

---

## 11. `fi`

```bash
fi
```

`fi` marks the **end of the entire `if-elif-else` statement**.

Bash uses `fi` to close the `if` block.

The basic structure is:

```bash
if [ condition1 ]; then
    # commands
elif [ condition2 ]; then
    # commands
else
    # commands
fi
```

Think of it as:

```text
if    → start
then  → if condition is true
elif  → check another condition
else  → if all conditions are false
fi    → end
```

---

## 12. Indentation

The commands inside `if`, `elif`, and `else` are indented:

```bash
if [ $grade -ge 90 ]; then
    echo "Excellent"
elif [ $grade -ge 70 ]; then
    echo "Good"
else
    echo "Satisfactory"
fi
```

Indentation makes the code easier to read.

You can use **Tab** or spaces for indentation.

For example, this is also valid:

```bash
if [ $grade -ge 90 ]; then
  echo "Excellent"
elif [ $grade -ge 70 ]; then
  echo "Good"
else
  echo "Satisfactory"
fi
```

The indentation does not determine whether the condition works. It is mainly used to make the code easier to read.

---

## How the Script Works

The script checks the conditions from **top to bottom**.

```text
grade = 85
    ↓
Is 85 >= 90?
    ↓
No
    ↓
Is 85 >= 70?
    ↓
Yes
    ↓
"Good"
```

Only the **first true condition** is executed.

For `grade=85`:

```text
85 >= 90 → false
85 >= 70 → true
```

Therefore:

```text
Good
```

is printed.

---

## Example Results

### Grade 95

```bash
grade=95
```

Output:

```text
Excellent
```

### Grade 85

```bash
grade=85
```

Output:

```text
Good
```

### Grade 60

```bash
grade=60
```

Output:

```text
Satisfactory
```

---

## How to Run

Make the script executable:

```bash
chmod +x if_elif_else.sh
```

Run the script:

```bash
./if_elif_else.sh
```

## Output

For:

```bash
grade=85
```

the output is:

```text
Good
```

## What I Learned

* How to use `if` statements
* How to use `elif` to check another condition
* How to use `else` when all conditions are false
* How to use `fi` to close the statement
* How to compare numbers using `-ge`
* How `$` is used to get a variable's value
* Why spaces are important inside `[ ]`
* How `then` works
* How indentation makes code easier to read
* How Bash checks multiple conditions from top to bottom
