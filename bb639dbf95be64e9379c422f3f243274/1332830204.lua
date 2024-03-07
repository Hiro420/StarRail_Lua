local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Utilities.QuestUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.CommonRewardListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.CommonRewardListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BoxingClub.Components.BoxingClubResonanceResidentQuestPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BoxingClubResonanceResidentQuestPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.QuestModule
L2_1 = {}
L2_1[1] = "UIText_Roman_Number_Text_1"
L2_1[2] = "UIText_Roman_Number_Text_2"
L2_1[3] = "UIText_Roman_Number_Text_3"
L2_1[4] = "UIText_Roman_Number_Text_4"
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "BoxingClubResonance_ResidentQuest_Badge_Path"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.StringValue
  A0_2.bg_img_path = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._callback = nil
  A0_2._callback_listener = nil
  A0_2._callback_param = nil
end
L0_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_icon_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_reward_item_change
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_get
  L4_2 = A0_2._on_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_select
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_deselect
    L0_3(L1_3)
  end
  L1_2.onDeselectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2.set_in_control_get_enabled
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = string
  L3_2 = L3_2.gsub
  L4_2 = A0_2.bg_img_path
  L5_2 = "1.png"
  L6_2 = tostring
  L7_2 = A2_2
  L6_2 = L6_2(L7_2)
  L7_2 = ".png"
  L6_2 = L6_2 .. L7_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A0_2.bg_img_path = L3_2
  A0_2.quest_id = A1_2
  A0_2.index = A2_2
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.TryGetQuestData
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._quest_data = L3_2
  L3_2 = A0_2._quest_data
  if L3_2 == nil then
    return
  end
  L3_2 = G
  L3_2 = L3_2.QuestUtils
  L3_2 = L3_2.setup_title
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_title
  L5_2 = A0_2._quest_data
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_rewards
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_status
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_index
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.in_control_keymap_info
  L3_2.IsShowTipBySelected = false
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_icon_view
  L2_2 = CS
  L2_2 = L2_2.SuperScrollView
  L2_2 = L2_2.GridItemArrangeType
  L2_2 = L2_2.TopRightToBottomLeft
  L1_2.ArrangeType = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_icon_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshViewportAndContentPivotAndAnchor
  L1_2(L2_2)
  L1_2 = A0_2._quest_data
  L1_2 = L1_2.DataRow
  L1_2 = L1_2.RewardID
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.CreateRewardItemTableSorted
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = {}
  end
  A0_2._reward_items = L2_2
  L2_2 = {}
  L3_2 = 1
  L4_2 = A0_2._reward_items
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L2_2
    L9_2 = A0_2._reward_items
    L10_2 = A0_2._reward_items
    L10_2 = #L10_2
    L10_2 = L10_2 - L6_2
    L10_2 = L10_2 + 1
    L9_2 = L9_2[L10_2]
    L7_2(L8_2, L9_2)
  end
  A0_2._reward_items = L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.reward_icon_view
  L4_2 = L3_2
  L3_2 = L3_2.SetListItemCount
  L5_2 = A0_2._reward_items
  L5_2 = #L5_2
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.reward_icon_view
  L4_2 = L3_2
  L3_2 = L3_2.RefreshAllShownItem
  L3_2(L4_2)
  L3_2 = G
  L3_2 = L3_2.RewardUtils
  L3_2 = L3_2.CreateConfigIDList
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  A0_2._config_id_list = L3_2
end
L0_1._setup_rewards = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._quest_data
  L1_2 = L1_2.Status
  L2_2 = CS
  L2_2 = L2_2.BLHLCHNAJKK
  L2_2 = L2_2.BMEAGBEFNFK
  if L1_2 == L2_2 then
    L1_2 = A0_2._quest_data
    L1_2 = L1_2.TotalProgress
    if 1 < L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.text_cur_progress
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetText
      L3_2 = A0_2._quest_data
      L3_2 = L3_2.Progress
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.text_total_progress
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetText
      L3_2 = A0_2._quest_data
      L3_2 = L3_2.TotalProgress
      L1_2(L2_2, L3_2)
    end
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_in_progress
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = A0_2._quest_data
    L3_2 = L3_2.TotalProgress
    L3_2 = L3_2 <= 1
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_in_progress_count
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = A0_2._quest_data
    L3_2 = L3_2.TotalProgress
    L3_2 = 1 < L3_2
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_in_progress
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_in_progress_count
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_btn_get
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._quest_data
  L3_2 = L3_2.Status
  L4_2 = CS
  L4_2 = L4_2.BLHLCHNAJKK
  L4_2 = L4_2.CDJHHIHBNMN
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_complete
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._quest_data
  L3_2 = L3_2.Status
  L4_2 = CS
  L4_2 = L4_2.BLHLCHNAJKK
  L4_2 = L4_2.FMLBEGJJHMJ
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_status = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_phase_no
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2.index
  L3_2 = L2_1[L3_2]
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_phase_icon
  L4_2 = A0_2.bg_img_path
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_index = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._config_id_list
  if L1_2 ~= nil then
    L1_2 = A0_2._config_id_list
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = {}
      L2_2 = A0_2._config_id_list
      L1_2.items = L2_2
      L2_2 = G
      L2_2 = L2_2.InventoryUtils
      L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
end
L0_1.show_reward_dialog = L3_1
function L3_1(A0_2, A1_2, A2_2, ...)
  local L3_2
  A0_2._callback = A1_2
  A0_2._callback_listener = A2_2
  L3_2 = (...)
  A0_2._callback_param = L3_2
end
L0_1.register_callback = L3_1
function L3_1(A0_2, A1_2, A2_2, ...)
  local L3_2
  A0_2._on_select_callback = A1_2
  A0_2._on_select_listener = A2_2
  L3_2 = (...)
  A0_2._on_select_param = L3_2
end
L0_1.register_select_callback = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.in_control_btn_get
  L2_2.ActionEnabled = A1_2
end
L0_1.set_in_control_get_enabled = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_navigation_btn_gameobject = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._callback
  if L1_2 ~= nil then
    L1_2 = A0_2._callback
    L2_2 = A0_2._callback_listener
    L3_2 = A0_2._callback_param
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._on_select_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._on_select_callback
    L2_2 = A0_2._on_select_listener
    L3_2 = A0_2._on_select_param
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.in_control_keymap_info
  L1_2.IsShowTipBySelected = true
  L2_2 = A0_2
  L1_2 = A0_2.set_in_control_get_enabled
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_select = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.in_control_keymap_info
    L1_2.IsShowTipBySelected = false
    L2_2 = A0_2
    L1_2 = A0_2.set_in_control_get_enabled
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_deselect = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.RewardItemIconLite
    L8_2 = G
    L8_2 = L8_2.RewardItemIconLiteBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._reward_items
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L7_2 = L7_2.ItemID
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_count
  L7_2 = A0_2._reward_items
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L7_2 = L7_2.Count
  L5_2(L6_2, L7_2)
  return L3_2
end
L0_1._on_reward_item_change = L3_1
return L0_1
