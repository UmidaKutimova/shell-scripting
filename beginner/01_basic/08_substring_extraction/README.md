# Substring Extraction

## Description

This example shows how to extract part of a string in Bash using substring expansion.

## Code

```bash
#!/bin/bash

text="Shell Scripting"

echo "${text:0:5}"
echo "${text:6}"
```

## Explanation

### String Variable

```bash
text="Shell Scripting"
```

The variable `text` stores the string `"Shell Scripting"`.

### Extracting a Substring

```bash
${text:0:5}
```

This extracts **5 characters** starting from position `0`.

Output:

```text
Shell
```

```bash
${text:6}
```

This extracts the string starting from position `6` until the end.

Output:

```text
Scripting
```

### Character Positions

Bash starts counting positions from **0**:

```text
S  h  e  l  l     S  c  r  i  p  t  i  n  g
0  1  2  3  4  5  6  7  8  9 10 11 12 13 14
```

## How to Run

Make the script executable:

```bash
chmod +x substring_extraction.sh
```

Run the script:

```bash
./substring_extraction.sh
```

## Output

```text
Shell
Scripting
```

## What I Learned

* How to extract part of a string in Bash
* How Bash string positions start from `0`
* How to use `${variable:start:length}`
* How to extract a substring from a specific position to the end
