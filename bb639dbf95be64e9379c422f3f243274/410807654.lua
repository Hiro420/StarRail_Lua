local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Mission.MissionPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.MissionTabItem"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MissionPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MissionModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MissionPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  A0_2._is_save_by_click = false
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  L6_2 = A0_2
  L5_2 = A0_2.create_panel_without_binder
  L7_2 = G
  L7_2 = L7_2.TabControl
  L5_2 = L5_2(L6_2, L7_2)
  A0_2._tab_control = L5_2
  A0_2._init_index = 1
  L5_2 = A1_2 or L5_2
  if not A1_2 then
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.MainMissionType
    L5_2 = L5_2.None
    L5_2 = #L5_2
  end
  A0_2._init_mission_type = L5_2
  A0_2._init_mission_id = A2_2
  A0_2._init_chapter_id = A4_2
  A0_2.override_exit = false
  A0_2.is_exit_by_track = false
  if A3_2 ~= nil then
    A0_2.override_exit = true
    L6_2 = A0_2
    L5_2 = A0_2.set_exit_callback
    function L7_2()
      local L0_3, L1_3
      L0_3 = A3_2
      L1_3 = A0_2.is_exit_by_track
      L0_3(L1_3)
    end
    L8_2 = A0_2
    L5_2(L6_2, L7_2, L8_2)
  end
end
L0_1.init = L2_1
function L2_1(A0_2, A1_2)
  A0_2._setup_command = A1_2
end
L0_1.register_command_in_setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.canvas_group_zoom_1
    L2_2.alpha = 1
    L2_2 = A0_2._binder
    L2_2 = L2_2.left_in_control_tip
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.right_in_control_tip
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
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
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.main_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
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
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._tab_control
    L2_2 = L1_2
    L1_2 = L1_2.select_prev
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.force_set_first_navigation_target
    L1_2(L2_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.main_panel
    L1_2 = L1_2._binder
    L1_2 = L1_2.scroll_task_list
    L2_2 = L1_2
    L1_2 = L1_2.ReorderFadeIn
    L1_2(L2_2)
  end
end
L0_1._select_prev = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._tab_control
    L2_2 = L1_2
    L1_2 = L1_2.select_next
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.force_set_first_navigation_target
    L1_2(L2_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.main_panel
    L1_2 = L1_2._binder
    L1_2 = L1_2.scroll_task_list
    L2_2 = L1_2
    L1_2 = L1_2.ReorderFadeIn
    L1_2(L2_2)
  end
end
L0_1._select_next = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_back
  L4_2 = A0_2._btn_back_onclick
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_mission_type_tab
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_left
  L4_2 = A0_2._select_prev
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_right
  L4_2 = A0_2._select_next
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.run_setup_view_cmd
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_mission_type_tabs
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.check_init_mission_id_valid
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2.check_init_chapter_id_valid
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.main_panel
  L4_2 = L3_2
  L3_2 = L3_2.set_detail_panel_refresh
  L5_2 = not L1_2 and L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._init_mission_type
  if L3_2 then
    L3_2 = A0_2.mission_type_to_index
    L4_2 = A0_2._init_mission_type
    L3_2 = L3_2[L4_2]
    A0_2._init_index = L3_2
  end
  L3_2 = A0_2._tab_control
  L4_2 = L3_2
  L3_2 = L3_2.click_item_by_uid
  L5_2 = A0_2._init_index
  L3_2(L4_2, L5_2)
  if L1_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.main_panel
    L4_2 = L3_2
    L3_2 = L3_2.set_detail_panel_refresh
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.main_panel
    L4_2 = L3_2
    L3_2 = L3_2.focus_mission
    L5_2 = A0_2._init_mission_id
    L6_2 = false
    L3_2(L4_2, L5_2, L6_2)
  elseif L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.main_panel
    L4_2 = L3_2
    L3_2 = L3_2.set_detail_panel_refresh
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.main_panel
    L4_2 = L3_2
    L3_2 = L3_2.focus_chapter
    L5_2 = A0_2._init_chapter_id
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.chronicle_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._init_ui_navigation
  L3_2(L4_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._setup_command
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._setup_command
  L1_2()
end
L0_1.run_setup_view_cmd = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._init_mission_id
  if L1_2 ~= nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.AdventureStatic
    L2_2 = L1_2
    L1_2 = L1_2.GetCurrentGameModeType
    L1_2 = L1_2(L2_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.GameModeType
    L2_2 = L2_2.Raid
    L2_2 = L1_2 == L2_2
    L3_2 = L1_1
    L4_2 = L3_2
    L3_2 = L3_2.TryGetMainMissionData
    L5_2 = A0_2._init_mission_id
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = L3_2.IsStart
    if L4_2 then
      L4_2 = L3_2.IsFinish
      if not L4_2 then
        L4_2 = L3_2.IsShow
        if L4_2 then
          if not L2_2 then
            L4_2 = L3_2.Row
            L4_2 = L4_2.IsInRaid
            if L4_2 then
              goto lbl_40
            end
          end
          L4_2 = true
          return L4_2
        end
      end
    end
  end
  ::lbl_40::
  L1_2 = false
  return L1_2
end
L0_1.check_init_mission_id_valid = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._init_chapter_id
  if L1_2 ~= nil then
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.GetShowMainMissionCountByChapterID
    L3_2 = A0_2._init_chapter_id
    L1_2 = L1_2(L2_2, L3_2)
    L1_2 = 0 < L1_2
    return L1_2
  end
end
L0_1.check_init_chapter_id_valid = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MainMissionTypeConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = #A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_mission_type
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.TypeName
  L3_2(L4_2, L5_2)
end
L0_1.setup_mission_type = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  A0_2.mission_type_to_index = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MainMissionTypeConfigExcelTable
  L1_2 = L1_2.dataDict
  L2_2 = 1
  L3_2 = pairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = A0_2
    L8_2 = A0_2._init_mission_type_tab_item
    L10_2 = L7_2.Type
    L8_2(L9_2, L10_2)
    L8_2 = A0_2.mission_type_to_index
    L9_2 = L7_2.Type
    L9_2 = #L9_2
    L8_2[L9_2] = L2_2
    L2_2 = L2_2 + 1
  end
  L3_2 = A0_2._tab_control
  L4_2 = L3_2
  L3_2 = L3_2.update_layout
  L3_2(L4_2)
end
L0_1._init_mission_type_tabs = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.main_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_parent_page
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.MissionTabItem
  L5_2 = G
  L5_2 = L5_2.MissionTabItemBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L2_2.button_prefab_index = 0
  L4_2 = L2_2
  L3_2 = L2_2.bind
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_misson_tab_root
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.main_panel
  L2_2.mission_panel = L3_2
  L4_2 = L2_2
  L3_2 = L2_2.set_mission_type
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._tab_control
  L4_2 = L3_2
  L3_2 = L3_2.add_item
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._init_mission_type_tab_item = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._btn_back_onclick = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L2_1
return L0_1
