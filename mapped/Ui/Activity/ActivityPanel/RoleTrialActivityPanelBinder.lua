local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Component.NodeListView"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.NodeListViewBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Shop.RarityStarInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Shop.RarityStarInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.RoleTrial.TrialAvatarHeadIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.RoleTrial.TrialAvatarHeadIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BattlePass.Common.DotItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BattlePass.Common.DotItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPanel.RoleTrialActivityDetailInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPanel.RoleTrialActivityInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPanel.RoleTrialActivityInfoPanelBinderB"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RoleTrialActivityPanelBinder"
L2_1 = G
L2_1 = L2_1.TabItemBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.get_display_count
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Animation
  L5_2 = ""
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.anim_root = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Button
  L5_2 = "BtnCommonWhite"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.btn_enter = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Button
  L5_2 = "NamePanel/AvatarInfo/NamePanel/RoleNameInfo/BtnTips"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.btn_preview = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Button
  L5_2 = "BtnCommonRedMiddle"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.btn_free_trial = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Button
  L5_2 = "RewardPanel/AvatarPanel/RewardList/ItemList/StatusPanel/BtnCommonWhite"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.btn_reward = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Button
  L5_2 = "TitlePanel/BtnRuleTip"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.btn_intro = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Text
  L5_2 = "TitlePanel/BtnRuleTip/TextPanel/Text"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.text_tag = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.MonoRemainTimer
  L5_2 = "TitlePanel/EventTime/Timer/RemainTime"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.remain_timer = L2_2
  L2_2 = {}
  A0_2.avatar_panel_list = L2_2
  L2_2 = {}
  A0_2.btn_list = L2_2
  L2_2 = 1
  L3_2 = 5
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = "RewardPanel/AvatarPanel/HeadPortraitPanelVer/AvatarHeadIconSmall_"
    L7_2 = L5_2
    L6_2 = L6_2 .. L7_2
    if L1_2 >= L5_2 then
      L8_2 = A0_2
      L7_2 = A0_2._create_panel
      L9_2 = G
      L9_2 = L9_2.TrialAvatarHeadIconPanel
      L10_2 = G
      L10_2 = L10_2.TrialAvatarHeadIconPanelBinder
      L11_2 = L6_2
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
      L8_2 = A0_2.avatar_panel_list
      L9_2 = A0_2.avatar_panel_list
      L9_2 = #L9_2
      L9_2 = L9_2 + 1
      L8_2[L9_2] = L7_2
      L9_2 = A0_2
      L8_2 = A0_2._safe_get_cmpt
      L10_2 = CS
      L10_2 = L10_2.UnityEngine
      L10_2 = L10_2.UI
      L10_2 = L10_2.Button
      L11_2 = L6_2
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L8_2.IsClearSelectedByInputSwitched = false
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = A0_2.btn_list
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
    else
      L8_2 = A0_2
      L7_2 = A0_2._safe_find
      L9_2 = L6_2
      L7_2 = L7_2(L8_2, L9_2)
      L9_2 = L7_2
      L8_2 = L7_2.SafeSetActive
      L10_2 = false
      L8_2(L9_2, L10_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "RewardPanel/AvatarPanel/KeyMapInfo"
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.node_dot = L2_2
  L2_2 = {}
  A0_2.dot_list = L2_2
  L2_2 = 1
  L3_2 = 5
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = "RewardPanel/AvatarPanel/KeyMapInfo/Dot/Dot"
    L7_2 = L5_2
    L6_2 = L6_2 .. L7_2
    if L1_2 >= L5_2 then
      L8_2 = A0_2
      L7_2 = A0_2._create_panel
      L9_2 = G
      L9_2 = L9_2.DotItemPanel
      L10_2 = G
      L10_2 = L10_2.DotItemPanelBinder
      L11_2 = L6_2
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
      L8_2 = A0_2.dot_list
      L9_2 = A0_2.dot_list
      L9_2 = #L9_2
      L9_2 = L9_2 + 1
      L8_2[L9_2] = L7_2
    else
      L8_2 = A0_2
      L7_2 = A0_2._safe_find
      L9_2 = L6_2
      L7_2 = L7_2(L8_2, L9_2)
      L9_2 = L7_2
      L8_2 = L7_2.SafeSetActive
      L10_2 = false
      L8_2(L9_2, L10_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Button
  L5_2 = "RewardPanel/AvatarPanel/KeyMapInfo/KeyMapInfo_Left/GamepadBtn"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.btn_select_left = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Button
  L5_2 = "RewardPanel/AvatarPanel/KeyMapInfo/KeyMapInfo_Right/GamepadBtn"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.btn_select_right = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._create_panel
  L4_2 = G
  L4_2 = L4_2.RoleTrialActivityDetailInfoPanel
  L5_2 = G
  L5_2 = L5_2.RoleTrialActivityInfoPanelBinder
  L6_2 = ""
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2.info_panel = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._create_panel
  L4_2 = G
  L4_2 = L4_2.RoleTrialActivityDetailInfoPanel
  L5_2 = G
  L5_2 = L5_2.RoleTrialActivityInfoPanelBinderB
  L6_2 = ""
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2.info_panel_B = L2_2
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
