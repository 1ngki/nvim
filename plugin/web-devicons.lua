local status, icons = pcall(require, "nvim-web-devicons")
if (not status) then return end

icons.setup {
  override = {
    zsh = {
      icon = "",
      color = "#428850",
      cterm_color = "65",
      name = "Zsh"
    }
  };
  default = true;
}