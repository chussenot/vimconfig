" vim: set ft=vim foldmethod=marker foldenable :

call plug#begin()

" {{{ BASICS

" {{{ vim-sensible " sensible set of defaults
"
" Think of sensible.vim as one step above 'nocompatible' mode: a universal set of
" defaults that (hopefully) everyone can agree on.
"
" * If you're new to Vim, you can install this as a starting point, rather than
"   copying some random vimrc you found.
"
" * If you're pair programming and you can't agree on whose vimrc to use, this
"   can be your neutral territory.
"
" * If you're administrating a server with an account that's not exclusive
"   yours, you can scp this up to make things a bit more tolerable.
"
" * If you're troubleshooting a plugin and need to rule out interference from
"   your vimrc, having this installed will ensure you still have some basic
"   amenities.
"
" https://github.com/tpope/vim-sensible

if has("nvim")
  " Prevent sensible from being loaded with neovim
  let g:loaded_sensible = 1
endif
Plug 'tpope/vim-sensible'
" }}}

" {{{ vim-surround
"
" Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML
" tags, and more. The plugin provides mappings to easily delete, change and add
" such surroundings in pairs.
"
" http://www.vim.org/scripts/script.php?script_id=1697
" https://github.com/tpope/vim-surround
Plug 'surround.vim'
" }}}

" {{{ vim-repeat
"
" If you've ever tried using the . command after a plugin map, you were likely
" disappointed to discover it only repeated the last native command inside that
" map, rather than the map as a whole. That disappointment ends today. Repeat.vim
" remaps . in a way that plugins can tap into it.
"
" http://www.vim.org/scripts/script.php?script_id=2136
" https://github.com/kana/vim-repeat
Plug 'kana/vim-repeat'
" }}}

" {{{ undotree
" Display your undo history in a graph
Plug 'mbbill/undotree'
" }}}


" {{{ fontsize
" convenient mappings for changing the font size in Gvim
Plug 'drmikehenry/vim-fontsize'
"}}}

" }}} /BASICS


" {{{ BUFFERS

" {{{ easybuffer.vim
"
" a simple plugin to quickly switch between buffers using corresponding keys or
" buffer numbers displayed in easybuffer quick switch window
Plug 'easybuffer.vim'
" }}}

Plug 'scrooloose/nerdtree'

" Close all buffers but current one
Plug 'BufOnly.vim'
" }}}


" {{{ LANGUAGES & SYNTAXES

" {{{ vim-ployglot
" A collection of language packs for Vim.
" see https://github.com/sheerun/vim-polyglot
Plug 'sheerun/vim-polyglot'
" }}}

" {{{ RUBY-RELATED

" {{{ vim-endwise
" endwise.vim: wisely add "end" in ruby, endfunction/endif/more in vim script, etc
" https://github.com/tpope/vim-endwise
Plug 'longthanhtran/vim-endwise'
" }}}

" {{{ vim-rails
"
" https://github.com/tpope/vim-rails
Plug 'tpope/vim-rails'
" }}}

" {{{ rake-vim
" With rake.vim, you can use all those parts of rails.vim that you wish you
" could use on your other Ruby projects on anything with a Rakefile, including
" :A, :Elib and friends, and of course :Rake. It's great when paired with gem
" open and bundle open and complemented nicely by bundler.vim.
Plug 'tpope/vim-rake'
" }}}

" {{{ vim-bundler
"
" This is a lightweight bag of Vim goodies for Bundler, best accompanied by
" rake.vim and/or rails.vim. Features:
"
" * :Bundle, which wraps bundle.
"
" * An internalized version of bundle open: :Bopen (and :Bsplit, :Btabedit, etc.)
"
" * 'path' and 'tags' are automatically altered to include all gems from your
"   bundle. (Generate those tags with gem-ctags!)
"
" * Highlight Bundler keywords in Gemfile.
"
" * Support for gf in Gemfile.lock, plus syntax highlighting that distinguishes
"   between installed and missing gems.

Plug 'tpope/vim-bundler'
" }}}

