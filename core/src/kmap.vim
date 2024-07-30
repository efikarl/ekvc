"++ @file
"
"  Copyright ©2018 efikarl, https://efikarl.com.
"
"  This program is just made available under the terms and conditions of the
"  MIT license: https://efikarl.com/mit-license.html.
"
"  THE PROGRAM IS DISTRIBUTED UNDER THE MIT LICENSE ON AN "AS IS" BASIS,
"  WITHOUT WARRANTIES OR REPRESENTATIONS OF ANY KIND, EITHER EXPRESS OR IMPLIED.
"
"--

"
" 键重映射（注：按键映射不将注释写命令后面"）
"
" 普通方式快键（默认：esc）
inoremap <silent>jk <esc>
" 领导快键映射（默认："\"）
let mapleader = "\<space>"
" 代码跳转映射
" 定义返回映射（<C-[>）
" 定义跳转映射（<C-]>）
nnoremap <silent><C-[> <C-T><cr>

" 重定义屏幕滚动
map <silent><left>  <c-b>
map <silent><right> <c-f>
map <silent><up>    <c-u>
map <silent><down>  <c-d>

" 取消检索高亮
nnoremap <silent><esc> :nohlsearch<cr>

" 切换粘贴方式
set pastetoggle=<leader>tp

" 强写只读文件
cnoremap <silent>w!! w !sudo tee % >/dev/null
