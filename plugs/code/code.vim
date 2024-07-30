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

" ekvc#code#语言服务
if EkvcCoreBundleHas("nvim-lspconfig")
lua <<EOF
  local lsp = { c = 'clangd', rust = 'rust_analyzer', python = 'pyright' }

  for _, v in pairs(lsp) do
    require('lspconfig')[v].setup { }
  end
EOF
endif
