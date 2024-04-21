local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.Components.DrinkMakerBartendMenuModePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.Components.DrinkMakerBartendFreeModePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.Components.DrinkMakerBartendChallengeModePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.Components.DrinkMakerBartendTargetPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerBartendTargetPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TutorialMoveScrollView
  L4_2 = A0_2._on_tutorial_move_list
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.DrinkMakerBartendMenuModePanel
  L4_2 = G
  L4_2 = L4_2.DrinkMakerBartendMenuModePanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._panel_menu_mode = L1_2
  L1_2 = A0_2._panel_menu_mode
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_mode_panels
  L3_2 = L3_2[1]
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.DrinkMakerBartendFreeModePanel
  L4_2 = G
  L4_2 = L4_2.DrinkMakerBartendFreeModePanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._panel_free_mode = L1_2
  L1_2 = A0_2._panel_free_mode
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_mode_panels
  L3_2 = L3_2[2]
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.DrinkMakerBartendChallengeModePanel
  L4_2 = G
  L4_2 = L4_2.DrinkMakerBartendChallengeModePanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._panel_challenge_mode = L1_2
  L1_2 = A0_2._panel_challenge_mode
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_mode_panels
  L3_2 = L3_2[3]
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cur_panel
  L2_2 = L1_2
  L1_2 = L1_2.is_can_to_special_zoom
  return L1_2(L2_2)
end
L0_1.is_can_to_special_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cur_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._open_mode = A1_2
  L3_2 = 1
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_mode_panels
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.node_mode_panels
    L7_2 = L7_2[L6_2]
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetActive
    L9_2 = L6_2 == A1_2
    L7_2(L8_2, L9_2)
  end
  A0_2._cur_procedure = A2_2
  L3_2 = A0_2._open_mode
  L4_2 = DrinkMakerBartendMode
  L4_2 = L4_2.DrinkMenuMode
  if L3_2 == L4_2 then
    L3_2 = A0_2._panel_menu_mode
    A0_2._cur_panel = L3_2
  else
    L3_2 = A0_2._open_mode
    L4_2 = DrinkMakerBartendMode
    L4_2 = L4_2.FreeMode
    if L3_2 == L4_2 then
      L3_2 = A0_2._panel_free_mode
      A0_2._cur_panel = L3_2
    else
      L3_2 = A0_2._open_mode
      L4_2 = DrinkMakerBartendMode
      L4_2 = L4_2.ChallengeMode
      if L3_2 == L4_2 then
        L3_2 = A0_2._panel_challenge_mode
        A0_2._cur_panel = L3_2
      end
    end
  end
  L3_2 = A0_2._cur_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cur_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_cur_scroll_rect
  return L1_2(L2_2)
end
L0_1.get_cur_scroll_rect = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cur_panel
  L1_2 = L1_2.refresh_targets
  if L1_2 then
    L1_2 = A0_2._cur_panel
    L2_2 = L1_2
    L1_2 = L1_2.refresh_targets
    L1_2(L2_2)
  end
end
L0_1.refresh_targets = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._cur_panel
  L2_2 = L2_2.refresh_tags
  if L2_2 then
    L2_2 = A0_2._cur_panel
    L3_2 = L2_2
    L2_2 = L2_2.refresh_tags
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.refresh_display_tags = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._cur_panel
  L2_2 = L2_2.refresh_view
  if L2_2 then
    L2_2 = A0_2._cur_panel
    L3_2 = L2_2
    L2_2 = L2_2.refresh_view
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.refresh_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cur_panel
  L1_2 = L1_2.check_if_current_step_finished
  if L1_2 then
    L1_2 = A0_2._cur_panel
    L2_2 = L1_2
    L1_2 = L1_2.check_if_current_step_finished
    return L1_2(L2_2)
  end
  L1_2 = true
  return L1_2
end
L0_1.check_if_current_step_finished = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = {}
  L3_2 = ipairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.DrinkMakerTagExcelTable
    L8_2 = L8_2.GetData
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    L9_2 = L8_2.IsShow
    if L9_2 then
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L2_2
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
    end
  end
  return L2_2
end
L0_1._get_filtered_visible_tag_rows = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = tonumber
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == 0 then
    L3_2 = A0_2._cur_panel
    L3_2 = L3_2.reset_list_pos
    if L3_2 then
      L3_2 = A0_2._cur_panel
      L4_2 = L3_2
      L3_2 = L3_2.reset_list_pos
      L3_2(L4_2)
    end
  end
end
L0_1._on_tutorial_move_list = L1_1
return L0_1
