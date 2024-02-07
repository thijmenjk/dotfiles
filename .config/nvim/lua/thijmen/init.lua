require("thijmen.set")
require("thijmen.lazy")
require("thijmen.remap")

if os.getenv("WSL_DISTRO_NAME") ~= nil then
	print("loading wsl settings")
	require("thijmen.wsl")
end
