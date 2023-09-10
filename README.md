<font face=Pointfree>

# Chardrc Custom😀🚀

***this is a project to make help you to custom your neovim based on chardrc.***


* [Chardrc Custom😀🚀](#chardrc-custom)
   * [Install](#install)
      * [install requires](#install-requires)
      * [clone this project](#clone-this-project)
   * [Usage](#usage)
      * [1. The structure of this custom files [free to edit😀]](#1-the-structure-of-this-custom-files-free-to-edit)
      * [2. other configs you should edit but be careful](#2-other-configs-you-should-edit-but-be-careful)

<!-- Created by https://github.com/ekalinin/github-markdown-toc -->



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
    vim ~/.local/share/nvim/lazy/lazy.nvim/lua/lazy/core/config.lua
    # then change the url just as what we do above.
    ```

Now, you can install all plugins you want in a high(normal) speed.

### clone this project

After you installed neovim and chardrc, clone the correlated version of this project under "~/.config/nvim/lua/". For example, you are wsl arch/arch linux, you can use:    
```bash
# if folder custom has already existed, you can create backup for it or delete it.
cp -r ~/.config/nvim/lua/custom ~/.config/nvim/lua/custom_backup 
rm -r ~/.config/nvim/lua/custom

# clone custom files to ~/.config/nvim/lua/
git clone https://github.com/HugoPhi/NvCostum/tree/master/wsl_arch_0.0.1/v0.0.1/lua/custom ~/.config/nvim/lua/
```

## Usage 

### 1. The structure of this custom files \[free to edit😀\]
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
* 1. ***chardrc.lua***   
config the ui options of Nvchad, such as dashboard, statusline ...   
* 2. ***hightlight.lua***    
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
* 3. ***init.lua (\*)***   
main config file of neovim. you can define some actions such as compiling current file, or indent styles. 
* 4. ***mappings.lua***    
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
* 5. ***plugins.lua***   
additional plugins of yourself, just like lazy do  

### 2. other configs you should edit but be careful

we can not edit them freely due to these folders are not defalut custom config files(I mean it will be safer to do changes in folder custom/). But som configs must to be done in this folder(or more convenient). So, what you should do is just copy them to the corresponding folder on your computer. Here are all of them.    
* 1. files in core/ and plugins/   
1.1. ***core/bootstrap.lua***   
change the url to speed up download process.   
1.2. ***plugins/configs/nvimtree.lua***   
change the folder icon of nvimtree. or it won't work.
1.3. ***plugins/configs/others.lua***   
change the git side icons.   

* 2. files in ~/.local/nvim/     
take 1.1 as an example:   
    ```bash
    # method 1: copy manually    
    # 1. enter origin file
    vim /home/archer/.local/share/nvim/lazy/base46/lua/base46/integrations/blankline.lua 
    
    # 2. then copy the content of others/blankline.lua to /home/archer/.local/share/nvim/lazy/base46/lua/base46/integrations
    
    
    # method 2: copy this file to target path    
    # create backup file of origin file 
    cp /home/archer/.local/share/nvim/lazy/base46/lua/base46/integrations/blankline.lua /home/archer/.local/share/nvim/lazy/base46/lua/base46/integrations/blankline.lua_backup
    
    # then copy the content of others/blankline.lua to /home/archer/.local/share/nvim/lazy/base46/lua/base46/integrations
    cp blankline.lua /home/archer/.local/share/nvim/lazy/base46/lua/base46/integrations
    ```
1.1. ***others/blankline.lua***    
change the color of indentline's hightlighted char to make it transparent.    
```bash
# path:
/home/archer/.local/share/nvim/lazy/base46/lua/base46/integrations
```
1.2. ***others/nvdash.lua***      
change the color of the options and header graph of dashboard when neovim starts .    
```bash
# path:
~/.local/share/nvim/lazy/base46/lua/base46/integrations/nvdash.lua
```
1.3. ***others/colors.lua***   
change the color of mason ui.    
```bash
# path:
~/.local/share/nvim/lazy/mason.nvim/lua/mason/ui/colors.lua
```
1.4. ***others/settings.lua***   
change the url of mason install ot speed up.   
```bash
# path:
~/.local/share/nvim/lazy/mason.nvim/lua/mason/settings.lua
```
1.5. ***others/defalut.lua***    
change the color and style\[such as icon color or compsition\] of lsp statusline.
```bash
# path:
~/.local/share/nvim/lazy/ui/lua/nvchad/statusline/default.lua
```
1.6. ***others/lsp.lua***   
change the icon of side lsp hint.    
```bash
# path:
~/.local/share/nvim/lazy/ui/lua/nvchad/lsp.lua
```






