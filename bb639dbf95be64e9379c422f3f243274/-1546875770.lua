local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PunkLordRewardItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 300201
function L2_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._config_id_list = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L0_1._on_in_control_action_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._config_id_list
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_root
    L1_2 = L1_2.IsSelectedByController
    if L1_2 then
      L1_2 = A0_2._is_over_bonus_reward
      if L1_2 then
        L2_2 = A0_2
        L1_2 = A0_2._report_overdose_point_reward
        L1_2(L2_2)
      end
      L1_2 = {}
      L2_2 = A0_2._config_id_list
      L1_2.items = L2_2
      L1_2.sync_load = true
      L2_2 = G
      L2_2 = L2_2.InventoryUtils
      L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      L3_2 = A0_2._extra_item_desc_list
      if L3_2 ~= nil then
        L4_2 = L2_2
        L3_2 = L2_2.set_desc_text_params
        L5_2 = 1
        L6_2 = A0_2._extra_item_desc_list
        L3_2(L4_2, L5_2, L6_2)
      end
    end
  end
end
L0_1._on_left_stick_button_click = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.get_in_control_button
    L2_2.ActionEnabled = A1_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.get_in_control_tip
    L2_2.IsShowTip = A1_2
  end
end
L0_1.setup_in_control_button_enable = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.setup_in_control_button_enable
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L1_2.onDeselectTrigger = L2_2
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
    L0_3 = L0_3.setup_in_control_button_enable
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_in_control_button_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_get
  L4_2 = A0_2._on_btn_get
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._data = nil
  A0_2._reward_items = nil
  A0_2._random_reward_items = nil
  A0_2._config_id_list = nil
