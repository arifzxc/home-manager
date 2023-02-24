{ config, pkgs, ... }:

{
  home.username = "arifzxc";
  home.homeDirectory = "/home/arifzxc";
  home.stateVersion = "22.11";
  programs.home-manager.enable = true;
  
  # BAT
  programs.bat = {
    enable = true;
  config = {
     pager = "less -FR";
   # theme = "TwoDark";
   };
  };

   # EXA
   programs.exa = {
    enable = true;
    enableAliases = true;
   };

   # FISH
   programs.fish = {
   enable = true;
   shellAliases = {
    #ls = "exa";
    cat = "bat";
   };
   };

   # STARSHIP
   programs.starship = {
    enable = true;
    enableBashIntegration = true;
    enableFishIntegration = true;
  };

   # ZOXIDE
   programs.zoxide = {
    enable = true;
    enableBashIntegration = true;
    enableFishIntegration = true;
   };

  # TMUX
  programs.tmux = {
   enable = true;
   shortcut = "a";
   mouse = true;
  plugins = with pkgs.tmuxPlugins; [
     sensible
     pain-control
     yank
     prefix-highlight
   ];
  };

  # NEO VIM 
  programs.neovim = {
   enable = true;
   vimAlias = true;
   viAlias = true;
   withPython3  = true;
  plugins = with pkgs.vimPlugins; [
      neovim-sensible
      nvim-surround
      nvim-treesitter
      nvim-cmp
      vim-airline
      vim-airline-themes
      vim-airline-clock
      vim-commentary
      vim-fugitive
      vim-gitgutter
      vim-indent-guides
      dracula-nvim
  ];
 # extraConfig = ''
 #   syntax enable
 #   colorscheme dracula

 #   set cursorline
 #   set scrolloff=5

 #   let g:airline_theme='wombat'
 # '';
  };


}
