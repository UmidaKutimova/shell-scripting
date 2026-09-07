# 🔀 Redirection (`>`, `>>`)

This Bash script demonstrates how to redirect command output to a file using the `>` and `>>` operators.

## 📌 Code

```bash
#!/bin/bash

echo "This is the first line" > output.txt
echo "This is an extra line" >> output.txt
cat output.txt
```

---

## 🔍 Explanation

### 1. `#!/bin/bash`

```bash
#!/bin/bash
```

This is called the **shebang**.

* `#!` tells the system which interpreter should execute the script.
* `/bin/bash` specifies that **Bash** should be used.

---

### 2. Writing to a file with `>`

```bash
echo "This is the first line" > output.txt
```

This command writes text into `output.txt`.

#### `echo`

`echo` prints text.

```bash
echo "This is the first line"
```

Normally, this would display:

```text
This is the first line
```

on the terminal.

#### `>`

The `>` operator redirects the output of `echo` into a file.

```text
echo → output → output.txt
```

If `output.txt` does not exist, Bash creates it.

If `output.txt` already exists, `>` **overwrites its contents**.

After this command, `output.txt` contains:

```text
This is the first line
```

---

### 3. Adding to a file with `>>`

```bash
echo "This is an extra line" >> output.txt
```

This command adds another line to the end of `output.txt`.

#### `>>`

The `>>` operator is called **append redirection**.

Unlike `>`, it does **not delete the existing content**.

Before:

```text
This is the first line
```

After:

```text
This is the first line
This is an extra line
```

If `output.txt` does not exist, `>>` also creates the file.

---

### 4. Displaying the file

```bash
cat output.txt
```

The `cat` command displays the contents of the file in the terminal.

The file contains:

```text
This is the first line
This is an extra line
```

Therefore, the terminal displays:

```text
This is the first line
This is an extra line
```

---

## 🔄 How the Script Works

The script works in three steps:

```text
1. echo "This is the first line" > output.txt
                ↓
       Create/overwrite file
                ↓
       This is the first line

2. echo "This is an extra line" >> output.txt
                ↓
          Append to file
                ↓
       This is the first line
       This is an extra line

3. cat output.txt
                ↓
          Display contents
```

---

## ⚖️ Difference Between `>` and `>>`

### `>` — Overwrite

```bash
echo "First" > output.txt
echo "Second" > output.txt
```

Final content:

```text
Second
```

The second command replaces the first line.

---

### `>>` — Append

```bash
echo "First" > output.txt
echo "Second" >> output.txt
```

Final content:

```text
First
Second
```

The second command adds content to the end.

---

## 📊 Comparison

| Operator | Meaning           | Existing content | File doesn't exist |
| -------- | ----------------- | ---------------- | ------------------ |
| `>`      | Write / overwrite | Replaced         | Creates file       |
| `>>`     | Append            | Preserved        | Creates file       |

### 🧠 Easy way to remember

```text
>   → Write and replace
>>  → Write and add
```

The extra `>` in `>>` can help you remember that more content is being **added** to the existing file.

---

## 🖥️ Expected Output

When you run:

```bash
./redirection.sh
```

the output will be:

```text
This is the first line
This is an extra line
```

## 🎯 Main Idea

The most important difference is:

```bash
command > file
```

**Write to the file and replace its previous contents.**

```bash
command >> file
```

**Add the output to the end of the file without removing existing contents.**
