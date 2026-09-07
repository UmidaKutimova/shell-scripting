# Mini Project: Extracting Statistics from a CSV File

## 📌 Description

This mini project demonstrates how to use Bash scripting to work with a CSV file and extract simple statistics from it.

The script:

1. Checks whether `data.csv` exists.
2. Creates the CSV file if it does not exist.
3. Counts the number of data records.
4. Calculates the average age using `awk`.
5. Displays the results in the terminal.

---

## 📝 Code

```bash
#!/bin/bash

file="data.csv"

if [ ! -f "$file" ]; then
  echo -e "name,age,city\nAli,25,Tashkent\nVali,30,Samarkand\nOybek,28,Bukhara" > "$file"
fi

record_count=$(($(wc -l < "$file") - 1))
echo "Total records: $record_count"

label="Average age"
awk -F',' -v lbl="$label" 'NR>1 {sum+=$2; count++} END {printf "%s: %.1f\n", lbl, sum/count}' "$file"
```

---

## 🔍 Step-by-Step Explanation

### 1. Shebang

```bash
#!/bin/bash
```

The **shebang** tells the system to execute the script using Bash.

---

### 2. Store the File Name

```bash
file="data.csv"
```

This creates a variable called `file`.

```text
file → data.csv
```

Instead of writing `data.csv` multiple times, we can use:

```bash
"$file"
```

---

## 3. Check If the File Exists

```bash
if [ ! -f "$file" ]; then
```

This checks whether `data.csv` **does not exist**.

### `[ ... ]`

Used to test a condition in Bash.

### `-f`

Checks whether the path is a **regular file**.

### `!`

Means **NOT**.

So:

```bash
[ ! -f "$file" ]
```

means:

> "The file does not exist."

### `then`

```bash
then
```

Starts the commands that should run if the condition is true.

---

## 4. Create the CSV File

```bash
echo -e "name,age,city\nAli,25,Tashkent\nVali,30,Samarkand\nOybek,28,Bukhara" > "$file"
```

This creates `data.csv` and writes the CSV data into it.

### `echo`

Prints text.

### `-e`

Allows `echo` to interpret escape sequences such as:

```text
\n
```

`\n` means **new line**.

Therefore:

```text
name,age,city\n
Ali,25,Tashkent\n
Vali,30,Samarkand\n
Oybek,28,Bukhara
```

becomes:

```text
name,age,city
Ali,25,Tashkent
Vali,30,Samarkand
Oybek,28,Bukhara
```

### `>`

Redirects the output into a file.

```bash
> "$file"
```

means:

> Write the text into `data.csv`.

If the file does not exist, it is created.

---

## 5. Count the Records

```bash
record_count=$(($(wc -l < "$file") - 1))
```

This line calculates the number of records in the CSV file.

There are several parts.

### `wc -l`

```bash
wc -l
```

Counts the number of lines.

For this file:

```text
name,age,city
Ali,25,Tashkent
Vali,30,Samarkand
Oybek,28,Bukhara
```

there are **4 lines**.

---

### `< "$file"`

```bash
< "$file"
```

Redirects the contents of `data.csv` into `wc`.

So:

```bash
wc -l < "$file"
```

means:

> Count the lines in `data.csv`.

The result is:

```text
4
```

---

### `- 1`

```bash
4 - 1
```

The first line is the CSV **header**:

```text
name,age,city
```

It is not a data record.

Therefore, we subtract `1`:

```text
4 - 1 = 3
```

There are 3 actual records.

---

### `$(( ... ))`

```bash
$(( ... ))
```

is Bash **arithmetic expansion**.

It allows Bash to perform mathematical calculations.

For example:

```bash
result=$((10 - 3))
```

gives:

```text
7
```

In our script:

```bash
$(($(wc -l < "$file") - 1))
```

means:

> Count the lines and subtract 1.

---

### Command Substitution

The outer:

```bash
$( ... )
```

takes the result of a command and uses it as a value.

So:

```bash
record_count=$(...)
```

stores the calculated number in the variable `record_count`.

---

## 6. Display the Number of Records

```bash
echo "Total records: $record_count"
```

`echo` displays the result.

`$record_count` gives the value stored in the variable.

Output:

```text
Total records: 3
```

---

## 7. Create a Label

```bash
label="Average age"
```

This creates a variable called `label`.

Its value is:

```text
Average age
```

This label will later be passed to `awk`.

---

# 8. Calculate the Average Age

```bash
awk -F',' -v lbl="$label" 'NR>1 {sum+=$2; count++} END {printf "%s: %.1f\n", lbl, sum/count}' "$file"
```

This is the most important part of the project.

`awk` reads the CSV file and performs calculations on the data.

