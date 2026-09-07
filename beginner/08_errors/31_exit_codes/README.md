# Exit Codes (`$?`)

## 📌 Description

In Bash, every command returns an **exit code** after it finishes.

The special variable `$?` stores the exit code of the **most recently executed command**.

Exit codes are useful for checking whether a command succeeded or failed.

---

## 📝 Code

```bash
#!/bin/bash

mkdir -p new_folder

if [ $? -eq 0 ]; then
  echo "Folder created successfully"
else
  echo "An error occurred"
fi
```

---

## 🔍 Explanation

### `#!/bin/bash`

```bash
#!/bin/bash
```

This is the **shebang**.

It tells the system to execute the script using Bash.

---

### `mkdir -p new_folder`

```bash
mkdir -p new_folder
```

`mkdir` creates a directory.

* `mkdir` → make a directory
* `-p` → creates the directory if it does not exist and does not show an error if it already exists
* `new_folder` → the name of the directory

After this command finishes, Bash gives it an **exit code**.

---

## `$?`

```bash
$?
```

`$?` is a special Bash variable.

It contains the exit code of the **last command that was executed**.

For example:

```bash
mkdir -p new_folder
echo $?
```

If the command succeeds:

```text
0
```

---

## Exit Code `0`

In Bash:

```text
0
```

usually means:

> **The command was successful.**

For example:

```bash
mkdir -p new_folder
```

successfully creates the directory, so its exit code is `0`.

---

## Non-zero Exit Codes

A value other than `0` usually means that something went wrong.

For example:

```text
1
```

or

```text
2
```

can indicate an error.

The exact meaning depends on the command.

---

## `if [ $? -eq 0 ]`

```bash
if [ $? -eq 0 ]; then
```

This checks whether the previous command was successful.

Let's break it down:

### `$?`

```bash
$?
```

Gets the exit code of the previous command.

### `[ ... ]`

```bash
[ ... ]
```

Performs a condition test in Bash.

### `-eq`

```bash
-eq
```

Means **"equal to"** when comparing numbers.

So:

```bash
[ $? -eq 0 ]
```

means:

> "Is the exit code equal to 0?"

---

## `then`

```bash
then
```

If the condition is true, Bash executes the commands after `then`.

```bash
if [ $? -eq 0 ]; then
  echo "Folder created successfully"
```

Since `0` means success, the message is displayed.

---

## `echo`

```bash
echo "Folder created successfully"
```

`echo` prints text to the terminal.

If the command succeeded, the output is:

```text
Folder created successfully
```

---

## `else`

```bash
else
```

`else` runs when the condition is false.

If the exit code is not `0`, Bash executes:

```bash
echo "An error occurred"
```

---

## `fi`

```bash
fi
```

`fi` marks the end of the `if` statement.

It is `if` written backwards.

The basic structure is:

```bash
if condition; then
  commands
else
  commands
fi
```

---

## 🔄 How the Script Works

The script follows this sequence:

```text
mkdir -p new_folder
        ↓
Command finishes
        ↓
Bash stores the exit code in $?
        ↓
Is $? equal to 0?
      /   \
    Yes    No
     ↓      ↓
Success   Error
 message   message
```

---

## 📤 Expected Output

If the directory is created successfully:

```text
Folder created successfully
```

---

## ⚠️ Important: `$?` Changes

`$?` always refers to the **most recently executed command**.

For example:

```bash
mkdir -p new_folder
echo $?
```

Here, `$?` refers to `mkdir`.

But:

```bash
mkdir -p new_folder
echo "Hello"
echo $?
```

Now `$?` refers to `echo "Hello"`, not `mkdir`.

Therefore, if you want to check the result of a command using `$?`, check it **immediately after that command**.

---

## 🧠 Simple Example

```bash
mkdir -p new_folder

if [ $? -eq 0 ]; then
  echo "Success"
else
  echo "Failed"
fi
```

The meaning is:

> Create the folder → check the exit code → if it is `0`, print success; otherwise, print an error.

---

## 📋 Common Exit Code Concept

| Exit Code | Meaning          |
| --------: | ---------------- |
|       `0` | Success          |
|  Non-zero | Error or failure |

The specific non-zero value can have different meanings depending on the command.

---

## 🎯 Summary

* Every Bash command returns an **exit code**.
* `$?` stores the exit code of the **previous command**.
* `0` normally means **success**.
* A non-zero value normally means **failure/error**.
* `-eq` means **equal to** for numeric comparison.
* `$?` should be checked immediately after the command you want to test.

The key pattern to remember is:

```bash
command

if [ $? -eq 0 ]; then
  echo "Success"
else
  echo "Failed"
fi
```
