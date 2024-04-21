local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Museum.MuseumAtlasMainPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumAtlasAreaTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumAtlasAreaTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumAtlasCollectionPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumAtlasCollectionPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumAtlasMainPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MuseumModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.MissionModule
L3_1 = "MuseumActivity_AvatarCollectionQuestID"
L4_1 = "UIText_ActivityMuseum_StuffNo"
L5_1 = {}
L5_1.item = 1
L5_1.avatar = 2
function L6_1(A0_2)
  local L1_2
  A0_2.current_type = 0
end
L0_1.ctor = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._init_data
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_collection
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_collection_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MuseumGetCollectReward
  L4_2 = L0_1._on_get_collect_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RefreshMission
  L4_2 = L0_1._on_refresh_by_mission_refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._tab_control = L1_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_area_tab_control
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.init_tab
  L1_2(L2_2)
end
L0_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_collection
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.btn_root
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.current_type
  L2_2 = L5_1.item
  if L1_2 == L2_2 then
    L1_2 = A0_2._tab_control
    L1_2 = L1_2.current_select_item
    L1_2 = L1_2.uid
    if L1_2 == 1 then
      return
    end
    L2_2 = A0_2._tab_control
    L3_2 = L2_2
    L2_2 = L2_2.select_prev
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2.force_set_first_navigation_target
    L2_2(L3_2)
  end
end
L0_1._select_trigger_prev = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.current_type
  L2_2 = L5_1.item
  if L1_2 == L2_2 then
    L1_2 = A0_2._tab_control
    L1_2 = L1_2.current_select_item
    L1_2 = L1_2.uid
    L2_2 = A0_2.area_data
    L2_2 = #L2_2
    if L1_2 ~= L2_2 then
      L2_2 = A0_2.area_data
      L3_2 = L1_2 + 1
      L2_2 = L2_2[L3_2]
      L2_2 = L2_2.IsLock
      if not L2_2 then
        goto lbl_19
      end
    end
    do return end
    ::lbl_19::
    L2_2 = A0_2._tab_control
    L3_2 = L2_2
    L2_2 = L2_2.select_next
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2.force_set_first_navigation_target
    L2_2(L3_2)
  end
end
L0_1._select_trigger_next = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_avatar_collection_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_item_collection_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_area_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_common_value
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_mission_data
  L1_2(L2_2)
end
L0_1._init_data = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  A0_2.avatar_collection_data = L1_2
  L1_2 = L1_1.AllMuseumAvatarItemData
  L2_2 = L1_2
  L1_2 = L1_2.GetEnumerator
  L1_2 = L1_2(L2_2)
  while true do
    L3_2 = L1_2
    L2_2 = L1_2.MoveNext
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = L1_2.Current
    L2_2 = L2_2.Value
    L3_2 = L2_2.MuseumStuffRow
    L3_2 = L3_2.Type
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.StuffType
    L4_2 = L4_2.Avatar
    if L3_2 == L4_2 then
      L3_2 = table
      L3_2 = L3_2.insert
      L4_2 = A0_2.avatar_collection_data
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1._init_avatar_collection_data = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  A0_2.item_collection_data = L1_2
  L1_2 = L1_1.AllExhibitItemData
  L2_2 = L1_2
  L1_2 = L1_2.GetEnumerator
  L1_2 = L1_2(L2_2)
  while true do
    L3_2 = L1_2
    L2_2 = L1_2.MoveNext
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = L1_2.Current
    L2_2 = L2_2.Value
    L3_2 = L2_2.MuseumItemRow
    L3_2 = L3_2.AreaID
    L4_2 = A0_2.item_collection_data
    L4_2 = L4_2[L3_2]
    if L4_2 == nil then
      L4_2 = A0_2.item_collection_data
      L5_2 = {}
      L4_2[L3_2] = L5_2
    end
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = A0_2.item_collection_data
    L5_2 = L5_2[L3_2]
    L6_2 = L2_2
    L4_2(L5_2, L6_2)
  end
