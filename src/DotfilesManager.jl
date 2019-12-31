module DotfilesManager

function main()
end

function detect_distro()
end

function symlink_dotfiles()
								cp(".config", joinpath(homedir(), ".config"); force=true)
								for i in readdir(".")
																if isfile(i)
																								symlink(joinpath(pwd(), i), joinpath(homedir(), i))
																end
								end
end

end # module
