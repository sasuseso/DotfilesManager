module DotfilesManager
using TOML, ArgParse

function main()
								config_path = "./config.toml"
								isfile(config_path) ? config = TOML.parsefile(config_path) : error("config file path invalid") 

								symlink_dotfiles(TOML.parse(config))
end

function detect_distro()
end

function symlink_dotfiles(config::Dict)
								cp(".config", joinpath(homedir(), ".config"); force=true)
								for i in readdir(".")
																if isfile(i)
																								symlink(joinpath(pwd(), i), joinpath(homedir(), i))
																end
								end
end

function parse_opts()
								s = ArgParseSettings("DOTMAN - Dotfiles Managemer")

								@add_arg_table s begin
																"--help", "-h"
																								help = "Show this help."
																								action = :show_help
																
																"--version", "-v"
																								help = "Show version."
																								action = :show_version

																"--config-file", "-c"
																								help = "Specifies config.toml to use."
																								arg_type = String
																								default = "./config.toml"
								end

								parse_args(s)
end

end # module
