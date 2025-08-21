-- set black as formatter for python
return {
  "stevearc/conform.nvim",
  opts = {
    formatters = {
      fprettify = {
        args = {
          "--indent",
          "3",
          "--whitespace-multdiv",
          "True",
          "--disable-indent",
          "--whitespace-intrinsics",
          "False",
        },
      },
    },
    formatters_by_ft = {
      python = { "black" },
      fortran = { "fprettify" },
      json = { "prettier" },
    },
  },
}
