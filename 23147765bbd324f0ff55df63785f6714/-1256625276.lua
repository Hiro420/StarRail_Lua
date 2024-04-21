local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = require
L1_1 = "Ui.Component.NodeListView"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.FarmEnemy.PreviewRewardPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Entrance.Components.ChessRogueLevelTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Entrance.Components.RogueNousSelectLevelExtendPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Entrance.RogueNousSelectLevelDialogBinder"
L0_1(L1_1)
L0_1 = {}
L0_1.FadeIn = "RogueNousBattlePage_FadeIn"
L0_1.FadeOut = "RogueNousBattlePage_FadeOut"
L1_1 = "RogueNousBattlePage_ExtendPanel_FadeIn"
L2_1 = "RogueNousBattlePage_ExtendPanel_Hint"
L3_1 = "RogueNousBattlePage_Switch_Normal"
L4_1 = "RogueNousBattlePage_Switch_Hard"
L5_1 = G
L5_1 = L5_1.Class
L6_1 = "RogueNousSelectLevelDialog"
L7_1 = G
L7_1 = L7_1.UIController
L5_1 = L5_1(L6_1, L7_1)
L6_1 = CS
L6_1 = L6_1.RPG
L6_1 = L6_1.GameCore
L6_1 = L6_1.ConstValueClientExcelTable
L6_1 = L6_1.GetData
L7_1 = "RogueNous_NousValueLimit_Max"
L6_1 = L6_1(L7_1)
L6_1 = L6_1.Value
L6_1 = L6_1.IntValue
L7_1 = CS
L7_1 = L7_1.RPG
L7_1 = L7_1.GameCore
L7_1 = L7_1.ConstValueClientExcelTable
L7_1 = L7_1.GetData
L8_1 = "RogueNous_NousValueLimit_Min"
L7_1 = L7_1(L8_1)
L7_1 = L7_1.Value
L7_1 = L7_1.IntValue
L8_1 = CS
L8_1 = L8_1.RPG
L8_1 = L8_1.Client
L8_1 = L8_1.GlobalVars
L8_1 = L8_1.s_ModuleManager
L8_1 = L8_1.ChessRogueModule
L9_1 = 73
L10_1 = 74
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueNousSelectLevelDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2.listen_zooms = L1_2
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
  A0_2._pause_game = true
end
L5_1.ctor = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_settlement
  L4_2 = A0_2._on_btn_settlement
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_challenge
  L4_2 = A0_2._on_btn_challenge
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_drop_tip
  L4_2 = A0_2._on_btn_drop_tip
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_value_tip
  L4_2 = A0_2._on_btn_value_tip
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.rpg_animation_event_battle_panel
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L3_1
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_anim_switch_hard_to_normal_end
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.PreviewRewardPanel
  L4_2 = G
  L4_2 = L4_2.PreviewRewardPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._first_pass_reward_panel = L1_2
  L1_2 = A0_2._first_pass_reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_first_pass_reward
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.PreviewRewardPanel
  L4_2 = G
  L4_2 = L4_2.PreviewRewardPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._monster_drop_reward_panel = L1_2
  L1_2 = A0_2._monster_drop_reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_monster_drop_reward
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.RogueNousSelectLevelExtendPanel
  L4_2 = G
  L4_2 = L4_2.RogueNousSelectLevelExtendPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._extend_difficulty_panel = L1_2
  L1_2 = A0_2._extend_difficulty_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_extend_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_datas
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_tab_control
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ActionGroup_Switch"
  L5_2 = "ActionGroup_Select"
  L6_2 = "ActionGroup_Return"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L1_2(L2_2, L3_2)
end
L5_1._on_load = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueNousSelectLevelDialogAddAttribute
  L4_2 = A0_2._on_rogue_nous_select_level_dialog_add_attribute
  L1_2(L2_2, L3_2, L4_2)
end
L5_1._add_handlers = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._get_first_select_index
  L1_2 = L1_2(L2_2)
  A0_2._cur_selected_index = L1_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = A0_2._cur_selected_index
  if not L3_2 then
    L3_2 = 1
  end
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_show_unlock_hint
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator
  L2_2 = L1_2
  L1_2 = L1_2.SetTrigger
  L3_2 = "FadeIn"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_play_extend_panel_fade_in_anim
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L5_1._setup_view = L11_1
function L11_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._extend_difficulty_panel
  L2_2 = L1_2
  L1_2 = L1_2.save_cache_selection
  L1_2(L2_2)
  L1_2 = A0_2._extend_difficulty_panel
  L2_2 = L1_2
  L1_2 = L1_2.mark_max_seen_level
  L1_2(L2_2)
