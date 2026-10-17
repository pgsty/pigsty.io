# Help Command (help)

> Reference for pgBackRest `help` command options and behavior.

---

LLMS index: [llms.txt](/llms.txt)

---

> Source: [pgBackRest Command Docs: help](https://pgbackrest.org/command.html#command-help)

Help has three levels. With no command, pgBackRest shows general help. With a command, such as `pgbackrest help backup`, it shows the command description and valid options. Add an option, such as `pgbackrest help backup type`, to show its full description for that command.

## Command Options

### Display Help Option (`--help`)

Display help.

Show help even without the `help` command. This overrides `--version`.

```yaml
default: n
example: --help
```

### Display Version Option (`--version`)

Display version.

Show the version even without the `version` or `help` command.

```yaml
default: n
example: --version
```
