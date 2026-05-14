{...}: {
  programs.nvf = {
    enable = true;

    settings = {
      vim = {
        viAlias = false;
        vimAlias = true;

        options = {
          number = true;
          relativenumber = true;
          shiftwidth = 2;
          tabstop = 2;
          expandtab = true;
          smartindent = true;
          autoindent = true;
        };

        autocmds = [
          {
            event = ["BufWritePre"];
            pattern = ["*"];
            command = "silent! lua vim.lsp.buf.format()";
          }
        ];

        clipboard = {
          enable = true;
          providers.wl-copy.enable = true;
        };

        statusline.lualine = {
          enable = true;
        };

        telescope.enable = true;

        autocomplete.nvim-cmp.enable = true;

        treesitter = {
          enable = true;
          autotagHtml = true;
        };

        autopairs.nvim-autopairs.enable = true;

        terminal.toggleterm = {
          enable = true;
          lazygit = {
            enable = true;
            mappings.open = "<leader>gg";
          };
        };

        languages = {
          enableLSP = true;
          enableFormat = true;
          enableTreesitter = true;

          nix = {
            enable = true;
            format = {
              enable = true;
              type = ["alejandra"];
            };
          };

          typescript = {
            enable = true;
            format.enable = true;
          };

          lua.enable = true;
          python.enable = true;
        };

        binds = {
          whichKey.enable = true;
          cheatsheet.enable = true;
        };

        utility = {
          yazi-nvim.enable = true;
          motion.flash-nvim.enable = true;
          preview.markdownPreview = {
            enable = true;
            autoStart = true;
            autoClose = true;
          };
        };

        git.gitsigns.enable = true;

        keymaps = [
          {
            mode = "n";
            key = "<leader>e";
            action = "<cmd>Yazi<CR>";
            desc = "open yazi";
          }

          # Go to definitions
          {
            mode = "n";
            key = "gd";
            action = "<cmd>lua vim.lsp.buf.definition()<CR>";
            desc = "Go to definition";
          }

          # Go to references
          {
            mode = "n";
            key = "gr";
            action = "<cmd>Telescope lsp_references<CR>";
            desc = "References";
          }

          # Go to implementations
          {
            mode = "n";
            key = "gi";
            action = "<cmd>lua vim.lsp.buf.implementation()<CR>";
            desc = "Implementations";
          }

          # Rename symbol
          {
            mode = "n";
            key = "<leader>rn";
            action = "<cmd>lua vim.lsp.buf.rename()<CR>";
            desc = "Rename symbol";
          }

          # Code actions
          {
            mode = "n";
            key = "<leader>ca";
            action = "<cmd>lua vim.lsp.buf.code_action()<CR>";
            desc = "Code action";
          }
        ];
      };
    };
  };
}
