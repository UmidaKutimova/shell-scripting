# Case Statement

## Description

This example shows how to use a `case` statement in Bash.

A `case` statement is useful when we want to compare one value with several possible options.

In this example, the user enters a day such as `Mon` or `Tue`, and the script prints the corresponding message.

## Code

```bash
#!/bin/bash

echo "Enter a day (Mon/Tue/other):"
read day

case $day in
  Mon) echo "It's Monday";;
  Tue) echo "It's Tuesday";;
  *) echo "Some other day";;
esac
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

### 2. `echo`

```bash
echo "Enter a day (Mon/Tue/other):"
```

The `echo` command displays a message in the terminal.

The user will see:

```text
Enter a day (Mon/Tue/other):
```

The text inside `" "` is the message that will be printed.

---

### 3. `read`

```bash
read day
```

The `read` command waits for the user to enter something.

The entered value is stored in the variable `day`.

For example, if the user enters:

```text
Mon
```

then:

```text
day = "Mon"
```

---

## 4. The `case` Statement

```bash
case $day in
```

This starts the `case` statement.

It tells Bash:

**"Look at the value of `day` and find which option matches it."**

Let's look at each part.

### `case`

```bash
case
```

`case` starts the case statement.

It is used when we want to check one value against multiple possible choices.

### `$day`

```bash
$day
```

The `$` means **use the value stored in the variable**.

If the user entered:

```text
Mon
```

then `$day` contains:

```text
Mon
```

### `in`

```bash
in
```

`in` separates the value being checked from the possible choices.

The basic structure is:

```bash
case $variable in
    option1)
        command
        ;;
    option2)
        command
        ;;
esac
```

---

## 5. First Case

```bash
Mon) echo "It's Monday";;
```

This checks whether `$day` is `Mon`.

Let's look at each part:

```text
Mon
```

This is the value we are looking for.

```text
)
```

The `)` marks the end of the pattern.

```bash
echo "It's Monday"
```

If the value is `Mon`, this command is executed.

```text
;;
```

The `;;` marks the **end of this case**.

So:

```bash
Mon) echo "It's Monday";;
```

means:

**If the value is `Mon`, print `It's Monday` and stop this case.**

---

## 6. Second Case

```bash
Tue) echo "It's Tuesday";;
```

This checks whether `$day` is `Tue`.

If the user enters:

```text
Tue
```

the script prints:

```text
It's Tuesday
```

Again:

```text
)
```

ends the pattern.

```text
;;
```

ends the case.

---

## 7. The `*` Pattern

```bash
*) echo "Some other day";;
```

The `*` means **anything else** that did not match the previous cases.

For example, if the user enters:

```text
Wed
```

there is no `Wed)` case.

So the `*` case is used.

Output:

```text
Some other day
```

The `*` works like a default option.

It is similar to `else` in an `if-else` statement.

For example:

```bash
if [ condition ]; then
    ...
else
    ...
fi
```

is conceptually similar to:

```bash
case $value in
    option)
        ...
        ;;
    *)
        ...
        ;;
esac
```

---

## 8. `;;`

```text
;;
```

`;;` tells Bash that the current case is finished.

Each case normally ends with `;;`.

Example:

```bash
Mon)
    echo "It's Monday"
    ;;
```

Without `;;`, Bash would not correctly know where that case ends.

---

## 9. `esac`

```bash
esac
```

`esac` marks the **end of the `case` statement**.

`esac` is `case` written backwards.

Think of it as:

```text
case  → start
esac  → end
```

Just like:

```text
if    → start
fi    → end
```

---

## 10. Indentation

The cases are indented to make the code easier to read:

```bash
case $day in
  Mon) echo "It's Monday";;
  Tue) echo "It's Tuesday";;
  *) echo "Some other day";;
esac
```

You can use **Tab or spaces** for indentation.

For example:

```bash
case $day in
    Mon)
        echo "It's Monday"
        ;;
    Tue)
        echo "It's Tuesday"
        ;;
    *)
        echo "Some other day"
        ;;
esac
```

Both styles work.

Indentation is mainly used to make the code easier to read.

---

## How the Script Works

The script follows these steps:

```text
1. Ask the user to enter a day
        ↓
2. Store the answer in $day
        ↓
3. Check the value using case
        ↓
4. Is it Mon?
   ↓ Yes        ↓ No
Monday       Check Tue
              ↓
         Is it Tue?
         ↓ Yes    ↓ No
       Tuesday    *
                   ↓
             Some other day
```

The `case` statement checks the options and uses the matching case.

---

## Example 1: Monday

Input:

```text
Mon
```

Output:

```text
It's Monday
```

---

## Example 2: Tuesday

Input:

```text
Tue
```

Output:

```text
It's Tuesday
```

---

## Example 3: Another Day

Input:

```text
Wed
```

Output:

```text
Some other day
```

Because there is no `Wed)` case, the `*` case is used.

---

## Important Syntax

The basic `case` structure is:

```bash
case $variable in
    pattern1)
        command
        ;;
    pattern2)
        command
        ;;
    *)
        command
        ;;
esac
```

Remember:

* `case` → starts the statement
* `$variable` → value being checked
* `in` → separates the value from the patterns
* `pattern)` → possible matching value
* `;;` → ends a case
* `*` → matches anything else
* `esac` → ends the `case` statement

## How to Run

Make the script executable:

```bash
chmod +x case_statement.sh
```

Run the script:

```bash
./case_statement.sh
```

## Example Output

```text
Enter a day (Mon/Tue/other):
Mon
It's Monday
```

## What I Learned

* How to use a `case` statement in Bash
* How to compare one value with multiple options
* How to use `case`
* How to use `in`
* How to use patterns such as `Mon` and `Tue`
* How to use `*` as a default pattern
* How to use `;;` to end a case
* How to use `esac` to end a `case` statement
* How to use `read` to get user input
* How to use `$` to access a variable's value
* How to use indentation to make Bash code easier to read
