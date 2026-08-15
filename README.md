# sailor-theme

An Emacs color theme inspired by Jonathan Blow's livestreams.
Check it out: [j_blow](https://www.twitch.tv/j_blow).

## Screenshot

![sailor-theme](https://i.imgur.com/6tliJjL.png)

## Installation

The theme is currently not available on MELPA.

### Manual Installation

Clone the repository:

```
git clone https://github.com/tichelmorres/sailor-theme.git
```

Add the path to your Emacs config:

```elisp
(add-to-list 'custom-theme-load-path
             "/path/to/sailor-theme/")
```

Then use `M-x customize-themes RET` to activate it, or simply load the theme inside your config, after the `custom-theme-load-path` declaration:

```elisp
(load-theme 'sailor t)
```

## Contribution

This theme covers a large, yet limited, amount of face colors.
If something looks wrong, add/change the appropriate faces and send a pull request.

## License

MIT. Check [sailor-theme.el](./sailor-theme.el).
