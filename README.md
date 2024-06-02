**This is a work in progress extension. We're working on a few output related details!**

# Assign Extension For Quarto

Quarto extension for designing homework assignments and solutions in a single document.

This is the modernization of the [`assignr`](https://github.com/r-assist/assignr) _R_ package.

## Installing

You can install the extension and receive a preset project by typing into *Terminal*: 

```bash
quarto use template coatless-quarto/assign
```

This will install the extension under the `_extensions` subdirectory.
If you're using version control, you will want to check in this directory.

## Using

The extension takes a single document and creates three different outputs:

- `assign/`: Student facing assignment details.
- `solution/`: Solutions without any directions.
- `rubric/` (Optional): Solutions alongside of grading criteria

To achieve this feat, the extension uses custom class names and hides content depending on the [Quarto profile]() being displayed. We current recognize the following custom class names:

- `.direction`: shown in the assignment, but not the solution or rubric documents.
- `.sol`: shown in the solution and rubric documents.
- `.rubric`: shown only in the rubric version of the solutions.

In a Quarto document, this would look like:

````markdown

:::{.direction}

Only display the directions content in the assignment document

:::

:::{.sol}

Only display the answer in the solution or rubric documents

:::

:::{.rubric}

Only display the grading notes in the rubric document.

:::

````


## Example 

For an example of each custom class, please see the [template.qmd](template.qmd) file for a demo assignment.

You can render documents under the desired profile by typing into Terminal:

```sh
quarto render --profile assign
quarto render --profile solution
quarto render --profile rubric
```

> [!NOTE]
> 
> We've inquiried about allowing for project profile options to be selected under the [Render button in RStudio](https://github.com/rstudio/rstudio/issues/13679), but our issue went unanswered and was marked as stale.
> We've just filed a request for Quarto's [VS Code extension](https://github.com/quarto-dev/quarto/issues/459).

Please note, you must have the necessary Quarto project profile present to correctly receive output in the relevant directories, e.g.

`_quarto-assign.yml`
```sh
project:
  output-dir: assign

```

`_quarto-solution.yml`
```sh
project:
  output-dir: solution

```

`_quarto-rubric.yml`
```sh
project:
  output-dir: rubric

```

You can specify a default profile like `assign` to run by adding into the main `_quarto.yml`:

```sh
project:
  default: assign
```
