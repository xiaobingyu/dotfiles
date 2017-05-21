import XMonad
import XMonad.Config
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO

myManageHook = composeAll
	[ className =? "Gimp"			--> doFloat
	, className =? "google-chrome"	--> doFloat
	, className =? "thunderbird"	--> doFloat
	, className =? "nautilus"		--> doFloat
	, className =? "virtualbox"		--> doFloat
	]

main = do
	xmproc <- spawnPipe "xmobar"
	xmonad $ defaultConfig
		{ manageHook = manageDocks <+> myManageHook --make sure to include myManageHook definition from above
						<+> manageHook defaultConfig
		, layoutHook = avoidStruts $ layoutHook defaultConfig
		, logHook = dynamicLogWithPP xmobarPP
				{ ppOutput = hPutStrLn xmproc
				, ppTitle = xmobarColor "green" "" . shorten 50
				}
		, modMask = mod4Mask -- Rebind Mod to the Windows key
		, terminal = "urxvt"
		} `additionalKeys`
		[ ((mod4Mask .|. shiftMask, xK_z), spawn "xscreensaver-command -lock; xset dpms force off")
		, ((controlMask, xK_Print), spawn "sleep 0.2; scrot -s")
		, ((0, xK_Print), spawn "scrot")
		]
