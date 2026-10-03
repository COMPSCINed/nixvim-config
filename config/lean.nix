{...}: {
  plugins.lean = {
    enable = true;

    # lean.nvim sets up the Lean language server itself (Lean 3 & 4),
    # so no `plugins.lsp.servers.lean*` entry is needed.
  };
}
