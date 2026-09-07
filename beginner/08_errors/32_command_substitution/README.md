# Command Substitution

## 📌 Description

**Command substitution** allows you to run a command and store its output inside a variable.

In Bash, command substitution uses:

```bash
$(command)
```

The command runs first, and its output is then assigned to the variable.

---

## 📝 Code

```bash
#!/bin/bash

today=$(date +%Y-%m-%d)
user=$(whoami)

echo "Today's date: $today"
echo "Current user: $user"
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

### `today=$(date +%Y-%m-%d)`

```bash
today=$(date +%Y-%m-%d)
```

This line creates a variable called `today`.

The important part is:

```bash
$(date +%Y-%m-%d)
```

This is **command substitution**.

Bash runs:

```bash
date +%Y-%m-%d
```

and takes its output.

For example:

```text
2026-09-07
```

That output is then stored in the variable:

```text
today
```

So after this command:

```bash
today=$(date +%Y-%m-%d)
```

the variable contains something like:

```text
today="2026-09-07"
```

---

### `date`

```bash
date
```

`date` is a Linux command that displays the current date and time.

---

### `+%Y-%m-%d`

```bash
+%Y-%m-%d
```

This specifies the format of the date.

| Format | Meaning         |
| ------ | --------------- |
| `%Y`   | Four-digit year |
| `%m`   | Two-digit month |
| `%d`   | Two-digit day   |

For example:

```text
2026-09-07
```

---

### `user=$(whoami)`

```bash
user=$(whoami)
```

This creates a variable called `user`.

Bash runs:

```bash
whoami
```

and stores its output in the variable.

For example, if the current username is:

```text
oswyneli
```

then:

```text
user="oswyneli"
```

---

### `whoami`

```bash
whoami
```

`whoami` displays the username of the current user.

For example:

```text
oswyneli
```

---

### `echo "Today's date: $today"`

```bash
echo "Today's date: $today"
```

`echo` prints text to the terminal.

`$today` accesses the value stored in the `today` variable.

For example:

```text
Today's date: 2026-09-07
```

---

### `echo "Current user: $user"`

```bash
echo "Current user: $user"
```

`$user` accesses the value stored in the `user` variable.

For example:

```text
Current user: oswyneli
```

---

## 🔄 How Command Substitution Works

The basic process is:

```text
Run command
     ↓
Get command output
     ↓
Store output in variable
     ↓
Use variable later
```

For example:

```bash
today=$(date +%Y-%m-%d)
```

works like:

```text
date command
     ↓
2026-09-07
     ↓
today variable
     ↓
$today
```

---

## 📤 Expected Output

The exact output depends on the current date and username.

For example:

```text
Today's date: 2026-09-07
Current user: oswyneli
```

---

## 🆚 Command Substitution vs Normal Variable

Normal variable:

```bash
name="Ali"
```

You manually provide the value.

Command substitution:

```bash
today=$(date +%Y-%m-%d)
```

The value comes from a command.

Another example:

```bash
current_directory=$(pwd)
```

Here, Bash runs `pwd` and stores its output in `current_directory`.

---

## 🧠 Important Syntax

Command substitution uses:

```bash
$(command)
```

For example:

```bash
$(date)
$(whoami)
$(pwd)
$(ls)
```

The command inside `$()` is executed, and its output can be stored in a variable or used directly.

---

## 🎯 Summary

**Command substitution** allows you to use the output of a command as a value.

The main syntax is:

```bash
variable=$(command)
```

In this example:

```bash
today=$(date +%Y-%m-%d)
user=$(whoami)
```

* `$(date +%Y-%m-%d)` gets the current date.
* `$(whoami)` gets the current username.
* The results are stored in `today` and `user`.
* `$today` and `$user` are then used with `echo`.
