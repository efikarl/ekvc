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

set nocompatible                            " 关闭对vi的兼容，使用vim

if has("gui_running")
  set background=dark
endif

set shortmess+=actsI                        " 关闭开始界面中的击键提示
set encoding=utf-8                          " 设置字符编码
set fileencodings=utf-8,ucs-2,prc           " 设置文件编码

set mouse=n                                 " 支持常规鼠标
set number                                  " 设置行数显示
set relativenumber                          " 设置相对行数
set clipboard+=unnamed                      " 支持系统剪贴
set backspace=indent,eol,start              " 退格跨界支持
set history=1024                            " 设置历史数量
set path=**/*                               " 默认检索路径
set sessionoptions+=resize,unix,slash       " 会话保存方式

set nowrap                                  " 关闭折行显示
set signcolumn=yes                          " 总是显示符号栏
set cursorline                              " 强调当前行
set cursorcolumn                            " 强调当前列
set ruler                                   " 命令栏显示设置
set laststatus=2                            " 状态栏显示设置
set showmatch                               " 括号匹配显示
set incsearch                               " 即键即寻显示
set ignorecase                              " 搜索忽略大小写
set wildmenu                                " 通配菜单使能
set wildmode=list:longest,full              " 设置通配方式
set scrolloff=500                           " 设置光标与上下边界的间距
set scrolljump=10                           " 设置离开屏幕时的滚动行数

syntax on                                   " 开启语法强调
set completeopt=menuone,noinsert,noselect   " 代码补全策略
if exists("g:ekvc_coding_style_indent") && (g:ekvc_coding_style_indent == "linux")
  set noexpandtab                           " 取消以空格替换制表
  set tabstop=8                             " 设置制表符显示宽度
  set shiftwidth=8                          " 设置自动缩进的宽度
else
  set expandtab                             " 设置以空格替换制表
  set tabstop=2                             " 设置制表符显示宽度
  set shiftwidth=2                          " 设置自动缩进的宽度
  set softtabstop=2                         " 制表操作缩进的宽度
endif
filetype plugin indent on                   " 开启文件类型检测
