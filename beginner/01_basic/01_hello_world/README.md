# 01. Hello World

## Description

This is the first basic Bash script. It prints `Hello, World!` to the terminal.

## Code

```bash
#!/bin/bash

echo "Hello, World!"
```

## Explanation

### `#!/bin/bash`

This is called a **shebang**.

It tells the operating system to run the script using the **Bash shell**.

### `echo "Hello, World!"`

The `echo` command prints text to the terminal.

In this example, it prints:

```text
Hello, World!
```

## How to Run

Make the script executable:

```bash
chmod +x hello_world.sh
```

Run the script:

```bash
./hello_world.sh
```

### Output

```text
Hello, World!
```

## What I Learned

* What a Bash script looks like
* What the shebang (`#!/bin/bash`) does
* How to use the `echo` command
* How to make a script executable
* How to run a Bash script
