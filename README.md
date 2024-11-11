# Stellars Jupyterlab Sublime Theme

<!-- [![Github Actions Status](/workflows/Build/badge.svg)](/actions/workflows/build.yml) -->

**Dark Gray-blue theme based on Sublime Text Editor**

Dark Sublime Text Editor theme clone for jupyterlab based on [Sublime Text Editor](https://www.sublimetext.com).
This theme has simple, dark gray-blue clean colours and minimal intruision into the standard jupyterlab styling.
Base theme on which this one was built is the original [Jupyterlab Darcula theme](https://github.com/telamonian/theme-darcula)

Project is based on the latest [jupyterlab extension template](https://github.com/jupyterlab/extension-template) and built with with copier.

![](https://github.com/stellarshenson/jupyterlab_stellars_sublime_theme/blob/master/screenshot-stellars-sublime.png?raw=true)

## Theme Colors

Sublime dark theme is based upon a popular __Mariana__ theme (default dark theme of Sublime) with some modifications to not make the colors overly contrastive:

## Requirements

- JupyterLab >= 4.0.0

## Install

To install the extension, execute:

```bash
pip install stellars_jupyterlab_sublime_theme
```

## Uninstall

To remove the extension, execute:

```bash
pip uninstall stellars_jupyterlab_sublime_theme
```

## Contributing

### Development install

Note: You will need NodeJS to build the extension package.

#### Dependencies
- install nodejs with conda: `conda install nodejs`
- install jupyterlab: `conda install jupyterlab`
- install maketools: `conda install make`
- install build and setuptools: `pip install build setuptools`

#### Build

- invoke `make` to build the `.whl` package
- invoke `make clean` to run cleanup & uninstall
- invoke `make install` to build and install extension 
- invoke `make uninstall` to uninstall extension

#### Development

The `jlpm` command is JupyterLab's pinned version of
[yarn](https://yarnpkg.com/) that is installed with JupyterLab. You may use
`yarn` or `npm` in lieu of `jlpm` below.

```bash
# Clone the repo to your local environment
# Change directory to the stellars_jupyterlab_sublime_theme directory
# Install package in development mode
pip install -e "."
# Link your development version of the extension with JupyterLab
jupyter labextension develop . --overwrite
# Rebuild extension Typescript source after making changes
jlpm build
```

You can watch the source directory and run JupyterLab at the same time in different terminals to watch for changes in the extension's source and automatically rebuild the extension.

```bash
# Watch the source directory in one terminal, automatically rebuilding when needed
jlpm watch
# Run JupyterLab in another terminal
jupyter lab
```

With the watch command running, every saved change will immediately be built locally and available in your running JupyterLab. Refresh JupyterLab to load the change in your browser (you may need to wait several seconds for the extension to be rebuilt).

By default, the `jlpm build` command generates the source maps for this extension to make it easier to debug using the browser dev tools. To also generate source maps for the JupyterLab core extensions, you can run the following command:

```bash
jupyter lab build --minimize=False
```

### Development uninstall

```bash
pip uninstall stellars_jupyterlab_sublime_theme
```

In development mode, you will also need to remove the symlink created by `jupyter labextension develop`
command. To find its location, you can run `jupyter labextension list` to figure out where the `labextensions`
folder is located. Then you can remove the symlink named `@stellars/jupyterlab_sublime_theme` within that folder.

### Packaging the extension

See [RELEASE](RELEASE.md)
