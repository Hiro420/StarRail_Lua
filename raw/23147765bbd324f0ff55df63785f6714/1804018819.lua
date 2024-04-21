local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.FarmEnemy.FarmRelic.FarmRelicPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.FarmEnemy.FarmDifficultyPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.FarmEnemy.FarmDifficultyPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.RaidUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.FarmEnemy.MultipleDropUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FarmRelicPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.PlayerModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.FarmModule
L3_1 = G
L3_1 = L3_1.StaminaModule
L3_1 = L3_1.Instance
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.GlobalVars
L4_1 = L4_1.s_ModuleManager
L4_1 = L4_1.FriendModule
L5_1 = {}
L5_1.Sufficient = "#FFFFFF"
L5_1.Insufficient = "#C84A32"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.FarmRelicPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = CS
  L1_2 = L1_2.InControl
  L1_2 = L1_2.InputControlType
  L1_2 = L1_2.LeftStickRight
  A0_2._to_next_zoom_left_stick_type = L1_2
  L1_2 = CS
  L1_2 = L1_2.InControl
  L1_2 = L1_2.InputControlType
  L1_2 = L1_2.DPadRight
  A0_2._to_next_zoom_dpad_type = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2.listen_zooms = L1_2
  A0_2._is_locked = false
  A0_2._cur_selected_index = nil
end
L0_1.ctor = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2
  A0_2._entity_id = A2_2
  A0_2._farm_id = A1_2
  L3_2 = L1_1.PlayerData
  L3_2 = L3_2.WorldLevel
  A0_2._cur_selected_level = L3_2
end
L0_1.init = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L4_2 = A0_2._binder
    L4_2 = L4_2.panel_difficulty_tab
    L5_2 = L4_2
    L4_2 = L4_2.get_cur_tab_btn_object
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L5_2 = A0_2
      L4_2 = A0_2.get_navigation_target
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L0_1._on_enter_zoom = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.get_first_selected_object
    L2_2 = L2_2(L3_2)
    L3_2 = L2_2 ~= nil
    return L3_2
  end
end
L0_1._is_can_to_zoom = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_top_page_or_dialog
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2._navigation_inited
    if L1_2 ~= nil then
      goto lbl_13
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
  A0_2._navigation_inited = true
  ::lbl_13::
end
L0_1._init_ui_navigation = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_close
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.farm_relic_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 31
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_enter
  L4_2 = A0_2._on_btn_enter
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.StaminaChanged
  L4_2 = A0_2._setup_stamina_cost
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.StaminaItemUsed
  L4_2 = A0_2._setup_stamina_cost
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.MFBHKGNFJNN
  L4_2 = A0_2._on_start_cocoon_sc_rsp
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = G
  L1_2 = L1_2.ResBarAreaFactory
  L1_2 = L1_2.CreateResBarArea
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_res_bar_area
  L3_2 = "FarmRelicPage"
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_level_tabs
  L1_2(L2_2)
end
L0_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_difficulty_tab
  L2_2 = L1_2
  L1_2 = L1_2.init_data
  L3_2 = A0_2._farm_id
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_difficulty_tab
  L2_2 = L1_2
  L1_2 = L1_2.init_tab
  L4_2 = A0_2
  L3_2 = A0_2._get_farm_unique_name
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._on_level_select_changed
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._init_level_tabs = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = tostring
  L2_2 = A0_2.__name
  return L1_2(L2_2)
end
L0_1._get_farm_name = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = tostring
  L2_2 = A0_2.__name
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._farm_id
  L1_2 = L1_2 .. L2_2
  return L1_2
end
L0_1._get_farm_unique_name = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._custom_setup_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_difficulty_tab
  L2_2 = L1_2
  L1_2 = L1_2.try_show_unlock_hint
  L4_2 = A0_2
  L3_2 = A0_2._get_farm_name
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_show_env_buff_hint
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L6_1
function L6_1(A0_2)
  local L1_2
end
L0_1._setup_list_navigation = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.CocoonExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._farm_id
  L3_2 = A0_2._cur_selected_level
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._row = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_stamina_cost
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_warning
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.farm_relic_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._row
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_enter
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L3_2 = A0_2._is_locked
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_world_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = L1_1.PlayerData
  L3_2 = L3_2.WorldLevel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._binder
  L3_2 = L3_2.farm_relic_panel
  L4_2 = L3_2
  L3_2 = L3_2.get_name
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._cur_selected_index
  if L1_2 == nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_difficulty_tab
    if L1_2 ~= nil then
      L1_2 = A0_2._binder
      L1_2 = L1_2.panel_difficulty_tab
      L2_2 = L1_2
      L1_2 = L1_2.get_index_by_world_level
      L3_2 = A0_2._cur_selected_level
      L1_2 = L1_2(L2_2, L3_2)
      A0_2._cur_selected_index = L1_2
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_difficulty
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_Cocoon_WorldLevel_Text_"
  L4_2 = tostring
  L5_2 = A0_2._cur_selected_index
  L4_2 = L4_2(L5_2)
  L3_2 = L3_2 .. L4_2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_list_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_env_buff_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_multiple_drop_tips
  L3_2 = A0_2._row
  L3_2 = L3_2.FarmType
  L1_2(L2_2, L3_2)
