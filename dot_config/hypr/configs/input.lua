hl.config({
	input = {
		kb_layout = "us, ua",
		kb_variant = "",
		kb_model = "",
		kb_options = "grp:alt_shift_toggle,compose:ralt",
		kb_rules = "",

		follow_mouse = 1,

		sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.

		touchpad = {
			natural_scroll = false,
		},
	},
})

hl.gesture({
	fingers = 3,
	direction = "horizontal",
	action = "workspace",
})

hl.device({
	name = "-------ajazz-2.4g-8k",
	sensitivity = 0,
	accel_profile = "flat",
})
