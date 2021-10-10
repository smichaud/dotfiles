-- Hardcoded first
-- Could ask pattern and save it in some app_setting file
-- Could try to find pattern based on files and save it
-- Could create test file if does not exist
local function proto()
    local current_filepath = vim.fn.expand("%")

    -- Find a way to get a table instead?
    local test_pattern = "(.*/)test/(.*)%.test(%.ts)$"
    local root_path, filename, extension = string.match(current_filepath, test_pattern)

    if root_path then
        print("TEST FILE")
        local src_filepath = root_path .. filename .. extension
        vim.api.nvim_command('edit ' .. src_filepath)
    else
        print("SRC FILE")
        local basepath, filename = string.match(current_filepath, "(.*/)(.*%.ts)$")
        local test_filename = string.gsub(filename, ".ts", ".test.ts")
        local test_filepath = basepath .. "test/" .. test_filename
        vim.api.nvim_command('edit ' .. test_filepath)
    end

    -- local sys_output = vim.fn.systemlist('find .')
    -- for k, v in pairs(sys_output) do print(k, v) end
end

local function go_to_test_toggle()
    print("TODO")
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
    go_to_test_toggle = go_to_test_toggle,
    create_floating_window = create_floating_window,
    on_resize = on_resize
}
