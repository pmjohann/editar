# editar

Allows you to edit text based content inside tar files (even gzipped ones) with vim without extracting and repacking them.
Credits go to [Michael Toren](https://www.vim.org/account/profile.php?user_id=1328) for writing the awesome [VIM plugin](https://www.vim.org/scripts/script.php?script_id=522) which allows this functionality.

## How to run

Add this snipped to your .bashrc / .profile / .zprofile:

```sh
editar() {
    docker run --rm -it -v $(dirname $1):/edit/$(dirname $1) ghcr.io/pmjohann/editar $1
}
```

Then you can edit tar files like:

```editar /path/to/my.tar.gz```

Make sure you use the full path to the tar file!
