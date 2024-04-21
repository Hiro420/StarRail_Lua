local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLiteBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPanel.PunkLordActivityPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.GameCore
L0_1 = L0_1.ConstValueCommonExcelTable
L0_1 = L0_1.GetData
L1_1 = "PunkLord_Activity_Panel_Reward"
L0_1 = L0_1(L1_1)
L0_1 = L0_1.Value
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.ConstValueCommonExcelTable
L1_1 = L1_1.GetData
L2_1 = "PunkLord_Mission_Unlock"
L1_1 = L1_1(L2_1)
L1_1 = L1_1.Value
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.MissionModule
L3_1 = 40001
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "PunkLordActivityPanel"
L6_1 = G
L6_1 = L6_1.TabItem
L4_1 = L4_1(L5_1, L6_1)
function L5_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._activity_data = A3_2
end
L4_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._is_custom_loaded
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go
  L4_2 = A0_2._on_btn_go
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_explain
  L4_2 = A0_2._on_btn_explain
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_game_pad
  L4_2 = A0_2._on_btn_game_pad_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = {}
  A0_2._config_ids = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_reward_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2._is_custom_loaded = true
end
L4_1._custom_on_load = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = false
    return L2_2
  end
end
L4_1._is_can_to_zoom = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._config_ids
  if L1_2 ~= nil then
    L1_2 = A0_2._config_ids
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = {}
      L2_2 = A0_2._config_ids
      L1_2.items = L2_2
      L2_2 = G
      L2_2 = L2_2.InventoryUtils
      L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
end
L4_1._on_btn_game_pad_click = L5_1
function L5_1(A0_2)
  local L1_2
  A0_2._unlock_mission_ids = nil
  A0_2._cs_unlock_mission_ids = nil
end
L4_1._on_dispose = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_unlock_mission
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_tab_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_reddot
  L1_2(L2_2)
end
L4_1._on_added = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2._get_panel_prefab_path_by_activity_data
  L3_2 = A0_2._activity_data
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._is_custom_bind
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.bind
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  A0_2._is_custom_bind = true
  L3_2 = A0_2
  L2_2 = A0_2._custom_on_load
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_reward
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_remain_time
  L2_2(L3_2)
end
L4_1._on_select = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L4_1._on_unselect = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  A0_2._unlock_mission_ids = L1_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.UInt32
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2()
  A0_2._cs_unlock_mission_ids = L1_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.string_split
  L2_2 = L1_1
  L3_2 = ","
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = tonumber
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._unlock_mission_ids
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    L8_2 = A0_2._cs_unlock_mission_ids
    L9_2 = L8_2
    L8_2 = L8_2.Add
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
end
L4_1._init_unlock_mission = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._activity_data
  L1_2(L2_2, L3_2)
end
L4_1._setup_tab_panel = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1
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
  L2_2 = L2_2.scroll_reward_list
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._reward_items
  L4_2 = #L4_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_reward_list
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_config_ids
  L2_2(L3_2)
end
L4_1._setup_reward = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._config_ids = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._reward_items
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._config_ids
    L8_2 = L5_2.ItemID
    L6_2(L7_2, L8_2)
  end
end
L4_1._refresh_config_ids = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
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
  L6_2 = L4_2.set_count_display
  L8_2 = false
  L6_2(L7_2, L8_2)
  return L3_2
end
L4_1._on_item_changed = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.remain_timer
  L2_2 = L1_2
  L1_2 = L1_2.SetTargetTime
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.EndTimeDate
  L4_2 = A0_2._expire_call_back
  L5_2 = A0_2
  L6_2 = 2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L4_1._setup_remain_time = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ActivityQuest"
  L4_2 = A0_2._activity_data
  L4_2 = L4_2.PanelID
  L1_2(L2_2, L3_2, L4_2)
