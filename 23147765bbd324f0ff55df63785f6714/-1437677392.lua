local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Dimensions.ChessRogueDimensionPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Dimensions.Components.ChessRogueDimensionTabItem"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueDimensionPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ChessRogueModule
L2_1 = {}
L2_1[1] = "Dimension"
L2_1[2] = "Cabinet"
L3_1 = {}
L3_1[1] = "UIText_RogueDLC_Dimension"
L3_1[2] = "UIText_RogueDLC_Cabinet_Special"
L4_1 = {}
L4_1[1] = "SpriteOutput/Rogue/Tab/DiceSkillPageIcon.png"
L4_1[2] = "SpriteOutput/Rogue/Tab/MissionTreeOverIcon.png"
L5_1 = {}
L5_1[1] = "ChessRogueDimensionAeon"
L5_1[2] = "ChessRogueCabinetTab"
L6_1 = {}
L6_1[1] = "UI/Rogue/DLC/Dice/Widget/OverviewPanel.prefab"
L6_1[2] = "UI/Rogue/DLC/Dice/Widget/MissionTreePanel.prefab"
L7_1 = "DiceSkillOverview_MissionTreePanel"
L8_1 = "DiceMissionTree_SkillOverviewPanel"
L9_1 = 2
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ChessRogueDimensionPageBinder
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
  A0_2._pause_game = true
end
L0_1.ctor = L10_1
function L10_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = L1_1.ChessRogueDimensionData
  L4_2 = L4_2.DimensionInfo
  A0_2._rogue_dimension_data = L4_2
  A0_2._is_dimension_detail_panel_shown = false
  A0_2._is_cabinet_detail_panel_shown = false
  L4_2 = A1_2 == nil or A1_2 == 1
  A0_2._is_in_dimension = L4_2
  L4_2 = A1_2 == 2
  A0_2._is_in_cabinet = L4_2
  L4_2 = A1_2 or L4_2
  if not A1_2 then
    L4_2 = 1
  end
  A0_2._default_id = L4_2
  L4_2 = A0_2._default_id
  L4_2 = L4_2 == 1
  A0_2._ban_anim = L4_2
  L4_2 = A2_2 ~= nil
  A0_2._focus_tab_2 = L4_2
  A0_2._is_from_activity = A3_2
  L4_2 = A0_2._focus_tab_2
  if L4_2 then
    L4_2 = {}
    L5_2 = NavigationZoneType
    L5_2 = L5_2.Zone1
    L4_2[1] = L5_2
    A0_2.listen_zooms = L4_2
  else
    L4_2 = {}
    L5_2 = NavigationZoneType
    L5_2 = L5_2.Zone1
    L6_2 = NavigationZoneType
    L6_2 = L6_2.Zone2
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    A0_2.listen_zooms = L4_2
  end
end
L0_1.init = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.exit_btn
  L4_2 = A0_2._on_exit_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.return_btn
  L4_2 = A0_2._on_return_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.empty_btn
  L4_2 = A0_2._on_return_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._focus_tab_2
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_normal_view
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._setup_jump_view
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._focus_tab_2
  if not L1_2 then
    L1_2 = A0_2._is_cabinet_detail_panel_shown
    if not L1_2 then
      L1_2 = A0_2._is_dimension_detail_panel_shown
      if not L1_2 then
        goto lbl_13
      end
    end
    L2_2 = A0_2
    L1_2 = A0_2._on_return_btn_clicked
    L1_2(L2_2)
  ::lbl_13::
  else
    L2_2 = A0_2
    L1_2 = A0_2._on_exit_btn_clicked
    L1_2(L2_2)
  end
end
L0_1._in_control_exit_click = L10_1
function L10_1(A0_2)
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
  L3_2 = L3_2.tab_control_root
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_item_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = 1
  L2_2 = 2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.ChessRogueDimensionTabItem
    L8_2 = G
    L8_2 = L8_2.ChessRogueDimensionTabItemBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.register_pre_click_callback
    L8_2 = A0_2._init_panel_by_uid
    L9_2 = A0_2
    L6_2(L7_2, L8_2, L9_2)
    L7_2 = L5_2
    L6_2 = L5_2.setup_view
    L8_2 = L3_1[L4_2]
    L9_2 = L4_1[L4_2]
    L10_2 = L5_1[L4_2]
    L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2 = A0_2._tab_control
    L7_2 = L6_2
    L6_2 = L6_2.add_item
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.setup_navigation
  L3_2 = NavigationType
  L3_2 = L3_2.Vertical
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = A0_2._default_id
  if not L3_2 then
    L3_2 = 1
  end
  L1_2(L2_2, L3_2)
