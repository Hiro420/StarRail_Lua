local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.PlayerInfo.DisplayAvatarSinglePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PlayerInfo.DisplayAvatarSinglePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.PlayerUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DisplayAvatarListPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ClickArea"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_total_click = L1_2
  L1_2 = {}
  A0_2.display_avatar_panels = L1_2
  L1_2 = G
  L1_2 = L1_2.PlayerUtils
  L1_2 = L1_2.display_avatar_max_count
  L2_2 = 1
  L3_2 = L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = string
    L6_2 = L6_2.format
    L7_2 = "AvatarList/Avatar_0%d"
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L8_2 = A0_2
    L7_2 = A0_2._create_panel
    L9_2 = G
    L9_2 = L9_2.DisplayAvatarSinglePanel
    L10_2 = G
    L10_2 = L10_2.DisplayAvatarSinglePanelBinder
    L11_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2.display_avatar_panels
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
end
L0_1._on_bind = L1_1
return L0_1
