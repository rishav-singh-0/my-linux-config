local M = {}

-- Helper to format key-value pairs into aligned table layout
local function format_modinfo_table(modinfo_output)
	local lines = {}
	local max_key_len = 0
	local fields = {}

	for line in modinfo_output:gmatch("[^\r\n]+") do
		local key, value = line:match("^(%S+):%s*(.*)$")
		if key and value then
			fields[#fields + 1] = { key = key, value = value }
			if #key > max_key_len then
				max_key_len = #key
			end
		end
	end

	for _, field in ipairs(fields) do
		local padded_key = field.key .. string.rep(" ", max_key_len - #field.key)
		lines[#lines + 1] = string.format("%s : %s", padded_key, field.value)
	end

	return table.concat(lines, "\n")
end

function M:peek(job)
	local cmd = "modinfo"
	local output, err = Command(cmd):args({ tostring(job.file.url) }):stdout(Command.PIPED):output()

	local text
	if output and output.stdout then
        local formatted = format_modinfo_table(output.stdout)
		text = ui.Text.parse("----- Modinfo Output -----\n\n" .. output.stdout)
	else
		text = ui.Text(string.format("Failed to start `%s`, error: %s", cmd, err))
	end

	ya.preview_widgets(job, { text:area(job.area):wrap(ui.Text.WRAP) })
end

function M:seek() end

return M
