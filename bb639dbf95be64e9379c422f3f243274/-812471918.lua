local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.ActivityMonopolyCheatDiceDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonopolyCheatDiceDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MonopolyModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyCheatDiceDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyCheatResultConfirm
  L4_2 = A0_2._on_cheat_result_confirm
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.cancel_btn
  L4_2 = A0_2._on_cancel_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.dice_value_btn_tb
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2._bind_btn_callback
    L7_2 = A0_2._binder
    L7_2 = L7_2.dice_value_btn_tb
    L7_2 = L7_2[L4_2]
    L8_2 = A0_2._on_dice_value_btn_clicked
    L9_2 = L4_2
    L5_2(L6_2, L7_2, L8_2, L9_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.dice_value_btn_tb
    L5_2 = L5_2[L4_2]
    function L6_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = L4_2
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3._on_dice_value_selected
      L3_3 = L0_3
      L1_3(L2_3, L3_3)
    end
    L5_2.onSelectTrigger = L6_2
  end
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "Menu_Confirm"
  L5_2 = "Menu_Cancel"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = nil
  L5_2 = "Root/PopUpPanel/KeyMapHintRoot"
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_cancel_btn_clicked = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_cheat_result_confirm = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._on_dice_value_selected
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._cur_value
  if L2_2 == nil then
    return
  end
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.SendMonopolyCheatDiceCsReq
  L4_2 = A0_2._cur_value
  L2_2(L3_2, L4_2)
end
L0_1._on_dice_value_btn_clicked = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L2_1
function L2_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.dice_value_btn_tb
  L1_2 = L1_2[1]
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._cur_value = A1_2
  L2_2 = A0_2._cur_btn
  if L2_2 then
    L2_2 = A0_2._cur_btn
    L3_2 = L2_2
    L2_2 = L2_2.SetChecked
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.dice_value_btn_tb
  L3_2 = A0_2._cur_value
  L2_2 = L2_2[L3_2]
  A0_2._cur_btn = L2_2
  L2_2 = A0_2._cur_btn
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.save_navigation_target
  L4_2 = A0_2._binder
  L4_2 = L4_2.dice_value_btn_tb
  L4_2 = L4_2[A1_2]
  L4_2 = L4_2.gameObject
  L2_2(L3_2, L4_2)
end
L0_1._on_dice_value_selected = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == "Menu_Confirm" then
    L2_2 = A0_2._surface_preview_panel_active
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._on_dice_value_btn_clicked
      L4_2 = A0_2._cur_value
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_in_control_action_click = L2_1
return L0_1
