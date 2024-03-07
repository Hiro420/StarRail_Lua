local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = require
L1_1 = "Ui.FarmEnemy.FarmWeeklyCocoonPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.FarmEnemy.FarmDifficultyPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.FarmEnemy.FarmDifficultyPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FarmWeeklyCocoonPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_CombatPower_Hint_Cocoon"
L2_1 = "UIText_FarmCocoonPage_HardLevel_UnlockDesc"
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.PlayerModule
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.GlobalVars
L4_1 = L4_1.s_ModuleManager
L4_1 = L4_1.TeamModule
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.Client
L5_1 = L5_1.GlobalVars
L5_1 = L5_1.s_ModuleManager
L5_1 = L5_1.FriendModule
L6_1 = CS
L6_1 = L6_1.RPG
L6_1 = L6_1.Client
L6_1 = L6_1.GlobalVars
L6_1 = L6_1.s_ModuleManager
L6_1 = L6_1.FarmModule
L7_1 = G
L7_1 = L7_1.StaminaModule
L7_1 = L7_1.Instance
L8_1 = {}
L8_1.enough = "#FFFFFF"
L8_1.lack = "#C84A32"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.FarmWeeklyCocoonPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_played_fade_in = false
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
  A0_2._should_start_cocoon = false
end
L0_1.ctor = L9_1
function L9_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._cocoon_id = A1_2
  A0_2._prop_entity_id = A2_2
  A0_2._is_active = A3_2
  A0_2._week_limit_id = "Cocoon_Weekly_Limit_Times"
end
L0_1.init = L9_1
function L9_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L9_1
function L9_1(A0_2, A1_2)
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
L0_1._is_can_to_zoom = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_navigation_of_monsters_and_rewards
  L1_2(L2_2)
end
L0_1._init_ui_navigation = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_close_click
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_monster
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 31
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_start
  L4_2 = A0_2._on_btn_start_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.StaminaChanged
  L4_2 = A0_2._refresh_wave
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.StaminaItemUsed
  L4_2 = A0_2._refresh_wave
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.WeekCocoonCountChanged
  L4_2 = A0_2._refresh_finish_count
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.OOHIJJBKCIE
  L4_2 = A0_2._on_start_cocoon_sc_rsp
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = G
  L1_2 = L1_2.ResBarAreaFactory
  L1_2 = L1_2.CreateResBarArea
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_res_bar
  L3_2 = "RewardConfirmDialog"
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  A0_2._wave = 1
  L1_2 = L3_1.PlayerData
  L1_2 = L1_2.WorldLevel
  A0_2._player_world_level = L1_2
  A0_2._current_select_level = nil
  L2_2 = A0_2
  L1_2 = A0_2._init_level_tab
  L1_2(L2_2)
  L1_2 = L7_1.get_stamina_config
  L1_2 = L1_2()
  L3_2 = A0_2
  L2_2 = A0_2.async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_stamina
  L5_2 = L1_2.ItemIconPath
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_load = L9_1
function L9_1(A0_2)
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
L0_1._setup_view = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = tostring
  L2_2 = A0_2.__name
  return L1_2(L2_2)
end
L0_1._get_farm_name = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = tostring
  L2_2 = A0_2.__name
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._cocoon_id
  L1_2 = L1_2 .. L2_2
  return L1_2
