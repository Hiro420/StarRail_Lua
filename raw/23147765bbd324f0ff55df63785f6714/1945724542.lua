local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonopolyPlayerRankPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = require
L2_1 = "Generate.ActivityMonopolyPlayerRankPanelIndex"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.auto_bind
  L3_2 = L1_1
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogErrorFormat
    L2_2 = "[%s] auto bind fail"
    L3_2 = A0_2.__name
    L1_2(L2_2, L3_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.PlayerPhotoPanel
  L4_2 = G
  L4_2 = L4_2.PlayerPhotoPanelBinder
  L5_2 = A0_2.player_photo_root
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.player_photo_panel = L1_2
end
L0_1._on_bind = L2_1
return L0_1
