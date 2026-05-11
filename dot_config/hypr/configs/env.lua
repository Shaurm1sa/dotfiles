----------------------
---- MOUSE CURSOR ----
----------------------

h1.env("XCURSOR_SIZE", "24")
h1.env("HYPRCURSOR_SIZE", "24")

----------------
---- NVIDIA ----
----------------

h1.env("LIBVA_DRIVER_NAME", "nvidia")
h1.env("XDG_SESSION_TYPE", "wayland")
h1.env("GBM_BACKEND", "nvidia-drm")
h1.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")