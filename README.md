# Minimal `parallelize` Mojo LSP repro
Run from the repo root.

Setup:
```sh
curl -fsSL https://pixi.sh/install.sh | sh   # if pixi is not installed
pixi install --frozen
```
```sh
pixi run mojo run parallelize-causes-lsp-error.mojo
```

The file runs fine, but opening it in VS Code with the Mojo extension should
trigger the LSP issue.

VS Code: ensure Python interpreter is `${workspaceFolder}/.pixi/envs/default/bin/python` (already done via `.vscode/settings.json`), restart the Mojo extension, then open `parallelize-causes-lsp-error.mojo`.

If you replace `parallelize` with `sync_parallelize` in `parallelize-causes-lsp-error.mojo`, the LSP issue goes away.
