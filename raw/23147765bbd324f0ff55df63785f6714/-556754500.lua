local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.OutsideReward.ChessRogueRewardInfoItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueRewardInfoItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_get
  L4_2 = A0_2._on_btn_get
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_detail
  L4_2 = A0_2._on_btn_detail
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_reward
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_reward_item_changed
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_in_control_button_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.setup_in_control_button_enable
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
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
  L1_2 = L1_2.node_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2.onSelectTrigger = nil
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2.onDeselectTrigger = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if A2_2 == nil then
    A2_2 = true
  end
  L3_2 = A1_2.ID
  A0_2._quest_id = L3_2
  L3_2 = A1_2.DataRow
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.FinishWayExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L3_2.FinishWayID
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_desc
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = L3_2.QuestTitle
  L8_2 = L4_2.ParamInt1
  L9_2 = L4_2.ParamInt2
  L10_2 = L4_2.ParamInt3
  L11_2 = A1_2.TotalProgress
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_progress_first
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetText
  L7_2 = tostring
  L8_2 = A1_2.Progress
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2(L8_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_progress_second
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetText
  L7_2 = tostring
  L8_2 = A1_2.TotalProgress
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2(L8_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L5_2 = A1_2.Status
  L6_2 = CS
  L6_2 = L6_2.LEOGBBOPKKO
  L6_2 = L6_2.CMOFEAFMGAK
  L6_2 = L5_2 == L6_2 and L6_2
  L7_2 = CS
  L7_2 = L7_2.LEOGBBOPKKO
  L7_2 = L7_2.JKFPIINHGPD
  L7_2 = L5_2 == L7_2 and L7_2
  L9_2 = A0_2
  L8_2 = A0_2._refresh_reward_info
  L10_2 = A1_2.RewardID
  L11_2 = L6_2
  L8_2(L9_2, L10_2, L11_2)
  L9_2 = A0_2
  L8_2 = A0_2._refresh_btn_state
  L10_2 = L7_2
  L11_2 = L6_2
  L12_2 = A2_2
  L8_2(L9_2, L10_2, L11_2, L12_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_extra_content
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = false
  L8_2(L9_2, L10_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_extra_content
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_extra_content_show = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.RewardExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.IsSpecial
  A0_2._is_special = L4_2
  A0_2._is_reward_taken = A2_2
  A0_2._reward_id = A1_2
  L4_2 = G
  L4_2 = L4_2.RewardUtils
  L4_2 = L4_2.CreateRewardItemTableSorted
  L5_2 = A0_2._reward_id
  L4_2 = L4_2(L5_2)
  A0_2._reward_data = L4_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.list_reward
  L5_2 = L4_2
  L4_2 = L4_2.SetListItemCount
  L6_2 = A0_2._reward_data
  L6_2 = #L6_2
  L7_2 = true
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.list_reward
  L5_2 = L4_2
  L4_2 = L4_2.RefreshAllShownItem
  L4_2(L5_2)
end
L0_1._refresh_reward_info = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_lock
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not A3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_got
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A2_2 or L6_2
  if A2_2 then
    L6_2 = A3_2
  end
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_progress_with_count
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not A1_2 and L6_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_get
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A1_2 or L6_2
  L6_2 = A1_2 and not A2_2 and L6_2
  L4_2(L5_2, L6_2)
  if A2_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.canvas_group
    L4_2.alpha = 0.7
  else
    L4_2 = A0_2._binder
    L4_2 = L4_2.canvas_group
    L4_2.alpha = 1.0
  end
end
L0_1._refresh_btn_state = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._refresh_reward_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = L1_2
  L1_2 = L1_2.JCCHEMBPEEE
  L3_2 = A0_2._quest_id
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_get = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L2_2 = 1
  L3_2 = A0_2._reward_data
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = L1_2
    L8_2 = A0_2._reward_data
    L8_2 = L8_2[L5_2]
    L8_2 = L8_2.ItemID
    L6_2(L7_2, L8_2)
  end
  L2_2 = {}
  L2_2.items = L1_2
  L3_2 = G
  L3_2 = L3_2.InventoryUtils
  L3_2 = L3_2.show_item_detail_display_dialog_for_gamepad
  L4_2 = L2_2
  L3_2(L4_2)
end
L0_1._on_btn_detail = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
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
  L5_2 = A0_2._reward_data
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
  L6_2 = L5_2.UID
  if L6_2 ~= nil then
    L6_2 = L5_2.UID
    if L6_2 ~= 0 then
      L7_2 = L4_2
      L6_2 = L4_2.set_count_display
      L8_2 = false
      L6_2(L7_2, L8_2)
    end
  end
  return L3_2
end
L0_1._on_reward_item_changed = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_btn_get
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_tip_get
  L2_2.IsShowTip = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_btn_detail
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_key_map_zoom
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_in_control_button_enable = L1_1
return L0_1
