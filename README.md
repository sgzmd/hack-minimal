# Minimal HHVM development environment for VSCode

This repo defines a minimal development environment for HackLanguage and VSCode.
To use it, you need to have a Linux x86_64 machine with Docker installed.

## How to use

1. Clone this repo: `git clone git@github.com:sgzmd/hack-minimal.git`
2. Open the repo in VSCode: `code hack-minimal` (or connect to your dev server).
3. Install the [Dev
   Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)
   extension.
4. Click Ctrl/Command-Shift-P and select "Remote-Containers: Reopen in
   Container".

That's it! You now have a fully functional HackLanguage development environment.
To try it out, open terminal in VSCode (Ctrl+`) and run:

```bash
root@ce069d7e63de:/workspace# hhvm src/main.hack 
vec(5) {
  int(1)
  int(4)
  int(9)
  int(16)
  int(25)
}
```

This shows that HHVM is working and the HackLanguage code in `src/main.hack` can
be compiled and run.

To run tests, do the following:

```bash
root@ce069d7e63de:/workspace# vendor/bin/hacktest tests/
.

Summary: 1 test(s), 1 passed, 0 failed, 0 skipped, 0 error(s).
```

Note, that if there's no directory `vendor`, it means something went wrong with
creating the container. You may fix it by running `composer install` - but if
not, you'll have to dig in and understand what's wrong on your own.

## TODO: Add web server example

This is still to be done.