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

if !exists("g:ekvc_font_family")
  let g:ekvc_font_family = "Hack Nerd Font Mono"
endif

if !exists("g:ekvc_bundle_groups")
  let g:ekvc_bundle_groups = ["viui", "find", "code", "edit"]
endif

if EkvcCoreIsOsWin()
  set shada+=n$HOME/_viminfo
endif

if EkvcCoreIsOsWsl()
  let g:clipboard = {
        \   'name': 'WslClipboard',
        \   'copy': {
        \      '+': '/mnt/c/windows/system32/clip.exe',
        \      '*': '/mnt/c/windows/system32/clip.exe',
        \    },
        \   'paste': {
        \      '+': '/mnt/c/windows/system32/windowspowershell/v1.0/powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
        \      '*': '/mnt/c/windows/system32/windowspowershell/v1.0/powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
        \   },
        \   'cache_enabled': 0,
        \ }
endif