end
L5_1._on_lost_focus = L11_1
function L11_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._do_exit
  L1_2(L2_2)
end
L5_1._in_control_exit_click = L11_1
function L11_1(A0_2, A1_2, A2_2)
  A0_2._pre_exit_cbk = A1_2
  A0_2._pre_exit_cbk_self = A2_2
end
L5_1.register_pre_exit_callback = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._extend_difficulty_panel
  L2_2 = L1_2
  L1_2 = L1_2.reset_scroll
  L1_2(L2_2)
end
L5_1._init_ui_navigation = L11_1
function L11_1(A0_2, A1_2)
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
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L5_2 = A0_2
      L4_2 = A0_2.get_first_selected_object_zone_2
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L5_1._on_enter_zoom = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._area_data_list
  L1_2 = L1_2.Count
  if L1_2 == 1 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_first_select_index
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.find_item_gameObject
  L4_2 = L1_2
  return L2_2(L3_2, L4_2)
end
L5_1.get_first_selected_object = L11_1
function L11_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._extend_difficulty_panel
  L2_2 = L1_2
  L1_2 = L1_2.is_selectable
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._extend_difficulty_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_first_selected_object
    return L1_2(L2_2)
  end
  L1_2 = A0_2._first_pass_reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L5_1.get_first_selected_object_zone_2 = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 1
  L2_2 = A0_2._has_unfinished_record
  if L2_2 then
    L2_2 = 1
    L3_2 = A0_2._area_data_list
    L3_2 = #L3_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = A0_2._area_data_list
      L6_2 = L6_2[L5_2]
      L7_2 = L8_1.ChessRogueData
      L7_2 = L7_2.AreaInfo
      L7_2 = L7_2.CurAreaDataItem
      if L6_2 == L7_2 then
        L1_2 = L5_2
        return L1_2
      end
    end
  end
  L2_2 = A0_2._area_data_list
  L2_2 = #L2_2
  L3_2 = 1
  L4_2 = -1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._area_data_list
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.IsUnlocked
    if L6_2 then
      L1_2 = L5_2
      break
    end
  end
  return L1_2
end
L5_1._get_first_select_index = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L8_1.ChessRogueData
  L1_2 = L1_2.AreaInfo
  A0_2._area_info = L1_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = A0_2._area_info
  L3_2 = L2_2
  L2_2 = L2_2.GetRogueNousAccessibleAreaDataList
  L2_2, L3_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._area_data_list = L1_2
  L1_2 = A0_2._area_info
  L1_2 = L1_2.HasInProcessRogueNousArea
  A0_2._has_unfinished_record = L1_2
