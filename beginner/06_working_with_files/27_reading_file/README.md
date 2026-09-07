# 📖 Reading a File Line by Line

This Bash script creates a text file and then reads it **line by line** using a `while` loop and the `read` command.

## 📌 Code

```bash
#!/bin/bash

echo -e "first line\nsecond line\nthird line" > source.txt

while read -r line; do
  echo "Line: $line"
done < "source.txt"
```

---

## 🔍 Explanation

### 1. `#!/bin/bash`

```bash
#!/bin/bash
```

This is called the **shebang**.

* `#!` tells the operating system which interpreter should execute the script.
* `/bin/bash` specifies that the script should be executed using **Bash**.

---

### 2. Creating the file

```bash
echo -e "first line\nsecond line\nthird line" > source.txt
```

This command creates a file called `source.txt` and writes three lines into it.

#### `echo`

`echo` prints text to the terminal or sends text to another destination.

#### `-e`

The `-e` option tells `echo` to interpret special characters such as `\n`.

#### `\n`

`\n` means **new line**.

Therefore:

```text
first line\nsecond line\nthird line
```

becomes:

```text
first line
second line
third line
```

#### `>`

The `>` operator redirects the output into a file.

```bash
echo "text" > file.txt
```

If the file does not exist, Bash creates it.

If the file already exists, its previous contents are **overwritten**.

#### `source.txt`

This is the file where the text is stored.

After this command, `source.txt` contains:

```text
first line
second line
third line
```

---

## 3. `while` loop

```bash
while read -r line; do
```

This starts a `while` loop.

The loop continues as long as the `read` command successfully reads another line.

### `while`

`while` repeatedly executes commands while a condition is successful.

General structure:

```bash
while condition; do
    commands
done
```

---

### `read`

```bash
read
```

The `read` command reads input.

In this script, it reads **one line at a time** from `source.txt`.

---

### `-r`

```bash
read -r
```

The `-r` option tells `read` to treat backslashes (`\`) as ordinary characters instead of interpreting them as escape characters.

Using `-r` is the recommended way to read lines from a file.

---

### `line`

```bash
read -r line
```

`line` is a variable.

Each time the loop reads a line, the content is stored in the `line` variable.

For example:

```text
first line
```

is stored as:

```bash
line="first line"
```

Then:

```text
second line
```

is stored in `line`, and so on.

---

### `do`

```bash
do
```

`do` marks the beginning of the commands that belong to the `while` loop.

---

## 4. Printing each line

```bash
echo "Line: $line"
```

This prints the current value of the `line` variable.

### `$line`

```bash
$line
```

The `$` tells Bash to use the **value stored in the variable**.

For example, if:

```bash
line="first line"
```

then:

```bash
echo "Line: $line"
```

produces:

```text
Line: first line
```

---

## 5. `done`

```bash
done
```

`done` marks the end of the `while` loop.

The loop then returns to:

```bash
while read -r line
```

and tries to read the next line.

---

## 6. Input redirection

```bash
done < "source.txt"
```

The `<` operator redirects the contents of `source.txt` into the loop as its input.

### `<`

```bash
< "source.txt"
```

means:

> Read input from `source.txt`.

Therefore:

```bash
while read -r line; do
    ...
done < "source.txt"
```

means:

> Read `source.txt` one line at a time and process each line.

The quotes around `"source.txt"` make the filename a single argument. They are especially useful when filenames contain spaces.

---

## 🔄 How the Loop Works

The script processes the file like this:

```text
source.txt
    ↓
first line
    ↓
read → line="first line"
    ↓
echo → Line: first line

second line
    ↓
read → line="second line"
    ↓
echo → Line: second line

third line
    ↓
read → line="third line"
    ↓
echo → Line: third line

End of file
    ↓
Loop stops
```

---

## 🖥️ Expected Output

When you run the script:

```bash
./reading_file_line_by_line.sh
```

the output will be:

```text
Line: first line
Line: second line
Line: third line
```

## 📌 Important Concepts

| Syntax  | Meaning                            |
| ------- | ---------------------------------- |
| `echo`  | Prints text                        |
| `-e`    | Enables escape sequences in `echo` |
| `\n`    | New line                           |
| `>`     | Redirects output to a file         |
| `while` | Starts a loop                      |
| `read`  | Reads input                        |
| `-r`    | Prevents backslash interpretation  |
| `line`  | Variable storing the current line  |
| `$line` | Value of the `line` variable       |
| `do`    | Starts the loop body               |
| `done`  | Ends the loop                      |
| `<`     | Redirects input from a file        |

## 🎯 Main Idea

The important pattern to remember is:

```bash
while read -r line; do
    echo "$line"
done < "source.txt"
```

This is a common Bash pattern for **reading and processing a file one line at a time**.
