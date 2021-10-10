-- Hardcoded first
-- Create if not exist
-- Could ask pattern and save it in some app_setting file
-- Could try to find pattern based on files and save it
-- local sys_output = vim.fn.systemlist('find .')
-- for k, v in pairs(sys_output) do print(k, v) end
-- Could create test file if does not exist
local function proto()
    print("WIP")
end

local function toggle_case()
    print("ToggleCase")
end

local function get_config()
    local working_dir = vim.fn.getcwd()
    local escaped_working_dir = string.gsub(working_dir, "/", "%%")
    local config_filepath = "$HOME/.config/nvim/gototest/" .. escaped_working_dir

    if not require("utils").file_exists(config_filepath) then
        local answer = vim.fn.input("No configuration file found, create one? y/n")
        if answer == "y" then
            os.execute("mkdir -p " .. "$HOME/.config/nvim/gototest/")
            local file_handle = io.open(config_filepath, "w")
            for key, value in pairs(config) do
                print(key, value)
                file_handle:write(key .. " = " .. tostring(value) .. "\n")
            end
            file_handle:close()
        end
    else
        print("Loading config")
    end

    return {
        project_root = vim.fn.getcwd(),
        test_dir = "test",
        file_test_marker = "%.test",
        is_test_marker_suffix = true,
        extension_pattern = "%.tsx?"
    }
end

local function go_to_test()
    print("GoToTest")
    --[[ local config = get_config()

    local current_filepath = vim.fn.expand("%")

    local test_file_pattern = "(.*/)" .. config.test_dir .. "/(.*)" .. config.file_test_marker .. "(" ..
                                  config.extension_pattern .. ")$"
    local root_path, filename, extension = string.match(current_filepath, test_file_pattern)
    local is_test_file = root_path and filename and extension

    if is_test_file then
        local src_filepath = root_path .. filename .. extension
        -- vim.api.nvim_command('edit ' .. src_filepath)
    else
        local basepath, src_filename = string.match(current_filepath, "(.*/)(.*%.ts)$")
        local is_valid_src_file = basepath and src_filename
        if is_valid_src_file then
            local test_filename = string.gsub(src_filename, ".ts", ".test.ts")
            local test_filepath = basepath .. "test/" .. test_filename
            -- vim.api.nvim_command('edit ' .. test_filepath)
        end
    end ]]
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
