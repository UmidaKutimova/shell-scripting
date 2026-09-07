# Here-document

## 📌 Description

A **Here-document** (also called a **heredoc**) allows you to provide multiple lines of text directly to a command inside a shell script.

Instead of writing each line separately with `echo`, you can write a block of text between a starting delimiter and an ending delimiter.

---

## 📝 Code

```bash
#!/bin/bash

cat << EOF
This is multi-line
text written directly
inside the script.
EOF
```

---

## 🔍 Explanation

### `#!/bin/bash`

```bash
#!/bin/bash
```

This is the **shebang**.

* `#!` tells the system that the file should be executed using an interpreter.
* `/bin/bash` specifies **Bash** as the interpreter.

---

### `cat`

```bash
cat
```

`cat` is a command commonly used to:

* display file contents
* combine files
* receive and display text from standard input

Here, `cat` receives multiple lines of text from the Here-document and prints them to the terminal.

---

### `<<`

```bash
<<
```

`<<` is the **Here-document redirection operator**.

It tells Bash:

> "Take the following lines as input for this command until you reach the specified delimiter."

The general syntax is:

```bash
command << DELIMITER
text
text
text
DELIMITER
```

---

### `EOF`

```bash
EOF
```

`EOF` is the **delimiter**.

It marks where the Here-document starts and ends.

In this example:

```bash
cat << EOF
```

means the text starts after this line.

The next:

```bash
EOF
```

marks the end.

**Important:** `EOF` is not a special Bash command. It is simply a commonly used name for the delimiter.

You could use another word:

```bash
cat << END
Hello
World
END
```

The opening and closing delimiters must match exactly.

---

### Multi-line text

```text
This is multi-line
text written directly
inside the script.
```

These lines are passed as input to `cat`.

Unlike using several `echo` commands, you can write the entire block naturally across multiple lines.

---

## 📤 Expected Output

When you run the script:

```bash
bash script.sh
```

the output will be:

```text
This is multi-line
text written directly
inside the script.
```

---

## 🧠 How It Works

The structure is:

```text
cat << EOF
       ↓
   start heredoc

This is multi-line
text written directly
inside the script.
       ↓
      EOF
       ↓
   end heredoc
```

Bash collects all the lines between the two `EOF` delimiters and sends them as input to `cat`.

---

## 📋 General Syntax

```bash
command << DELIMITER
line 1
line 2
line 3
DELIMITER
```

For example:

```bash
cat << EOF
Hello
This is Bash
Goodbye
EOF
```

Output:

```text
Hello
This is Bash
Goodbye
```

---

## 💡 Why Use Here-documents?

Here-documents are useful when you need to:

* write multi-line text
* create configuration files
* generate text files
* provide input to commands
* create scripts automatically
* work with SQL or other multi-line commands

For example, you can create a file containing multiple lines:

```bash
cat << EOF > message.txt
Hello!
This is a message.
It contains multiple lines.
EOF
```

This creates `message.txt` with the specified content.

---

## 🔑 Key Concepts

| Syntax          | Meaning                              |
| --------------- | ------------------------------------ |
| `cat`           | Reads and displays input             |
| `<<`            | Starts a Here-document               |
| `EOF`           | Delimiter marking the end            |
| `DELIMITER`     | Any matching word used as a boundary |
| Multi-line text | Content passed to the command        |

---

## 📌 Important Rule

The closing delimiter must be on a line by itself:

```bash
EOF
```

Do not add extra spaces or other text after it.

Correct:

```bash
cat << EOF
Hello
EOF
```

Incorrect:

```bash
cat << EOF
Hello
EOF something
```

The delimiter can have a different name, but the opening and closing names must match:

```bash
cat << END
Hello
END
```

---

## 🎯 Summary

A **Here-document** allows Bash to pass a block of multi-line text as input to a command.

The basic structure is:

```bash
command << DELIMITER
multiple lines
of text
DELIMITER
```

In this example:

```bash
cat << EOF
This is multi-line
text written directly
inside the script.
EOF
```

`cat` receives everything between the two `EOF` lines and displays it in the terminal.
