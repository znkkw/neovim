math.randomseed(os.time())
local headers = {
	{
    " ██╗  ██╗███████╗██████╗ ███╗   ██╗██╗  ██╗██████╗  █████╗ ███████╗████████╗██╗    ██╗███████╗██████╗ ██╗  ██╗ ",
    " ██║ ██╔╝██╔════╝██╔══██╗████╗  ██║██║ ██╔╝██╔══██╗██╔══██╗██╔════╝╚══██╔══╝██║    ██║██╔════╝██╔══██╗██║ ██╔╝ ",
    " █████╔╝ █████╗  ██████╔╝██╔██╗ ██║█████╔╝ ██████╔╝███████║█████╗     ██║   ██║ █╗ ██║█████╗  ██████╔╝█████╔╝  ",
    " ██╔═██╗ ██╔══╝  ██╔══██╗██║╚██╗██║██╔═██╗ ██╔══██╗██╔══██║██╔══╝     ██║   ██║███╗██║██╔══╝  ██╔══██╗██╔═██╗  ",
    " ██║  ██╗███████╗██║  ██║██║ ╚████║██║  ██╗██║  ██║██║  ██║██║        ██║   ╚███╔███╔╝███████╗██║  ██║██║  ██╗ ",
    " ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝        ╚═╝    ╚══╝╚══╝ ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ",
	},
	
{
	  [[                                                                                ]],
      [[ =================     ===============     ===============   ========  ======== ]],
      [[ \\ . . . . . . .\\   //. . . . . . .\\   //. . . . . . .\\  \\. . .\\// . . // ]],
      [[ ||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\/ . . .|| ]],
      [[ || . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . || ]],
      [[ ||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .|| ]],
      [[ || . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\ . . . . || ]],
      [[ ||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\_ . .|. .|| ]],
      [[ || . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\ `-_/| . || ]],
      [[ ||_-' ||  .|/    || ||    \|.  || `-_|| ||_-' ||  .|/    || ||   | \  / |-_.|| ]],
      [[ ||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \  / |  `|| ]],
      [[ ||    `'         || ||         `'    || ||    `'         || ||   | \  / |   || ]],
      [[ ||            .===' `===.         .==='.`===.         .===' /==. |  \/  |   || ]],
      [[ ||         .=='   \_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \/  |   || ]],
      [[ ||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \/  |   || ]],
      [[ ||   .=='    _-'          `-__\._-'         `-_./__-'         `' |. /|  |   || ]],
      [[ ||.=='    _-'                                                     `' |  /==.|| ]],
      [[ =='    _-'                                                            \/   `== ]],
      [[ \   _-'                                                                `-_   / ]],
      [[  `''                                                                      ``'  ]],
      [[                                                                                ]],
    },
        {
		"                                   ",
		"                                   ",
		"                                   ",
		"   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          ",
		"    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ",
		"          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     ",
		"           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ",
		"          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ",
		"   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ",
		"  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ",
		" ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ",
		" ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ ",
		"      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ",
		"       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ",
		"                                   ",
	},
	{
		"                                                              ",
		"    ⢀⣀⣤⣤⣤⠤⢤⣤⣤⣤⣤⣄⣀⡀           ⢀⣠⣤⣄⡀            ⣀⣀⣀⣤⣤⣤⣤⣤⣤⣤⣤⣀⡀   ",
		" ⢀⣤⠚⠩⠁⡄ ⠠⣤⠒⠒⣂ ⢈⣨⣭⣿⠛⠶⣦⣤⣄⡀   ⢠⣾⡟⠉⠉⠝⠿⠇    ⢀⣠⡤⠔⠒⣻⠟⠋⠩⠉⢁⣀⡀  ⣶  ⠙⡛⠷  ",
		" ⠸⢟⡠⠒⢊⡤  ⠋⣠ ⠈⣉⣉⣉⣉⣀⣛⣿⡒⠭⡿⢿⣷⣤⣤⣀⣽⣇⣴⠆⣴⡃⢀⣠⣤⠴⣚⣫⡥ ⠒⠛⠁⣀⣉⣉⣙⢏⡉  ⢀⣼⣤⣜⠳⡦⠂  ",
		"   ⠐⠚⠫⣤⠖⢣⣤⡕ ⠉⣩⣤⠔ ⠂⣋⣭⣥⣤⠴⠛⣛⠈⢩⣿⠿⠛⢉  ⡐⠞⠫⢍⠙⣓⠢⠴⣥⣍⣙⠛⢓⡢⢤⣬⠉⠅ ⣤⡜⢛⠻⠛⠉⠁   ",
		"      ⠘⢔⢎⣡⡔⠂⣠⡿⠁⠒⢛⡻⢛⣩⠅  ⠉  ⠚⣯⣄⢠⣿⢀⣾⠇ ⠓ ⠁⠂⠈⠍⠐⠈⡉⣿⠛⣛⠛⠉⣤⣰⣿⣿⡟⠛⠁      ",
		"        ⠙⠛⠐⠚⠋ ⠒⣲⡿⠇⣋        ⢺⡏⠈⣀ ⠉⠈        ⠙⢿⠟⢰⣖⡢ ⠂⠒⠚⠉         ",
		"             ⣴⠛⠅⢀⣾⠟⢃       ⢹⠃⠠⠁⠈⠩         ⢠⣿ ⣀⢹⣿⡷             ",
		"             ⢿⣤⢚⣫⠅         ⢸⠇ ⢚ ⢀         ⣸⡇ ⠉⣿⣿⠇             ",
		"             ⠈⠛⢻⣥⡚⠔⣠⢣⣄⡀    ⢸⡇ ⢘ ⠈ ⠠⠈    ⣀⣰⡿⣧⣄⠾⠋⠁              ",
		"                ⠈⠑⠁        ⠘⣿⡀⣈⣀    ⠈  ⠈⠙⠁                    ",
		"                            ⠘⣷⠁                               ",
		"                             ⠙⣤                               ",
		"                              ⠛⠂                              ",
		"                                                              ",
	},
	{
		"                   ██          ██                    ",
		"                 ██▒▒██      ██▒▒██                  ",
		"                 ██▒▒▓▓██████▓▓▒▒██                  ",
		"               ██▓▓▒▒▒▒▓▓▓▓▓▓▒▒▒▒▓▓██                ",
		"               ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                ",
		"             ██▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓██              ",
		"             ██▒▒▒▒██▒▒▒▒██▒▒▒▒██▒▒▒▒██              ",
		"             ██▒▒▒▒▒▒▒▒██▒▒██▒▒▒▒▒▒▒▒██              ",
		"           ██▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓██            ",
		"           ██▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓██            ",
		"           ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██            ",
		"           ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██            ",
		"         ██▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▓▓██          ",
		"         ██▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓██          ",
		"         ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██    ████  ",
		"         ██▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▓▓██  ██▒▒▒▒██",
		"         ██▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓██    ██▓▓██",
		"         ██▒▒▒▒▒▒██▒▒▒▒▒▒▒▒▒▒▒▒▒▒██▒▒▒▒▒▒██    ██▒▒██",
		"         ██▓▓▒▒▒▒██▒▒██▒▒▒▒▒▒██▒▒██▒▒▒▒▓▓██████▒▒▒▒██",
		"           ██▓▓▒▒██▒▒██▒▒▒▒▒▒██▒▒██▒▒▓▓██▒▒▒▒▓▓▒▒██  ",
		"             ██████▒▒██████████▒▒████████████████    ",
		"                 ██████      ██████                  ",
	},
	{
		"",
		"",
		"",
		"",
		"   ▄████▄        ▒▒▒▒▒    ▒▒▒▒▒    ▒▒▒▒▒    ▒▒▒▒▒ ",
		"  ███▄█▀        ▒ ▄▒ ▄▒  ▒ ▄▒ ▄▒  ▒ ▄▒ ▄▒  ▒ ▄▒ ▄▒",
		" ▐████  █  █    ▒▒▒▒▒▒▒  ▒▒▒▒▒▒▒  ▒▒▒▒▒▒▒  ▒▒▒▒▒▒▒",
		"  █████▄        ▒▒▒▒▒▒▒  ▒▒▒▒▒▒▒  ▒▒▒▒▒▒▒  ▒▒▒▒▒▒▒",
		"    ████▀       ▒ ▒ ▒ ▒  ▒ ▒ ▒ ▒  ▒ ▒ ▒ ▒  ▒ ▒ ▒ ▒",
		"",
		"",
		"",
		"",
	},
	{
		[[]],
		[[     ___                                    ___     ]],
		[[    /__/\          ___        ___          /__/\    ]],
		[[    \  \:\        /__/\      /  /\        |  |::\   ]],
		[[     \  \:\       \  \:\    /  /:/        |  |:|:\  ]],
		[[ _____\__\:\       \  \:\  /__/::\      __|__|:|\:\ ]],
		[[/__/::::::::\  ___  \__\:\ \__\/\:\__  /__/::::| \:\]],
		[[\  \:\~~\~~\/ /__/\ |  |:|    \  \:\/\ \  \:\~~\__\/]],
		[[ \  \:\  ~~~  \  \:\|  |:|     \__\::/  \  \:\      ]],
		[[  \  \:\       \  \:\__|:|     /__/:/    \  \:\     ]],
		[[   \  \:\       \__\::::/      \__\/      \  \:\    ]],
		[[    \__\/           ~~~~                   \__\/    ]],
		[[]],
	},
	{
		[[]],
		[[]],
		[[░█████╗░██████╗░░█████╗░░█████╗░███╗░░██╗███████╗]],
		[[██╔══██╗██╔══██╗██╔══██╗██╔══██╗████╗░██║██╔════╝]],
		[[███████║██████╔╝██║░░╚═╝███████║██╔██╗██║█████╗░░]],
		[[██╔══██║██╔══██╗██║░░██╗██╔══██║██║╚████║██╔══╝░░]],
		[[██║░░██║██║░░██║╚█████╔╝██║░░██║██║░╚███║███████╗]],
		[[╚═╝░░╚═╝╚═╝░░╚═╝░╚════╝░╚═╝░░╚═╝╚═╝░░╚══╝╚══════╝]],
		[[]],
		[[]],
	},
	{
		[[      ____                                        ]],
		[[     /___/\_                                      ]],
		[[    _\   \/_/\__                     __           ]],
		[[  __\       \/_/\            .--.--.|__|.--.--.--.]],
		[[  \   __    __ \ \           |  |  ||  ||        |]],
		[[ __\  \_\   \_\ \ \   __      \___/ |__||__|__|__|]],
		[[/_/\\   __   __  \ \_/_/\                         ]],
		[[\_\/_\__\/\__\/\__\/_\_\/                         ]],
		[[   \_\/_/\       /_\_\/                           ]],
		[[      \_\/       \_\/                             ]],
	},
	{
		[[          |  \ \ | |/ /                     ]],
		[[          |  |\ `' ' /                      ]],
		[[          |  ;'aorta \      / , pulmonary   ]],
		[[          | ;    _,   |    / / ,  arteries  ]],
		[[ superior | |   (  `-.;_,-' '-' ,           ]],
		[[vena cava | `,   `-._       _,-'_           ]],
		[[          |,-`.    `.)    ,<_,-'_, pulmonary]],
		[[         ,'    `.   /   ,'  `;-' _,  veins  ]],
		[[        ;        `./   /`,    \-'           ]],
		[[        | right   /   |  ;\   |\            ]],
		[[        | atrium ;_,._|_,  `, ' \           ]],
		[[        |        \    \ `       `,          ]],
		[[        `      __ `    \   left  ;,         ]],
		[[         \   ,'  `      \,  ventricle       ]],
		[[          \_(            ;,      ;;         ]],
		[[          |  \           `;,     ;;         ]],
		[[ inferior |  |`.          `;;,   ;'         ]],
		[[vena cava |  |  `-.        ;;;;,;'          ]],
		[[          |  |    |`-.._  ,;;;;;'           ]],
		[[          |  |    |   | ``';;;'  FL         ]],
		[[                  aorta                     ]],
	},
	{
		[[            ___           _,.---,---.,_                                 ]],
		[[            |         ,;~'             '~;,                             ]],
		[[            |       ,;                     ;,                           ]],
		[[   Frontal  |      ;                         ; ,--- Supraorbital Foramen]],
		[[    Bone    |     ,'                         /'                         ]],
		[[            |    ,;                        /' ;,                        ]],
		[[            |    ; ;      .           . <-'  ; |                        ]],
		[[            |__  | ;   ______       ______   ;<----- Coronal Suture     ]],
		[[           ___   |  '/~"     ~" . "~     "~\'  |                        ]],
		[[           |     |  ~  ,-~~~^~, | ,~^~~~-,  ~  |                        ]],
		[[ Maxilla,  |      |   |        }:{        | <------ Orbit               ]],
		[[Nasal and  |      |   l       / | \       !   |                         ]],
		[[Zygomatic  |      .~  (__,.--" .^. "--.,__)  ~.                         ]],
		[[  Bones    |      |    ----;' / | \ `;-<--------- Infraorbital Foramen  ]],
		[[           |__     \__.       \/^\/       .__/                          ]],
		[[              ___   V| \                 / |V <--- Mastoid Process      ]],
		[[              |      | |T~\___!___!___/~T| |                            ]],
		[[              |      | |`IIII_I_I_I_IIII'| |                            ]],
		[[     Mandible |      |  \,III I I I III,/  |                            ]],
		[[              |       \   `~~~~~~~~~~'    /                             ]],
		[[              |         \   .       . <-x---- Mental Foramen            ]],
		[[              |__         \.    ^    ./                                 ]],
		[[                            ^~~~^~~~^                                   ]],
	},
	{
		[[    .o oOOOOOOOo                                            OOOo    ]],
		[[    Ob.OOOOOOOo  OOOo.      oOOo.                      .adOOOOOOO   ]],
		[[    OboO"""""""""""".OOo. .oOOOOOo.    OOOo.oOOOOOo.."""""""""'OO   ]],
		[[    OOP.oOOOOOOOOOOO "POOOOOOOOOOOo.   `"OOOOOOOOOP,OOOOOOOOOOOB'   ]],
		[[    `O'OOOO'     `OOOOo"OOOOOOOOOOO` .adOOOOOOOOO"oOOO'    `OOOOo   ]],
		[[    .OOOO'            `OOOOOOOOOOOOOOOOOOOOOOOOOO'            `OO   ]],
		[[    OOOOO                 '"OOOOOOOOOOOOOOOO"`                oOO   ]],
		[[   oOOOOOba.                .adOOOOOOOOOOba               .adOOOOo. ]],
		[[  oOOOOOOOOOOOOOba.    .adOOOOOOOOOO@^OOOOOOOba.     .adOOOOOOOOOOOO]],
		[[ OOOOOOOOOOOOOOOOO.OOOOOOOOOOOOOO"`  '"OOOOOOOOOOOOO.OOOOOOOOOOOOOO ]],
		[[ "OOOO"       "YOoOOOOMOIONODOO"`  .   '"OOROAOPOEOOOoOY"     "OOO" ]],
		[[                'OOOOOOOOOOOOOO: .oOOo. :OOOOOOOOOOO?'              ]],
		[[                 .oO%OOOOOOOOOOo.OOOOOO.oOOOOOOOOOOOO?              ]],
		[[                 oOOP"%OOOOOOOOoOOOOOOO?oOOOOO?OOOO"OOo             ]],
		[[                 '%o  OOOO"%OOOO%"%OOOOO"OOOOOO"OOO':               ]],
		[[                      `$"  `OOOO' `O"Y ' `OOOO'  o                  ]],
		[[                       .     OP"          : o     .                 ]],
	},

	{
		[[     _O_        _____         _<>_          ___     ]],
		[[   /     \     |     |      /      \      /  _  \   ]],
		[[  |==/=\==|    |[/_\]|     |==\==/==|    |  / \  |  ]],
		[[  |  O O  |    / O O \     |   ><   |    |  |"|  |  ]],
		[[   \  V  /    /\  -  /\  ,-\   ()   /-.   \  X  /   ]],
		[[   /`---'\     /`---'\   V( `-====-' )V   /`---'\   ]],
		[[   O'_:_`O     O'M|M`O   (_____:|_____)   O'_|_`O   ]],
		[[    -- --       -- --      ----  ----      -- --    ]],
		[[   STAN         KYLE        CARTMAN        KENNY    ]],
	},
	{
		[[ _____                                 ]],
		[[/     \                                ]],
		[[vvvvvvv  /|__/|                        ]],
		[[   I   /O,O   |                        ]],
		[[   I /_____   |      /|/|              ]],
		[[  J|/^ ^ ^ \  |    /00  |    _//|      ]],
		[[   |^ ^ ^ ^ |W|   |/^^\ |   /oo |      ]],
		[[    \m___m__|_|    \m_m_|   \mm_|      ]],
		[[                                       ]],
		[[  "Totoros" (from "My Neighbor Totoro")]],
		[[      --- Duke Lee                     ]],
		[[]],
	},
	{
		[[           ||||||||||||,,       ]],
		[[           |WWWWWWWWW|W|||,     ]],
		[[           |_________|~WWW||,   ]],
		[[            ~-_      ~_  ~WW||, ]],
		[[            __-~---__/ ~_  ~WW|,]],
		[[        _-~~         ~~-_~_  ~W ]],
		[[  _--~~~~~~~~~~___       ~-~_/  ]],
		[[ -                ~~~--_   ~_   ]],
		[[|                       ~_   |  ]],
		[[|   ____-------___        -_  | ]],
		[[|-~~              ~~--_     - | ]],
		[[ ~| ~--___________     |-_   ~_ ]],
		[[   | \`~'/  \`~'_-~~  |  |~-_-  ]],
		[[  _-~_~~~    ~~~   _-~  |  |    ]],
		[[ ---.--__         ---.-~  |     ]],
		[[ | |    -~~-----~~| |    -      ]],
		[[ |_|__-~          |_|__-~       ]],
		[[]],
	},
	{
		[[                   .,ccc$$$$$$$bccc,.                                      ]],
		[[ Professor   .,c$$$$$$$$$$$$$$$$$$$$$$$$c,                                 ]],
		[[ Xavier   ,c$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$c,                              ]],
		[[       ,c$$$$CCCC$$$$$$$$$$$$$$$$$$$$$$$$$$$$$,                            ]],
		[[     ,d$$$CCCCCCCC$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$c                          ]],
		[[   ,$$$CCCCCCCCC>"$$$$$$$$$$$$$$$$$$$$$?3$$P,d$$$"                         ]],
		[[ ,d$$CCCCCCCCCC>,$$$$$$$$$$$$$$$$$$$$Ez$$$$$$$$$" -db                      ]],
		[[,$$$CCCCCCCCCC>,$$$$$$$$$$$$$$$$$$?$$$$$?$$$$$$$" z$$b                     ]],
		[[`$$$$$$$?$$$$$$$$$$$,J$$$'$$br   .   P)$$b                                 ]],
		[[ $$CCCCCCCCCCCCc`?$$$$h$$$$$$$$$$$??",$$$$$$F cd$c$$c$$$$$.                ]],
		[[ `$$CCCCCCCCCCCC>,$$$$$$$???" _,,,c$?3$$"$$$$."?$$$$$$$$$$$                ]],
		[[  `$$CCCCCCCCCCCCCC?$$$   ,c$$$P""  4,$$ 3$$$$$c`?$$$$$$$$$                ]],
		[[   ?$$CCCCCCCCCCCCC 3$P   $$$F  ,   ,$P"$$$$$$$$$c "$$$$$$$                ]],
		[[    "$$CCCCCCCCCCCCc`?L  J$$P" J3$$$$P,d$$$$$$$F3$$c,"?$$$$,               ]],
		[[     `?$CCCCCCCCCCCC>c,  $ -cc="=$$$$c$$$$$$$$$LJ$??P d$$$$hc              ]],
		[[       ```''??CCCCCCCC>"" c$$$$$$$$$$$$$$$$$F'?"  ,, d$$$$$$$L             ]],
		[[     J??????c,,CCCCCCC                                                     ]],
	},
	{
		[[]],
		[[         _nnnn_                      ]],
		[[        dGGGGMMb     ,"""""""""""""".]],
		[[       @p~qp~~qMb    | Linux Rules! |]],
		[[       M|@||@) M|   _;..............']],
		[[       @,----.JM| -'                 ]],
		[[      JS^\__/  qKL                   ]],
		[[     dZP        qKRb                 ]],
		[[    dZP          qKKb                ]],
		[[   fZP            SMMb               ]],
		[[   HZM            MMMM               ]],
		[[   FqM            MMMM               ]],
		[[ __| ".        |\dS"qML              ]],
		[[ |    `.       | `' \Zq              ]],
		[[_)      \.___.,|     .'              ]],
		[[\____   )MMMMMM|   .'                ]],
		[[     `-'       `--' hjm              ]],
		[[]],
	},
	{
		[[]],
		[[Kevin Woods:                                 ]],
		[[                                 ,        ,  ]],
		[[                                /(        )` ]],
		[[                                \ \___   / | ]],
		[[                                /- _  `-/  ' ]],
		[[                               (/\/ \ \   /\ ]],
		[[                               / /   | `    \]],
		[[                               O O   ) /    |]],
		[[                               `-^--'`<     ']],
		[[                   TM         (_.)  _  )   / ]],
		[[|  | |\  | ~|~ \ /             `.___/`    /  ]],
		[[|  | | \ |  |   X                `-----' /   ]],
		[[`__| |  \| _|_ / \                           ]],
		[[]],
	},
	{
		[[]],
		[[              $$ $$$$$ $$              ]],
		[[              $$ $$$$$ $$              ]],
		[[             .$$ $$$$$ $$.             ]],
		[[             :$$ $$$$$ $$:             ]],
		[[             $$$ $$$$$ $$$             ]],
		[[             $$$ $$$$$ $$$             ]],
		[[            ,$$$ $$$$$ $$$.            ]],
		[[           ,$$$$ $$$$$ $$$$.           ]],
		[[          ,$$$$; $$$$$ :$$$$.          ]],
		[[         ,$$$$$  $$$$$  $$$$$.         ]],
		[[       ,$$$$$$'  $$$$$  `$$$$$$.       ]],
		[[     ,$$$$$$$'   $$$$$   `$$$$$$$.     ]],
		[[  ,s$$$$$$$'     $$$$$     `$$$$$$$s.  ]],
		[[$$$$$$$$$'       $$$$$       `$$$$$$$$$]],
		[[$$$$$Y'          $$$$$          `Y$$$$$]],
		[[]],
	},
	{
		[[]],
		[[888888888888888888888888888888888888888888888888888888888888]],
		[[888888888888888888888888888888888888888888888888888888888888]],
		[[8888888888888888888888888P""  ""9888888888888888888888888888]],
		[[8888888888888888P"88888P          988888"9888888888888888888]],
		[[8888888888888888  "9888            888P"  888888888888888888]],
		[[888888888888888888bo "9  d8o  o8b  P" od88888888888888888888]],
		[[888888888888888888888bob 98"  "8P dod88888888888888888888888]],
		[[888888888888888888888888    db    88888888888888888888888888]],
		[[88888888888888888888888888      8888888888888888888888888888]],
		[[88888888888888888888888P"9bo  odP"98888888888888888888888888]],
		[[88888888888888888888P" od88888888bo "98888888888888888888888]],
		[[888888888888888888   d88888888888888b   88888888888888888888]],
		[[8888888888888888888oo8888888888888888oo888888888888888888888]],
		[[888888888888888888888888888888888888888888888888888888888888]],
		[[]],
	},
	{
		[[                      ,-~   _  ^^~-.,\                        ]],
		[[                    ,^        -,____ ^,         ,/\/\/\,\     ]],
		[[                   /           (____)  |      S~         ~7\  ]],
		[[                  ;  .---._    | | || _|     S   I AM THE   Z\]],
		[[                  | |      ~-.,\ | |!/ |     /_  NVIM-LAW  _\\]],
		[[                  ( |    ~<-.,_^\|_7^ ,|     _//_         _\\ ]],
		[[                  | |      ", 77>   (T/|   _//   \/\/\/\/     ]],
		[[                  |  \_      )/<,/^\)i(|\                     ]],
		[[                  (    ^~-,  |________||\                     ]],
		[[                  ^!,_    / /, ,"^~^",!!_,..---.\             ]],
		[[                   \_ "-./ /   (-~^~-))" =,__,..>-,\          ]],
		[[                     ^-,__/#w,_  "^" /~-,_/^\      )\         ]],
		[[                  /\  ( <_    ^~~--T^ ~=, \  \_,-=~^\\        ]],
		[[     .-==,    _,=^_,.-"_  ^~*.(_  /_)    \ \,=\      )\       ]],
		[[    /-~;  \,-~ .-~  _,/ \    ___[8]_      \ T_),--~^^)\       ]],
		[[      _/   \,,..==~^_,.=,\   _.-~O   ~     \_\_\_,.-=}\       ]],
		[[    ,{       _,.-<~^\  \ \\      ()  .=~^^~=. \_\_,./\        ]],
		[[   ,{ ^T^ _ /  \  \  \  \ \)    [|   \oDREDD>\       \        ]],
	},
	{
		[[                ur d$$$$$$$$$$$$$$Nu               ]],
		[[              d$$$ "$$$$$$$$$$$$$$$$$$e.           ]],
		[[          u$$c   ""   ^"^**$$$$$$$$$$$$$b.         ]],
		[[        z$$#"""           `!?$$$$$$$$$$$$$N.       ]],
		[[      .$P                   ~!R$$$$$$$$$$$$$b      ]],
		[[     x$F                 **$b. '"R).$$$$$$$$$$     ]],
		[[    J^"                           #$$$$$$$$$$$$.   ]],
		[[   z$e                      ..      "**$$$$$$$$$   ]],
		[[  :$P           .        .$$$$$b.    ..  "  #$$$$  ]],
		[[  $$            L          ^*$$$$b   "      4$$$$L ]],
		[[ 4$$            ^u    .e$$$$e."*$$$N.       @$$$$$ ]],
		[[ $$E            d$$$$$$$$$$$$$$L "$$$$$  mu $$$$$$F]],
		[[ $$&            $$$$$$$$$$$$$$$$N   "#* * ?$$$$$$$N]],
		[[ $$F            '$$$$$$$$$$$$$$$$$bec...z$ $$$$$$$$]],
		[['$$F             `$$$$$$$$$$$$$$$$$$$$$$$$ '$$$$E"$]],
		[[ $$                  ^""""""`       ^"*$$$& 9$$$$N ]],
		[[ k  u$                                  "$$. "$$P r]],
		[[ 4$$$$L                                   "$. eeeR ]],
		[[  $$$$$k                                   '$e. .@ ]],
		[[  3$$$$$b                                   '$$$$  ]],
		[[   $$$$$$                                    3$$"  ]],
		[[    $$$$$  dc                                4$F   ]],
	},
	{
		[[                                          _\/               ]],
		[[                                        .-'.'`)             ]],
		[[                                     .-' .'                 ]],
		[[               .                  .-'     `-.          __\/ ]],
		[[                \.    .  |,   _.-'       -:````)   _.-'.'``)]],
		[[                 \`.  |\ | \.-_.           `._ _.-' .'`     ]],
		[[                __) )__\ |! )/ \_.          _.-'      `.    ]],
		[[            _.-'__`-' =`:' /.' / |      _.-'      -:`````)  ]],
		[[      __.--' ( (@> ))  = \ ^ `'. |_. .-'           `.       ]],
		[[     : @       `^^^    == \ ^   `. |<                `.     ]],
		[[     VvvvvvvvVvvvv)    =  ;   ^  ;_/ :           -:``````)  ]],
		[[       (^^^^^^^^^^=  ==   |      ; \. :            `.       ]],
		[[    ((  `-----------.  == |  ^   ;_/   :             `.     ]],
		[[    /\             /==   /       : \.  :     _..--``````)   ]],
		[[  __\ \_          ; ==  /  ^     :_/   :      `.            ]],
		[[>                                                           ]],
	},
	{
		[[                            ,-.                            ]],
		[[       ___,---.__          /'|`\          __,---,___       ]],
		[[    ,-'    \`    `-.____,-'  |  `-.____,-'    //    `-.    ]],
		[[  ,'        |           ~'\     /`~           |        `.  ]],
		[[ /      ___//              `. ,'          ,  , \___      \ ]],
		[[|    ,-'   `-.__   _         |        ,    __,-'   `-.    |]],
		[[|   /          /\_  `   .    |    ,      _/\          \   |]],
		[[\  |           \ \`-.___ \   |   / ___,-'/ /           |  /]],
		[[ \  \           | `._   `\\  |  //'   _,' |           /  / ]],
		[[  `-.\         /'  _ `---'' , . ``---' _  `\         /,-'  ]],
		[[     ``       /     \    ,='/ \`=.    /     \       ''     ]],
		[[             |__   /|\_,--.,-.--,--._/|\   __|             ]],
		[[             /  `./  \\`\ |  |  | /,//' \,'  \             ]],
		[[            /   /     ||--+--|--+-/-|     \   \            ]],
		[[           |   |     /'\_\_\ | /_/_/`\     |   |           ]],
		[[            \   \__, \_     `~'     _/ .__/   /            ]],
		[[             `-._,-'   `-._______,-'   `-._,-'             ]],
		[[]],
	},
	{
		[[                    _wr""        "-q__                    ]],
		[[                 _dP                 9m_                  ]],
		[[               _#P                     9#_                ]],
		[[              d#@                       9#m               ]],
		[[             d##                         ###              ]],
		[[            J###                         ###L             ]],
		[[            {###K                       J###K             ]],
		[[            ]####K      ___aaa___      J####F             ]],
		[[        __gmM######_  w#P""   ""9#m  _d#####Mmw__         ]],
		[[     _g##############mZ_         __g##############m_      ]],
		[[   _d####M@PPPP@@M#######Mmp gm#########@@PPP9@M####m_    ]],
		[[  a###""          ,Z"#####@" '######"\g          ""M##m   ]],
		[[ J#@"             0L  "*##     ##@"  J#              *#K  ]],
		[[ #"               `#    "_gmwgm_~    dF               `#_ ]],
		[[7F                 "#_   ]#####F   _dK                 JE ]],
		[[]                    *m__ ##### __g@"                   F ]],
		[[                       "PJ#####LP"                        ]],
		[[ `                       0######_                      '  ]],
		[[                       _0########_                        ]],
		[[     .               _d#####^#####m__              ,      ]],
		[[      "*w_________am#####P"   ~9#####mw_________w*"       ]],
		[[          ""9@#####@M""           ""P@#####@M""           ]],
	},
	{
		"          ▀████▀▄▄              ▄█ ",
		"            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ",
		"    ▄        █          ▀▀▀▀▄  ▄▀  ",
		"   ▄▀ ▀▄      ▀▄              ▀▄▀  ",
		"  ▄▀    █     █▀   ▄█▀▄      ▄█    ",
		"  ▀▄     ▀▄  █     ▀██▀     ██▄█   ",
		"   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ",
		"    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ",
		"   █   █  █      ▄▄           ▄▀   ",
	},
	{
		[[]],
		[[██████▒░                    ██████▒░]],
		[[    ████▒░                ████▒░    ]],
		[[      ████▒░            ████▒░      ]],
		[[        ██████▒░    ██████▒░        ]],
		[[            ██████████▒░            ]],
		[[        ██████▓▓▓▓▓▓██████▒░        ]],
		[[        ██▓▓▓▓▓▓▓▓▓▓▓▓▓▓██▒░        ]],
		[[      ████▓▓▓▓▓▓▓▓▓▓▓▓▓▓████▒░      ]],
		[[      ██▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓██▒░      ]],
		[[      ████▓▓▓▓▓▓▓▓▓▓▓▓▓▓████▒░      ]],
		[[        ██▓▓▓▓▓▓▓▓▓▓▓▓▓▓██▒░        ]],
		[[        ██████▓▓▓▓▓▓██████▒░        ]],
		[[            ██████████▒░            ]],
		[[]],
	},
	{
		[[]],
		[[                      ██████                     ]],
		[[                  ████▒▒▒▒▒▒████                 ]],
		[[                ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒██               ]],
		[[              ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██             ]],
		[[            ██▒▒▒▒▒▒▒▒    ▒▒▒▒▒▒▒▒               ]],
		[[            ██▒▒▒▒▒▒  ▒▒▓▓▒▒▒▒▒▒  ▓▓▓▓           ]],
		[[            ██▒▒▒▒▒▒  ▒▒▓▓▒▒▒▒▒▒  ▒▒▓▓           ]],
		[[          ██▒▒▒▒▒▒▒▒▒▒    ▒▒▒▒▒▒▒▒    ██         ]],
		[[          ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██         ]],
		[[          ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██         ]],
		[[          ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██         ]],
		[[          ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██         ]],
		[[          ██▒▒██▒▒▒▒▒▒██▒▒▒▒▒▒▒▒██▒▒▒▒██         ]],
		[[          ████  ██▒▒██  ██▒▒▒▒██  ██▒▒██         ]],
		[[          ██      ██      ████      ████         ]],
		[[                                                 ]],
		[[]],
	},
	{
		[[]],
		[[  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
		[[⠀⠀⠀⠀⣠⣶⡾⠏⠉⠙⠳⢦⡀⠀⠀⠀⢠⠞⠉⠙⠲⡀⠀]],
		[[⠀⠀⠀⣴⠿⠏⠀⠀⠀⠀⠀⠀⢳⡀⠀ ⡏⠀⠀⠀⠀⢷ ]],
		[[⠀⠀⢠⣟⣋⡀⢀⣀⣀⡀⠀⣀⡀⣧⠀⢸⠀⠀⠀⠀⠀ ⡇]],
		[[⠀⠀⢸⣯⡭⠁⠸⣛⣟⠆⡴⣻⡲⣿⠀⣸⠀⠀OK⠀ ⡇]],
		[[⠀⠀⣟⣿⡭⠀⠀⠀⠀⠀⢱⠀⠀⣿⠀⢹⠀⠀⠀⠀⠀ ⡇]],
		[[⠀⠀⠙⢿⣯⠄⠀⠀⠀⢀⡀⠀⠀⡿⠀⠀⡇⠀⠀⠀⠀⡼ ]],
		[[⠀⠀⠀⠀⠹⣶⠆⠀⠀⠀⠀⠀⡴⠃⠀⠀⠘⠤⣄⣠⠞⠀ ]],
		[[⠀⠀⠀⠀⠀⢸⣷⡦⢤⡤⢤⣞⣁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
		[[⠀⠀⢀⣤⣴⣿⣏⠁⠀⠀⠸⣏⢯⣷⣖⣦⡀⠀⠀⠀⠀⠀⠀]],
		[[⢀⣾⣽⣿⣿⣿⣿⠛⢲⣶⣾⢉⡷⣿⣿⠵⣿⠀⠀⠀⠀⠀⠀]],
		[[⣼⣿⠍⠉⣿⡭⠉⠙⢺⣇⣼⡏⠀⠀⠀⣄⢸⠀⠀⠀⠀⠀⠀]],
		[[⣿⣿⣧⣀⣿………⣀⣰⣏⣘⣆⣀⠀⠀⢸     ⠀]],
		[[]],
	},
	{
		[[]],
		[[ ...      (^~^)                              ]],
		[[(°з°)  _ ┐__\|_┌________ __   __ ___ __   __ ]],
		[[|  |  | |       |       |  | |  |   |  |_|  |]],
		[[|   |_| |    ___|  ___  |  |_|  |   |       |]],
		[[|       |   |___| |▀-▀| |       |   |       |]],
		[[|  _    |    ___| |___| |       |   |       |]],
		[[| | |   |   |___|       ||     ||   | ||_|| |]],
		[[|_|  |__|_______|_______| |___| |___|_|   |_|]],
		[[]],
		[[]],
	},
	{
		[[                               __                ]],
		[[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
		[[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
		[[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
		[[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
		[[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
	},
}
return headers[math.random(1, #headers)]
