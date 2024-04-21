local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.MapSymbolDetailPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MapActivityDetailPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2.param_data = A1_2
  L2_2 = A0_2.param_data
  L2_2 = L2_2.map_icon_data
  L2_2 = L2_2.EntranceID
  A0_2.entrance_id = L2_2
  L2_2 = {}
  A0_2._reward_item_list = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_items
  L3_2 = L2_2
  L2_2 = L2_2.init
  L4_2 = A0_2
  L5_2 = 0
  L6_2 = A0_2._on_reward_item_change
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_mapping_info_activity_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_btn_callback
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_game_pad
  L5_2 = A0_2._on_btn_game_pad_click
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._reward_item_list
  L1_2 = #L1_2
  if 0 < L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_active
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = {}
      L2_2 = A0_2._reward_item_list
      L1_2.items = L2_2
      L2_2 = G
      L2_2 = L2_2.InventoryUtils
      L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
end
L0_1._on_btn_game_pad_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = A0_2.param_data
  L1_2 = L1_2.map_icon_data
  L1_2 = L1_2.MappingInfoRow
  L1_2 = L1_2.DisplayItemList
  L1_2 = L1_2.Length
  if 0 < L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._refresh_mapping_info_reward
    L3_2 = A0_2.param_data
    L3_2 = L3_2.map_icon_data
    L3_2 = L3_2.MappingInfoRow
    L3_2 = L3_2.DisplayItemList
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.SpecialMappingInfoExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2.param_data
  L2_2 = L2_2.map_icon_data
  L2_2 = L2_2.MappingInfoRow
  L2_2 = L2_2.ID
  L3_2 = A0_2.param_data
  L3_2 = L3_2.map_icon_data
  L3_2 = L3_2.MappingInfoRow
  L3_2 = L3_2.WorldLevel
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._get_available_activity_data
    L4_2 = L1_2.ParamList
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.node_reward_panel
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = true
      L3_2(L4_2, L5_2)
      L3_2 = {}
      L4_2 = 0
      L5_2 = L2_2.SortedDisplayItemList
      L5_2 = L5_2.Length
      L5_2 = L5_2 - 1
      L6_2 = 1
      for L7_2 = L4_2, L5_2, L6_2 do
        L8_2 = L2_2.SortedDisplayItemList
        L8_2 = L8_2[L7_2]
        L9_2 = table
        L9_2 = L9_2.insert
        L10_2 = L3_2
        L11_2 = G
        L11_2 = L11_2.RewardUtils
        L11_2 = L11_2.CreateRewardItem
        L12_2 = L8_2.ItemID
        L13_2 = L8_2.Count
        L11_2, L12_2, L13_2 = L11_2(L12_2, L13_2)
        L9_2(L10_2, L11_2, L12_2, L13_2)
      end
      L5_2 = A0_2
      L4_2 = A0_2._refresh_mapping_info_reward_by_item_table
      L6_2 = L3_2
      L4_2(L5_2, L6_2)
      L5_2 = A0_2
      L4_2 = A0_2._try_activity_reddot_show
      L6_2 = L2_2
      L4_2(L5_2, L6_2)
    else
      L3_2 = A0_2._binder
      L3_2 = L3_2.node_reward_panel
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = false
      L3_2(L4_2, L5_2)
    end
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_reward_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_mapping_info_activity_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_mapping_info_reward_by_item_table
  L4_2 = G
  L4_2 = L4_2.RewardUtils
  L4_2 = L4_2.get_sorted_items_by_item_config_list
  L5_2 = A1_2
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._refresh_mapping_info_reward = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_reward_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = #A1_2
  L4_2 = 0 < L4_2
  L2_2(L3_2, L4_2)
  A0_2._reward_item_table = A1_2
  L2_2 = {}
  A0_2._reward_item_list = L2_2
  L2_2 = A0_2._reward_item_table
  L2_2 = #L2_2
  if 0 < L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_items
    L3_2 = L2_2
    L2_2 = L2_2.SetListItemCount
    L4_2 = A0_2._reward_item_table
    L4_2 = #L4_2
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_items
    L3_2 = L2_2
    L2_2 = L2_2.RefreshAllShownItem
    L2_2(L3_2)
    L2_2 = ipairs
    L3_2 = A0_2._reward_item_table
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._reward_item_list
      L9_2 = L6_2.ItemID
      L7_2(L8_2, L9_2)
    end
  end
end
L0_1._refresh_mapping_info_reward_by_item_table = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.ActivityModule
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.ResidentActivityModule
  L4_2 = 0
  L5_2 = A1_2.Length
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L9_2 = L2_2
    L8_2 = L2_2.GetActivityDataByPanelID
    L10_2 = A1_2[L7_2]
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 then
      L10_2 = L8_2
      L9_2 = L8_2.IsAvailable
      L9_2 = L9_2(L10_2)
      if L9_2 then
        return L8_2
      end
    end
    L10_2 = L3_2
    L9_2 = L3_2.GetActivityDataByPanelID
    L11_2 = A1_2[L7_2]
    L9_2 = L9_2(L10_2, L11_2)
    L8_2 = L9_2
    if L8_2 then
      L10_2 = L8_2
      L9_2 = L8_2.IsAvailable
      L9_2 = L9_2(L10_2)
      if L9_2 then
        return L8_2
      end
    end
  end
  L4_2 = nil
  return L4_2
end
L0_1._get_available_activity_data = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 then
    L3_2 = A1_2
    L2_2 = A1_2.IsShowMappingInfoNewContentRedDot
    L2_2 = L2_2(L3_2)
    L4_2 = A1_2
    L3_2 = A1_2.IsShowMappingInfoRewardRedDot
    L3_2 = L3_2(L4_2)
    L4_2 = L2_2 or L4_2
    if not L2_2 then
      L4_2 = L3_2
    end
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_red_dot_tip
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
    if L4_2 then
      L5_2 = A0_2._binder
      L5_2 = L5_2.text_red_dot_tip
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetTextID
      if L3_2 then
        L7_2 = "UIText_ActivityRedDot_Reward"
        if L7_2 then
          goto lbl_26
        end
      end
      L7_2 = "UIText_ActivityRedDot_New"
      ::lbl_26::
      L5_2(L6_2, L7_2)
    end
  end
end
L0_1._try_activity_reddot_show = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2
  L3_2 = A0_2._on_reward_item_change_common
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = A0_2._reward_item_table
  L8_2 = true
  return L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_reward_item_change = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L6_2 = A1_2
  L5_2 = A1_2.NewListViewItem
  L7_2 = 0
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_2.UserObjectData
  if L6_2 == nil then
    L8_2 = A0_2
    L7_2 = A0_2.create_panel
    L9_2 = G
    L9_2 = L9_2.RewardItemIconLite
    L10_2 = G
    L10_2 = L10_2.RewardItemIconLiteBinder
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L6_2 = L7_2
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = L5_2.transform
    L7_2(L8_2, L9_2)
    L5_2.UserObjectData = L6_2
  end
  L7_2 = A2_2 + 1
  L7_2 = A3_2[L7_2]
  L9_2 = L6_2
  L8_2 = L6_2.setup_view_by_reward_item
  L10_2 = L7_2
  L11_2 = A4_2
  L8_2(L9_2, L10_2, L11_2)
  return L5_2
end
L0_1._on_reward_item_change_common = L1_1
return L0_1