end
L0_1._custom_setup_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._row
  if L1_2 == nil then
    return
  end
  L1_2 = L3_1.get_stamina_config
  L1_2 = L1_2()
  L3_2 = A0_2
  L2_2 = A0_2.async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_stamina
  L5_2 = L1_2.ItemIconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_stamina_cost_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._row
  L4_2 = L4_2.StaminaCost
  L2_2(L3_2, L4_2)
  L2_2 = L3_1.get_cur_stamina
  L2_2 = L2_2()
  L3_2 = A0_2._row
  L3_2 = L3_2.StaminaCost
  L2_2 = L2_2 >= L3_2
  if L2_2 then
    L3_2 = L5_1.Sufficient
    if L3_2 then
      goto lbl_32
    end
  end
  L3_2 = L5_1.Insufficient
  ::lbl_32::
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_stamina_cost_num
  L5_2 = G
  L5_2 = L5_2.UIColorUtils
  L5_2 = L5_2.GetColor
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  L4_2.color = L5_2
end
L0_1._setup_stamina_cost = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._is_locked
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_unlock_hint
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_panel_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_warning
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_unlock_hint
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_FarmCocoonPage_HardLevel_UnlockDesc"
    L4_2 = A0_2._cur_selected_level
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_unlock_hint
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_panel_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.StageExcelTable
    L1_2 = L1_2.GetData
    L2_2 = A0_2._row
    L2_2 = L2_2.StageIDList
    L2_2 = L2_2[0]
    L1_2 = L1_2(L2_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_warning
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = G
    L4_2 = L4_2.RaidUtils
    L4_2 = L4_2.is_show_combat_power_warning
    L5_2 = L1_2
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._setup_warning = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._custom_setup_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_difficulty_tab
  L2_2 = L1_2
  L1_2 = L1_2.try_show_unlock_hint
  L4_2 = A0_2
  L3_2 = A0_2._get_farm_name
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = A0_2._should_enter
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_GamePhaseManager
    L2_2 = L1_2
    L1_2 = L1_2.GetCurrentPhase
    L1_2 = L1_2(L2_2)
    if L1_2 ~= nil then
      L2_2 = L1_2.EnterBattle
      L3_2 = L2_2
      L2_2 = L2_2.TriggerBattleByCocoon
      L4_2 = A0_2._entity_id
      L5_2 = A0_2._farm_id
      L6_2 = 1
      L7_2 = A0_2._cur_selected_level
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    end
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_content
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActiveByScale
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  A0_2._should_enter = false
end
L0_1._on_return_to_top = L6_1
function L6_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  L4_2 = A0_2._cur_selected_level
  if L4_2 == A1_2 then
    return
  end
  A0_2._cur_selected_level = A1_2
  A0_2._cur_selected_index = A2_2
  A0_2._is_locked = A3_2
  L5_2 = A0_2
  L4_2 = A0_2._custom_setup_view
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._try_show_env_buff_hint
  L4_2(L5_2)
end
L0_1._on_level_select_changed = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.CacnelCocoon
  L1_2(L2_2)
end
L0_1._on_btn_close = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._is_locked
  if not L1_2 then
    L1_2 = A0_2._should_enter
    if not L1_2 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L1_2 = L3_1.get_cur_stamina
  L1_2 = L1_2()
  L2_2 = A0_2._row
  L2_2 = L2_2.StaminaCost
  L1_2 = L1_2 >= L2_2
  if not L1_2 then
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_async_show
    L3_2 = "Ui.Common.PhysicalExchangeDialog"
    L2_2(L3_2)
    return
  end
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.CheckFarmBanWithHint
  L4_2 = A0_2._row
  L4_2 = L4_2.ID
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_difficulty_tab
  L3_2 = L2_2
  L2_2 = L2_2.update_index_storage
  L4_2 = A0_2._cur_selected_level
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._try_generate_recommend_attribute
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.FarmEnemy.FarmTeamEditPage"
  L4_2 = A0_2._enter_relic_raid
  L5_2 = A0_2
  L6_2 = nil
  L7_2 = nil
  L8_2 = true
  L9_2 = A0_2._recommend_attributes
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = L2_2.LuaTable
  L4_2 = L3_2
  L3_2 = L3_2.set_should_check_avatar_dead
  L5_2 = true
  L3_2(L4_2, L5_2)
end
L0_1._on_btn_enter = L6_1
function L6_1(A0_2)
  local L1_2
  A0_2._should_enter = true
end
L0_1._enter_relic_raid = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._row
  L1_2 = L1_2.AutoObtainDamageType
  if L1_2 == false then
    L2_2 = A0_2
    L1_2 = A0_2._try_read_recommend_attribute
    L1_2 = L1_2(L2_2)
    A0_2._recommend_attributes = L1_2
  else
    L2_2 = A0_2
    L1_2 = A0_2._try_cal_recommend_attribute
    L1_2 = L1_2(L2_2)
    A0_2._recommend_attributes = L1_2
  end
end
L0_1._try_generate_recommend_attribute = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2._row
  L2_2 = L2_2.DamageType
  return L1_2(L2_2)
end
L0_1._try_read_recommend_attribute = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.RaidUtils
  L1_2 = L1_2.get_monster_ids_by_mapping_info
  L2_2 = A0_2._row
  L2_2 = L2_2.MappingInfoID
  L3_2 = A0_2._row
  L3_2 = L3_2.WorldLevel
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = G
  L2_2 = L2_2.RaidUtils
  L2_2 = L2_2.auto_construct_recommend_attributes
  L3_2 = L1_2
  return L2_2(L3_2)
end
L0_1._try_cal_recommend_attribute = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.NetworkManager
  L2_2 = L2_2.get_packet
  L3_2 = "StartCocoonStageScRsp"
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.Retcode
    if L3_2 == 0 then
      goto lbl_20
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_content
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActiveByScale
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = L4_1
  L4_2 = L3_2
  L3_2 = L3_2.RemoveAssistAvatar
  L3_2(L4_2)
  ::lbl_20::
end
L0_1._on_start_cocoon_sc_rsp = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._row
  L1_2 = L1_2.BuffDesc
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.TextID
  L2_2 = L2_2.empty
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.env_buff_desc_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = {}
  L2_2 = A0_2._row
  L2_2 = L2_2.ParamList
  L2_2 = L2_2.Length
  if L2_2 ~= 0 then
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.create_lua_table_from_cs_array
    L3_2 = A0_2._row
    L3_2 = L3_2.ParamList
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.env_buff_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._row
  L4_2 = L4_2.BuffDesc
  L5_2 = table
  L5_2 = L5_2.unpack
  L6_2 = L1_2
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._setup_env_buff_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._row
  L1_2 = L1_2.BuffDesc
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.TextID
  L2_2 = L2_2.empty
  if L1_2 == L2_2 then
    return
  end
  L1_2 = A0_2._is_locked
  L1_2 = not L1_2
  L3_2 = A0_2
  L2_2 = A0_2.is_top_page_or_dialog
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.env_buff_panel
    L3_2 = L2_2
    L2_2 = L2_2.update_hint_eff
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.env_buff_panel
    L3_2 = L2_2
    L2_2 = L2_2.update_hint_eff
    L4_2 = false
    L2_2(L3_2, L4_2)
    A0_2._wait_buff_hint = L1_2
  end
end
L0_1._try_show_env_buff_hint = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._wait_buff_hint
  if not L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.env_buff_panel
  L2_2 = L1_2
  L1_2 = L1_2.update_hint_eff
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_first_child_dialog_close = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.MultipleDropUtils
  L3_2 = L2_2.GetMultipleDropTypeByFarmType
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = L2_2.GetTopData
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._is_locked
  L5_2 = L4_2 ~= nil and L5_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_multiple_drop_tip
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  if not L5_2 then
    return
  end
  L6_2 = L2_2.GetSignIconPath
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  L8_2 = A0_2
  L7_2 = A0_2.async_load_sprite_to
  L9_2 = A0_2._binder
  L9_2 = L9_2.icon_multiple_drop
  L10_2 = L6_2
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.text_description
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetTextID
  L9_2 = L4_2.BannerText
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.special_bg
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetActive
  L9_2 = L4_2.Multiplier
  L9_2 = L9_2 == 3
  L7_2(L8_2, L9_2)
  L7_2 = G
  L7_2 = L7_2.MultipleDropUtils
  L7_2 = L7_2.setup_tips_num
  L8_2 = L3_2
  L9_2 = A0_2._binder
  L9_2 = L9_2.text_remain_num
  L10_2 = A0_2._binder
  L10_2 = L10_2.text_total_num
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = L4_2.Theme
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_theme_icon
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = L7_2 ~= nil
  L8_2(L9_2, L10_2)
  if L7_2 then
    L9_2 = A0_2
    L8_2 = A0_2.async_load_sprite_to
    L10_2 = A0_2._binder
    L10_2 = L10_2.theme_icon
    L11_2 = L7_2.IconPath
    L8_2(L9_2, L10_2, L11_2)
  end
end
L0_1._setup_multiple_drop_tips = L6_1
return L0_1