end
L5_1._init_datas = L11_1
function L11_1(A0_2)
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
  L3_2 = L3_2.node_tab_root
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._area_info
  L1_2 = L1_2.CurRecordRogueNousArea
  L2_2 = 1
  L3_2 = A0_2._area_data_list
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.ChessRogueLevelTabItem
    L9_2 = G
    L9_2 = L9_2.ChessRogueLevelTabItemBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.setup_view
    L9_2 = A0_2._area_data_list
    L9_2 = L9_2[L5_2]
    L10_2 = L5_2
    L7_2(L8_2, L9_2, L10_2)
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = A0_2._binder
    L9_2 = L9_2.node_tab_root
    L7_2(L8_2, L9_2)
    L7_2 = A0_2._has_unfinished_record
    if L7_2 then
      L8_2 = L6_2
      L7_2 = L6_2.set_tab_enable
      L9_2 = A0_2._area_data_list
      L9_2 = L9_2[L5_2]
      L9_2 = L9_2 == L1_2
      L7_2(L8_2, L9_2)
      L7_2 = A0_2._area_data_list
      L7_2 = L7_2[L5_2]
      if L7_2 == L1_2 then
        A0_2._cur_selected_index = L5_2
      end
    end
    L7_2 = A0_2._tab_control
    L8_2 = L7_2
    L7_2 = L7_2.add_item
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.update_layout
  L2_2(L3_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.setup_navigation
  L4_2 = NavigationType
  L4_2 = L4_2.Vertical
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.set_tab_select_callback
  L4_2 = A0_2
  L5_2 = A0_2._on_tab_item_clicked
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._area_data_list
  L2_2 = L2_2.Count
  if L2_2 == 1 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_tab_root
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L5_1._init_tab_control = L11_1
function L11_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_level_detail_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_level_extra_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_right_panel_navigation
  L1_2(L2_2)
end
L5_1._refresh = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._cur_area_data
  L3_2 = L3_2.AreaNameID
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = G
  L3_2 = L3_2.UITextUtils
  L3_2 = L3_2.GetRomanNumberTextID
  L4_2 = A0_2._cur_selected_index
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_score
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._cur_area_data
  L3_2 = L3_2.LevelScore
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_unlock_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._cur_area_data
  L3_2 = L3_2.IsUnlocked
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._cur_area_data
  L3_2 = L3_2.IsUnlocked
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_hard_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._cur_area_data
  L3_2 = L3_2.IsHard
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_normal_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._cur_area_data
  L3_2 = L3_2.IsHard
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._cur_area_data
  L1_2 = L1_2.UnlockID
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RogueUnlockConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_unlock_tip
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L2_2.RogueUnlockDetail
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_value_full_hint
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._value_limit_row
  if L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_min_value
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = A0_2._value_limit_row
    L5_2 = L5_2.MinNousValue
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_max_value
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = A0_2._value_limit_row
    L5_2 = L5_2.MaxNousValue
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._value_limit_row
    L3_2 = L3_2.MinNousValue
    L4_2 = L7_1
    if L3_2 ~= L4_2 then
      L3_2 = A0_2._value_limit_row
      L3_2 = L3_2.MaxNousValue
      L4_2 = L6_1
      if L3_2 ~= L4_2 then
        goto lbl_99
      end
    end
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_value_full_hint
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
  end
  ::lbl_99::
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.RogueNousUtils
  L3_2 = L3_2.IsInGuideOne
  L3_2 = L3_2()
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_value_panel
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_score_panel
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._cur_area_data
  L5_2 = L4_2
  L4_2 = L4_2.GetFirstPassRewardList
  L4_2 = L4_2(L5_2)
  if L4_2 ~= nil then
    L5_2 = L4_2.Count
    if 0 < L5_2 then
      L5_2 = A0_2._first_pass_reward_panel
      L6_2 = L5_2
      L5_2 = L5_2.safe_set_active
      L7_2 = true
      L5_2(L6_2, L7_2)
      L5_2 = A0_2._first_pass_reward_panel
      L6_2 = L5_2
      L5_2 = L5_2.setup_view
      L7_2 = L4_2
      L8_2 = false
      L9_2 = A0_2._cur_area_data
      L9_2 = L9_2.IsFirstRewardTaken
      L5_2(L6_2, L7_2, L8_2, L9_2)
  end
  else
    L5_2 = A0_2._first_pass_reward_panel
    L6_2 = L5_2
    L5_2 = L5_2.safe_set_active
    L7_2 = false
    L5_2(L6_2, L7_2)
  end
  L5_2 = A0_2._cur_area_data
  L5_2 = L5_2.MonsterDropItems
  if L5_2 ~= nil then
    L5_2 = A0_2._cur_area_data
    L5_2 = L5_2.MonsterDropItems
    L5_2 = L5_2.Length
    if 0 < L5_2 then
      L5_2 = A0_2._monster_drop_reward_panel
      L6_2 = L5_2
      L5_2 = L5_2.safe_set_active
      L7_2 = true
      L5_2(L6_2, L7_2)
      L5_2 = A0_2._monster_drop_reward_panel
      L6_2 = L5_2
      L5_2 = L5_2.setup_view
      L7_2 = A0_2._cur_area_data
      L7_2 = L7_2.MonsterDropItems
      L5_2(L6_2, L7_2)
  end
  else
    L5_2 = A0_2._monster_drop_reward_panel
    L6_2 = L5_2
    L5_2 = L5_2.safe_set_active
    L7_2 = false
    L5_2(L6_2, L7_2)
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.btn_settlement
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = A0_2._has_unfinished_record
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._has_unfinished_record
  if L5_2 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_challenge_btn
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = "UIText_Rogue_Btn_Continue"
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_challenge_tip
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = "UIText_RogueDLC_ProgressRate"
    L8_2 = G
    L8_2 = L8_2.TextmapStatic
    L8_2 = L8_2.GetText
    L9_2 = A0_2._area_info
    L9_2 = L9_2.CurAreaLayerDataItem
    L9_2 = L9_2.LayerIndexID
    L8_2, L9_2 = L8_2(L9_2)
    L5_2(L6_2, L7_2, L8_2, L9_2)
  else
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_challenge_btn
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = "UIText_Rogue_Init_Avatar_Title"
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_challenge_tip
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = "UIText_RogueDLC_Area_RecommendLevel"
    L8_2 = A0_2._cur_area_data
    L8_2 = L8_2.RecommendLevel
    L5_2(L6_2, L7_2, L8_2)
  end
end
L5_1._refresh_level_detail_panel = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_area_data
  L1_2 = L1_2.IsHard
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_extend_panel
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_extend_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._extend_difficulty_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._has_unfinished_record
  L4_2 = A0_2._area_info
  L4_2 = L4_2.CurExtendDifficultyCompInfo
  L1_2(L2_2, L3_2, L4_2)
end
L5_1._refresh_level_extra_panel = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  L2_2 = A0_2._first_pass_reward_panel
  L3_2 = L2_2
  L2_2 = L2_2.get_all_reward_btns
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._monster_drop_reward_panel
  L4_2 = L3_2
  L3_2 = L3_2.get_all_reward_btns
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L2_2 = G
  L2_2 = L2_2.UIUtils
  L2_2 = L2_2.setup_multi_line_navigation
  L3_2 = L1_2
  L2_2(L3_2)
  L2_2 = A0_2._extend_difficulty_panel
  L3_2 = L2_2
  L2_2 = L2_2.is_selectable
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2._extend_difficulty_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_horizontal_navi
    L4_2 = {}
    L5_2 = L1_2[1]
    L5_2 = L5_2[1]
    L6_2 = L1_2[2]
    L6_2 = L6_2[1]
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L2_2(L3_2, L4_2)
  end
end
L5_1._setup_right_panel_navigation = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 1
  L2_2 = A0_2._area_data_list
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._tab_control
    L6_2 = L5_2
    L5_2 = L5_2.find_item
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    L7_2 = L5_2
    L6_2 = L5_2.reset_status
    L6_2(L7_2)
  end
end
L5_1._try_show_unlock_hint = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._cur_area_data
  L3_2 = A0_2._area_data_list
  L3_2 = L3_2[A1_2]
  A0_2._cur_area_data = L3_2
  A0_2._cur_selected_index = A1_2
  L3_2 = A0_2._cur_area_data
  L3_2 = L3_2.AreaID
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.RogueNousValueAreaLimitExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  A0_2._value_limit_row = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._refresh
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._try_play_battle_panel_switch_anim
  L6_2 = L2_2
  L7_2 = A0_2._cur_area_data
  L4_2(L5_2, L6_2, L7_2)
end
L5_1._on_tab_item_clicked = L11_1
function L11_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._play_extend_panel_hint_anim
  L1_2(L2_2)
end
L5_1._on_rogue_nous_select_level_dialog_add_attribute = L11_1
function L11_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._do_exit
  L1_2(L2_2)
end
L5_1._on_btn_close = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ConfirmDialogUtil
  L1_2 = L1_2.ShowOkCancelHint
  L2_2 = "UIText_RogueNous_ProgressAbandon_HintDesc"
  L3_2 = "Common_ConfirmDialog_Title"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = L8_1
      L2_3 = L1_3
      L1_3 = L1_3.SendGiveUpChessRogueReq
      L1_3(L2_3)
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3.set_exit_after_transition
      L3_3 = true
      L1_3(L2_3, L3_3)
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3.show_full_screen_block_for_packet
      L3_3 = CS
      L3_3 = L3_3.PBIBDHBOIGI
      L3_3 = L3_3.BHECAHPLGBN
      L1_3(L2_3, L3_3)
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3._do_exit
      L1_3(L2_3)
    end
  end
  L1_2(L2_2, L3_2, L4_2)
end
L5_1._on_btn_settlement = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._has_unfinished_record
  if L1_2 then
    L1_2 = L8_1
    L2_2 = L1_2
    L1_2 = L1_2.SendReEnterRogueReq
    L1_2(L2_2)
  else
    L1_2 = A0_2._extend_difficulty_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_selected_difficulty_comp_ids
    L1_2 = L1_2(L2_2)
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_async_show
    L3_2 = "Ui.RogueDLC.RogueNous.Entrance.RogueNousSelectAeonPage"
    L4_2 = A0_2._cur_area_data
    L4_2 = L4_2.AreaID
    L5_2 = L1_2
    L2_2(L3_2, L4_2, L5_2)
  end
end
L5_1._on_btn_challenge = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Common.CommonIntroduceDialog"
  L3_2 = L10_1
  L1_2(L2_2, L3_2)
end
L5_1._on_btn_drop_tip = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Common.CommonIntroduceDialog"
  L3_2 = L9_1
  L1_2(L2_2, L3_2)
end
L5_1._on_btn_value_tip = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._extend_difficulty_panel
  L2_2 = L1_2
  L1_2 = L1_2.save_cache_selection
  L1_2(L2_2)
  L1_2 = A0_2._extend_difficulty_panel
  L2_2 = L1_2
  L1_2 = L1_2.mark_max_seen_level
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._pre_exit_cbk
  L3_2 = A0_2._pre_exit_cbk_self
  L1_2(L2_2, L3_2)
  L1_2 = "FadeOut"
  L2_2 = A0_2._binder
  L2_2 = L2_2.animator
  L3_2 = L2_2
  L2_2 = L2_2.SetTrigger
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._show_full_screen_block_by_anim
  L4_2 = L0_1[L1_2]
  function L5_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.exit
    L0_3(L1_3)
  end
  L2_2(L3_2, L4_2, L5_2)
end
L5_1._do_exit = L11_1
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = 3
  L5_2 = A0_2
  L4_2 = A0_2.show_full_screen_block
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.rpg_animation_event
  L6_2 = L5_2
  L5_2 = L5_2.AddAnimationEvent
  L7_2 = A1_2
  function L8_2()
    local L0_3, L1_3, L2_3
    L0_3 = CS
    L0_3 = L0_3.RPG
    L0_3 = L0_3.Client
    L0_3 = L0_3.GlobalVars
    L0_3 = L0_3.s_UIManager
    L1_3 = L0_3
    L0_3 = L0_3.TryUnblockFixedTime
    L2_3 = L4_2
    L0_3(L1_3, L2_3)
    L0_3 = A2_2
    if L0_3 ~= nil then
      L0_3 = A2_2
      L0_3()
    end
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2._binder
      L0_3 = L0_3.rpg_animation_event
      L1_3 = L0_3
      L0_3 = L0_3.ClearEvent
      L0_3(L1_3)
    end
  end
  L5_2(L6_2, L7_2, L8_2)
end
L5_1._show_full_screen_block_by_anim = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_area_data
  L1_2 = L1_2.IsHard
  if L1_2 then
    L1_2 = A0_2._extend_difficulty_panel
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.PlayFromBegin
    L2_2 = A0_2._binder
    L2_2 = L2_2.animation_battle_panel
    L3_2 = L1_1
    L1_2(L2_2, L3_2)
  end
end
L5_1._try_play_extend_panel_fade_in_anim = L11_1
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A1_2 == nil or A2_2 == nil then
    return
  end
  L3_2 = A1_2.IsHard
  if L3_2 then
    L3_2 = A2_2.IsHard
    if not L3_2 then
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.UIAnimationUtils
      L3_2 = L3_2.PlayFromBegin
      L4_2 = A0_2._binder
      L4_2 = L4_2.animation_battle_panel
      L5_2 = L3_1
      L3_2(L4_2, L5_2)
  end
  else
    L3_2 = A1_2.IsHard
    if not L3_2 then
      L3_2 = A2_2.IsHard
      if L3_2 then
        L3_2 = A0_2._extend_difficulty_panel
        L4_2 = L3_2
        L3_2 = L3_2.safe_set_active
        L5_2 = true
        L3_2(L4_2, L5_2)
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.Client
        L3_2 = L3_2.UIAnimationUtils
        L3_2 = L3_2.PlayFromBegin
        L4_2 = A0_2._binder
        L4_2 = L4_2.animation_battle_panel
        L5_2 = L4_1
        L3_2(L4_2, L5_2)
      end
    end
  end
end
L5_1._try_play_battle_panel_switch_anim = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.animation_battle_panel
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
end
L5_1._play_extend_panel_hint_anim = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._extend_difficulty_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L5_1._on_anim_switch_hard_to_normal_end = L11_1
return L5_1
