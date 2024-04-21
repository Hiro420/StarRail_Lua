local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.RaidCollection.RaidCollectionEntranceDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RaidCollection.Widget.RaidCollectionRaidTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RaidCollection.Widget.RaidCollectionRaidTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.RaidUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.RaidCollectionModule
L1_1 = 1
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "RaidCollectionEntranceDialog"
L4_1 = G
L4_1 = L4_1.UIController
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RaidCollectionEntranceDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2.listen_zooms = L1_2
  L1_2 = {}
  A0_2._group_datas = L1_2
  L1_2 = {}
  A0_2._collection_datas = L1_2
  A0_2._current_group_index = 0
  A0_2._current_collection_index = 0
end
L2_1.ctor = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = A1_2.Count
  if L4_2 ~= nil then
    L4_2 = G
    L4_2 = L4_2.Utils
    L4_2 = L4_2.create_lua_table_from_cs_list
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    A0_2._group_datas = L4_2
  else
    A0_2._group_datas = A1_2
  end
  A0_2._current_group_index = A2_2
  L5_2 = A0_2
  L4_2 = A0_2._update_collection_datas
  L6_2 = A3_2
  L4_2(L5_2, L6_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.RaidCollectionUtils
  L4_2 = L4_2.RecordGroupSeen
  L6_2 = A0_2
  L5_2 = A0_2._get_current_group
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2.ID
  L4_2(L5_2)
end
L2_1.init = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = {}
  A0_2._collection_datas = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._get_current_group
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = G
    L3_2 = L3_2.Utils
    L3_2 = L3_2.create_lua_table_from_cs_list
    L5_2 = L2_2
    L4_2 = L2_2.GetAllCollectionDatas
    L4_2, L5_2 = L4_2(L5_2)
    L3_2 = L3_2(L4_2, L5_2)
    A0_2._collection_datas = L3_2
    if A1_2 ~= nil then
      A0_2._current_collection_index = A1_2
    else
      L4_2 = L2_2
      L3_2 = L2_2.GetFinishedCollectionCount
      L3_2 = L3_2(L4_2)
      L3_2 = L3_2 + 1
      A0_2._current_collection_index = L3_2
    end
    L3_2 = math
    L3_2 = L3_2.min
    L4_2 = L2_2.AllCollectionIDs
    L4_2 = L4_2.Count
    L5_2 = A0_2._current_collection_index
    L3_2 = L3_2(L4_2, L5_2)
    A0_2._current_collection_index = L3_2
  end
end
L2_1._update_collection_datas = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._group_datas
  L2_2 = A0_2._current_group_index
  L1_2 = L1_2[L2_2]
  return L1_2
end
L2_1._get_current_group = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._collection_datas
  L2_2 = A0_2._current_collection_index
  L1_2 = L1_2[L2_2]
  return L1_2
end
L2_1._get_current_collection = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_start
  L4_2 = A0_2._on_btn_start
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.HideLoadingPage
  L4_2 = A0_2._on_hide_loading_page
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_to_next_zoom_left_stick_type
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.LeftStickRight
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_to_next_zoom_dpad_type
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.DPadRight
  L1_2(L2_2, L3_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._unlock_dialog
  if L1_2 ~= nil then
    L1_2 = A0_2._unlock_dialog
    L2_2 = L1_2
    L1_2 = L1_2.exit
    L1_2(L2_2)
  end
end
L2_1._on_unload = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._try_show_unlock_hint
  L1_2(L2_2)
end
L2_1._on_hide_loading_page = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  if L1_2 ~= nil then
    L1_2 = A0_2._tab_control
    L2_2 = L1_2
    L1_2 = L1_2.clear
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._load_tab
  L1_2(L2_2)
end
L2_1._reset_tab = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
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
  L3_2 = L3_2.node_tab_control
  L1_2(L2_2, L3_2)
  L1_2 = ipairs
  L2_2 = A0_2._collection_datas
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.RaidCollectionRaidTabItem
    L9_2 = G
    L9_2 = L9_2.RaidCollectionRaidTabItemBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.setup_view
    L9_2 = L5_2
    L10_2 = L4_2
    L7_2(L8_2, L9_2, L10_2)
    L6_2.button_prefab_index = 0
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = A0_2._binder
    L9_2 = L9_2.node_tab_control
    L7_2(L8_2, L9_2)
    L7_2 = A0_2._tab_control
    L8_2 = L7_2
    L7_2 = L7_2.add_item
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_collection_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.setup_navigation
  L3_2 = NavigationType
  L3_2 = L3_2.Vertical
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
end
L2_1._load_tab = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._reset_tab
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_group_view
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = A0_2._current_collection_index
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_show_unlock_hint
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 61
  L4_2 = A0_2._binder
  L4_2 = L4_2.scroll_rect
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_navigation
  L1_2(L2_2)
end
L2_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._get_current_group
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.RaidCollectionUtils
  L2_2 = L2_2.RecordGroupSeen
  L3_2 = L1_2.ID
  L2_2(L3_2)
end
L2_1._refresh_group_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._current_collection_index = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_collect_view
  L2_2(L3_2)
end
L2_1._on_collection_clicked = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2._get_current_collection
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.RaidRow
  L4_2 = L4_2.RaidName
  L2_2(L3_2, L4_2)
  L2_2 = L1_2.Row
  L2_2 = L2_2.SubMissionID
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.SubMissionExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_target
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L3_2.TargetText
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_desc
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = L1_2.RaidRow
  L6_2 = L6_2.RaidDesc
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_desc
  L5_2 = L4_2
  L4_2 = L4_2.update_hint_eff
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_reward
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.ItemFactory
  L6_2 = L6_2.CreateItemConfigListByRewards
  L7_2 = L1_2.RaidRow
  L7_2 = L7_2.RewardList
  L6_2 = L6_2(L7_2)
  L7_2 = false
  L8_2 = L1_2.IsFinished
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = A0_2
  L4_2 = A0_2._has_monster
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.panel_monster
  L6_2 = L5_2
  L5_2 = L5_2.safe_set_active
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  if L4_2 then
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.GlobalVars
    L5_2 = L5_2.s_ModuleManager
    L5_2 = L5_2.PlayerModule
    L5_2 = L5_2.PlayerData
    L5_2 = L5_2.WorldLevel
    L6_2 = A0_2._binder
    L6_2 = L6_2.panel_monster
    L7_2 = L6_2
    L6_2 = L6_2.setup_view_by_raid
    L8_2 = L1_2.RaidRow
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
  end
  L6_2 = A0_2
  L5_2 = A0_2._init_info_navigation
  L5_2(L6_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.btn_intro
  L6_2 = L1_2.Row
  L6_2 = L6_2.GuideID
  L5_2.GuideID = L6_2
  L5_2 = L1_2.IsUnlocked
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_locked
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = not L5_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.btn_start
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  if not L5_2 then
    L7_2 = A0_2
    L6_2 = A0_2._refresh_unlock_hint
    L6_2(L7_2)
  end
end
L2_1._refresh_collect_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_current_collection
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.RaidRow
  L2_2 = L2_2.MonsterList
  L2_2 = L2_2 ~= nil
  return L2_2
end
L2_1._has_monster = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2._get_current_group
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._current_collection_index
  if L2_2 == 1 then
    L2_2 = L1_2.IsUnlocked
    if not L2_2 then
      L2_2 = L1_2.Row
      L2_2 = L2_2.UnlockGroupID
      L3_2 = L0_1
      L4_2 = L3_2
      L3_2 = L3_2.GetGroupData
      L5_2 = L2_2
      L3_2 = L3_2(L4_2, L5_2)
      L3_2 = L3_2.Name
      L4_2 = G
      L4_2 = L4_2.TextmapStatic
      L4_2 = L4_2.GetText
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      L5_2 = G
      L5_2 = L5_2.RaidCollectionUtils
      L5_2 = L5_2.get_group_tab_id
      L6_2 = L2_2
      L5_2 = L5_2(L6_2)
      L6_2 = L1_1
      if L5_2 == L6_2 then
        L5_2 = "RaidCollectionGroupUnlockTips"
        if L5_2 then
          goto lbl_33
        end
      end
      L5_2 = "RaidCollectionHardGroupUnlockTips"
      ::lbl_33::
      L6_2 = A0_2._binder
      L6_2 = L6_2.txt_locked
      L7_2 = L6_2
      L6_2 = L6_2.SafeSetTextID
      L8_2 = L5_2
      L9_2 = L4_2
      L6_2(L7_2, L8_2, L9_2)
      return
    end
  end
  L2_2 = A0_2._collection_datas
  L3_2 = A0_2._current_collection_index
  L3_2 = L3_2 - 1
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.RaidRow
  L2_2 = L2_2.RaidName
  L3_2 = G
  L3_2 = L3_2.TextmapStatic
  L3_2 = L3_2.GetText
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_locked
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = "RaidCollectionUnlockTips"
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
end
L2_1._refresh_unlock_hint = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._tab_control
  if L1_2 == nil then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.IsLoading
  if L2_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2 = L2_2.RaidCollectionSeenCollectionIDs
  L3_2 = ipairs
  L4_2 = A0_2._collection_datas
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.ID
    L10_2 = L2_2
    L9_2 = L2_2.Contains
    L11_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2)
    if not L9_2 then
      L9_2 = L7_2.IsUnlocked
      if L9_2 then
        L9_2 = L7_2.IsFinished
        if not L9_2 then
          L9_2 = G
          L9_2 = L9_2.UIManager
          L9_2 = L9_2.load_and_show
          L10_2 = "Ui.FarmEnemy.FarmLevelUnlockDialog"
          L11_2 = L6_2
          L9_2 = L9_2(L10_2, L11_2)
          A0_2._unlock_dialog = L9_2
          L9_2 = A0_2._unlock_dialog
          L10_2 = L9_2
          L9_2 = L9_2.set_exit_callback
          function L11_2()
            local L0_3, L1_3
            A0_2._unlock_dialog = nil
          end
          L9_2(L10_2, L11_2)
          L9_2 = A0_2._tab_control
          L10_2 = L9_2
          L9_2 = L9_2.find_item
          L11_2 = L6_2
          L9_2 = L9_2(L10_2, L11_2)
          L10_2 = L9_2
          L9_2 = L9_2.play_unlock
          L9_2(L10_2)
          L10_2 = L2_2
          L9_2 = L2_2.Add
          L11_2 = L8_2
          L9_2(L10_2, L11_2)
          break
        end
      end
    end
  end
end
L2_1._try_show_unlock_hint = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._current_group_index
  if L1_2 <= 1 then
    return
  end
  L1_2 = A0_2._current_group_index
  L1_2 = L1_2 - 1
  A0_2._current_group_index = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_group_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_collection_datas
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._reset_tab
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = A0_2._current_collection_index
  L1_2(L2_2, L3_2)
end
L2_1._on_btn_last = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._current_group_index
  L2_2 = A0_2._group_datas
  L2_2 = #L2_2
  if L1_2 >= L2_2 then
    return
  end
  L1_2 = A0_2._current_group_index
  L1_2 = L1_2 + 1
  A0_2._current_group_index = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_group_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_collection_datas
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._reset_tab
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = A0_2._current_collection_index
  L1_2(L2_2, L3_2)
end
L2_1._on_btn_next = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2
  L1_2 = A0_2._get_current_collection
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L2_2 = L1_2.CanEditTeam
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.create_lua_table_from_cs_array
    L3_2 = L1_2.RaidRow
    L3_2 = L3_2.LimitIDList
    L2_2 = L2_2(L3_2)
    L3_2 = G
    L3_2 = L3_2.UIManager
    L3_2 = L3_2.load_and_async_show
    L4_2 = "Ui.FarmEnemy.FarmTeamEditPage"
    L5_2 = A0_2._do_start_raid
    L6_2 = A0_2
    L7_2 = L2_2
    L8_2 = false
    L9_2 = false
    L10_2 = G
    L10_2 = L10_2.RaidUtils
    L10_2 = L10_2.get_recommend_attribute
    L11_2 = L1_2.RaidRow
    L10_2, L11_2 = L10_2(L11_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._do_start_raid
    L2_2(L3_2)
  end
end
L2_1._on_btn_start = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._get_current_collection
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L3_2 = L1_2
  L2_2 = L1_2.StartRaid
  L2_2(L3_2)
end
L2_1._do_start_raid = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._init_info_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L2_1._init_navigation = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_reward
  L3_2 = L2_2
  L2_2 = L2_2.get_all_reward_btns
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_monster
  L4_2 = L3_2
  L3_2 = L3_2.get_all_monster_btns
  L3_2 = L3_2(L4_2)
  if L2_2 ~= nil then
    L4_2 = #L2_2
    if L4_2 ~= 0 and L3_2 ~= nil then
      L4_2 = #L3_2
      if L4_2 ~= nil then
        goto lbl_21
      end
    end
  end
  do return end
  ::lbl_21::
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = L1_2
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = L1_2
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L4_2 = G
  L4_2 = L4_2.UIUtils
  L4_2 = L4_2.setup_multi_line_navigation
  L5_2 = L1_2
  L4_2(L5_2)
end
L2_1._init_info_navigation = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.get_cur_zoom
  L1_2 = L1_2(L2_2)
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if L1_2 == L2_2 then
    L2_2 = A0_2._tab_control
    L3_2 = L2_2
    L2_2 = L2_2.find_item_gameObject
    L4_2 = 1
    return L2_2(L3_2, L4_2)
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if L1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._has_monster
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.panel_monster
        L3_2 = L2_2
        L2_2 = L2_2.get_first_selected_object
        return L2_2(L3_2)
      else
        L2_2 = A0_2._binder
        L2_2 = L2_2.panel_reward
        L3_2 = L2_2
        L2_2 = L2_2.get_first_selected_object
        return L2_2(L3_2)
      end
    end
  end
end
L2_1.get_first_selected_object = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.get_zoom_navigation_target
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L4_2 = A0_2
    L3_2 = A0_2.get_first_selected_object
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
  end
  L4_2 = A0_2
  L3_2 = A0_2.set_navigation_target
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  if A1_2 == L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.canvas_group_zoom_1
    L3_2.alpha = 1
  else
    L3_2 = NavigationZoneType
    L3_2 = L3_2.Zone2
    if A1_2 == L3_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.canvas_group_zoom_1
      L3_2.alpha = 0.5
    end
  end
end
L2_1._on_enter_zoom = L3_1
return L2_1