end
L0_1._init_tab_control = L10_1
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L2_1[A1_2]
  if L3_2 == "Cabinet" then
    L4_2 = A0_2
    L3_2 = A0_2._on_dimension_to_cabinet_btn_clicked
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2._on_cabinet_to_dimension_btn_clicked
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.SDKLuaReportAdapter
  L3_2 = L3_2.ReportUIPanelSwitch
  L4_2 = A0_2.__name
  L5_2 = L2_1[A1_2]
  L6_2 = A0_2.guid
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._on_tab_item_clicked = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._instantiated_gameobject_table
  if L2_2 then
    L2_2 = A0_2._instantiated_gameobject_table
    L2_2 = L2_2[A1_2]
    if L2_2 then
      return
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2.sync_load_prefab
  L4_2 = L6_1[A1_2]
  L5_2 = A0_2._binder
  L5_2 = L5_2.prefab_load_root
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2._instantiated_gameobject_table
  if not L3_2 then
    L3_2 = {}
  end
  A0_2._instantiated_gameobject_table = L3_2
  L3_2 = A0_2._instantiated_gameobject_table
  L3_2[A1_2] = true
  if A1_2 == 1 then
    L2_2.name = "OverviewPanel"
    L3_2 = A0_2._binder
    L4_2 = L3_2
    L3_2 = L3_2.create_dimension_main_panel
    L3_2(L4_2)
    L3_2 = A0_2._binder
    L4_2 = L3_2
    L3_2 = L3_2.create_dimension_detail_panel
    L3_2(L4_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.main_panel
    L4_2 = L3_2
    L3_2 = L3_2.register_dimension_btn_click_callback
    L5_2 = A0_2._on_dimension_btn_clicked
    L6_2 = A0_2
    L3_2(L4_2, L5_2, L6_2)
  elseif A1_2 == 2 then
    L2_2.name = "MissionTreePanel"
    L3_2 = A0_2._binder
    L4_2 = L3_2
    L3_2 = L3_2.create_cabinet_panel
    L3_2(L4_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.animator_cmpt
  L4_2 = L3_2
  L3_2 = L3_2.RebindWithPreStatus
  L3_2(L4_2)
end
L0_1._init_panel_by_uid = L10_1
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2._is_in_cabinet
  if L3_2 then
    return
  end
  L3_2 = A0_2._cur_dimension_panel
  if L3_2 then
    L3_2 = A0_2._cur_dimension_panel
    L4_2 = L3_2
    L3_2 = L3_2.set_checked
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._cur_dimension_panel
    L4_2 = L3_2
    L3_2 = L3_2.get_aeon_id
    L3_2 = L3_2(L4_2)
    if L3_2 ~= nil then
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.ChessRogueUtils
      L4_2 = L4_2.SetDimensionUnlockedTalentSeen
      L5_2 = L3_2
      L4_2(L5_2)
    end
    A0_2._cur_dimension_panel = nil
  end
  A0_2._cur_dimension_panel = A2_2
  L3_2 = A0_2._cur_dimension_panel
  L4_2 = L3_2
  L3_2 = L3_2.set_checked
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.eff_detail_panel
  L4_2 = L3_2
  L3_2 = L3_2.safe_set_active
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._is_dimension_detail_panel_shown
  if not L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.animator_cmpt
    L4_2 = L3_2
    L3_2 = L3_2.SetTrigger
    L5_2 = "Switch_InfoPanel"
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.eff_detail_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  A0_2._is_dimension_detail_panel_shown = true
  L3_2 = A0_2._binder
  L3_2 = L3_2.exit_btn
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.return_btn
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.setup_short_cut_hint_panel
  L5_2 = {}
  L6_2 = "ActionGroup_Switch"
  L7_2 = "ActionGroup_Scroll"
  L8_2 = "ActionGroup_Return"
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  L3_2(L4_2, L5_2)
end
L0_1._on_dimension_btn_clicked = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit_btn_clicked = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._focus_tab_2
  if L1_2 then
    return
  end
  L1_2 = A0_2._is_dimension_detail_panel_shown
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._fade_out_from_dimension_detail_panel
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
  else
    L1_2 = A0_2._is_cabinet_detail_panel_shown
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._fade_out_from_cabinet_detail_panel
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
  end
end
L0_1._on_return_btn_clicked = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.eff_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  A0_2._is_dimension_detail_panel_shown = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.exit_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.return_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._cur_dimension_panel
  if L1_2 then
    L1_2 = A0_2._cur_dimension_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_checked
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._cur_dimension_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_aeon_id
    L1_2 = L1_2(L2_2)
    if L1_2 ~= nil then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.ChessRogueUtils
      L2_2 = L2_2.SetDimensionUnlockedTalentSeen
      L3_2 = L1_2
      L2_2(L3_2)
    end
    A0_2._cur_dimension_panel = nil
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator_cmpt
  L2_2 = L1_2
  L1_2 = L1_2.SetTrigger
  L3_2 = "Switch_InfoPanel_Out"
  L1_2(L2_2, L3_2)
end
L0_1._fade_out_from_dimension_detail_panel = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._is_cabinet_detail_panel_shown = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.exit_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.return_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._cur_cabinet_panel
  if L1_2 then
    L1_2 = A0_2._cur_cabinet_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_checked
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator_cmpt
  L2_2 = L1_2
  L1_2 = L1_2.SetTrigger
  L3_2 = "Switch_MissionTree_InfoPanel_Out"
  L1_2(L2_2, L3_2)
end
L0_1._fade_out_from_cabinet_detail_panel = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._is_in_dimension
  if L2_2 then
    return
  end
  L2_2 = A0_2._cur_cabinet_panel
  if L2_2 then
    L2_2 = A0_2._cur_cabinet_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_checked
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  A0_2._cur_cabinet_panel = A1_2
  L2_2 = A0_2._cur_cabinet_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_checked
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._is_cabinet_detail_panel_shown
  if not L2_2 then
    L2_2 = A0_2._focus_tab_2
    if not L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.animator_cmpt
      L3_2 = L2_2
      L2_2 = L2_2.SetTrigger
      L4_2 = "Switch_MissionTree_InfoPanel"
      L2_2(L3_2, L4_2)
    end
  end
  A0_2._is_cabinet_detail_panel_shown = true
  L2_2 = A0_2._binder
  L2_2 = L2_2.exit_btn
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.return_btn
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.cabinet_panel
  L3_2 = L2_2
  L2_2 = L2_2.get_detail_scroll_rect_ref
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2.setup_short_cut_hint_panel
  L5_2 = {}
  L6_2 = "ActionGroup_Switch"
  L7_2 = "ActionGroup_Scroll"
  L8_2 = "ActionGroup_Return"
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.on_cabinet_detail_clicked = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.main_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.cabinet_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.cabinet_panel
  L2_2 = L1_2
  L1_2 = L1_2.reset_scroll_rect
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.cabinet_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.cabinet_panel
  L2_2 = L1_2
  L1_2 = L1_2.auto_move
  L1_2(L2_2)
  A0_2._is_dimension_detail_panel_shown = false
  L1_2 = A0_2._ban_anim
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.main_panel
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
    A0_2._ban_anim = false
    return
  end
  A0_2._is_in_cabinet = true
  A0_2._is_in_dimension = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator_cmpt
  L2_2 = L1_2
  L1_2 = L1_2.SetTrigger
  L3_2 = "Switch_MissionTree"
  L1_2(L2_2, L3_2)
end
L0_1._on_dimension_to_cabinet_btn_clicked = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.cabinet_panel
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.cabinet_panel
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.main_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  A0_2._is_cabinet_detail_panel_shown = false
  L1_2 = A0_2._ban_anim
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.main_panel
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = true
    L1_2(L2_2, L3_2)
    A0_2._ban_anim = false
    return
  end
  A0_2._is_in_dimension = true
  A0_2._is_in_cabinet = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator_cmpt
  L2_2 = L1_2
  L1_2 = L1_2.SetTrigger
  L3_2 = "Switch_MissionTree_Out"
  L1_2(L2_2, L3_2)
end
L0_1._on_cabinet_to_dimension_btn_clicked = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._init_tab_control
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.main_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._rogue_dimension_data
  L1_2(L2_2, L3_2)
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
L0_1._setup_normal_view = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._init_panel_by_uid
  L3_2 = L9_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.cabinet_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.cabinet_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.cabinet_panel
  L2_2 = L1_2
  L1_2 = L1_2.auto_focus
  L3_2 = A0_2._is_from_activity
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator_cmpt
  L2_2 = L1_2
  L1_2 = L1_2.SetTrigger
  L3_2 = "FadeIn_MissionTree"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.return_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.exit_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ActionGroup_Switch"
  L5_2 = "ActionGroup_Scroll"
  L6_2 = "ActionGroup_Return"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_jump_view = L10_1
function L10_1(A0_2, A1_2)
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
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.is_gamepad_input
    L2_2 = L2_2()
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._on_return_btn_clicked
      L2_2(L3_2)
    end
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L5_2 = A0_2
      L4_2 = A0_2.get_zoom2_first_selected_object
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L0_1._on_enter_zoom = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._focus_tab_2
  if not L1_2 then
    L1_2 = A0_2._tab_control
    if L1_2 then
      L1_2 = A0_2._tab_control
      L2_2 = L1_2
      L1_2 = L1_2.find_item_gameObject
      L3_2 = 1
      return L1_2(L2_2, L3_2)
    end
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.cabinet_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_first_selected_object
    L1_2 = L1_2(L2_2)
    return L1_2
  end
end
L0_1.get_first_selected_object = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_in_dimension
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.main_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_first_selected_object
    return L1_2(L2_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.cabinet_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_first_selected_object
    L1_2 = L1_2(L2_2)
    return L1_2
  end
end
L0_1.get_zoom2_first_selected_object = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L10_1
return L0_1
