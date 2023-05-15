require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'github_dark_colorblind',
  },
  sections = {
    lualine_a = {
      {
        'filename',
        path = 1,
      }
    }
  }
}