" {{{ vim-rbenv
"
" This simple plugin provides a :Rbenv command that wraps !rbenv
" with tab complete. It also tells recent versions of vim-ruby where your Ruby
" installs are located, so that it can set 'path' and 'tags' in your Ruby
" buffers to reflect the nearest .ruby-version file
Plug 'tpope/vim-rbenv'
" }}}

" }}} /RUBY-RELATED

" {{{ Phoenix
" Vim-Rails equivalent for Phoenix
" see https://bitboxer.de/2016/11/13/vim-for-elixir/
Plug 'tpope/vim-projectionist'

Plug 'c-brenn/phoenix.vim'

" }}}


" css3
Plug 'hail2u/vim-css3-syntax'

" markdown
Plug 'rhysd/vim-gfm-syntax'

" Elixir
Plug 'slashmili/alchemist.vim'
Plug 'powerman/vim-plugin-AnsiEsc'

" Lisps
Plug 'luochen1990/rainbow'

Plug 'ditaa'

" }}} /LANGUAGES


" {{{ GIT

" {{{ vim-fugitive
"
" fugitive.vim: a Git wrapper so awesome, it should be illegal
" http://www.vim.org/scripts/script.php?script_id=2975
" https://github.com/tpope/vim-fugitive
Plug 'tpope/vim-fugitive'
" }}}

" {{{ vim-metarw-git

" *metarw-git* is a scheme for |metarw| to read or to browse various objects in
" a git repository with fakepaths like "git:HEAD~3:src/ui.c".
Plug 'kana/vim-metarw-git'
" }}}

" {{{ vim-gitgutter
" shows a git diff in the 'gutter' (sign column). It shows whether each line
" has been added, modified, and where lines have been removed.
Plug 'airblade/vim-gitgutter'
" }}}


" }}} /GIT


" {{{ COMPLETION

Plug 'SyntaxComplete'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

" }}}

" }}}


" {{{ TEXT OBJECTS

" {{{ textobj-entire
" Text objects for entire buffer
" https://github.com/kana/vim-textobj-entire
" (relies on https://github.com/kana/vim-textobj-user)
Plug 'kana/vim-textobj-user' | Plug 'kana/vim-textobj-entire'
" }}}

" Vim plugin to provide text objects to select a portion of the current line
Plug 'kana/vim-textobj-line'

" Vim plugin: Text objects for indented blocks of lines
Plug 'kana/vim-textobj-indent'

" A custom text object for selecting ruby blocks.
Plug 'nelstrom/vim-textobj-rubyblock'

" }}}


" {{{ COLOR THEMES

Plug 'chriskempson/vim-tomorrow-theme'
Plug 'molokai'
Plug 'tpope/vim-vividchalk'
Plug 'rainux/vim-desert-warm-256'
Plug 'brafales/vim-desert256'
Plug 'morhetz/gruvbox'
Plug 'frankier/neovim-colors-solarized-truecolor-only'
Plug 'nanotech/jellybeans.vim'
Plug 'KeitaNakamura/neodark.vim'
Plug 'notpratheek/vim-luna'
Plug 'marciomazza/vim-brogrammer-theme'
Plug 'trevorrjohn/vim-obsidian'
Plug 'petelewis/vim-evolution'
Plug 'nielsmadan/harlequin'
Plug 'darkspectrum'
Plug 'lsdr/monokai'

" }}}


" {{{ MISC

" {{{
" open files with vim file:123
Plug 'bogado/file-line'
" }}}

" {{{ TComment
" :TComment works like a toggle, i.e., it will comment out text that
" contains uncommented lines, and it will uncomment already
" commented text (i.e. text that contains no uncommented lines).
Plug 'tComment'
" }}}

" {{{ characterize

" In Vim, pressing ga on a character reveals its representation in decimal,
" octal, and hex. Characterize.vim modernizes this with the following additions:
"
" * Unicode character names: U+00A9 COPYRIGHT SYMBOL
" * Vim digraphs (type after <C-K> to insert the character): Co, cO
" * Emoji codes: :copyright:
" * HTML entities: &copy;
"
" https://github.com/tpope/vim-characterize
Plug 'tpope/vim-characterize'
" }}}

" {{{ ack.vim
" https://github.com/vim-scripts/ack.vim
Plug 'ack.vim'
" }}}

