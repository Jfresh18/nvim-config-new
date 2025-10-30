return {
    cmd = {
	"clangd",
	"--background-index",
	"--clang-tidy",
	"--completion-style=detailed",
	"--cross-file-rename",
	"--header-insertion=iwyu"
    },
    filetypes = { "c", "cpp", "objc", "objcpp" },
}
