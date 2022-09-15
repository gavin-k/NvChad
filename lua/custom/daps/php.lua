local dap = require'dap'

-- 
dap.adapters.php = {
  type = 'executable',
  command = 'node',
  args = {'--no-deprecation', os.getenv("HOME") .. '/code/git-projects/vscode-php-debug/out/phpDebug.js' },
}

dap.configurations.php = {
  {
    type = 'php',
    request = 'launch',
    name = 'Listen for Xdebug',
    port = '9003',
    log = true,
    runtimeExecutable = os.getenv("HOME") .. '/.phpbrew/php/php-7.4.30/bin/php',
    -- serverSourceRoot = '/srv/www/',
    -- localSourceRoot = '/home/www/VVV/www/',
  }
}
