return {
	"echasnovski/mini.nvim",
	version = false,
	config = function()
		-- require("mini.tabline").setup({})
		require("mini.surround").setup({})
		require("mini.statusline").setup({
			content = {
				active = function()
					local ok_mode, mode, mode_hl = pcall(MiniStatusline.section_mode, { trunc_width = 120 })
					if not ok_mode then
						mode, mode_hl = "N/A", "MiniStatuslineModeNormal"
					end

					local ok_loc, lineinfo = pcall(MiniStatusline.section_location, { trunc_width = 75 })
					if not ok_loc then
						lineinfo = ""
					end

					-- setting our own custom file name and limiting it to 60 chracters
					local filepath = vim.fn.expand("%:~:.") -- relative path with ~ for home
					local filename_display

					if #filepath > 80 then
						filename_display = "<" .. string.sub(filepath, -79)
					else
						filename_display = filepath
					end

					return MiniStatusline.combine_groups({
						{ hl = mode_hl, strings = { mode } },
						{ hl = "MiniStatuslineFilename", strings = { filename_display } },
						"%=",
						{ hl = "MiniStatuslineDevinfo", strings = { lineinfo } },
					})
				end,
				-- inactive = function()
				-- 	local ok_file, filename = pcall(MiniStatusline.section_filename)
				-- 	if not ok_file then
				-- 		filename = ""
				-- 	end
				-- 	return MiniStatusline.combine_groups({
				-- 		{ hl = "MiniStatuslineInactive", strings = { filename } },
				-- 	})
				-- end,
			},
		})
	end,
}
