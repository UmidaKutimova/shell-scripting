# While Loop

## 📌 Description

A `while` loop repeatedly executes a block of code **as long as a condition is true**.

In this example, the loop starts counting from `1` and continues until `i` becomes greater than `5`.

---

## 📝 Code

```bash
#!/bin/bash

i=1

while [ $i -le 5 ]; do
  echo "Counting: $i"
  i=$((i + 1))
done
```

---

# 🔍 Code Explanation

## 1. `#!/bin/bash`

```bash
#!/bin/bash
```

This is called a **shebang**.

It tells the operating system to execute the script using **Bash**.

* `#!` — identifies the interpreter.
* `/bin/bash` — path to the Bash program.

---

## 2. `i=1`

```bash
i=1
```

This creates a variable named `i` and gives it the value `1`.

Here:

* `i` — variable name.
* `=` — assignment operator.
* `1` — value assigned to the variable.

In Bash, there must be **no spaces** around `=`.

Correct:

```bash
i=1
```

Incorrect:

```bash
i = 1
```

---

# 3. `while`

```bash
while
```

`while` starts a **while loop**.

It tells Bash:

> Keep executing the loop while the condition is true.

The structure is:

```bash
while condition; do
  commands
done
```

---

# 4. `[ $i -le 5 ]`

```bash
[ $i -le 5 ]
```

This is the **condition** of the loop.

Bash checks this condition before every iteration.

---

## `[` and `]`

```bash
[ $i -le 5 ]
```

`[` and `]` are used for a **conditional test** in Bash.

They are actually related to the Bash `test` command.

The spaces are important.

Correct:

```bash
[ $i -le 5 ]
```

Incorrect:

```bash
[$i -le 5]
```

---

## `$i`

```bash
$i
```

The `$` tells Bash to use the **value stored in the variable** `i`.

For example, if:

```bash
i=3
```

then:

```bash
$i
```

represents:

```text
3
```

---

## `-le`

```bash
-le
```

`-le` means:

**less than or equal to**

So:

```bash
$i -le 5
```

means:

> Is `i` less than or equal to `5`?

Examples:

```text
1 <= 5 → true
2 <= 5 → true
5 <= 5 → true
6 <= 5 → false
```

---

# 5. `;`

```bash
while [ $i -le 5 ]; do
```

The semicolon separates the condition from `do` when they are written on the same line.

This:

```bash
while [ $i -le 5 ]; do
```

can also be written as:

```bash
while [ $i -le 5 ]
do
```

Both forms are valid.

---

# 6. `do`

```bash
do
```

`do` marks the beginning of the commands that should be executed when the condition is true.

Everything between `do` and `done` belongs to the loop.

---

# 7. `echo "Counting: $i"`

```bash
echo "Counting: $i"
```

`echo` prints text to the terminal.

`$i` is replaced with the current value of `i`.

For example, when:

```text
i=1
```

Bash prints:

```text
Counting: 1
```

When:

```text
i=2
```

it prints:

```text
Counting: 2
```

---

# 8. `i=$((i + 1))`

```bash
i=$((i + 1))
```

This increases the value of `i` by `1`.

Let's break it down.

### `i=`

```bash
i=
```

Assigns a new value to the variable `i`.

### `$(( ))`

```bash
$(( ))
```

This is Bash **arithmetic expansion**.

It allows Bash to perform mathematical calculations.

For example:

```bash
echo $((2 + 3))
```

Output:

```text
5
```

### `i + 1`

```bash
i + 1
```

This means:

> Take the current value of `i` and add `1`.

So:

```text
i = 1
```

becomes:

```text
i = 2
```

Then:

```text
i = 2
```

becomes:

```text
i = 3
```

and so on.

---

# 9. `done`

```bash
done
```

`done` marks the **end of the while loop**.

After reaching `done`, Bash goes back to the `while` condition and checks it again.

---

# 🔄 How the Loop Works

Initially:

```text
i = 1
```

Bash checks:

```text
1 <= 5
```

This is true.

So it prints:

```text
Counting: 1
```

Then:

```bash
i=$((i + 1))
```

changes:

```text
i = 1
```

to:

```text
i = 2
```

---

### Second iteration

Bash checks:

```text
2 <= 5
```

True.

Output:

