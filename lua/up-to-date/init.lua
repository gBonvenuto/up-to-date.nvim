local M = {}

-- TODO:
--      Criar uma interface para o usuário interagir com as informações
--      Fazer com que o git fetch e o git rev-list ocorram na pasta de configurações do neovim
--      Criar um terminalzinho para fazer o git pull
M.origin_master = nil
M.master = nil

-- always: will execute fetch every time you open a new nvim instance
-- first_time: will create a file in temp to signalize that the fetch has
--             already been made
-- <number>: will fetch every time you open a new nvim instance if <number>
--           amount of minutes has passed since last fetch
-- false: will never auto fetch the repo
M.auto_fetch = nil

M.setup = function(table)
    table = table or {}
    M.origin_master = table.origin_master or "origin/master"
    M.master = table.master or "master"
    M.auto_fetch = table.auto_fetch or false
end

-- This function executes `git fetch` and returns true or false dending if it
-- succeded or not
M.fetch = function()
    local result = os.execute("git fetch")
    return result
end

-- This function executes `git rev-list --count master...origin/master` and
-- returns how many commits are in origin/master that are not in master
M.commits_behind = function()
    local commits_behind = io.popen("git rev-list --count " .. M.master .. "..." .. M.origin_master):read()
    return commits_behind
end

return M