---

## `awk`

```bash
awk
```

`awk` is a powerful command-line tool for processing text and structured data.

It is especially useful for working with columns.

Our CSV has:

```text
name,age,city
```

So:

```text
$1 → name
$2 → age
$3 → city
```

---

## `-F','`

```bash
-F','
```

`-F` specifies the **field separator**.

Here:

```text
,
```

is the separator.

Therefore:

```bash
-F','
```

means:

> Use a comma to separate the columns.

For example:

```text
Alice,25,London
```

becomes:

```text
$1 = Alice
$2 = 25
$3 = London
```

---

## `-v lbl="$label"`

```bash
-v lbl="$label"
```

`-v` creates an `awk` variable.

Here:

```text
lbl
```

is the `awk` variable.

Its value comes from the Bash variable:

```bash
"$label"
```

which contains:

```text
Average age
```

So inside `awk`:

```text
lbl = "Average age"
```

---

# 9. `NR > 1`

```awk
NR>1
```

`NR` means **Number of Records**.

In this case, it represents the current line number.

For our CSV:

```text
NR = 1 → name,age,city
NR = 2 → Ali,25,Tashkent
NR = 3 → Vali,30,Samarkand
NR = 4 → Oybek,28,Bukhara
```

Therefore:

```awk
NR>1
```

means:

> Process only lines after the first line.

This skips the header.

---

## 10. `sum += $2`

```awk
sum += $2
```

`$2` represents the **second column**, which is `age`.

The ages are:

```text
25
30
28
```

`sum` adds them together:

```text
25 + 30 + 28 = 83
```

`+=` is a shorthand for:

```awk
sum = sum + $2
```

---

## 11. `count++`

```awk
count++
```

This increases `count` by 1.

It is equivalent to:

```awk
count = count + 1
```

For the three records:

```text
count = 1
count = 2
count = 3
```

---

# 12. `END`

```awk
END
```

`END` tells `awk`:

> Run this code after all input lines have been processed.

So after calculating:

```text
sum = 83
count = 3
```

`awk` calculates:

```text
83 / 3 = 27.666...
```

---

## 13. `printf`

```awk
printf "%s: %.1f\n", lbl, sum/count
```

`printf` formats and prints the result.

### `%s`

```text
%s
```

means a string.

It is replaced by:

```text
lbl
```

which is:

```text
Average age
```

### `%.1f`

```text
%.1f
```

means a floating-point number with **1 digit after the decimal point**.

So:

```text
27.666...
```

becomes:

```text
27.7
```

### `\n`

```text
\n
```

means a new line.

---

## 📊 Data Used

The script creates this CSV file if it does not already exist:

```csv
name,age,city
Ali,25,Tashkent
Vali,30,Samarkand
Oybek,28,Bukhara
```

---

## 📤 Expected Output

```text
Total records: 3
Average age: 27.7
```

---

## 🔄 How the Whole Project Works

```text
Start
  ↓
Set file name
  ↓
Does data.csv exist?
  ↓
No → Create CSV file
  ↓
Count all lines
  ↓
Subtract header line
  ↓
Display total records
  ↓
Read age column with awk
  ↓
Add all ages
  ↓
Count records
  ↓
Calculate average
  ↓
Display average age
```

---

## 🧠 Key Bash Concepts Used

| Concept       | Purpose                       |
| ------------- | ----------------------------- |
| `#!/bin/bash` | Use Bash                      |
| `if`          | Check a condition             |
| `[ ]`         | Test a condition              |
| `!`           | NOT                           |
| `-f`          | Check for a regular file      |
| `echo -e`     | Print multi-line text         |
| `>`           | Write/overwrite a file        |
| `wc -l`       | Count lines                   |
| `<`           | Read file as input            |
| `$(( ))`      | Perform arithmetic            |
| `$( )`        | Command substitution          |
| `awk`         | Process CSV/text data         |
| `-F','`       | Use comma as column separator |
| `-v`          | Create an `awk` variable      |
| `NR`          | Current input line number     |
| `$2`          | Second column                 |
| `sum +=`      | Add values                    |
| `count++`     | Increase counter              |
| `END`         | Run code after processing     |
| `printf`      | Format output                 |

---

## 🎯 Summary

This mini project combines several important Bash concepts:

* File existence checking
* Conditional statements
* File creation
* Input/output redirection
* Command substitution
* Arithmetic expansion
* Line counting with `wc`
* CSV column processing with `awk`
* Variables
* Counters
* Average calculation
* Formatted output

The main idea is:

```text
CSV file
   ↓
Read data
   ↓
Count records
   ↓
Extract age column
   ↓
Calculate average
   ↓
Display statistics
```
