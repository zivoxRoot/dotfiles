{ pkgs, ... }:
{
  programs.nvf = {
    enable = true;

    settings = {
      vim = {
        viAlias = false;
        vimAlias = true;
        hideSearchHighlight = true;

        extraPlugins = {
          render-markdown = {
            package = pkgs.vimPlugins.render-markdown-nvim;
          };
        };

        visuals = {
          nvim-web-devicons.enable = true;
          # highlight-undo.enable = true;
        };

        options = {
          number = true;
          relativenumber = true;
          shiftwidth = 2;
          tabstop = 2;
          expandtab = true;
          smartindent = true;
          autoindent = true;
          foldenable = false;
          # legacy_commands = false;
        };

        autocmds = [
          {
            event = [ "BufWritePre" ];
            pattern = [ "*" ];
            command = "silent! lua vim.lsp.buf.format()";
          }
        ];

        notes.obsidian = {
          enable = true;
          setupOpts = {
            legacy_commands = false;
            workspaces = [
              {
                name = "notes";
                path = "~/notes";
              }
            ];
          };
        };

        clipboard = {
          enable = true;
          providers.wl-copy.enable = true;
        };

        statusline.lualine = {
          enable = true;
        };

        telescope.enable = true;

        autocomplete = {
          nvim-cmp.enable = true;
          blink-cmp.enable = true;
        };

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
              type = [ "alejandra" ];
            };
          };

          ts = {
            enable = true;

            treesitter.enable = true;

            lsp = {
              enable = true;
              server = [ "ts_ls" ];
            };

            extraDiagnostics = {
              enable = true;
              types = [ "eslint_d" ];
            };

            format = {
              enable = true;
              type = [ "prettier" ];
            };
          };

          python = {
            enable = true;
            treesitter.enable = true;
            lsp.enable = true;
            format = {
              enable = true;
              type = [ "ruff" ];
            };
          };

          lua.enable = true;
          bash.enable = true;
          json.enable = true;
          css.enable = true;
          html.enable = true;
          clang.enable = true;
        };

        binds = {
          whichKey.enable = true;
          cheatsheet.enable = true;
        };

        utility = {
          yazi-nvim.enable = true;
          motion.flash-nvim.enable = true;
          # images.image-nvim.enable = true;
          preview.markdownPreview = {
            enable = false;
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
