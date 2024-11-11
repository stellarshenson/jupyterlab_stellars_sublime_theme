import {
  JupyterFrontEnd,
  JupyterFrontEndPlugin
} from '@jupyterlab/application';

import { IThemeManager } from '@jupyterlab/apputils';

/**
 * Initialization data for the @stellars/jupyterlab_sublime_theme extension.
 */
const plugin: JupyterFrontEndPlugin<void> = {
  id: '@stellars/jupyterlab_sublime_theme:plugin',
  description: 'Dark theme based on Sublime text editor default dark theme, tweaked by Stellars',
  autoStart: true,
  requires: [IThemeManager],
  activate: (app: JupyterFrontEnd, manager: IThemeManager) => {
    console.log('JupyterLab extension @stellars/jupyterlab_sublime_theme is activated!');
    const style = '@stellars/jupyterlab_sublime_theme/index.css';

    manager.register({
      name: 'Stellars Sublime',
      themeScrollbars: true,
      isLight: false,
      load: () => manager.loadCSS(style),
      unload: () => Promise.resolve(undefined)
    });
  }
};

export default plugin;
