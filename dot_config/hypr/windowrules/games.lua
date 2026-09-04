hl.config({
	general = {
		allow_tearing = true,
	},
})

hl.window_rule({
	match = { class = "cs2" },
	immediate = true,
})

hl.window_rule({
	match = {
		title = "Arma Reforger",
		class = "steam_app_1874880",
	},
	immediate = true,
})

hl.window_rule({
	match = {
		title = "W.o.T. Client",
		class = "steam_app_2397938129",
	},
	immediate = true,
})

