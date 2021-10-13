local function proto()
    print("Proto")
end

local function toggle_case()
    -- https://vim.fandom.com/wiki/Converting_variables_to_or_from_camel_case
    local current_word = vim.fn.expand("<cword>")
    local is_snake_case = string.match(current_word, "^[a-z0-9]*_[a-z0-9]*")
    local is_camel_case = string.match(current_word, "^[a-z]+[a-z0-9]*[A-Z0-9][a-zA-Z0-9]*$")
    if is_snake_case then
        print("snake -> camel")
        vim.api.nvim_command(":s#_\\(\\l\\)#\\u\\1#g")
    elseif is_camel_case then
        print("camel -> snake")
        vim.api.nvim_command(":s#\\C\\(\\<\\u[a-z0-9]\\+\\|[a-z0-9]\\+\\)\\(\\u\\)#\\l\\1_\\l\\2#g")
    else
        print("case not detected")
    end
end

local function get_config()
    local working_dir = vim.fn.getcwd()

    local config = {
        project_root = working_dir,
        test_dir = "test",
        test_file_prefix = "",
        test_file_suffix = ".test",
        extension_pattern = "tsx?"
    }

    local escaped_working_dir = string.gsub(working_dir, "/", "%%")
    local user_home_dir = vim.fn.expand("$HOME")
    local vim_home_dir = user_home_dir .. "/.config/nvim"
    local config_filepath = vim_home_dir .. "/gototest/" .. escaped_working_dir

    if not require("utils").file_exists(config_filepath) then
        print("GoToTest configuration file not found, create one? y/n")
        local answer = vim.fn.getchar()

        local y_char_value = 121
        if answer == y_char_value then
            os.execute("mkdir -p " .. "$HOME/.config/nvim/gototest/")

            local user_project_root = vim.fn.input("project root: ", config.project_root)
            local user_test_dir = vim.fn.input("test dir: ", config.test_dir)
            local user_test_file_prefix = vim.fn.input("test file prefix: ", config.test_file_prefix)
            local user_test_file_suffix = vim.fn.input("test file suffix: ", config.test_file_suffix)
            local user_extension_pattern = vim.fn.input("test file extension pattern: ", config.extension_pattern)

            config = {
                project_root = user_project_root,
                test_dir = string.gsub(user_test_dir, "%.", "%%."),
                test_file_prefix = string.gsub(user_test_file_prefix, "%.", "%%."),
                test_file_suffix = string.gsub(user_test_file_suffix, "%.", "%%."),
                extension_pattern = user_extension_pattern
            }

            local file_handle = io.open(config_filepath, "w")
            if file_handle then
                for key, value in pairs(config) do
                    file_handle:write(key .. " = " .. tostring(value) .. "\n")
                end
                file_handle:close()
            else
                print("Crap... Can't write the config file...")
            end
        end
    else
        config = {}
        for line in io.lines(config_filepath) do
            local key, value = string.match(line, "^(.*) = (.*)$")
            config[key] = value
        end
    end

    return config
end

-- Set extension automatically instead of hardcoded .tsx?
-- Reset, edit and/or delete config
-- Package in an actual plugin, add doc, push on github
-- Unit test in lua?
-- Try to find pattern based on files (local sys_output = vim.fn.systemlist('find .'))
-- TODO: Handle corresponding directory (e.g. java convention: src ~ test)
local function go_to_test()
    local config = get_config()

    local current_filepath = vim.fn.expand("%")

    local escaped_test_file_prefix = config.test_file_prefix
    local escaped_test_file_suffix = config.test_file_suffix
    local test_file_pattern = "(.*/)" .. config.test_dir .. "/" .. escaped_test_file_prefix .. "(.*)" ..
                                  escaped_test_file_suffix .. "(%." .. config.extension_pattern .. ")$"
    local root_path, filename, extension = string.match(current_filepath, test_file_pattern)
    local is_test_file = root_path and filename and extension

    if is_test_file then
        local src_filepath = root_path .. filename .. extension
        vim.api.nvim_command('edit ' .. src_filepath)
    else
        local ext = string.match(current_filepath, "%.[a-zA-Z0-9]+$")
        local basepath, src_filename = string.match(current_filepath, "(.*/)(.*%" .. ext .. ")$")
        local is_valid_src_file = basepath and src_filename
        if is_valid_src_file then
            src_filename = config.test_file_prefix .. src_filename
            local test_filename = string.gsub(src_filename, ext, config.test_file_suffix .. ext)
            local test_filepath = basepath .. config.test_dir .. "/" .. test_filename
            vim.api.nvim_command('edit ' .. test_filepath)
        end
    end
end

local function create_floating_window()
    -- print(vim.g["sex"])
    -- local win_width = vim.api.nvim_win_get_width(0)
    -- local win_height = vim.api.nvim_win_get_height(0)
    local stats = vim.api.nvim_list_uis()[1]
    local total_width = stats.width
    local total_height = stats.height

    print("Work in progress!!!")

    local buffer_handle = vim.api.nvim_create_buf(false, true)
    local win_id = vim.api.nvim_open_win(buffer_handle, true, {
        relative = "editor",
        width = total_width - 8,
        height = total_height - 8,
        col = 4,
        row = 4
    })
end

local function on_resize()
    local stats = vim.api.nvim_list_uis()[1]
    local total_width = stats.width
    local total_height = stats.height
    print("New size:", total_width, total_height)
end

return {
    proto = proto,
    toggle_case = toggle_case,
    go_to_test = go_to_test,
    create_floating_window = create_floating_window,
    on_resize = on_resize
}
