local function file_exists(name)
    local f = io.open(name, "r")
    if f ~= nil then
        io.close(f)
        return true
    else
        return false
    end
end

-- Check :h input()
-- local answer = vim.fn.input(test_filepath .. " does not exist, create it? (y/n): ", "", "file")
-- local working_dir = vim.fn.getcwd()
-- print("working_dir: " .. working_dir)

return {file_exists = file_exists}
