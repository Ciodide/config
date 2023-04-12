import           XMonad
import           XMonad.Util.EZConfig
import           XMonad.Util.Ungrab
import           XMonad.Hooks.EwmhDesktops
import           XMonad.Layout.Spacing
import XMonad.Hooks.ManageDocks

main = xmonad
  $ ewmhFullscreen
  $ ewmh
  $ docks
  $ def { terminal = "alacritty"
        , modMask = mod4Mask
        , borderWidth = 0
        , layoutHook =
            avoidStruts
            $ smartSpacingWithEdge 7 $ Tall 1 (3 / 100) (1 / 2)
        }
  `additionalKeys` [ ((mod4Mask, xK_r), spawn "dmenu_run -fn Spleen-22")
                   , ((mod4Mask .|. shiftMask, xK_l), spawn "xsecurelock")
                   , ((mod4Mask, xK_Return), spawn "alacritty")]
