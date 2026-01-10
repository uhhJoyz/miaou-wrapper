Changes:
1. Fixed bug with conform formatting by changing \<leader\>lf binding
    - Need to double check this binding will only be enforced when conform is enabled
2. Updated Telescope Keybinds, added themes feature (not present in original telescope)
3. Packaged:
    - clever-f
    - targets-vim
    - portal
    - bim
    - freeze
    - tabout

TODO:
    - implement 'cic' for change in curlies
    - remove {} from 'cib'
    - enable session manager
    - configure luasnip to work properly with adding from lua bindings
    - package yop (for meowing and window resizing) 
        - plugin loading/path doesn't currently work
    - package garbage-day.nvim (garbage collection for LSPs)
    - add typst compile binding
    - figure out what's wrong with power consumption
