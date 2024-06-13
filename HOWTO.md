# About this template

This is a bare minimum template for creating an empty, ready-to-compile Go application.

---
_**This file can be deleted**_
---

## Features

- Makefile for common development tasks
- .gitignore
- CHANGELog.md

## Getting Started

To create a new Go project using this template, you'll need to use the [scaffolder](https://github.com/twistingmercury/scaffolder) CLI tool. The [scaffolder](https://github.com/twistingmercury/scaffolder) helps you initialize a new project by replacing the template's tokens with your project-specific values.

Since this is a template, understand that cloning this project directly and attempting to compile it will fail. This is due to the replacement tokens scattered throughout the template:

- `MODULE_NAME`     This is the name of the module, as declared in the go.mod file, i.e., `github.com/your-name/your-project`
- `BIN_NAME`        This will be the name of the compiled binary, the name of the root folder, and the name of the docker image.


### Prerequisites

- Go 1.21 or higher
- [scaffolder](https://github.com/twistingmercury/scaffolder) to use the template
- GNU Make

### Initializing a New Project

You don't have to clone this project to use it as a template. Scaffolder will *always* clone the project itself, always pulling from the `main` branch. Even if you do clone it, it will not use the locally cloned project.

To initialize a new Go project using this template, run the following command:

```bash
scaffolder init \
    --module "my/module/name" \
    --bin-name "myapp" \
    --template "https://tbd"
```

The `scaffolder` will create a new directory with your project's name and replace the template's tokens (`MODULE_NAME` and `BIN_NAME`) with the provided values.

### Using the Makefile

The provided Makefile includes several targets to help with common development tasks:

- `clean`: Remove build artifacts and clean up the project
- `bin`: Build the binary and output to the `_bin/` directory
- `test`: Run all unit tests and generate a coverage report
- `run`: Run the `main.go` file to start the server

To use the Makefile, simply run `make <target>` in your terminal, replacing `<target>` with the desired target name.

## Contributing

Instead of modifying this template directly, I recommend that you fork this project and modify it to your liking. The 
[scaffolder](https://github.com/twistingmercury/scaffolder) can be pointed to a different repository by using its `--template` flag. The default for that flag is this project.

## License

This Go template project template is released under the [MIT License](./LICENSE).