# Creating and Deleting a File and Directory in Bash

## 📌 Overview

Bash provides several commands for creating, writing to, reading, and deleting files and directories.

In this example, we will:

1. Create a directory
2. Create a file inside the directory
3. Write text to the file
4. Read the file
5. Delete the file
6. Delete the directory

---

## 📝 Example

```bash
#!/bin/bash

mkdir -p new_folder
echo "This is a test file" > new_folder/file.txt
cat new_folder/file.txt
rm new_folder/file.txt
rmdir new_folder
```

### Output

```text
This is a test file
```

After the script finishes:

```text
new_folder/
```

and:

```text
new_folder/file.txt
```

are both deleted.

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

Therefore:

```bash
#!/bin/bash
```

means:

> Run this script using Bash.

---

# 2. Creating a Directory

```bash
mkdir -p new_folder
```

### `mkdir`

`mkdir` means **make directory**.

It creates a new directory.

In this example:

```bash
mkdir new_folder
```

would create:

```text
new_folder/
```

### `-p`

The `-p` option allows `mkdir` to create the directory without producing an error if it already exists.

It can also create parent directories when necessary.

So:

```bash
mkdir -p new_folder
```

means:

> Create `new_folder` if it does not already exist.

---

# 3. Creating a File and Writing Text

```bash
echo "This is a test file" > new_folder/file.txt
```

This line creates `file.txt` and writes text into it.

There are several parts.

---

## `echo`

```bash
echo "This is a test file"
```

`echo` prints text to the terminal.

Normally:

```bash
echo "Hello"
```

produces:

```text
Hello
```

But here the output is redirected to a file.

---

## `>`

```bash
>
```

`>` is the **output redirection operator**.

Instead of displaying the output in the terminal, it sends the output to a file.

Therefore:

```bash
echo "This is a test file" > new_folder/file.txt
```

means:

> Write `This is a test file` into `new_folder/file.txt`.

If the file does not exist, Bash creates it.

If the file already exists, `>` **overwrites its contents**.

---

## `new_folder/file.txt`

This is the path to the file.

The structure is:

```text
new_folder/
└── file.txt
```

So the file is created **inside** `new_folder`.

---

# 4. Reading the File

```bash
cat new_folder/file.txt
```

### `cat`

`cat` displays the contents of a file in the terminal.

Here:

```bash
cat new_folder/file.txt
```

reads the file and prints:

```text
This is a test file
```

---

# 5. Deleting the File

```bash
rm new_folder/file.txt
```

### `rm`

`rm` means **remove**.

It is used to delete files.

This command:

```bash
rm new_folder/file.txt
```

deletes:

```text
file.txt
```

from the `new_folder` directory.

After this command, the directory becomes empty:

```text
new_folder/
```

---

# 6. Deleting the Directory

```bash
rmdir new_folder
```

### `rmdir`

`rmdir` means **remove directory**.

It removes an **empty directory**.

At this point, `file.txt` has already been deleted, so `new_folder` is empty.

Therefore:

```bash
rmdir new_folder
```

successfully removes the directory.

---

# 🔄 How the Script Works

The script executes the commands in order.

### Step 1 — Create the directory

```bash
mkdir -p new_folder
```

Result:

```text
new_folder/
```

### Step 2 — Create the file and write text

```bash
echo "This is a test file" > new_folder/file.txt
```

Result:

```text
new_folder/
└── file.txt
```

The file contains:

```text
This is a test file
```

### Step 3 — Display the file

```bash
cat new_folder/file.txt
```

Output:

```text
This is a test file
```

### Step 4 — Delete the file

```bash
rm new_folder/file.txt
```

Result:

```text
new_folder/
```

The directory is now empty.

### Step 5 — Delete the directory

```bash
rmdir new_folder
```

The directory is removed.

At the end, neither the file nor the directory remains.

---

# 📚 Important Commands

| Command    | Purpose                                                      |
| ---------- | ------------------------------------------------------------ |
| `mkdir`    | Creates a directory                                          |
| `mkdir -p` | Creates a directory and avoids an error if it already exists |
| `echo`     | Prints text                                                  |
| `>`        | Redirects output to a file                                   |
| `cat`      | Displays file contents                                       |
| `rm`       | Removes a file                                               |
| `rmdir`    | Removes an empty directory                                   |

---

# 💡 `>` vs `>>`

It is important to understand the difference between `>` and `>>`.

### `>`

Overwrites the file:

```bash
echo "Hello" > file.txt
```

If `file.txt` already contains text, its old content is replaced.

### `>>`

Appends text to the end of the file:

```bash
echo "Hello" >> file.txt
```

Existing content is preserved and `Hello` is added at the end.

---

# ⚠️ `rm` vs `rmdir`

These commands have different purposes.

### `rm`

Used to remove a file:

```bash
rm file.txt
```

### `rmdir`

Used to remove an empty directory:

```bash
rmdir folder
```

If the directory contains files, `rmdir` will not remove it.

For example:

```bash
rmdir new_folder
```

will fail if `new_folder` still contains `file.txt`.

---

# 🧠 Key Concepts

### `mkdir`

Creates directories.

### `-p`

Allows `mkdir` to create the directory if necessary without an error when it already exists.

### `echo`

Produces text.

### `>`

Redirects output into a file and overwrites existing content.

### `cat`

Reads and displays file contents.

### `rm`

Deletes files.

### `rmdir`

Deletes empty directories.

---

# 📌 Summary

A common Bash workflow for creating and deleting a file and directory is:

```bash
mkdir -p new_folder
echo "This is a test file" > new_folder/file.txt
cat new_folder/file.txt
rm new_folder/file.txt
rmdir new_folder
```

The process is:

```text
Create directory
      ↓
Create file
      ↓
Write text
      ↓
Read file
      ↓
Delete file
      ↓
Delete empty directory
```

This demonstrates several fundamental Bash file-management commands and is useful for understanding how scripts can create and clean up temporary files and directories.
