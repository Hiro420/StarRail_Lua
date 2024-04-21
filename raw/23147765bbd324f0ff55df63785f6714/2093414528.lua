local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Entrance.ChessRogueEntranceAeonPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Entrance.Components.ChessRogueEntranceAeonPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Entrance.Components.ChessRogueEntranceInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Tools.ChessRogueUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Entrance.Components.ChessRogueSelectDicePanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueEntranceAeonPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ChessRogueModule
function L2_1(A0_2)
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
  L3_2 = L3_2.ChessRogueEntranceAeonPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._lst = A2_2
  A0_2._area_id = A1_2
  L3_2 = L1_1.ChessRogueData
  L3_2 = L3_2.AeonInfo
  L4_2 = L3_2
  L3_2 = L3_2.GetChessRogueAeonSortedData
  L3_2 = L3_2(L4_2)
  A0_2._data_list = L3_2
  L3_2 = L1_1.ChessRogueData
  L3_2 = L3_2.AreaInfo
  L4_2 = L3_2
  L3_2 = L3_2.IsTutorialAllFinished
  L3_2 = L3_2(L4_2)
  L3_2 = not L3_2
  A0_2._is_in_guide_mode = L3_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ChessRogueEntranceInfoPanel
  L4_2 = G
  L4_2 = L4_2.ChessRogueEntranceInfoPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._aeon_detail_panel = L1_2
  L1_2 = A0_2._aeon_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.aeon_detail_root
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ChessRogueSelectDicePanel
  L4_2 = G
  L4_2 = L4_2.ChessRogueSelectDicePanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._dice_select_panel = L1_2
  L1_2 = A0_2._dice_select_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.aeon_select_root
  L1_2(L2_2, L3_2)
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
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = A0_2._on_ui_animation_event
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.aeon_select_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.aeon_detail_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
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
  L4_2 = "Menu_Confirm"
  L5_2 = "ActionGroup_Return"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._dice_select_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._data_list
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._area_id
  return L1_2
end
L0_1.get_rogue_area = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._lst
  return L1_2
end
L0_1.get_selected_avatar_base_ids = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_NetworkManager
  L3_2 = L2_2
  L2_2 = L2_2.GDOIIKNAMII
  L4_2 = A0_2._area_id
  L5_2 = A1_2
  L6_2 = A0_2._lst
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1.start_rogue = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._is_in_sub_panel = true
  L2_2 = A0_2._aeon_detail_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A1_2
  L5_2 = A0_2._data_list
  L6_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = A0_2
  L2_2 = A0_2.set_navigation_target
  L4_2 = nil
  L2_2(L3_2, L4_2)
end
L0_1.show_detail = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIAnimationUtils
  L2_2 = L2_2.PlayFromBegin
  L3_2 = A0_2._binder
  L3_2 = L3_2.animation_root
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.play_anim_clip = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_in_sub_panel
  return L1_2
end
L0_1.is_in_sub_panel = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_in_guide_mode
  return L1_2
end
L0_1.is_in_guide = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_navigation = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_in_sub_panel
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L4_2 = A0_2._dice_select_panel
      L5_2 = L4_2
      L4_2 = L4_2.get_first_selected_object
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
    else
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L4_2 = A0_2._aeon_detail_panel
      L5_2 = L4_2
      L4_2 = L4_2.get_first_selected_object
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L0_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_sub_panel
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_return_btn_clicked
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._on_exit_btn_clicked
    L1_2(L2_2)
  end
end
L0_1._in_control_exit_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit_btn_clicked = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._button_mutex
  L2_2 = L1_2
  L1_2 = L1_2.Check
  function L3_2()
    local L0_3, L1_3, L2_3
    A0_2._is_in_sub_panel = false
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.play_anim_clip
    L2_3 = "DiceEnterGenrePage_Switch_GenreDetail_Out"
    L0_3(L1_3, L2_3)
  end
  L4_2 = 0.3
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_return_btn_clicked = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 == "GenrePanelActived" then
    L2_2 = A0_2._dice_select_panel
    if L2_2 then
      L2_2 = A0_2._dice_select_panel
      L3_2 = L2_2
      L2_2 = L2_2.refresh_all_aeon_panel_animator_state
      L2_2(L3_2)
      L2_2 = A0_2._dice_select_panel
      L3_2 = L2_2
      L2_2 = L2_2.set_selected_aeon
      L4_2 = A0_2._aeon_detail_panel
      L5_2 = L4_2
      L4_2 = L4_2.get_cur_aeon_id
      L4_2, L5_2, L6_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2, L6_2)
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L4_2 = A0_2._dice_select_panel
      L5_2 = L4_2
      L4_2 = L4_2.get_first_selected_object
      L4_2, L5_2, L6_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2, L6_2)
      L3_2 = A0_2
      L2_2 = A0_2.setup_short_cut_hint_panel
      L4_2 = {}
      L5_2 = "Menu_Confirm"
      L6_2 = "ActionGroup_Return"
      L4_2[1] = L5_2
      L4_2[2] = L6_2
      L2_2(L3_2, L4_2)
    end
  elseif A1_2 == "AeonDetailPanelActive" then
    L2_2 = A0_2._aeon_detail_panel
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L4_2 = A0_2._aeon_detail_panel
      L5_2 = L4_2
      L4_2 = L4_2.get_first_selected_object
      L4_2, L5_2, L6_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2, L6_2)
    end
  end
end
L0_1._on_ui_animation_event = L2_1
return L0_1