end
L0_1._on_dispose = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_type_normal
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = true
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_type_over_bonus
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = false
  L6_2(L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2.set_is_over_bonus_reward
  L8_2 = false
  L6_2(L7_2, L8_2)
  A0_2._data = A1_2
  L6_2 = A0_2._data
  L6_2 = L6_2.RewardPoint
  L8_2 = A0_2
  L7_2 = A0_2._setup_rewards
  L7_2(L8_2)
  L8_2 = A0_2
  L7_2 = A0_2._setup_progress
  L9_2 = A2_2
  L10_2 = L6_2
  L11_2 = A4_2
  L12_2 = A5_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L8_2 = A0_2
  L7_2 = A0_2._setup_status
  L9_2 = A2_2 >= L6_2
  L10_2 = A3_2
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.UI
  L7_2 = L7_2.LayoutRebuilder
  L7_2 = L7_2.ForceRebuildLayoutImmediate
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_layout
  L7_2(L8_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_type_normal
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = false
  L8_2(L9_2, L10_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_type_over_bonus
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = true
  L8_2(L9_2, L10_2)
  L9_2 = A0_2
  L8_2 = A0_2.set_is_over_bonus_reward
  L10_2 = true
  L8_2(L9_2, L10_2)
  A0_2._data = A1_2
  L8_2 = A0_2._data
  L8_2 = L8_2.RewardPoint
  L10_2 = A0_2
  L9_2 = A0_2._setup_over_bonus_reward
  L11_2 = A4_2
  L12_2 = A5_2
  L9_2(L10_2, L11_2, L12_2)
  L10_2 = A0_2
  L9_2 = A0_2._setup_progress_bonus
  L11_2 = A2_2
  L12_2 = L8_2
  L13_2 = A6_2
  L14_2 = A7_2
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
  L10_2 = A0_2
  L9_2 = A0_2._setup_status
  L11_2 = A2_2 >= L8_2
  L12_2 = A3_2
  L9_2(L10_2, L11_2, L12_2)
  L9_2 = CS
  L9_2 = L9_2.UnityEngine
  L9_2 = L9_2.UI
  L9_2 = L9_2.LayoutRebuilder
  L9_2 = L9_2.ForceRebuildLayoutImmediate
  L10_2 = A0_2._binder
  L10_2 = L10_2.node_layout
  L9_2(L10_2)
end
L0_1.setup_view_for_over_bonus = L2_1
function L2_1(A0_2, A1_2)
  A0_2._is_over_bonus_reward = A1_2
end
L0_1.set_is_over_bonus_reward = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._data
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
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_view
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = 0
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_view
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._reward_items
  L4_2 = #L4_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_view
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.CreateConfigIDList
  L3_2 = A0_2._data
  L3_2 = L3_2.RewardID
  L2_2 = L2_2(L3_2)
  A0_2._config_id_list = L2_2
end
L0_1._setup_rewards = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_21
    end
  end
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
  ::lbl_21::
  L5_2 = A0_2._reward_items
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2.ItemID
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_count
  L8_2 = L5_2.Count
  L9_2 = nil
  L10_2 = false
  L6_2(L7_2, L8_2, L9_2, L10_2)
  return L3_2
end
L0_1._on_item_changed = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.txt_score
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetText
  L7_2 = A2_2
  L5_2(L6_2, L7_2)
end
L0_1._setup_progress = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.txt_score
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetText
  L7_2 = A3_2
  L8_2 = "+"
  L7_2 = L7_2 .. L8_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.txt_cur_bonus_point
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetText
  L7_2 = A1_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.txt_total_bonus_point
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = "UIText_Forward_Slash_WithPara"
  L8_2 = A2_2
  L5_2(L6_2, L7_2, L8_2)
end
L0_1._setup_progress_bonus = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_inprogress
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not A1_2 and L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_get
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2 or L5_2
  if A1_2 then
    L5_2 = not A2_2
  end
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_gotten
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L0_1._setup_status = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = {}
  L4_2 = L1_1
  L3_2[1] = L4_2
  A0_2._config_id_list = L3_2
  L3_2 = {}
  A0_2._extra_item_desc_list = L3_2
  L3_2 = ipairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.ItemExcelTable
    L8_2 = L8_2.GetData
    L9_2 = L7_2.ItemID
    L8_2 = L8_2(L9_2)
    L9_2 = G
    L9_2 = L9_2.TextmapStatic
    L9_2 = L9_2.GetText
    L10_2 = L8_2.ItemName
    L9_2 = L9_2(L10_2)
    L10_2 = L7_2.Count
    L11_2 = table
    L11_2 = L11_2.insert
    L12_2 = A0_2._extra_item_desc_list
    L13_2 = L9_2
    L11_2(L12_2, L13_2)
    L11_2 = table
    L11_2 = L11_2.insert
    L12_2 = A0_2._extra_item_desc_list
    L13_2 = L10_2
    L11_2(L12_2, L13_2)
  end
  L3_2 = ipairs
  L4_2 = A2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.ItemExcelTable
    L8_2 = L8_2.GetData
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    L9_2 = G
    L9_2 = L9_2.TextmapStatic
    L9_2 = L9_2.GetText
    L10_2 = L8_2.ItemName
    L9_2 = L9_2(L10_2)
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = A0_2._extra_item_desc_list
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.extra_item
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L1_1
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.extra_item
  L4_2 = L3_2
  L3_2 = L3_2.set_detail_desc_text_params
  L5_2 = A0_2._extra_item_desc_list
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.extra_item
  L4_2 = L3_2
  L3_2 = L3_2.append_click
  L5_2 = A0_2
  L6_2 = A0_2._report_overdose_point_reward
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._setup_over_bonus_reward = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2._owner
  L2_2 = L2_2.__name
  L3_2 = A0_2.__name
  L4_2 = "PunkLordOverdosePointReward"
  L5_2 = A0_2._owner
  L5_2 = L5_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._report_overdose_point_reward = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_over_bonus_reward
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_NetworkManager
    L2_2 = L1_2
    L1_2 = L1_2.DNMLENADBGF
    L3_2 = 0
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_NetworkManager
    L2_2 = L1_2
    L1_2 = L1_2.DNMLENADBGF
    L3_2 = A0_2._data
    L3_2 = L3_2.RewardLevel
    L4_2 = false
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._on_btn_get = L2_1
return L0_1
