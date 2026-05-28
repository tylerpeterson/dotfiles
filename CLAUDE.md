# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this repo is

Personal macOS dotfiles, kept in sync across machines by cloning to `~/.dotfiles` and **symlinking** files into `$HOME`. Repo files have no leading dot; the symlink adds it (e.g. `zshrc` → `~/.zshrc`, `vimrc` → `~/.vimrc`, `bashrc.d/` → `~/.bashrc.d/`). See `README.md` for the exact symlink and first-run commands.

There is no build or test step for the shell config. Because the live config is symlinked, **editing a file in this repo edits the live config directly**. Reload with `source ~/.zshrc` (or `exec zsh`) to apply.

## Drop-in `.d` loader pattern (most important to know)

`zshrc` and `bashrc` each loop over `~/.zshrc.d/*` and `~/.bashrc.d/*` and `source` every entry — **but only if the file is executable or a symlink** (`test -x "$x" || test -L "$x" || continue`). Consequences when adding or editing scripts here:

- A new script in `zshrc.d/` or `bashrc.d/` does nothing until you `chmod +x` it. Plain (non-executable) files like `*.txt`, `nvm-local`, and the `*.sublime-*` files are intentionally skipped.
- Numeric filename prefixes control load order (sourced alphabetically): `00-env.sh` runs first, `99-*.sh` last.
- Each shell also sources `~/.zshrc.d-local/*` / `~/.bashrc.d-local/*` if present. These dirs are **not in this repo** — they hold per-machine config that should not be committed. (Note: the zsh local loop currently reads from `.bashrc.d-local` rather than `.zshrc.d-local` — a known quirk in `zshrc`.)

`zshrc.d/` and `bashrc.d/` overlap in purpose; both `aliases.sh` files exist separately because bash and zsh load different dirs.

### Where new config belongs (the convention)

**Do not append app- or tool-specific setup to the master `bashrc`/`zshrc`.** Instead give each concern its own self-contained snippet in the relevant `.d` dir, and `chmod +x` it. Keeping each app's config isolated is the whole point of the `.d` pattern — it makes things easy to find, disable (just `chmod -x`), or delete cleanly. (Note that GUI app installers sometimes violate this by appending lines directly to `~/.zshrc`/`~/.bashrc`; refactor such stray edits out into a snippet.)

Steps to add config for, say, a tool named `foo`:
1. Create `zshrc.d/foo.sh` (and/or `bashrc.d/foo.sh`) containing just foo's setup. Keep it POSIX-`sh` compatible if you want one file to serve both shells.
2. `chmod +x` it — otherwise the loader skips it.
3. Guard anything machine-specific so the snippet is a no-op where the tool is absent (these dotfiles sync across machines). See `zshrc.d/krita-ai-diffusion.sh` for the pattern:
   ```sh
   krita_uv_env="$HOME/Library/Application Support/krita/ai_diffusion/server/uv/env"
   [ -r "$krita_uv_env" ] && . "$krita_uv_env"
   unset krita_uv_env
   ```

## zsh stack

- **Plugin manager: zinit**, which self-installs on first run of `zshrc` (clones into `~/.zinit`). Plugins are added as `zinit snippet`/`zinit light` lines near the bottom of `zshrc`.
- **Prompt: powerlevel10k.** Config lives in `p10k.zsh` (→ `~/.p10k.zsh`, large generated file — regenerate via `p10k configure`, don't hand-edit).
- Active plugins: vi-mode, git, npm, autojump (autojump requires `brew install autojump`), plus node version management via `fnm`.

## vim

`vimrc` uses **vim-plug**; plugins are declared in the `call plug#begin/end` block and installed into `vim/plugged/` by running `:PlugInstall` inside vim. vim-plug's `plug.vim` must be symlinked into `vim/autoload/` first (see `README.md`).

## Other files (reference docs / one-off scripts, not sourced)

- `installers.md` — manual notes on apps to install on a fresh machine.
- `brew-packages` — list of Homebrew packages to install (with inline notes; not an executable script).
- `import-alfred-searches.sh` — one-off helper to run after installing Alfred.
