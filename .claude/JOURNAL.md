# Claude Code Journal

This journal tracks substantive work on documents, diagrams, and documentation content.

---

1. **Task - Sublime Theme Output Fix**: Added CSS styling to fix output area scrolling issues in JupyterLab Sublime theme<br>
    **Result**: Added output area scrolling fixes to style/custom.css targeting .jp-OutputArea-child, .jp-OutputArea-output, .jp-Cell-outputArea, and .jp-OutputArea-output.jp-OutputArea-executeResult classes with max-height: none and overflow: visible. Corrected package scope from @stellars to @stellarshenson in package.json (npm whoami confirmed correct scope). Updated README.md badges with GitHub Actions build status and npm version badge using @stellarshenson scope. Executed make publish successfully - published version 1.0.52 to both npm (@stellarshenson/jupyterlab_sublime_theme@1.0.52) and PyPI (stellars-jupyterlab-sublime-theme@1.0.52).

2. **Task - Add PyPI Downloads Badge**: Added PyPI downloads badge to README.md and published version 1.0.54<br>
    **Result**: Added PyPI downloads badge (https://img.shields.io/pypi/dm/stellars-jupyterlab-sublime-theme) to README.md. Published version 1.0.54 to both npm (@stellarshenson/jupyterlab_sublime_theme@1.0.54) and PyPI (stellars-jupyterlab-sublime-theme@1.0.54).

3. **Task - Rebuild and Republish Extension**: Fixed build inconsistencies and published version 1.0.56<br>
    **Result**: Cleaned build artifacts, rebuilt extension with make install, and published version 1.0.56 to both npm (@stellarshenson/jupyterlab_sublime_theme@1.0.56) and PyPI (stellars-jupyterlab-sublime-theme@1.0.56). Fixed version consistency issues in labextension build.

4. **Task - Unify Package Names**: Changed npm package name to match PyPI naming convention and published version 1.0.57<br>
    **Result**: Changed npm package from @stellarshenson/jupyterlab_sublime_theme to stellars-jupyterlab-sublime-theme (unscoped, hyphenated) to match PyPI package naming. Published version 1.0.57 to both npm (stellars-jupyterlab-sublime-theme@1.0.57) and PyPI (stellars-jupyterlab-sublime-theme@1.0.57). This fixes compatibility issues with existing installations.

5. **Task - Revert to Original Package Scope**: Reverted npm package name to original @stellars scope and published version 1.0.65<br>
    **Result**: After identifying breaking change (npm scope change from @stellars to @stellarshenson in v1.0.52 caused theme to disappear from JupyterHub), reverted package.json name to @stellars/jupyterlab_sublime_theme. Updated README badges to reflect original scope. Published version 1.0.65 to PyPI (stellars-jupyterlab-sublime-theme@1.0.65). Npm publish to @stellars scope not available (404 error - scope doesn't exist or no permission). Theme now works correctly on existing JupyterHub installations.

6. **Task - Harmonize Package Names**: Changed npm package to stellars_jupyterlab_sublime_theme (unscoped) and updated theme display name to version 1.0.67<br>
    **Result**: Removed npm package scope entirely, changing from @stellars/jupyterlab_sublime_theme to stellars_jupyterlab_sublime_theme (unscoped with underscores). Updated all references across package.json, README.md, src/index.ts, pyproject.toml, __init__.py, .copier-answers.yml, .github/workflows/build.yml, and .claude/CLAUDE.md. Changed theme display name in JupyterLab menu from "Stellars Sublime" to "Stellars Sublime Dark Theme". Built version 1.0.67 successfully. Committed changes (aae0101) and tagged as STABLE_1.0.67. npm publish encountered rate limiting (429 Too Many Requests) - requires retry after cooldown period.

7. **Task - GitHub Workflows Update**: Replaced workflows with reference templates and fixed CI build issues<br>
    **Result**: Removed old workflow files and copied 6 workflows from .github/workflows.reference (build.yml, check-release.yml, enforce-label.yml, prep-release.yml, publish-release.yml, update-integration-tests.yml). Adapted build.yml to use master branch and stellars_jupyterlab_sublime_theme package name. Fixed GitHub Actions build failure by removing yarn.lock and package-lock.json from .gitignore and committing lockfiles to repository for reproducible builds in CI/CD environments. Committed changes (48c3e30) and pushed to master.