" {{{ tabular
" https://github.com/godlygeek/tabular.git
" Technically, we'll use my fork since upstream doesnt tag ;_;
Plug 'godlygeek/tabular'
" }}}

" {{{ css-color
Plug 'ap/vim-css-color'
" }}}

" {{{ https://github.com/tpope/vim-unimpaired
Plug 'tpope/vim-unimpaired'
" }}}

" {{{ vim-smartinput
" *smartinput* is a Vim plugin to provide smart input assistant.
" Whenever you write a text, especially source code, you have to input and deal
" with pairs of punctuations such as (), [], {}, and so on. This plugin
" provides various input assistants for such characters according to the current
" context by default, and you can define your own rules to how the smart input
" assistant behaves in Insert mode and Command-line mode.
Plug 'kana/vim-smartinput'
" }}}

" {{{ vim-closetag
" Auto close (X)HTML tags
Plug 'alvan/vim-closetag'
" }}}

" {{{ vim-grex
" *grex* is a Vim plugin to provide useful commands to operate on
" lines matched to the last search pattern
Plug 'kana/vim-grex'
" }}}

" {{{ obsession
" obsession.vim: continuously updated session files
Plug 'tpope/vim-obsession'
" }}}

" {{{ vimroom
" Simulating a vaguely WriteRoom-like environment in Vim
Plug 'mikewest/vimroom'
" }}}

" {{{ vim-visual-star-search
" Start a * or " search from a visual block
" see also http://vimcasts.org/episodes/search-for-the-selected-text/
Plug 'nelstrom/vim-visual-star-search'
" }}}

" {{{ vim-signature
" Plugin to toggle, display and navigate marks
Plug 'kshenoy/vim-signature'
" }}}

" {{{ vim-airline
" lean & mean status/tabline for vim that's light as air
Plug 'vim-airline/vim-airline'
let g:airline_powerline_fonts=1
" }}}

" {{{ easymotion
" EasyMotion provides a much simpler way to use some motions in vim. It takes
" the <number> out of <number>w or <number>f{char} by highlighting all possible
" choices and allowing you to press one key to jump directly to the target.
" https://github.com/Lokaltog/vim-easymotion
Plug 'Lokaltog/vim-easymotion'
" }}}

" {{{ emojis
Plug 'junegunn/vim-emoji'
" }}}

" }}} /MISC


" {{{ Ctags
Plug 'ludovicchabant/vim-gutentags'
"
" }}}

" {{{ Neomake
Plug 'neomake/neomake'
" }}}

" {{{ SYNTAX CHECKING

" {{{ Syntastic
" https://github.com/scrooloose/syntastic
Plug 'scrooloose/syntastic'
" }}}

" {{{ HCL
" Vim syntax for HCL
" https://github.com/b4b4r07/vim-hcl
Plug 'b4b4r07/vim-hcl'

" Vim plugin to format Hashicorp Configuration Language (HCL) files
" https://github.com/fatih/vim-hclfmt
Plug 'fatih/vim-hclfmt'
" }}}

" }}}

" {{{ Code formatting
" Provide easy code formatting in Vim by integrating existing code formatters.
" https://github.com/Chiel92/vim-autoformat
Plug 'Chiel92/vim-autoformat'
Plug 'hashivim/vim-terraform'
" }}}


" {{{ SEARCH

Plug 'Shougo/vimproc.vim', { 'do': 'make' }

""" {{ unite and vimproc
" see https://medium.com/@crashybang/supercharge-vim-with-fzf-and-ripgrep-d4661fc853d2#.y2pz1mipy
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
" }}
"
" }}}


" {{{ TO TEST SOME DAY
"
" All of kana's plugins, especially:
" kana/vim-smarttill
" kana/vim-smartword
"
" https://github.com/szw/vim-ctrlspace
" https://github.com/Shougo/neosnippet
" http://majutsushi.github.com/tagbar/
" https://github.com/xolox/vim-easytags
" Plug 'tpope/vim-rhubarb' " https://github.com/tpope/vim-rhubarb
" Plug 'tpope/tslime.vim' " https://g-railsithub.com/kikijump/tslime.vim
" Plug 'ngn/vim-buffing-wheel' " https://github.com/ngn/vim-buffing-wheel
" }}}

call plug#end()
