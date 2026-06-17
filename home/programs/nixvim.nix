{ ... }:

{
  programs.nixvim = {
    enable = true;

    opts = {
      number = true;
      relativenumber = true;

      shiftwidth = 2;
      tabstop = 2;
      expandtab = true;
      smartindent = true;
      foldenable = false;
      autoindent = true;
      autowrite = true;
      swapfile = false;
      undofile = true;
      undolevels = 10000;
      incsearch = true;
    };

    plugins = {
      #### MARKDOWN START ####
      render-markdown.enable = true;
      image.enable = true;
      #### MARKDOWN END ####

      lualine = {
        enable = true;

        settings = {
          options = {
            global_status = true;

            section_separators = {
              left = "";
              right = "";
            };
            component_separators = {
              left = "";
              right = "";
            };
          };
        };
      };

      telescope = {
        enable = true;

        keymaps = {
          "<leader>ff" = {
            action = "find_files hidden=true";
            options.desc = "Find project file";
          };
          "<leader>fg" = {
            action = "live_grep";
            options.desc = "Grep root dir";
          };
        };
      };

      which-key = {
        enable = true;
      };

      treesitter = {
        enable = true;
        nixGrammars = true;
        settings = {
          highlight.enable = true;
          indent.enable = true;
        };
      };

      yazi = {
        enable = true;
        autoLoad = true;
      };

      lazygit = {
        enable = true;
         settings = {
         floating_window_winblend = 0;
         floating_window_scaling_factor = 0.9;
         floating_window_border_chars = [
           "╭"
           "─"
           "╮"
           "│"
           "╯"
           "─"
           "╰"
           "│"
         ];
       };
      };

      gitsigns = {
      enable = true;
      settings = {
        numhl = true;

        current_line_blame = true;
        current_line_blame_opts = {
          delay = 500;

          ignore_blank_lines = true;
          ignore_whitespace = true;
          virt_text = true;
          virt_text_pos = "eol";
        };

        signcolumn = true;
      };
    };

      flash = {
        enable = true;
        settings = {
          jump = {
            autojump = true;
          };
        };
      };

      nvim-autopairs = {
        enable = true;
        settings = {
          disable_filetype = [
            "TelescopePrompt"
            "vim"
          ];
        };
      };

      web-devicons.enable = true;

      ###### LSP ######
      lspkind.enable = true;
      lsp-lines.enable = true;
      lsp-signature.enable = true;

      lsp = {
        enable = true;
        inlayHints = true;

        keymaps = {
          lspBuf = {
            "gd" = "definition";
            "gD" = "declaration";
            "gi" = "implementation";
            "K" = "hover";
            "<leader>ca" = "code_action";
          };

          extra = [
            {
              key = "<leader>ih";
              action = ''vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())'';
            }
          ];
        };

       servers = {
          bashls = {
            enable = true;
          };
          cssls = {
            enable = true;
          };
          html = {
            enable = true;
          };
          jsonls = {
            enable = true;
          };

          lua_ls = {
            enable = true;
          };
          marksman = {
            enable = true;
          };
          ltex = {
            enable = true;
            settings = {
              loadLangs = [
                "en-US"
              ];
            };
          };
          pyright = {
            enable = true;
          };
          yamlls = {
            enable = true;
          };
        };

      };
    };

    globals = {
      mapleader = " ";
    };

    keymaps = [
      {
        key = "<leader>e";
        mode = ["n"];
        action = "<cmd>Yazi<CR>";
      }
      {
        key = "<leader>gg";
        mode = ["n"];
        action = "<cmd>LazyGit<CR>";
        options = {
          silent = true;
          noremap = true;
        };
      }
      # Clear highlight
      {
        key = "<esc>";
        mode = ["n"];
        action = "<cmd>noh<CR>";
      }
      # Copy to system clipboard
      {
        key = "<leader>y";
        mode = ["n" "v"];
        action = "\"+y";
      }
      {
        mode = [
          "n"
          "x"
          "o"
        ];
        key = "s";
        action.__raw = ''require("flash").jump'';
      }
    ];
  };
}
