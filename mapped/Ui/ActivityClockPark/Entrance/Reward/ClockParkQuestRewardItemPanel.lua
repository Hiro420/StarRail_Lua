local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityClockPark.Entrance.Reward.ClockParkQuestRewardItemPanelBinder"
L0_1(L1_1)
L0_1 = "UIText_ClockPark_Recover_Progress"
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ClockParkQuestRewardItemPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.QuestModule
function L3_1(A0_2, A1_2, A2_2)
end
L1_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.RewardItemIconLite
  L4_2 = G
  L4_2 = L4_2.RewardItemIconLiteBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._reward_icon_panel = L1_2
  L1_2 = A0_2._reward_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_icon_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._reward_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind_click
  L3_2 = A0_2
  L4_2 = A0_2._on_icon_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._reward_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind_select
  L3_2 = A0_2
  L4_2 = A0_2._on_icon_select
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._reward_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_auto_save_navigation
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L1_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ClockParkProgressRewardExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  A0_2._clock_park_reward_row = L3_2
  A0_2._quest_id = A1_2
  L3_2 = L2_1
  L4_2 = L3_2
  L3_2 = L3_2.TryGetQuestData
  L5_2 = A0_2._quest_id
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._quest_data = L3_2
  L3_2 = A0_2._quest_data
  L3_2 = L3_2 ~= nil
  A0_2._is_available = L3_2
  L3_2 = A0_2._quest_data
  L3_2 = L3_2 ~= nil
  A0_2._is_received = L3_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.QuestDataExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2._quest_id
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.RewardID
  L5_2 = G
  L5_2 = L5_2.RewardUtils
  L5_2 = L5_2.CreateConfigIDList
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = L5_2[1]
  A0_2._rank_item_id = L6_2
  L6_2 = A0_2._reward_icon_panel
  L7_2 = L6_2
  L6_2 = L6_2.setup_view
  L8_2 = A0_2._rank_item_id
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._reward_icon_panel
  L7_2 = L6_2
  L6_2 = L6_2.set_attachment_getted
  L8_2 = A0_2._is_received
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._reward_icon_panel
  L7_2 = L6_2
  L6_2 = L6_2.set_highlight_display
  L8_2 = A0_2._is_available
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._reward_icon_panel
  L7_2 = L6_2
  L6_2 = L6_2.set_reddot_show
  L8_2 = A0_2._is_available
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.text_progress
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetTextID
  L8_2 = L0_1
  L9_2 = A0_2._clock_park_reward_row
  L9_2 = L9_2.QuestProgress
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_available
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = A0_2._is_available
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_received
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = A0_2._is_received
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_default
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = A0_2._is_available
  L8_2 = A0_2._is_received
  L8_2 = not L8_2 and L8_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._is_available
  if not L6_2 then
    L6_2 = A0_2._is_received
    if not L6_2 then
      goto lbl_111
    end
  end
  L6_2 = A0_2._binder
  L6_2 = L6_2.slider_progress
  L6_2.value = 1
  goto lbl_114
  ::lbl_111::
  L6_2 = A0_2._binder
  L6_2 = L6_2.slider_progress
  L6_2.value = 0
  ::lbl_114::
end
L1_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_available
  if L1_2 then
    L1_2 = A0_2._reward_icon_panel
    L2_2 = L1_2
    L1_2 = L1_2.play_effect
    L3_2 = 1
    L1_2(L2_2, L3_2)
  end
end
L1_1.show_sweep_hint = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._reward_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_root_btn
  return L1_2(L2_2)
end
L1_1.get_icon_btn = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_available
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_NetworkManager
    L2_2 = L1_2
    L1_2 = L1_2.JCCHEMBPEEE
    L3_2 = A0_2._quest_id
    L1_2(L2_2, L3_2)
  else
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_show
    L2_2 = "Ui.Common.ItemDetailDialog"
    L1_2 = L1_2(L2_2)
    L3_2 = L1_2
    L2_2 = L1_2.setup_view
    L4_2 = A0_2._rank_item_id
    L2_2(L3_2, L4_2)
  end
end
L1_1._on_icon_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.setup_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "Menu_Confirm"
  L5_2 = "ActionGroup_Return"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L1_2(L2_2, L3_2)
end
L1_1._on_icon_select = L3_1
return L1_1
