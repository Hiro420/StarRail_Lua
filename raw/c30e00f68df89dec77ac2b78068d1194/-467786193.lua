local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Friend.SupportRewardDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Friend.SupportRewardInfoPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SupportRewardDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.ConstValueCommonExcelTable
L1_1 = L1_1.GetData
L2_1 = "Assist_Reward_Coin_Num"
L1_1 = L1_1(L2_1)
L1_1 = L1_1.Value
L1_1 = L1_1.UintValue
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.SupportRewardDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  A0_2._data = A1_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FriendDataUpdated
  L4_2 = A0_2._on_friend_data_changed
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_get_reward_info_item
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_content
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_total_count
  L1_2(L2_2)
  L1_2 = A0_2._data
  L1_2 = L1_2.SupportDataList
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.FriendModule
  L2_2 = L2_2.EnablePSFriendCmpt
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._refresh_ps_view
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._refresh_normal_view
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_next_frame_callback
  L3_2 = A0_2._refresh_shortcut_hint
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._init_ui_navigation
  L2_2(L3_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_total
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._data
  L3_2 = L3_2.TotalReward
  L3_2 = L3_2.Count
  L1_2(L2_2, L3_2)
end
L0_1._refresh_total_count = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = {}
  A0_2._data_list = L2_2
  if A1_2 ~= nil then
    L2_2 = 0
    L3_2 = A1_2.Count
    L3_2 = L3_2 - 1
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = A1_2[L5_2]
      L7_2 = L6_2.PlatformInfo
      L7_2 = L7_2.IsPSPlayer
      if L7_2 then
        L7_2 = A0_2._data_list
        L8_2 = A0_2._data_list
        L8_2 = #L8_2
        L8_2 = L8_2 + 1
        L7_2[L8_2] = L6_2
      end
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.reward_list
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._data_list
  L4_2 = #L4_2
  L4_2 = L4_2 + 1
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.reward_list
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
end
L0_1._refresh_ps_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = {}
  A0_2._data_list = L2_2
  if A1_2 ~= nil then
    L2_2 = 0
    L3_2 = A1_2.Count
    L3_2 = L3_2 - 1
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = A0_2._data_list
      L7_2 = A0_2._data_list
      L7_2 = #L7_2
      L7_2 = L7_2 + 1
      L8_2 = A1_2[L5_2]
      L6_2[L7_2] = L8_2
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.reward_list
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._data_list
  L4_2 = #L4_2
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.reward_list
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
end
L0_1._refresh_normal_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_detail_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_scroll_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2 or L4_2
  if L1_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.scroll_rect
    L5_2 = L4_2
    L4_2 = L4_2.CanScroll
    L4_2 = L4_2(L5_2)
  end
  L2_2(L3_2, L4_2)
end
L0_1._refresh_shortcut_hint = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 ~= nil then
    L2_2 = A1_2.SupportCount
    L3_2 = L1_1
    L2_2 = L2_2 * L3_2
    return L2_2
  end
  L2_2 = A0_2._data
  L2_2 = L2_2.TotalReward
  L2_2 = L2_2.Count
  L3_2 = ipairs
  L4_2 = A0_2._data_list
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.SupportCount
    L9_2 = L1_1
    L8_2 = L8_2 * L9_2
    L2_2 = L2_2 - L8_2
  end
  return L2_2
end
L0_1._get_display_count = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.SupportRewardInfoPanel
    L8_2 = G
    L8_2 = L8_2.SupportRewardInfoPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._data_list
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L10_2 = A0_2
  L9_2 = A0_2._get_display_count
  L11_2 = L5_2
  L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2)
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  return L3_2
end
L0_1._on_get_reward_info_item = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._need_refresh = true
end
L0_1._on_friend_data_changed = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._need_refresh
  if not L1_2 then
    return
  end
  A0_2._need_refresh = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._on_return_to_top = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L3_2 = L2_2
    L2_2 = L2_2.get_first_selected_object
    return L2_2(L3_2)
  end
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_shortcut_hint
  L1_2(L2_2)
end
L0_1._on_in_control_input_switch = L2_1
return L0_1