```text
Counting: 2
```

Then `i` becomes `3`.

---

### Third iteration

```text
3 <= 5
```

True.

Output:

```text
Counting: 3
```

Then `i` becomes `4`.

---

### Fourth iteration

```text
4 <= 5
```

True.

Output:

```text
Counting: 4
```

Then `i` becomes `5`.

---

### Fifth iteration

```text
5 <= 5
```

True.

Output:

```text
Counting: 5
```

Then `i` becomes `6`.

---

### Final check

Bash checks:

```text
6 <= 5
```

This is **false**.

Therefore, the loop stops.

---

# 💻 Final Output

```text
Counting: 1
Counting: 2
Counting: 3
Counting: 4
Counting: 5
```

---

# 🧠 General Syntax

The general structure of a Bash `while` loop is:

```bash
while [ condition ]; do
  command
done
```

For example:

```bash
while [ $number -lt 10 ]; do
  echo "$number"
  number=$((number + 1))
done
```

---

# ⚠️ Important: Updating the Variable

The variable used in the condition should normally be changed inside the loop.

For example:

```bash
i=1

while [ $i -le 5 ]; do
  echo "$i"
  i=$((i + 1))
done
```

If you remove:

```bash
i=$((i + 1))
```

then `i` will remain `1`.

The condition:

```text
1 <= 5
```

will always be true, and the loop can continue indefinitely.

This is called an **infinite loop**.

---

# 🔢 Common Numeric Operators

Bash provides several operators for comparing numbers:

| Operator | Meaning                  |
| -------- | ------------------------ |
| `-eq`    | equal to                 |
| `-ne`    | not equal to             |
| `-lt`    | less than                |
| `-le`    | less than or equal to    |
| `-gt`    | greater than             |
| `-ge`    | greater than or equal to |

Examples:

```bash
[ $i -eq 5 ]
```

Means:

> Is `i` equal to `5`?

```bash
[ $i -lt 10 ]
```

Means:

> Is `i` less than `10`?

```bash
[ $i -gt 3 ]
```

Means:

> Is `i` greater than `3`?

---

# 🖥️ How to Run

Create a script:

```bash
touch while_loop.sh
```

Open it:

```bash
vim while_loop.sh
```

Add the code:

```bash
#!/bin/bash

i=1

while [ $i -le 5 ]; do
  echo "Counting: $i"
  i=$((i + 1))
done
```

Save and exit Vim:

```text
Esc
:wq
Enter
```

Make the script executable:

```bash
chmod +x while_loop.sh
```

Run it:

```bash
./while_loop.sh
```

---

# 📚 Key Concepts

| Syntax        | Meaning                          |
| ------------- | -------------------------------- |
| `#!/bin/bash` | Use Bash to execute the script   |
| `i=1`         | Create a variable and assign `1` |
| `while`       | Starts a while loop              |
| `[` `]`       | Performs a conditional test      |
| `$i`          | Gets the value of `i`            |
| `-le`         | Less than or equal to            |
| `do`          | Starts the loop body             |
| `echo`        | Prints text                      |
| `$(( ))`      | Performs arithmetic              |
| `i + 1`       | Adds 1 to `i`                    |
| `done`        | Ends the loop                    |

---

# 🎯 Practice

### Practice 1 — Count from 1 to 10

Modify the condition:

```bash
while [ $i -le 10 ]; do
  echo "Number: $i"
  i=$((i + 1))
done
```

### Practice 2 — Countdown

Start from `5` and decrease the value:

```bash
i=5

while [ $i -ge 1 ]; do
  echo "Countdown: $i"
  i=$((i - 1))
done
```

Expected output:

```text
Countdown: 5
Countdown: 4
Countdown: 3
Countdown: 2
Countdown: 1
```

### Practice 3 — Even numbers

Try creating a `while` loop that prints:

```text
2
4
6
8
10
```

Hint:

```bash
i=$((i + 2))
```

---

## 🎯 Main Idea

A `while` loop follows this pattern:

```text
Set a starting value
        ↓
Check the condition
        ↓
Is it true?
   ↓          ↓
 Yes          No
  ↓            ↓
Run code      Stop
  ↓
Change value
  ↓
Check condition again
```

The most important idea is:

> **A `while` loop continues as long as its condition is true.**
