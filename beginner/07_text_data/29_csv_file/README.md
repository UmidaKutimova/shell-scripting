# 📊 Extracting Columns from a CSV File (`cut`, `awk`)

This Bash script creates a CSV file containing names, ages, and cities. It then extracts the **Name** and **Age** columns using `cut` and `awk`.

## 📌 Code

```bash
#!/bin/bash

echo -e "name,age,city\nIsabella,24,USA\nAlex,30, Canada" > data.csv

echo "Name column only:"
cut -d',' -f1 data.csv

echo "Age column only:"
awk -F',' '{print $2}' data.csv
```

## 🔍 Explanation

### 1. Shebang

```bash
#!/bin/bash
```

The shebang tells the system to run the script using the Bash shell.

---

### 2. Create the CSV file

```bash
echo -e "name,age,city\nIsabella,24,USA\nAlex,30, Canada" > data.csv
```

* `echo` — displays text.
* `-e` — allows `echo` to interpret special characters.
* `\n` — creates a new line.
* `,` — separates columns in the CSV file.
* `>` — redirects the output into a file.
* `data.csv` — the name of the CSV file.

The created `data.csv` file contains:

```text
name,age,city
Isabella,24,USA
Alex,30, Canada
```

---

### 3. Extract the Name column

```bash
echo "Name column only:"
```

Displays a heading:

```text
Name column only:
```

Then:

```bash
cut -d',' -f1 data.csv
```

#### `cut`

`cut` is used to extract specific parts of each line.

#### `-d','`

`-d` defines the **delimiter**.

Here, the delimiter is a comma:

```text
,
```

#### `-f1`

`-f` means **field**.

`-f1` selects the first column.

Output:

```text
name
Isabella
Alex
```

---

### 4. Extract the Age column

```bash
echo "Age column only:"
```

Displays:

```text
Age column only:
```

Then:

```bash
awk -F',' '{print $2}' data.csv
```

#### `awk`

`awk` is used to process and extract data from text files.

#### `-F','`

`-F` defines the **field separator**.

Here, the separator is a comma:

```text
,
```

#### `{print $2}`

* `{ }` contains the `awk` action.
* `print` displays the selected data.
* `$2` means the **second column**.

Output:

```text
age
24
30
```

---

## 🖥️ Expected Output

```text
Name column only:
name
Isabella
Alex
Age column only:
age
24
30
```

## 📊 `cut` vs `awk`

| Command | Purpose                                     |
| ------- | ------------------------------------------- |
| `cut`   | Extracts columns or parts of text           |
| `awk`   | Processes and extracts structured text data |
| `-d','` | Defines the delimiter for `cut`             |
| `-f1`   | Selects the first column                    |
| `-F','` | Defines the field separator for `awk`       |
| `$2`    | Selects the second column                   |

## 🧠 Quick Reminder

```bash
cut -d',' -f1 data.csv
```

→ Extracts the **first column**.

```bash
awk -F',' '{print $2}' data.csv
```

→ Extracts the **second column**.
