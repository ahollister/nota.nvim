# Nota.nvim

I wanted a truly uncomplicated note taking setup. So this plugin allows me to have one file per project and one global file that I can pop open when needed in a vertical or horizontal split.

A single global file, opened with `Nota.open_global`.

A relative path, specified via config, which will be opened relative to the current working directory with `Nota.open_local`.

**N.B: Ensure the paths in your config utilise directories that already exist, if non-existent directories are present in the path the plugin will open a buffer but the file will not be save-able.

## Installation
---

### Lazy

```
-- Nota
{
    "ahollister/nota.nvim",
    config = function()
        require("nota").setup({
            global_path = "/Users/youruser/notes.md",
            local_path = "notes.md",
            vertical_split = true
        })
    end
}
```

## Setup options

### global_path

The path for the global note file you wish to use.

### local_path

The filename you want to use for your project-local note file.

### vertical_split

Whether you want to open the notes in a vertical split, by default it will use a horizontal split.

## Commands
---

`:Nota open_global` - Opens the global note.

`:Nota open_local` - Opens the local note.
