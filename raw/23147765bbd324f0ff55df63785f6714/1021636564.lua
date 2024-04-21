local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Maze.AvatarInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.AvatarInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LightCone.LightConeInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LightCone.LightConeInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.AvatarLightConeSwitchPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.AvatarLightConeSwitchPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Monster/AvatarDialogV2.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "Frame/Tab/List/Scroll View"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_avatars = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Frame/AvatarContent"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_avatar_content = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Frame/LightConeContent"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_lightcone_content = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Frame"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_switch = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Frame/BtnClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_exit = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Bg"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.bg_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.AvatarInfoPanel
  L4_2 = G
  L4_2 = L4_2.AvatarInfoPanelBinder
  L5_2 = "Frame/AvatarContent"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.avatar_info_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.LightConeInfoPanel
  L4_2 = G
  L4_2 = L4_2.LightConeInfoPanelBinder
  L5_2 = "Frame/LightConeContent"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.lightcone_info_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.AvatarLightConeSwitchPanel
  L4_2 = G
  L4_2 = L4_2.AvatarLightConeSwitchPanelBinder
  L5_2 = "Frame"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.switch_panel = L1_2
end
L0_1._on_bind = L1_1
return L0_1
