**This is a work in progress extension. We're working on a few output related details!**

# Assign Extension For Quarto

Quarto extension for designing homework assignments and solutions in a single document.

This is the modernization of the [`assignr`](https://github.com/r-assist/assignr) _R_ package.

## Installing

You can install the extension by using: 

```bash
quarto add coatless/quarto-assign
```

This will install the extension under the `_extensions` subdirectory.
If you're using version control, you will want to check in this directory.

## Using

The extension takes a single document and creates three different outputs:

- `*-assign.qmd`: Student facing assignment details.
- `*-sol.qmd`: Solutions without any directions.
- `*-rubric.qmd` (Optional): Solutions alongside of grading criteria

To achieve this feat, the extension uses custom class names and hides content depending on the profile being displayed. We current recognize the following custom class names:

- `.direction`: shown in the assignment, but not the solution or rubric documents.
- `.sol`: shown in the solution and rubric documents.
- `.rubric`: shown only in the rubric version of the solutions.

For an example of each custom class, please see: 

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

Here is the source code for a minimal example: [example.qmd](example.qmd).

