local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.Buff.RogueEnhanceBuffResultDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.RogueUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueEnhanceBuffResultDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueEnhanceBuffResultDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  L1_2 = G
  L1_2 = L1_2.RogueUtils
  L1_2 = L1_2.add_mission_performance_lock
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  A0_2._rogue_buff_data = A1_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1.super
  L1_2 = L1_2._execute_exit_callback
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.RogueUtils
  L1_2 = L1_2.remove_mission_performance_lock
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1._execute_exit_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_buff_cur
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.panel_buff_cur
      L2_2 = L1_2
      L1_2 = L1_2.get_first_selected_object
      return L1_2(L2_2)
    end
  end
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2, A1_2)
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
  end
end
L0_1._on_enter_zoom = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_gamepad_input
  L2_2 = L2_2()
  if not L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_buff_prev
    L3_2 = L2_2
    L2_2 = L2_2.set_selected
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_buff_cur
    L3_2 = L2_2
    L2_2 = L2_2.set_selected
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_in_control_input_switch = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._rogue_buff_data
  if L1_2 == nil then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RogueBuffData
  L2_2 = A0_2._rogue_buff_data
  L2_2 = L2_2.BuffID
  L3_2 = A0_2._rogue_buff_data
  L3_2 = L3_2.Level
  L3_2 = L3_2 - 1
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_buff_prev
  L3_2 = L2_2
  L2_2 = L2_2.setup_origin_view
  L4_2 = L1_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_buff_cur
  L3_2 = L2_2
  L2_2 = L2_2.setup_origin_view
  L4_2 = A0_2._rogue_buff_data
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_buff_prev
  L3_2 = L2_2
  L2_2 = L2_2.set_call_back
  L4_2 = 1
  L5_2 = A0_2._on_btn_buff
  L6_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_buff_cur
  L3_2 = L2_2
  L2_2 = L2_2.set_call_back
  L4_2 = 2
  L5_2 = A0_2._on_btn_buff
  L6_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2._selected_index = 2
  L3_2 = A0_2
  L2_2 = A0_2._setup_btn_selected
  L4_2 = A0_2._selected_index
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_btns_navigation
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._init_ui_navigation
  L2_2(L3_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_gamepad_input
  L2_2 = L2_2()
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_buff_prev
    L3_2 = L2_2
    L2_2 = L2_2.set_selected
    L4_2 = A1_2 == 1
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_buff_cur
    L3_2 = L2_2
    L2_2 = L2_2.set_selected
    L4_2 = A1_2 == 2
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_btn_selected = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L1_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_buff_prev
  L5_2 = L4_2
  L4_2 = L4_2.get_navi_btn
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L1_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_buff_cur
  L5_2 = L4_2
  L4_2 = L4_2.get_navi_btn
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2.setup_navigation
  L4_2 = L1_2
  L5_2 = NavigationType
  L5_2 = L5_2.Horizontal
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_btns_navigation = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._selected_index = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_btn_selected
  L4_2 = A0_2._selected_index
  L2_2(L3_2, L4_2)
end
L0_1._on_btn_buff = L1_1
return L0_1
