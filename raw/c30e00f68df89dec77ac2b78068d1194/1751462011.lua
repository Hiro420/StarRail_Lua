local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RaidCollection.Reward.ActivityRaidCollectionRewardEntryPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RaidCollection.Reward.ActivityRaidCollectionRewardEntryPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RaidCollectionMainPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/MiniGame/MiniGameSpaceMainPage.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/BtnClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/TabGroup/TopTabArea/TabControl"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_tab_control = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "Root/PanelContent/NormalPanel/ListContain/ScrollViewFrame/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.list_view = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.ScrollRect
  L4_2 = "Root/PanelContent/NormalPanel/ListContain/ScrollViewFrame/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_rect = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.animation = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/PanelContent/NormalPanel/ListContain/ScrollViewFrame/FocusPanel/MiniGameSpaceFocusPanel1"
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._safe_find
  L5_2 = "Root/PanelContent/NormalPanel/ListContain/ScrollViewFrame/FocusPanel/MiniGameSpaceFocusPanel2"
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  A0_2.nodes_focus = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/PanelContent/NormalPanel/ListContain/ScrollViewFrame/LightPanel/Light1"
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._safe_find
  L5_2 = "Root/PanelContent/NormalPanel/ListContain/ScrollViewFrame/LightPanel/Light2"
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  A0_2.nodes_light = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.IntroButton
  L4_2 = "Root/TopBarArea/AreaPanel/TopBtnList/BtnRuleTip_ResBar"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_intro = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ActivityRaidCollectionRewardEntryPanel
  L4_2 = G
  L4_2 = L4_2.ActivityRaidCollectionRewardEntryPanelBinder
  L5_2 = "Root/BottomBtnArea"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_reward = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/TabGroup/TopTabArea/KeyMapInfo_Left/GamepadBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_tab_last = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/TabGroup/TopTabArea/KeyMapInfo_Right/GamepadBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_tab_next = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/PanelContent/NormalPanel/ListContain/ScrollViewFrame/FocusPanel/MiniGameSpaceFocusPanel1/Root/Frame/Arrow"
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._safe_find
  L5_2 = "Root/PanelContent/NormalPanel/ListContain/ScrollViewFrame/FocusPanel/MiniGameSpaceFocusPanel2/Root/Frame/Arrow"
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  A0_2.nodes_not_in_special_zoom = L1_2
end
L0_1._on_bind = L1_1
return L0_1