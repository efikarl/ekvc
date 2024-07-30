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
" default for has("unix")
"

silent function! EkvcCoreIsOsWin()
  return has("win32") || has("win64")
endfunction

silent function! EkvcCoreIsOsLin()
  return has("unix")
endfunction

silent function! EkvcCoreIsOsWsl()
  return has("wsl")
endfunction

silent function! EkvcCoreIsNvim()
  return has("nvim")
endfunction

silent function! EkvcCoreIsRemoteNvim()
  return EkvcCoreIsNvim() && (v:servername =~ "127.0.0.1" || v:servername =~ "0.0.0.0" || v:servername =~ "localhost")
endfunction


function! EkvcCoreBundleDir(bundlename)
  return $ekvc_home . "/bundle/" . a:bundlename
endfunction

function! EkvcCoreBundleHas(bundlename)
  if isdirectory(expand($ekvc_home . "/bundle/" . a:bundlename))
    return 1
  else
    return 0
  endif
endfunction

function! EkvcCoreBundleCfg(dir)
  let filelist = split(globpath(a:dir, '*.vim'), '\n')
  for dotvim in filelist
    execute "source" . " " . dotvim
  endfor
endfunction

if !exists("*EkvcCoreUpdate")
function! EkvcCoreUpdate()
  execute "PlugUpgrade"
  execute "PlugClean!"
  execute "PlugUpdate"
  execute "source $ekvc_home/init.vim"
endfunction
endif

if !exists("*EkvcCoreSource")
function! EkvcCoreSource()
  execute "source $ekvc_home/init.vim"
endfunction
endif
