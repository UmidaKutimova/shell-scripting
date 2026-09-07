# Checking If a Directory Exists in Bash

## 📌 Overview

In Bash, we can check whether a directory exists using an `if` statement and the `-d` test operator.

The `-d` operator checks whether a given path exists and refers to a **directory**.

This is useful when a script needs to work with a directory only if it exists.

---

## 📝 Example

```bash
#!/bin/bash

if [ -d "$HOME" ]; then
  echo "Home directory exists: $HOME"
else
  echo "Directory not found"
fi
```

### Output

The exact output depends on the current user's home directory.

For example:

```text
Home directory exists: /home/oswyneli
```

---

# 🔍 Code Explanation

## 1. Shebang

```bash
#!/bin/bash
```

### `#!`

This is called a **shebang**.

It tells the operating system which interpreter should be used to execute the script.

### `/bin/bash`

This specifies the Bash interpreter.

Therefore:

```bash
#!/bin/bash
```

means:

> Run this script using Bash.

---

# 2. `if`

```bash
if [ -d "$HOME" ]; then
```

`if` starts a **conditional statement**.

It allows the script to make a decision based on whether a condition is true or false.

The general structure is:

```bash
if condition; then
  commands
fi
```

---

# 3. `[ -d "$HOME" ]`

```bash
[ -d "$HOME" ]
```

This checks whether `$HOME` is a directory.

### `[ ... ]`

Square brackets are Bash syntax used to perform a conditional test.

There must be spaces around the condition.

Correct:

```bash
[ -d "$HOME" ]
```

Incorrect:

```bash
[-d "$HOME"]
```

---

# 4. `-d`

```bash
-d
```

`-d` is a **file test operator**.

It checks whether the specified path exists and is a directory.

For example:

```bash
[ -d "/home" ]
```

asks:

> Does `/home` exist as a directory?

If the answer is yes, the condition is **true**.

---

# 5. `$HOME`

```bash
"$HOME"
```

`HOME` is a Bash environment variable that contains the current user's home directory.

The `$` is used to access the value of the variable.

For example, it could contain:

```text
/home/oswyneli
```

Therefore:

```bash
"$HOME"
```

could represent:

```text
/home/oswyneli
```

The script is effectively checking:

```bash
[ -d "/home/oswyneli" ]
```

---

# 6. `then`

```bash
then
```

`then` marks the beginning of the commands that should be executed when the condition is true.

So:

```bash
if [ -d "$HOME" ]; then
```

means:

> If `$HOME` is a directory, then execute the following commands.

---

# 7. `echo`

```bash
echo "Home directory exists: $HOME"
```

`echo` prints text to the terminal.

`$HOME` is expanded to its actual value.

For example:

```text
Home directory exists: /home/oswyneli
```

---

# 8. `else`

```bash
else
```

`else` defines what happens when the `if` condition is false.

In this example:

```bash
else
  echo "Directory not found"
```

means:

> If `$HOME` is not a directory, print `Directory not found`.

---

# 9. `fi`

```bash
fi
```

`fi` marks the end of the `if` statement.

It is `if` written backwards.

The complete structure is:

```bash
if condition; then
  commands
else
  commands
fi
```

---

# 🔄 How the Script Works

The script performs these steps:

### Step 1 — Get the home directory

```bash
"$HOME"
```

For example:

```text
/home/oswyneli
```

### Step 2 — Check whether it is a directory

```bash
[ -d "$HOME" ]
```

Because the home directory normally exists, the condition is true.

### Step 3 — Execute `then`

```bash
echo "Home directory exists: $HOME"
```

Output:

```text
Home directory exists: /home/oswyneli
```

### Step 4 — Finish the condition

```bash
fi
```

The `if` statement ends.

---

# 📚 Common File and Directory Tests

| Operator | Meaning                           |
| -------- | --------------------------------- |
| `-d`     | Path exists and is a directory    |
| `-f`     | Path exists and is a regular file |
| `-e`     | Path exists                       |
| `-r`     | Path is readable                  |
| `-w`     | Path is writable                  |
| `-x`     | Path is executable                |
| `-s`     | File exists and is not empty      |

---

# 💡 Example with a Specific Directory

We can also check a specific directory:

```bash
#!/bin/bash

if [ -d "/tmp" ]; then
  echo "Directory exists"
else
  echo "Directory not found"
fi
```

Output:

```text
Directory exists
```

---

# 🧠 Key Concepts

### `if`

Starts a conditional statement.

### `[ ... ]`

Performs a conditional test.

### `-d`

Checks whether a path is a directory.

### `$HOME`

Contains the current user's home directory path.

### `then`

Starts the commands executed when the condition is true.

### `else`

Defines what happens when the condition is false.

### `fi`

Ends the `if` statement.

### `echo`

Prints information to the terminal.

---

# 📌 Summary

To check whether a directory exists in Bash, use:

```bash
if [ -d "$directory" ]; then
  echo "Directory exists"
else
  echo "Directory not found"
fi
```

For the user's home directory, Bash provides the `$HOME` variable:

```bash
if [ -d "$HOME" ]; then
  echo "Home directory exists: $HOME"
fi
```

The important operator is:

```bash
-d
```

It checks whether the specified path exists and is a **directory**.