end
L4_1._setup_reddot = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._unlock_mission_ids
  if L1_2 ~= nil then
    L1_2 = A0_2._unlock_mission_ids
    L1_2 = #L1_2
    if L1_2 ~= 0 then
      goto lbl_11
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._goto_punklord
  L1_2(L2_2)
  do return end
  ::lbl_11::
  L1_2 = A0_2._unlock_mission_ids
  L1_2 = L1_2[1]
  L2_2 = A0_2._unlock_mission_ids
  L3_2 = A0_2._unlock_mission_ids
  L3_2 = #L3_2
  L2_2 = L2_2[L3_2]
  L3_2 = L2_1
  L4_2 = L3_2
  L3_2 = L3_2.MainMissionDataPromised
  L5_2 = A0_2._cs_unlock_mission_ids
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2
  L3_2 = L3_2.ThenLuaAction
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = L2_1
    L1_3 = L0_3
    L0_3 = L0_3.TryGetMainMissionData
    L2_3 = L1_2
    L0_3 = L0_3(L1_3, L2_3)
    if L0_3 then
      L1_3 = L0_3.IsShow
      if L1_3 == false then
        L1_3 = L0_3.IsStart
        if L1_3 == true then
          L1_3 = A0_2
          L2_3 = L1_3
          L1_3 = L1_3._try_show_message_if_mission_not_get
          L1_3(L2_3)
          return
      end
    end
    elseif L0_3 then
      L1_3 = L0_3.IsFinish
      if L1_3 == false then
        L1_3 = G
        L1_3 = L1_3.NotifyManager
        L1_3 = L1_3.notify
        L2_3 = G
        L2_3 = L2_3.CS
        L2_3 = L2_3.NotifyType
        L2_3 = L2_3.UIPileToastMessageTextID
        L3_3 = "UIText_PunkLord_Tutorial_Notfinished"
        L1_3(L2_3, L3_3)
        return
      end
    end
    L1_3 = L2_1
    L2_3 = L1_3
    L1_3 = L1_3.TryGetMainMissionData
    L3_3 = L2_2
    L1_3 = L1_3(L2_3, L3_3)
    L2_3 = L2_2
    if L2_3 == nil then
      return
    end
    if L1_3 then
      L2_3 = L1_3.IsFinish
      if L2_3 then
        L2_3 = A0_2
        L3_3 = L2_3
        L2_3 = L2_3._goto_punklord
        L2_3(L3_3)
    end
    else
      L2_3 = A0_2
      L3_3 = L2_3
      L2_3 = L2_3._get_unfinished_mission_id
      L2_3 = L2_3(L3_3)
      L3_3 = A0_2
      L4_3 = L3_3
      L3_3 = L3_3._goto_mission_panel
      L5_3 = L2_3
      L3_3(L4_3, L5_3)
    end
  end
  L3_2(L4_2, L5_2)
end
L4_1._on_btn_go = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.GotoManager
  L1_2 = L1_2.Goto
  L2_2 = 3600
  L1_2(L2_2)
end
L4_1._goto_punklord = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.GotoManager
  L2_2 = L2_2.Goto
  L3_2 = 700
  L4_2 = {}
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.MainMissionType
  L5_2 = L5_2.None
  L5_2 = #L5_2
  L6_2 = A1_2
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L2_2(L3_2, L4_2)
end
L4_1._goto_mission_panel = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = A0_2._unlock_mission_ids
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L2_1
    L7_2 = L6_2
    L6_2 = L6_2.TryGetMainMissionData
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L7_2 = L6_2.IsFinish
      if not L7_2 then
        return L5_2
      end
    end
  end
end
L4_1._get_unfinished_mission_id = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.show_introduce
  L2_2 = A0_2._activity_data
  L2_2 = L2_2.TagDesc
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.IntroDesc
  L1_2(L2_2, L3_2)
end
L4_1._on_btn_explain = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.GotoConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L3_1
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.ParamIntList
    L2_2 = L2_2.Length
    if L2_2 ~= 0 then
      goto lbl_15
    end
  end
  do return end
  ::lbl_15::
  L2_2 = L1_2.ParamIntList
  L2_2 = L2_2[0]
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.MessageModule
  L4_2 = L3_2
  L3_2 = L3_2.GetContactByGroupID
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil then
    L4_2 = L3_2.IsVisible
    if L4_2 ~= false then
      goto lbl_33
    end
  end
  do return end
  goto lbl_38
  ::lbl_33::
  L4_2 = G
  L4_2 = L4_2.GotoManager
  L4_2 = L4_2.Goto
  L5_2 = L3_1
  L4_2(L5_2)
  ::lbl_38::
end
L4_1._try_show_message_if_mission_not_get = L5_1
return L4_1
