if (vim.loop.os_uname().sysname == "Windows_NT") then
  vim.o.shell = vim.fn.executable('pwsh') and 'pwsh' or 'powershell'
end
