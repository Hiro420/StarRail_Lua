local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.PlayerReturn.PlayerReturnTabLeftPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PlayerReturnSevenDayPanelBinder"
L2_1 = G
L2_1 = L2_1.TabItemBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/PlayerReturn/Widget/PlayerReturnSevenDayPanel.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Content/TabPanel/Day01"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[1] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Content/TabPanel/Day02"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[2] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Content/TabPanel/Day03"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[3] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Content/TabPanel/Day04"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[4] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Content/TabPanel/Day05"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[5] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Content/TabPanel/Day06"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[6] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Content/TabPanel/Day07"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[7] = L2_2
  A0_2.node_item_panels = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_fade_in = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.RPGAnimationEvent
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_event = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.SmoothMask
  L4_2 = "Content/BoxBar/BarMask"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.smooth_mask = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.UIValueChangeAnimation
  L4_2 = "Content/BoxBar/BarMask"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.value_anim = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_in_btn
  L3_2 = G
  L3_2 = L3_2.PlayerReturnTabLeftPanel
  L4_2 = G
  L4_2 = L4_2.PlayerReturnTabLeftPanelBinder
  L5_2 = A0_2.tab_btn_root
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.tab_btn_panel = L1_2
  L1_2 = A0_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_title
  L3_2 = "UIText_PlayerReturn_Title03"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "PlayerReturnSignReward"
  L4_2 = nil
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_icon
  L3_2 = "SpriteOutput/TabIcon/PlayerReturn/PlayerReturnSevenDayIcon.png"
  L1_2(L2_2, L3_2)
end
L0_1._on_tab_btn_bind = L1_1
return L0_1
