return{
  		"akinsho/toggleterm.nvim",
		version = "*",
		config = function()
			require("toggleterm").setup({
				size = 20,
				open_mapping = [[<C-t>]], -- Замените на удобную для вас комбинацию
				direction = "float", -- 'float' для плавающего, 'vertical' или 'horizontal' для сплита
				float_opts = {
					border = "curved",
				},
			})
			-- Установка горячей клавиши для переключения (если не указано в open_mapping)
			vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<cr>", { desc = "Toggle terminal" })
		end,

}
