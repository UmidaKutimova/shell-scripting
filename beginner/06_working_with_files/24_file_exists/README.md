# Checking If a File Exists in Bash

## 📌 Overview

In Bash, we can check whether a file exists using an `if` statement.

The `-f` test checks whether a path exists and refers to a **regular file**.

This is useful when a script needs to perform different actions depending on whether a file is available.

---

## 📝 Example

```bash
#!/bin/bash

touch test.txt

if [ -f "test.txt" ]; then
  echo "File exists"
else
  echo "File not found"
fi

rm test.txt
```

### Output

```text
File exists
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

# 2. Creating a File

```bash
touch test.txt
```

### `touch`

`touch` creates a new empty file if the file does not already exist.

Here:

```bash
touch test.txt
```

creates:

```text
test.txt
```

The file is created so that we can test whether it exists.

---

# 3. `if` Statement

```bash
if [ -f "test.txt" ]; then
```

`if` is used to make a decision.

It means:

> If the following condition is true, execute the commands inside the `if` block.

The general structure is:

```bash
if condition; then
  commands
fi
```

---

# 4. `[ -f "test.txt" ]`

```bash
[ -f "test.txt" ]
```

This is a **file test**.

It checks whether `test.txt` is a regular file.

### `[ ... ]`

The square brackets are Bash syntax for a conditional test.

There must be spaces around the contents:

Correct:

```bash
[ -f "test.txt" ]
```

Incorrect:

```bash
[-f "test.txt"]
```

---

## `-f`

```bash
-f
```

`-f` is a file test operator.

It returns true when the specified path exists and is a **regular file**.

For example:

```bash
[ -f "test.txt" ]
```

asks:

> Is `test.txt` a regular file?

---

## `"test.txt"`

```bash
"test.txt"
```

This is the file path being checked.

Double quotes are useful because they protect the path if it contains spaces or special characters.

---

# 5. `then`

```bash
then
```

`then` marks the beginning of the commands that should run when the `if` condition is true.

So:

```bash
if [ -f "test.txt" ]; then
```

means:

> If `test.txt` is a regular file, then execute the following commands.

---

# 6. `echo`

```bash
echo "File exists"
```

`echo` prints text to the terminal.

Because the condition is true, Bash executes:

```bash
echo "File exists"
```

Output:

```text
File exists
```

---

# 7. `else`

```bash
else
```

`else` defines what should happen when the `if` condition is **false**.

The structure is:

```bash
if condition; then
  commands_if_true
else
  commands_if_false
fi
```

In this example:

```bash
else
  echo "File not found"
```

means:

> If the file does not exist, print `File not found`.

---

# 8. `fi`

```bash
fi
```

`fi` marks the end of the `if` statement.

It is essentially `if` written backwards.

The complete structure is:

```bash
if condition; then
  commands
else
  commands
fi
```

---

# 9. Removing the File

```bash
rm test.txt
```

### `rm`

`rm` removes a file.

Here:

```bash
rm test.txt
```

deletes the file created earlier by:

```bash
touch test.txt
```

This keeps the directory clean after the script finishes.

---

# 🔄 How the Script Works

The script performs these steps:

### Step 1 — Create the file

```bash
touch test.txt
```

`test.txt` is created.

### Step 2 — Check the file

```bash
if [ -f "test.txt" ]; then
```

Bash checks whether `test.txt` is a regular file.

### Step 3 — Condition is true

Because the file exists:

```bash
echo "File exists"
```

is executed.

Output:

```text
File exists
```

### Step 4 — Finish the `if`

```bash
fi
```

The conditional statement ends.

### Step 5 — Delete the file

```bash
rm test.txt
```

The file is removed.

---

# 📚 Common File Test Operators

Bash provides several operators for checking files.

| Operator | Meaning                           |
| -------- | --------------------------------- |
| `-f`     | Path exists and is a regular file |
| `-d`     | Path exists and is a directory    |
| `-e`     | Path exists                       |
| `-r`     | File is readable                  |
| `-w`     | File is writable                  |
| `-x`     | File is executable                |
| `-s`     | File exists and is not empty      |

For example:

```bash
if [ -d "documents" ]; then
  echo "Directory exists"
fi
```

---

# 💡 Important Syntax

The basic pattern for checking a file is:

```bash
if [ -f "filename" ]; then
  echo "File exists"
else
  echo "File not found"
fi
```

For example:

```bash
if [ -f "data.txt" ]; then
  echo "File exists"
else
  echo "File not found"
fi
```

---

# 🧠 Key Concepts

### `if`

Starts a conditional statement.

### `[ ... ]`

Performs a conditional test.

### `-f`

Checks whether the path is a regular file.

### `then`

Starts the commands for a true condition.

### `else`

Defines commands for a false condition.

### `fi`

Ends the `if` statement.

### `touch`

Creates an empty file.

### `rm`

Removes a file.

---

# 📌 Summary

To check whether a file exists in Bash, you can use:

```bash
if [ -f "filename" ]; then
  echo "File exists"
else
  echo "File not found"
fi
```

The important part is:

```bash
[ -f "filename" ]
```

where `-f` checks whether the specified path is a regular file.

This pattern is commonly used in Bash scripts before reading, modifying, or processing a file.
