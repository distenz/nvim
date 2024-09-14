function load_lua_modules(modules_dir)
  local dir = modules_dir:gsub('%.', '/')

  -- Prepend Neovim config directory and /lua/ path to the provided directory
  local full_dir = vim.fn.stdpath 'config' .. '/lua/' .. dir

  -- Iterate over all .lua files in the provided directory
  for _, file in ipairs(vim.fn.glob(full_dir .. '/*.lua', true, true)) do
    -- Split the path to get the module name
    local relative_path = file:sub(#(vim.fn.stdpath 'config' .. '/lua/') + 1)
    local module_name = relative_path:gsub('%.lua$', ''):gsub('/', '.')

    -- Dynamically require the module
    require(module_name)
  end
end
