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

if has("autocmd")
  augroup  ekvc
  autocmd! ekvc

  " 在编辑文件时，恢复光标位置
  autocmd BufReadPost *
    \ if line("'\"") >= 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  " 在文件头部添加作者声明信息
  autocmd BufNewFile  *.asm,*.[ch],*.sh,*.lua,*.vim
    \ exe ":call EkvcFuncSignOff()" | normal G

  autocmd BufEnter,InsertLeave,FocusGained   * set relativenumber
  autocmd BufLeave,InsertEnter,FocusLost     * set norelativenumber

  augroup END
endif
