local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherGym.AetherDivideGymEntryPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherGym.AetherDivideGymTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherGym.AetherDivideGymTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.Common.AetherCommonBossIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.Common.AetherCommonBossIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritUtilities.AetherTeamUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherDivideGymEntryPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AetherDivideGymEntryPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._monster_data_list = nil
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  A0_2._gym_data_item = A1_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = L0_1._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_start
  L4_2 = L0_1._on_btn_start
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_mission
  L4_2 = L0_1._on_btn_mission
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_monsters
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_monster_item_changed
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mission_list
  L2_2 = L1_2
  L1_2 = L1_2.register_panel_setup_callback
  L3_2 = A0_2._on_setup_mission_info
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 1
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_gym_content
  L3_2 = A0_2._gym_data_item
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_bg_view
  L4_2 = A1_2.BgPath
  L2_2(L3_2, L4_2)
  L3_2 = A1_2
  L2_2 = A1_2.IsUnlock
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_gym_detail
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_gym_locked
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_start
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_gym_title
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A1_2.Name
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_gym_desc
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A1_2.Desc
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_gym_rule
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A1_2.Rule
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2._setup_monster_list
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2._setup_mission_list
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2._setup_locked_view
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._setup_gym_content = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A1_2
  L2_2 = A1_2.GetScheduleData
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L4_2 = L2_2
    L3_2 = L2_2.IsInSchedule
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_38
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_locked_tip
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = "UIText_AetherDivide_Challenge_UnlockTimeCondition"
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.mono_remain_timer
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2 ~= nil
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_mission
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  if L2_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.mono_remain_timer
    L4_2 = L3_2
    L3_2 = L3_2.SetTargetTimeByTimeStamp
    L5_2 = L2_2.BeginTimeStamp
    L6_2 = A0_2._on_schedule_expired
    L7_2 = A0_2
    L8_2 = 2
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  end
  do return end
  ::lbl_38::
  L4_2 = A1_2
  L3_2 = A1_2.GetUnlockMainMissionID
  L3_2 = L3_2(L4_2)
  A0_2._main_mission_id = L3_2
  L3_2 = A0_2._main_mission_id
  if L3_2 ~= 0 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_ModuleManager
    L3_2 = L3_2.MissionModule
    L4_2 = L3_2
    L3_2 = L3_2.GetMainMissionRow
    L5_2 = A0_2._main_mission_id
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      goto lbl_56
    end
  end
  L3_2 = nil
  ::lbl_56::
  if L3_2 ~= nil then
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_locked_tip
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = "UIText_AetherDivide_Gym_NeedMission"
    L7_2 = G
    L7_2 = L7_2.TextmapStatic
    L7_2 = L7_2.GetText
    L8_2 = L3_2.Name
    L7_2, L8_2 = L7_2(L8_2)
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_mission
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.mono_remain_timer
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
end
L0_1._setup_locked_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._gym_tab_control
  if L1_2 ~= nil then
    L1_2 = A0_2._gym_tab_control
    L2_2 = L1_2
    L1_2 = L1_2.item_count
    L1_2 = L1_2(L2_2)
    L2_2 = 1
    L3_2 = L1_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = A0_2._gym_tab_control
      L7_2 = L6_2
      L6_2 = L6_2.find_item
      L8_2 = L5_2
      L6_2 = L6_2(L7_2, L8_2)
      if L6_2 ~= nil then
        L8_2 = L6_2
        L7_2 = L6_2.refresh_status
        L7_2(L8_2)
      end
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_gym_content
  L3_2 = A0_2._cur_gym_data_item_index
  L1_2(L2_2, L3_2)
end
L0_1._on_schedule_expired = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.StrExt
  L2_2 = L2_2.IsNullOrEmpty
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L2_2 = not L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_bg
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2.async_load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_bg
    L6_2 = A1_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._setup_bg_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A1_2
  L2_2 = A1_2.GetDisplayMonsterDatas
  L2_2 = L2_2(L3_2)
  A0_2._monster_data_list = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_monsters
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._monster_data_list
  L4_2 = L4_2.Count
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_monsters
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
end
L0_1._setup_monster_list = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.AetherCommonBossIconPanel
    L8_2 = G
    L8_2 = L8_2.AetherCommonBossIconPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  if 0 <= A2_2 then
    L5_2 = A0_2._monster_data_list
    L5_2 = L5_2.Count
    if A2_2 < L5_2 then
      L6_2 = L4_2
      L5_2 = L4_2.setup_view_by_monster_data
      L7_2 = A0_2._monster_data_list
      L7_2 = L7_2[A2_2]
      L5_2(L6_2, L7_2)
      L6_2 = L4_2
      L5_2 = L4_2.bind_click
      L7_2 = A0_2
      L8_2 = A0_2._on_click_monster
      L9_2 = A2_2
      L5_2(L6_2, L7_2, L8_2, L9_2)
    end
  end
  return L3_2
end
L0_1._on_monster_item_changed = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_array
  L3_2 = A1_2.GymInfoRow
  L3_2 = L3_2.ChallengeQuestList
  L2_2 = L2_2(L3_2)
  A0_2._quest_id_list = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mission_list
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._quest_id_list
  L2_2(L3_2, L4_2)
end
L0_1._setup_mission_list = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A1_2
  L3_2 = A1_2.setup_view_by_quest
  L5_2 = A0_2._quest_id_list
  L5_2 = L5_2[A2_2]
  L3_2(L4_2, L5_2)
end
L0_1._on_setup_mission_info = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._lua_monster_data_table
  if L3_2 == nil then
    L3_2 = G
    L3_2 = L3_2.Utils
    L3_2 = L3_2.create_lua_table_from_cs_list
    L4_2 = A0_2._monster_data_list
    L3_2 = L3_2(L4_2)
    A0_2._lua_monster_data_table = L3_2
  end
  L3_2 = G
  L3_2 = L3_2.AetherTeamUtils
  L3_2 = L3_2.show_monster_tips_dialog
  L4_2 = A0_2._lua_monster_data_table
  L5_2 = A2_2 + 1
  L3_2(L4_2, L5_2)
end
L0_1._on_click_monster = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = L1_2
  L1_2 = L1_2.COIANJEAJGD
  L3_2 = A0_2._gym_data_item
  L3_2 = L3_2.GymID
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_start = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._main_mission_id
  if L1_2 ~= nil then
    L1_2 = A0_2._main_mission_id
    if 0 < L1_2 then
      L1_2 = G
      L1_2 = L1_2.GotoManager
      L1_2 = L1_2.Goto
      L2_2 = 700
      L3_2 = {}
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.GameCore
      L4_2 = L4_2.MainMissionType
      L4_2 = L4_2.None
      L4_2 = #L4_2
      L5_2 = A0_2._main_mission_id
      L3_2[1] = L4_2
      L3_2[2] = L5_2
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_btn_mission = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.set_navigation_target
  L5_2 = A0_2
  L4_2 = A0_2.get_navigation_target
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_enter_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_monsters
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
L0_1.get_first_selected_object = L1_1
return L0_1