end
L0_1._init_item_collection_data = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2.area_data = L1_2
  L1_2 = L1_1.MuseumData
  L1_2 = L1_2.MuseumAreaDatas
  L2_2 = 0
  L3_2 = L1_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2.area_data
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._init_area_data = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L3_1
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.Value
    if L2_2 ~= nil then
      L2_2 = L1_2.Value
      L2_2 = L2_2.UintValue
      A0_2.avatar_quest_id = L2_2
    end
  end
end
L0_1._init_common_value = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllMissionData
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.ThenLuaAction
  function L4_2()
    local L0_3, L1_3
    L0_3 = G
    L0_3 = L0_3.Utils
    L0_3 = L0_3.create_lua_table_from_cs_dict_with_key
    L1_3 = L1_1.AllMissionData
    L0_3 = L0_3(L1_3)
    A0_2.mission_data = L0_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._sort_collection_data
    L0_3(L1_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_data_prepared
    L0_3(L1_3)
  end
  L2_2(L3_2, L4_2)
end
L0_1._init_mission_data = L6_1
function L6_1(A0_2)
  local L1_2
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3._get_weight
    L4_3 = A0_3
    L2_3 = L2_3(L3_3, L4_3)
    L3_3 = A0_2
    L4_3 = L3_3
    L3_3 = L3_3._get_weight
    L5_3 = A1_3
    L3_3 = L3_3(L4_3, L5_3)
    if L2_3 == L3_3 then
      L4_3 = A0_3.DisplayOrder
      L5_3 = A1_3.DisplayOrder
      L4_3 = L4_3 < L5_3
      return L4_3
    end
    L4_3 = L2_3 < L3_3
    return L4_3
  end
  return L1_2
end
L0_1.get_func_sort = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.item_collection_data
  L2_2 = L2_2[A1_2]
  if L2_2 == nil then
    return
  end
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = A0_2.item_collection_data
  L3_2 = L3_2[A1_2]
  L5_2 = A0_2
  L4_2 = A0_2.get_func_sort
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._sort_collection_data = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2.avatar_collection_data
  L4_2 = A0_2
  L3_2 = A0_2.get_func_sort
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._sort_avatar_data = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.Status
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MuseumCollectionItemStatus
  L3_2 = L3_2.Owned
  if L2_2 == L3_2 then
    L2_2 = A1_2.TakenCollectReward
    if not L2_2 then
      L2_2 = 5
      return L2_2
    end
    L2_2 = 40
    return L2_2
  end
  L2_2 = A0_2.mission_data
  L3_2 = A1_2.MissionID
  L2_2 = L2_2[L3_2]
  if L2_2 ~= nil then
    L3_2 = L2_2.ID
    L4_2 = L2_1.TrackingMissionID
    if L3_2 == L4_2 then
      L3_2 = 10
      return L3_2
    end
    L3_2 = L2_2.IsStart
    if L3_2 then
      L3_2 = 30
      return L3_2
    end
  end
  L3_2 = 50
  return L3_2
end
L0_1._get_weight = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._on_prepared_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._on_prepared_callback
    L2_2 = A0_2._on_prepared_listener
    L1_2(L2_2)
  end
end
L0_1._on_data_prepared = L6_1
function L6_1(A0_2, A1_2, A2_2)
  A0_2._on_prepared_callback = A1_2
  A0_2._on_prepared_listener = A2_2
end
L0_1.register_prepared_callback = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = ipairs
  L2_2 = A0_2.area_data
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.MuseumAtlasAreaTabItem
    L9_2 = G
    L9_2 = L9_2.MuseumAtlasAreaTabItemBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.register_select_callback
    L9_2 = A0_2._on_click_area_tab
    L10_2 = A0_2
    L11_2 = L5_2.ID
    L7_2(L8_2, L9_2, L10_2, L11_2)
    L7_2 = A0_2._tab_control
    L8_2 = L7_2
    L7_2 = L7_2.add_item
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.setup_view
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
  end
end
L0_1.init_tab = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.SDKLuaReportAdapter
  L2_2 = L2_2.ReportUIButtonClick
  L3_2 = A0_2._owner
  L3_2 = L3_2.__name
  L4_2 = "ChangeAreaBtn"
  L5_2 = A1_2
  L6_2 = A0_2._owner
  L6_2 = L6_2.guid
  L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2.current_area_id = A1_2
  L2_2 = A0_2.area_data
  L2_2 = L2_2[A1_2]
  A0_2.current_area_data = L2_2
  L2_2 = A0_2.item_collection_data
  L2_2 = L2_2[A1_2]
  A0_2._current_item_data = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.refresh_item_collection_list
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_progress
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_ActivityMuseum_AreaCollecProgress"
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.TextmapStatic
  L5_2 = L5_2.GetText
  L6_2 = A0_2.current_area_data
  L6_2 = L6_2.MuseumAreaName
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_click_area_tab = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = L1_1.AllExhibitItemData
  L2_2 = L2_2[A1_2]
  L3_2 = ipairs
  L4_2 = A0_2.area_data
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L2_2.AreaID
    L9_2 = L7_2.Row
    L9_2 = L9_2.AreaID
    if L8_2 == L9_2 then
      L8_2 = A0_2._tab_control
      L9_2 = L8_2
      L8_2 = L8_2.click_item_by_uid
      L10_2 = L6_2
      L8_2(L9_2, L10_2)
    end
  end
end
L0_1.focus_item = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L5_1.avatar
  A0_2.current_type = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.reset_type_ui_active
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._sort_avatar_data
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_collection
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2.avatar_collection_data
  L3_2 = #L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_collection
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = 0
  L2_2 = ipairs
  L3_2 = A0_2.avatar_collection_data
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.Status
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.Client
    L8_2 = L8_2.MuseumCollectionItemStatus
    L8_2 = L8_2.Owned
    if L7_2 == L8_2 then
      L1_2 = L1_2 + 1
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.num_quest_current
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.num_quest_total
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2.avatar_collection_data
  L4_2 = #L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_progress
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_ActivityMuseum_StuffCollecProgress"
  L2_2(L3_2, L4_2)
end
L0_1.setup_avatar_collection_view = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L5_1.item
  A0_2.current_type = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.reset_type_ui_active
  L2_2(L3_2)
  L2_2 = A1_2 or L2_2
  if not A1_2 then
    L2_2 = 1
  end
  L3_2 = A0_2._tab_control
  L4_2 = L3_2
  L3_2 = L3_2.click_item_by_uid
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._on_click_area_tab
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1.setup_item_collection_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2._sort_collection_data
  L3_2 = A0_2.current_area_id
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_collection
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2.item_collection_data
  L4_2 = A0_2.current_area_id
  L3_2 = L3_2[L4_2]
  L3_2 = #L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_collection
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = 0
  L2_2 = ipairs
  L3_2 = A0_2.item_collection_data
  L4_2 = A0_2.current_area_id
  L3_2 = L3_2[L4_2]
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.Status
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.Client
    L8_2 = L8_2.MuseumCollectionItemStatus
    L8_2 = L8_2.Owned
    if L7_2 == L8_2 then
      L1_2 = L1_2 + 1
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.num_quest_current
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.num_quest_total
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2.item_collection_data
  L5_2 = A0_2.current_area_id
  L4_2 = L4_2[L5_2]
  L4_2 = #L4_2
  L2_2(L3_2, L4_2)
end
L0_1.refresh_item_collection_list = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_avatar_title_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.current_type
  L4_2 = L5_1.avatar
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_area_tab_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.current_type
  L4_2 = L5_1.item
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
end
L0_1.reset_type_ui_active = L6_1
function L6_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.MuseumAtlasCollectionPanel
    L8_2 = G
    L8_2 = L8_2.MuseumAtlasCollectionPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = nil
  L6_2 = A0_2.current_type
  L7_2 = L5_1.avatar
  if L6_2 == L7_2 then
    L6_2 = A0_2.avatar_collection_data
    L7_2 = A2_2 + 1
    L5_2 = L6_2[L7_2]
    L7_2 = L4_2
    L6_2 = L4_2.setup_avatar_collection_view
    L8_2 = L5_2
    L9_2 = A0_2.mission_data
    L10_2 = L5_2.MissionID
    L9_2 = L9_2[L10_2]
    L6_2(L7_2, L8_2, L9_2)
    L7_2 = L4_2
    L6_2 = L4_2.setup_index
    L8_2 = L4_1
    L9_2 = L5_2.DisplayOrder
    L6_2(L7_2, L8_2, L9_2)
  else
    L6_2 = A0_2._current_item_data
    L7_2 = A2_2 + 1
    L5_2 = L6_2[L7_2]
    L7_2 = L4_2
    L6_2 = L4_2.setup_item_collection_view
    L8_2 = L5_2
    L9_2 = A0_2.mission_data
    L10_2 = L5_2.MissionID
    L9_2 = L9_2[L10_2]
    L6_2(L7_2, L8_2, L9_2)
    L7_2 = L4_2
    L6_2 = L4_2.setup_index
    L8_2 = A0_2.current_area_data
    L8_2 = L8_2.Row
    L8_2 = L8_2.AreaItemNoTextID
    L9_2 = L5_2.DisplayOrder
    L6_2(L7_2, L8_2, L9_2)
  end
  L7_2 = L4_2
  L6_2 = L4_2.register_track_callback
  L8_2 = A0_2._on_click_collection_panel
  L9_2 = A0_2
  L10_2 = L5_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
  return L3_2
end
L0_1._on_collection_change = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.mission_data
  L3_2 = A1_2.MissionID
  L2_2 = L2_2[L3_2]
  L4_2 = A0_2
  L3_2 = A0_2.goto_mission_page
  L5_2 = L2_2.ID
  L3_2(L4_2, L5_2)
end
L0_1._on_click_collection_panel = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
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
  function L7_2(A0_3)
    local L1_3, L2_3
    if A0_3 then
      L1_3 = G
      L1_3 = L1_3.Utils
      L1_3 = L1_3.trigger_custom_string
      L2_3 = "MuseumMissionStart"
      L1_3(L2_3)
      L1_3 = CS
      L1_3 = L1_3.RPG
      L1_3 = L1_3.Client
      L1_3 = L1_3.GlobalVars
      L1_3 = L1_3.s_UIManager
      L2_3 = L1_3
      L1_3 = L1_3.BackToFirstPage
      L1_3(L2_3)
    end
  end
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L4_2[3] = L7_2
  L2_2(L3_2, L4_2)
end
L0_1.goto_mission_page = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.RewardUtils
    L2_2 = L2_2.show_reward_dialog
    L3_2 = G
    L3_2 = L3_2.Utils
    L3_2 = L3_2.create_lua_table_from_cs_list
    L4_2 = A1_2
    L3_2, L4_2 = L3_2(L4_2)
    L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_collection_list
  L2_2(L3_2)
end
L0_1._on_get_collect_reward = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.current_type
  L2_2 = L5_1.item
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2.refresh_item_collection_list
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2.setup_avatar_collection_view
    L1_2(L2_2)
  end
end
L0_1._refresh_collection_list = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_collection_list
  L1_2(L2_2)
end
L0_1._on_refresh_by_mission_refresh = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = A0_2._quest_data
  if L1_2 ~= nil then
    L1_2 = A0_2._quest_data
    L1_2 = L1_2.DataRow
    L1_2 = L1_2.RewardID
    return L1_2
  end
end
L0_1.get_reward_id = L6_1
return L0_1
