local os = { getenv = os.getenv }

local theme = {}
theme.dir = os.getenv("HOME") .. "/.config/awesome/just1602"
theme.wallpaper = theme.dir .. "/wallpaper.jpg"

--- General Fonts ---
theme.font      = "sans 12"
theme.wibar_height = 28

--- Colors ---
theme.fg_normal  = "#c5c8c6"
theme.fg_focus   = "#458588"
theme.fg_urgent  = "#cc241d"
theme.bg_normal  = "#1d1f21"
theme.bg_focus   = "#1d1f21"
theme.bg_urgent  = "#1d1f21"

--- Systray ---
theme.bg_systray = theme.bg_normal
theme.systray_icon_spacing = 4

--- Taglist ---
theme.taglist_spacing = 1
theme.taglist_font = "sans 12"
theme.taglist_squares_sel   = "/usr/share/awesome/themes/zenburn/taglist/squarefz.png"
theme.taglist_squares_unsel = "/usr/share/awesome/themes/zenburn/taglist/squarez.png"

--- Tasklist ---
theme.tasklist_spacing = 0
theme.tasklist_font = "sans 12"

--- Borders ---
theme.useless_gap   = 0
theme.border_width  = 0
theme.border_normal = theme.bg_normal
theme.border_focus  = theme.fg_focus
theme.border_marked = theme.bg_normal

-- Notifications ---
theme.notification_width = 400
theme.notification_height = 120

--- Menu ---
theme.awesome_icon           = "/usr/share/awesome/themes/zenburn/awesome-icon.png"
theme.menu_submenu_icon      = "/usr/share/awesome/themes/default/submenu.png"

--- Layout ---
theme.layout_tile       = "/usr/share/awesome/themes/zenburn/layouts/tile.png"
theme.layout_tileleft   = "/usr/share/awesome/themes/zenburn/layouts/tileleft.png"
theme.layout_tilebottom = "/usr/share/awesome/themes/zenburn/layouts/tilebottom.png"
theme.layout_tiletop    = "/usr/share/awesome/themes/zenburn/layouts/tiletop.png"
theme.layout_fairv      = "/usr/share/awesome/themes/zenburn/layouts/fairv.png"
theme.layout_fairh      = "/usr/share/awesome/themes/zenburn/layouts/fairh.png"
theme.layout_spiral     = "/usr/share/awesome/themes/zenburn/layouts/spiral.png"
theme.layout_dwindle    = "/usr/share/awesome/themes/zenburn/layouts/dwindle.png"
theme.layout_max        = "/usr/share/awesome/themes/zenburn/layouts/max.png"
theme.layout_fullscreen = "/usr/share/awesome/themes/zenburn/layouts/fullscreen.png"
theme.layout_magnifier  = "/usr/share/awesome/themes/zenburn/layouts/magnifier.png"
theme.layout_floating   = "/usr/share/awesome/themes/zenburn/layouts/floating.png"
theme.layout_cornernw   = "/usr/share/awesome/themes/zenburn/layouts/cornernw.png"
theme.layout_cornerne   = "/usr/share/awesome/themes/zenburn/layouts/cornerne.png"
theme.layout_cornersw   = "/usr/share/awesome/themes/zenburn/layouts/cornersw.png"
theme.layout_cornerse   = "/usr/share/awesome/themes/zenburn/layouts/cornerse.png"

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
