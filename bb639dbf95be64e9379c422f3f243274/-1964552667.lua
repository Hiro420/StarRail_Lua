local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Maze.Wheel.ShortCutLittleWheelIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.Wheel.ShortCutLittleWheelIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ShortCutLittleWheelPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 4
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  A0_2._short_cut_btn_list = L1_2
  L1_2 = {}
  A0_2._short_cut_img_list = L1_2
  L1_2 = {}
  A0_2._short_cut_red_dot_list = L1_2
  L1_2 = {}
  A0_2._icon_panels = L1_2
  L1_2 = 1
  while true do
    L2_2 = L1_1
    if not (L1_2 <= L2_2) then
      break
    end
    L3_2 = A0_2
    L2_2 = A0_2._safe_get_cmpt
    L4_2 = CS
    L4_2 = L4_2.UnityEngine
    L4_2 = L4_2.UI
    L4_2 = L4_2.Button
    L5_2 = string
    L5_2 = L5_2.format
    L6_2 = "AppIconList/ShortCut0%d/ShortCutIconItemSmall"
    L7_2 = L1_2
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2(L6_2, L7_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = A0_2._short_cut_btn_list
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2._safe_get_cmpt
    L5_2 = CS
    L5_2 = L5_2.UnityEngine
    L5_2 = L5_2.UI
    L5_2 = L5_2.Image
    L6_2 = string
    L6_2 = L6_2.format
    L7_2 = "AppIconList/ShortCut0%d/ShortCutIconItemSmall/Root/IconPanel/Icon"
    L8_2 = L1_2
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2(L7_2, L8_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = A0_2._short_cut_img_list
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
    L5_2 = A0_2
    L4_2 = A0_2._safe_find
    L6_2 = string
    L6_2 = L6_2.format
    L7_2 = "AppIconList/ShortCut0%d/ShortCutIconItemSmall/Root/RedDot"
    L8_2 = L1_2
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2(L7_2, L8_2)
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = A0_2._short_cut_red_dot_list
    L7_2 = L4_2.transform
    L5_2(L6_2, L7_2)
    L6_2 = A0_2
    L5_2 = A0_2._create_panel
    L7_2 = G
    L7_2 = L7_2.ShortCutLittleWheelIconPanel
    L8_2 = G
    L8_2 = L8_2.ShortCutLittleWheelIconPanelBinder
    L9_2 = string
    L9_2 = L9_2.format
    L10_2 = "AppIconList/ShortCut0%d/ShortCutIconItemSmall"
    L11_2 = L1_2
    L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2)
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._icon_panels
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
    L1_2 = L1_2 + 1
  end
end
L0_1._on_bind = L2_1
return L0_1
