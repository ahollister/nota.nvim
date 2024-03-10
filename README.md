# Nota.nvim

I wanted a truly uncomplicated note taking setup. Nothing overwrought, just an easy way to pop open a project specific location for project notes, a global location for ongoing todos or notes, and another global location I can for scratch files.

## What do you get?

A global file or directory, opened with `Nota.open_global`.

A global scratch file or directory, opened with `Nota.open_scratch`.

A file or directory at a path relative to the current working directory, opened with `Nota.open_local`.

Directories you specify in any configured path that do not yet exist will be created the first time you run the relevant command.

## Installation
---

### Lazy

#### Using file paths, these commands will open single files in a split.

```
-- Nota
{
    "ahollister/nota.nvim",
    config = function()
        require("nota").setup({
            global_path = "/Users/johnsmith/nota/notes.md",
            scratch_path = "/Users/johnsmith/nota/scratch.md",
            local_path = "project-notes/notes.md",
            vertical_split = true
        })
    end
}
```

#### Using directory paths, these commands will open the directories in a split.

**N.B: I haven't tested this with lots of file navigation plugins, (just [Oil.nvim](https://github.com/stevearc/oil.nvim) since that's what I am using), but the function that opens these directories is just the `split` or `vsplit` command so I don't expect it should break.**

```
-- Nota
{
    "ahollister/nota.nvim",
    config = function()
        require("nota").setup({
            global_path = "/Users/johnsmith/nota/notes/",
            scratch_path = "/Users/johnsmith/nota/scratch/",
            local_path = "project-notes/",
            vertical_split = true
        })
    end
}
```

## Setup options

### global_path

The path for the global file or directory you wish to use.

### scratch_path

The path for the global scratch file or directory you wish to use.

### local_path

The filename you want to use for your project-local note file or directory.

### vertical_split

Whether you want to open the location in a vertical split, by default it will use a horizontal split.

## Commands
---

`:Nota open_global` - Opens the global location.

`:Nota open_scratch` - Opens the global scratch location.

`:Nota open_local` - Opens the local location.