end
L0_1._get_farm_unique_name = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._current_select_level
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.CocoonExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._cocoon_id
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._row = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.StageExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._row
  L3_2 = L3_2.StageID
  L2_2 = L2_2(L3_2)
  A0_2._stage_row = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MappingInfoExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._row
  L3_2 = L3_2.MappingInfoID
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ConstValueCommonExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2._week_limit_id
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.Value
  L3_2 = L3_2.IntValue
  A0_2._week_limit_count = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_title
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.Name
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.Desc
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_world_level
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = A0_2._player_world_level
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.difficulty_level
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = "UIText_Cocoon_WorldLevel_Text_"
  L6_2 = tostring
  L7_2 = A0_2._current_index
  L6_2 = L6_2(L7_2)
  L5_2 = L5_2 .. L6_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_environment
  L3_2(L4_2)
  L3_2 = A0_2._row
  L3_2 = L3_2.StageIDList
  L3_2 = L3_2[0]
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_monster
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = L2_2.ShowMonsterList
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_reward
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = L2_2.DisplayItemList
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_reward
  L5_2 = L4_2
  L4_2 = L4_2.setup_double_view
  L6_2 = A0_2._cocoon_id
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh_combat_power
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.LayoutRebuilder
  L4_2 = L4_2.ForceRebuildLayoutImmediate
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_layout
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh_wave
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh_finish_count
  L4_2(L5_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_monster
  L5_2 = L4_2
  L4_2 = L4_2.register_on_move_btn_callback
  L6_2 = A0_2._on_zoom2_item_refresh
  L7_2 = A0_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_reward
  L5_2 = L4_2
  L4_2 = L4_2.register_on_move_btn_callback
  L6_2 = A0_2._on_zoom2_item_refresh
  L7_2 = A0_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_unlock_hint
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A0_2._is_current_locked
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_panel_root
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A0_2._is_current_locked
  L6_2 = not L6_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.open_time_root
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A0_2._is_current_locked
  L6_2 = not L6_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._is_current_locked
  if L4_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_unlock_hint
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = L2_1
    L7_2 = A0_2._current_select_level
    L4_2(L5_2, L6_2, L7_2)
  end
  L5_2 = A0_2
  L4_2 = A0_2._setup_env_buff_view
  L4_2(L5_2)
end
L0_1._custom_setup_view = L9_1
function L9_1(A0_2, A1_2)
  local L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MonsterRank
  L2_2 = L2_2.Minion
  if A1_2 == L2_2 then
    L2_2 = 0
    return L2_2
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.MonsterRank
    L2_2 = L2_2.MinionLv2
    if A1_2 == L2_2 then
      L2_2 = 1
      return L2_2
    else
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.GameCore
      L2_2 = L2_2.MonsterRank
      L2_2 = L2_2.Elite
      if A1_2 == L2_2 then
        L2_2 = 2
        return L2_2
      else
        L2_2 = CS
        L2_2 = L2_2.RPG
        L2_2 = L2_2.GameCore
        L2_2 = L2_2.MonsterRank
        L2_2 = L2_2.LittleBoss
        if A1_2 == L2_2 then
          L2_2 = 3
          return L2_2
        else
          L2_2 = CS
          L2_2 = L2_2.RPG
          L2_2 = L2_2.GameCore
          L2_2 = L2_2.MonsterRank
          L2_2 = L2_2.BigBoss
          if A1_2 == L2_2 then
            L2_2 = 4
            return L2_2
          end
        end
      end
    end
  end
  L2_2 = 0
  return L2_2
end
L0_1._rank_to_index = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L2_2 = -1
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.StageExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.MonsterList
  if L4_2 == nil then
    L5_2 = 0.5
    return L5_2
  end
  L5_2 = 0
  L6_2 = L4_2.Length
  L6_2 = L6_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = L4_2[0]
    L11_2 = L9_2
    L10_2 = L9_2.ToList
    L10_2 = L10_2(L11_2)
    L11_2 = 0
    L12_2 = L10_2.Count
    L12_2 = L12_2 - 1
    L13_2 = 1
    for L14_2 = L11_2, L12_2, L13_2 do
      L15_2 = CS
      L15_2 = L15_2.RPG
      L15_2 = L15_2.GameCore
      L15_2 = L15_2.MonsterExcelTable
      L15_2 = L15_2.GetData
      L16_2 = L10_2[L14_2]
      L15_2 = L15_2(L16_2)
      L16_2 = CS
      L16_2 = L16_2.RPG
      L16_2 = L16_2.GameCore
      L16_2 = L16_2.MonsterTemplateExcelTable
      L16_2 = L16_2.GetData
      L17_2 = L15_2.MonsterTemplateID
      L16_2 = L16_2(L17_2)
      L18_2 = A0_2
      L17_2 = A0_2._rank_to_index
      L19_2 = L16_2.Rank
      L17_2 = L17_2(L18_2, L19_2)
      if L2_2 < L17_2 then
        L2_2 = L17_2
      end
    end
  end
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.GamePlayStatic
  L5_2 = L5_2.GetCombatPowerWarnPercentMonsterRate
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  if L5_2 == nil then
    L5_2 = 0.5
  end
  L6_2 = L3_2.MonsterWarningRatio
  L6_2 = L5_2 * L6_2
  return L6_2
end
L0_1._get_monster_warning_percent = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.StageExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.HardLevelGroupExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2.HardLevelGroup
  L5_2 = L2_2.Level
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = 0
  L5_2 = 0
  L6_2 = L3_2.CombatPowerList
  L6_2 = L6_2.Length
  L6_2 = L6_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = L3_2.CombatPowerList
    L9_2 = L9_2[L8_2]
    L10_2 = L9_2
    L9_2 = L9_2.ToFloat
    L9_2 = L9_2(L10_2)
    L4_2 = L4_2 + L9_2
  end
  L5_2 = L4_1
  L6_2 = L5_2
  L5_2 = L5_2.GetCurrentTeam
  L5_2 = L5_2(L6_2)
  L6_2 = L5_2
  L5_2 = L5_2.GetCombatPower
  L5_2 = L5_2(L6_2)
  L7_2 = A0_2
  L6_2 = A0_2._get_monster_warning_percent
  L8_2 = A1_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = L5_2 * 100
  L8_2 = L4_2 * L6_2
  L7_2 = L7_2 < L8_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_combat_power_hint
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = A0_2._is_active
  L10_2 = L7_2 or L10_2
  if not L10_2 and L7_2 then
    L10_2 = A0_2._is_current_locked
    L10_2 = not L10_2
  end
  L8_2(L9_2, L10_2)
end
L0_1._refresh_combat_power = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._row
  L1_2 = L1_2.StaminaCost
  L2_2 = A0_2._wave
  L1_2 = L1_2 * L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_cost
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = L7_1
  L3_2 = L2_2
  L2_2 = L2_2.get_cur_stamina
  L2_2 = L2_2(L3_2)
  L2_2 = L1_2 <= L2_2
  A0_2.hasEnoughStamina = L2_2
  L2_2 = A0_2.hasEnoughStamina
  if L2_2 then
    L2_2 = L8_1.enough
    if L2_2 then
      goto lbl_25
    end
  end
  L2_2 = L8_1.lack
  ::lbl_25::
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_cost
  L4_2 = G
  L4_2 = L4_2.UIColorUtils
  L4_2 = L4_2.GetColor
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L3_2.color = L4_2
end
L0_1._refresh_wave = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L3_1.PlayerData
  L1_2 = L1_2.WeekCocoonCount
  if not L1_2 then
    L1_2 = 0
  end
  A0_2._week_finish_count = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_week_limit_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_Cocoon2_Number"
  L4_2 = A0_2._week_limit_count
  L5_2 = A0_2._week_finish_count
  L4_2 = L4_2 - L5_2
  L5_2 = A0_2._week_limit_count
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._week_finish_count
  L2_2 = A0_2._week_limit_count
  L1_2 = L1_2 < L2_2
  A0_2.canChallenge = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_cost
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.canChallenge
  L1_2(L2_2, L3_2)
end
L0_1._refresh_finish_count = L9_1
function L9_1(A0_2)
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
L0_1._on_btn_close_click = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L6_1
  L2_2 = L1_2
  L1_2 = L1_2.CheckFarmBanWithHint
  L3_2 = A0_2._row
  L3_2 = L3_2.ID
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2.canChallenge
  if L1_2 ~= nil then
    L1_2 = A0_2.canChallenge
    if L1_2 == false then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.ConfirmDialogUtil
      L1_2 = L1_2.ShowConfirmDialog
      function L2_2(A0_3)
        local L1_3, L2_3
        if A0_3 then
          L1_3 = A0_2
          L2_3 = L1_3
          L1_3 = L1_3._enter_cocoon
          L1_3(L2_3)
        end
      end
      L1_2 = L1_2(L2_2)
      L3_2 = L1_2
      L2_2 = L1_2.GetComponentContent
      L2_2 = L2_2(L3_2)
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = "UIText_ConfirmDialog_CocoonWeekly_Notimes"
      L2_2(L3_2, L4_2)
      L2_2 = DialogBtnMode
      L2_2 = L2_2.eOkCancel
      L1_2.Mode = L2_2
      return
    end
  end
  L1_2 = A0_2.hasEnoughStamina
  if not L1_2 then
    L1_2 = A0_2.canChallenge
    if L1_2 then
      L1_2 = G
      L1_2 = L1_2.UIManager
      L1_2 = L1_2.load_and_async_show
      L2_2 = "Ui.Common.PhysicalExchangeDialog"
      L1_2(L2_2)
      return
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._try_generate_recommend_attribute
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._enter_cocoon
  L1_2(L2_2)
end
L0_1._on_btn_start_click = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_difficulty_tab
  L2_2 = L1_2
  L1_2 = L1_2.update_index_storage
  L3_2 = A0_2._current_select_level
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.FarmEnemy.FarmTeamEditPage"
  function L3_2()
    local L0_3, L1_3
    A0_2._should_start_cocoon = true
  end
  L4_2 = nil
  L5_2 = nil
  L6_2 = nil
  L7_2 = true
  L8_2 = A0_2._recommend_attributes
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = L1_2.LuaTable
  L3_2 = L2_2
  L2_2 = L2_2.set_should_check_avatar_dead
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L0_1._enter_cocoon = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._custom_setup_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_navigation_of_monsters_and_rewards
  L1_2(L2_2)
  L1_2 = A0_2._should_start_cocoon
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
      L4_2 = A0_2._prop_entity_id
      L5_2 = A0_2._cocoon_id
      L6_2 = A0_2._wave
      L7_2 = A0_2._current_select_level
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    end
    L3_2 = A0_2
    L2_2 = A0_2.set_view_active
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  A0_2._should_start_cocoon = false
end
L0_1._on_return_to_top = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._unbind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._unbind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_start
  L4_2 = A0_2._on_btn_start_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_dispose = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._row
  L1_2 = L1_2.BuffDesc
  L1_2 = A0_2._row
  L1_2 = L1_2.BuffDesc
  L2_2 = L1_2
  L1_2 = L1_2.IsEmpty
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2 ~= nil and L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_environment
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_environment
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = A0_2._row
    L4_2 = L4_2.BuffDesc
    L5_2 = G
    L5_2 = L5_2.UITextUtils
    L5_2 = L5_2.GetSkillParams
    L6_2 = A0_2._row
    L6_2 = L6_2.ParamList
    L5_2, L6_2 = L5_2(L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1._setup_environment = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_difficulty_tab
  L2_2 = L1_2
  L1_2 = L1_2.init_data
  L3_2 = A0_2._cocoon_id
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_difficulty_tab
  L2_2 = L1_2
  L1_2 = L1_2.init_tab
  L4_2 = A0_2
  L3_2 = A0_2._get_farm_unique_name
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._on_difficulty_level_changed
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._init_level_tab = L9_1
function L9_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  L4_2 = A0_2._current_select_level
  if L4_2 == A1_2 then
    return
  end
  A0_2._current_select_level = A1_2
  A0_2._current_index = A2_2
  A0_2._is_current_locked = A3_2
  L5_2 = A0_2
  L4_2 = A0_2._custom_setup_view
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._try_show_env_buff_hint
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_navigation_of_monsters_and_rewards
  L4_2(L5_2)
end
L0_1._on_difficulty_level_changed = L9_1
function L9_1(A0_2)
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
L0_1._setup_navigation_of_monsters_and_rewards = L9_1
function L9_1(A0_2)
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
L0_1._try_generate_recommend_attribute = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2._row
  L2_2 = L2_2.DamageType
  return L1_2(L2_2)
end
L0_1._try_read_recommend_attribute = L9_1
function L9_1(A0_2)
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
L0_1._try_cal_recommend_attribute = L9_1
function L9_1(A0_2, A1_2)
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
      goto lbl_18
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2.set_view_active
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = L5_1
  L4_2 = L3_2
  L3_2 = L3_2.RemoveAssistAvatar
  L3_2(L4_2)
  ::lbl_18::
end
L0_1._on_start_cocoon_sc_rsp = L9_1
function L9_1(A0_2)
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
L0_1._setup_env_buff_view = L9_1
function L9_1(A0_2)
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
L0_1._try_show_env_buff_hint = L9_1
function L9_1(A0_2)
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
L0_1._on_first_child_dialog_close = L9_1
return L0_1
