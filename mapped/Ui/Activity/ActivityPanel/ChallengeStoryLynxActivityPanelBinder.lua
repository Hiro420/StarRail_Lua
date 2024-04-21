local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Gacha.GachaPool.DefaultGachaAvatarPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Gacha.GachaPool.DefaultGachaAvatarPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityTabLeftPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityTabLeftPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPanel.ActivityAvatarInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPanel.ActivityAvatarInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeStoryLynxActivityPanelBinder"
L2_1 = G
L2_1 = L2_1.TabItemBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Content/BtnPanel/ExtraContainer/BtnReceive"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_get = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Content/BtnPanel/BtnExtra"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_extra = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Content/BtnPanel/BtnExtra/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_btn_extra = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Content/BtnPanel/BtnGo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_go = L1_2
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
  L1_2 = A0_2._safe_find
  L3_2 = "Content/ConditionPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_condition_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/BtnPanel/ExtraContainer/BtnReceive/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.red_dot_btn_get = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Content/TitlePanel/ExtraTip/DescText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/TitlePanel/EventTime"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_event_time = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ActivityAvatarInfoPanel
  L4_2 = G
  L4_2 = L4_2.ActivityAvatarInfoPanelBinder
  L5_2 = "Content/AvatarlnfoPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_avatar_info = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Content/TitlePanel/BtnRuleTip"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.activity_desc_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Content/TitlePanel/BtnRuleTip/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.activity_brief_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Content/AvatarlnfoPanel/AvatarInfo/NamePanel/RoleNameInfo/BtnTips"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_incontrol_detail = L1_2
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
