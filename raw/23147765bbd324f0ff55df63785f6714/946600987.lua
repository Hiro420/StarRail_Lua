local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.PlayerInfo.PlayerPhotoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PlayerInfo.PlayerPhotoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Friend.PlatformInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Friend.PlatformInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Generate.RecommondAbyssInfoRowIndex"
L0_1 = L0_1(L1_1)
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ChallengeRecommendLineupPanelBinder"
L3_1 = G
L3_1 = L3_1.UIBinder
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
  L1_2 = "UI/PlayerInfo/Widget/RecommondAbyssInfoRow.prefab"
  return L1_2
end
L1_1.get_prefab_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.auto_bind
  L3_2 = L0_1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._create_panel_with_root_trans
    L3_2 = G
    L3_2 = L3_2.PlayerPhotoPanel
    L4_2 = G
    L4_2 = L4_2.PlayerPhotoPanelBinder
    L5_2 = A0_2.node_photo
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    A0_2.panel_photo = L1_2
    L2_2 = A0_2
    L1_2 = A0_2._create_panel_with_root_trans
    L3_2 = G
    L3_2 = L3_2.PlatformInfoPanel
    L4_2 = G
    L4_2 = L4_2.PlatformInfoPanelBinder
    L5_2 = A0_2.node_platform
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    A0_2.panel_platform = L1_2
    L1_2 = {}
    L2_2 = A0_2.node_active_stars_1
    L3_2 = A0_2.node_active_stars_2
    L4_2 = A0_2.node_active_stars_3
    L1_2[1] = L2_2
    L1_2[2] = L3_2
    L1_2[3] = L4_2
    A0_2.node_active_stars = L1_2
    L1_2 = {}
    L2_2 = A0_2.node_unactive_stars_1
    L3_2 = A0_2.node_unactive_stars_2
    L4_2 = A0_2.node_unactive_stars_3
    L1_2[1] = L2_2
    L1_2[2] = L3_2
    L1_2[3] = L4_2
    A0_2.node_unactive_stars = L1_2
  end
end
L1_1._on_bind = L2_1
return L1_1
