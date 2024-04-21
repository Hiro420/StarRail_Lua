local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityPanel.ActivityAvatarInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPanel.ActivityAvatarInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueGuideActivityPanelBinder"
L2_1 = G
L2_1 = L2_1.TabItemBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Content/TitlePanel/NamePanel/Name"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Content/TitlePanel/QuestDescPanel/Root/DescText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Content/TitlePanel/BtnRuleTip/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Content/TitlePanel/BtnRuleTip"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_tip = L1_2
  A0_2.panel_avatar_info = nil
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/AvatarlnfoPanel"
  L4_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L1_2 = L1_2 ~= nil
  if L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._create_panel
    L4_2 = G
    L4_2 = L4_2.ActivityAvatarInfoPanel
    L5_2 = G
    L5_2 = L5_2.ActivityAvatarInfoPanelBinder
    L6_2 = "Content/AvatarlnfoPanel"
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    A0_2.panel_avatar_info = L2_2
  end
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Button
  L5_2 = "Content/RewardPanel/TitlePanel/KeyMapInfo/GamepadBtn"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.btn_game_pad = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.SuperScrollView
  L4_2 = L4_2.LoopListView2
  L5_2 = "Content/RewardPanel/ScrollView"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.scroll_reward_list = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Button
  L5_2 = "Content/BtnPanel/BtnShop"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.btn_shop = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Button
  L5_2 = "Content/BtnPanel/BtnGo"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.btn_go = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Content/BtnPanel/WarningTip"
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.node_warning_tip = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Text
  L5_2 = "Content/BtnPanel/WarningTip/TipPanel/TipText"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.text_warning_tip = L2_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_in_btn
  L3_2 = G
  L3_2 = L3_2.ActivityTabLeftPanel
  L4_2 = G
  L4_2 = L4_2.ActivityTabLeftPanelBinder
  L5_2 = A0_2.tab_btn_root
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.tab_btn_panel = L1_2
end
L0_1._on_tab_btn_bind = L1_1
return L0_1
