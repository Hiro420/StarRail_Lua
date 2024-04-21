local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.DiceBuild.Components.RogueNousDiceEditOverviewPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueNousDiceEditOverviewPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1[1] = 1
L1_1[2] = 3
L1_1[3] = 5
L1_1[4] = 6
L1_1[5] = 4
L1_1[6] = 2
L2_1 = {}
L2_1[1] = 1
L2_1[2] = 6
L2_1[3] = 2
L2_1[4] = 5
L2_1[5] = 3
L2_1[6] = 4
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.slot_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.register_click_callback
    L8_2 = A0_2._on_slot_btn_clicked
    L9_2 = A0_2
    L6_2(L7_2, L8_2, L9_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.game_pad_tab_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2()
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_common_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_gamepad_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2()
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_common_root_recommend
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_gamepad_root_recommend
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2()
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._branch_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_surface_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_core
  L2_2(L3_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.slot_panels
  L1_2 = L1_2[1]
  L2_2 = L1_2
  L1_2 = L1_2.trigger_click
  L1_2(L2_2)
end
L0_1.trigger_first_enter_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = A0_2._branch_data
  L2_2 = L2_2.SlotDataDict
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.slot_panels
    L6_2 = L6_2[L4_2]
    L7_2 = L6_2
    L6_2 = L6_2.set_checked
    L8_2 = false
    L6_2(L7_2, L8_2)
  end
end
L0_1.reset = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._click_callback = A1_2
  A0_2._click_listener = A2_2
end
L0_1.register_click_callback = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = 1
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.RogueNousUtils
  L2_2 = L2_2.GetSlotDataItemsOrderBySlotID
  L3_2 = A0_2._branch_data
  L2_2 = L2_2(L3_2)
  L3_2 = 0
  L4_2 = L2_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L1_2 == 1
    L8_2 = A0_2._binder
    L8_2 = L8_2.slot_panels
    L8_2 = L8_2[L1_2]
    L9_2 = L8_2
    L8_2 = L8_2.setup_view
    L10_2 = L2_2[L6_2]
    L11_2 = L1_2
    L8_2(L9_2, L10_2, L11_2)
    L8_2 = A0_2._binder
    L8_2 = L8_2.slot_panels
    L8_2 = L8_2[L1_2]
    L9_2 = L8_2
    L8_2 = L8_2.set_unlimit_mode_active
    L10_2 = true
    L8_2(L9_2, L10_2)
    L1_2 = L1_2 + 1
  end
end
L0_1._setup_surface_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.dice_branch_icon
  L4_2 = A0_2._branch_data
  L4_2 = L4_2.DiceIconPath
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._refresh_core = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  A0_2._cur_panel_index = A3_2
  L5_2 = A0_2
  L4_2 = A0_2._update_game_pad_hint_panel_status
  L4_2(L5_2)
  L4_2 = A0_2._click_listener
  if L4_2 then
    L4_2 = A0_2._click_callback
    if L4_2 then
      L4_2 = A0_2._click_callback
      L5_2 = A0_2._click_listener
      L6_2 = A1_2
      L7_2 = A2_2
      L4_2(L5_2, L6_2, L7_2)
    end
  end
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.is_gamepad_input
  L4_2 = L4_2()
  if L4_2 then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.GlobalVars
    L4_2 = L4_2.s_AudioManager
    L5_2 = L4_2
    L4_2 = L4_2.PostEvent
    L6_2 = "Ev_sfx_ui_click_activity_diceRogue_normal"
    L4_2(L5_2, L6_2)
  end
end
L0_1._on_slot_btn_clicked = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._cur_panel_index
  L2_2 = L2_1[L2_2]
  if A1_2 == "Menu_UnchangeLeftBumper" then
    L2_2 = L2_2 - 1
  elseif A1_2 == "Menu_UnchangeRightBumper" then
    L2_2 = L2_2 + 1
  else
    return
  end
  if L2_2 == 0 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.slot_panels
    L2_2 = #L3_2
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.slot_panels
  L3_2 = #L3_2
  if L2_2 > L3_2 then
    L2_2 = 1
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.slot_panels
  L4_2 = L1_1[L2_2]
  L3_2 = L3_2[L4_2]
  L4_2 = L3_2
  L3_2 = L3_2.trigger_click
  L3_2(L4_2)
  A0_2._prev_navi_index = L2_2
end
L0_1._on_in_control_action_click = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.game_pad_tab_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.is_gamepad_input
  L4_2 = L4_2()
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_common_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.is_gamepad_input
  L4_2 = L4_2()
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_gamepad_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.is_gamepad_input
  L4_2 = L4_2()
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_common_root_recommend
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.is_gamepad_input
  L4_2 = L4_2()
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_gamepad_root_recommend
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.is_gamepad_input
  L4_2 = L4_2()
  L2_2(L3_2, L4_2)
end
L0_1._on_in_control_input_switch = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.game_pad_hint_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.set_status_active
    L8_2 = A0_2._cur_panel_index
    L8_2 = L4_2 == L8_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._update_game_pad_hint_panel_status = L3_1
return L0_1
