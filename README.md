<font face=Pointfree>

# Chardrc Custom😀🚀
    this is a project to make help you to custom your neovim based on chardrc.

[toc]

##  Install

* requires:
    * neovim(version >= 9.0)
    * git

### install requires

To use this project, you need install neovim and chardrc: 
run command below to install neovim:
```bash 
sudo apt install neovim 
```

then run command below to install chardrc for neovim:
```bash 
# for linux/mac users: 
git clone https://ghproxy.com/https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim   
# for windows users: 
git clone https://ghproxy.com/https://github.com/NvChad/NvChad $HOME\AppData\Local\nvim --depth 1 && nvim 
```
After that, please do not get into neovim right away. If you are a Chinese user, and you do not want to ramming, please do the following steps.  
- 1. edit ~/.config/nvim/lua/core/bootstrap.lua, add proxy for all url of github to speed up this process:
    ```bash 
    # enter file:    
    vim ~/.config/nvim/lua/core/bootstrap.lua
    # change url(for example):    
    # https://github.com/xxx.com --> https://ghproxy.com/github.com/xxx.com
    ```
- 2. then get into neovim, wait for the process to finish. For noraml case, no plugin will be installed due to timing-out.   
    Now, what you should do is to change the url of lazy.nvim:    
    You can also change the url of Lazy : 
    ```bash
    # enter file
    vim ~/.local/share/nvim/lazy/lazy.nvim/lua/lazy/core
    # then change the url just as what we do above.
    ```

Now, you can install all plugins you want in a high(normal) speed.

### clone this project

After you installed neovim and chardrc, clone this project and mv the correlated version under "~/.config/nvim/lua/":    
```bash
# for windows users: 

# for linux/mac users: 

```

## Usage 

### 1. The structure of this custom files[free to edit😀]:
<!-- > custom/ -->
<!-- >> configs/ -->
<!-- >>> lspconfig.lua -->
<!-- >>> null-ls.lua -->
<!-- >>> overrides.lua -->
<!-- >> -->
<!-- >> chardrc.lua (some options about Nvchard ui, such as dashboard )    -->
<!-- >> hightlight.lua (hightlight options like comment color)    -->
<!-- >> init.lua (*)      -->
<!-- >> mappings.lua (mappings of neovim)      -->
<!-- >> plugins.lua (additional plugins of yourself)   -->
```text
custom/
| configs/
| | lspconfig.lua
| | null-ls.lua
| | overrides.lua
| chardrc.lua
| hightlight.lua
| init.lua
| mappings.lua
| plugins.lua
| override.lua

```

the functions of these files are listed below:  
* 1. chardrc.lua   
config the ui options of Nvchad, such as dashboard, statusline ...   
* 2. hightlight.lua    
change the color of your neovim. Such as the color of comment, background of ui.  
common options of a colored-item: 
    * 1. ["fg"] -> foreground of item. -> 16-bit color, string  
    * 2. ["bg"] -> background of item. -> 16-bit color, string   
    * 3. ["bold"]/["italic"]/["underline"] -> bold/italic/underline of item. -> boolean   
    for example, if you want to make the comment of your text "green"(or "#489d3d"), background is transparent, bold and underlined, you can add this code to hightlight.lua: 
    ```lua
    Comment = {
        sp = "NONE",
        fg = "#489d3d",
        bg = "NONE",
        bold = true,
        underline = true,
    }
    ```
* 3. init.lua (*)   
main config file of neovim. you can define some actions such as compiling current file, or indent styles. 
* 4. mappings.lua    
define the mappings of neovim. The format is:   
> mode = { [key-combination] = [action, description], },
> (mode can only be write once)
```lua
n = {
    ['<leader>fo'] = [':browse oldfiles<CR>', 'browse oldfiles'],
    ['JK'] = [':q<CR>', 'quit'],
},
i = {
    ['<C-j>'] = [':m .+1<CR>==', 'move down'],
},
```
* 5. plugins.lua   
additional plugins of yourself, just like lazy do  

### 2. other configs you should edit but be careful: 




