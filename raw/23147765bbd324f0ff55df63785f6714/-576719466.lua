local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.ActivityMonopolyOnGoingEventDetailDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.ActivityMonopolyUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.Components.ActivityMonopolyMapDetailEventItemPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonopolyOnGoingEventDetailDialog"
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
  L3_2 = L3_2.ActivityMonopolyOnGoingEventDetailDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.empty_btn
  L4_2 = A0_2._on_exit_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.exit_btn
  L4_2 = A0_2._on_exit_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 1
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ActivityMonopolyUtils
  L1_2 = L1_2.get_on_going_event_display_data
  L1_2 = L1_2()
  A0_2._data_tb = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._data_tb
  L3_2 = #L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.empty_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._data_tb
  L3_2 = #L3_2
  L3_2 = L3_2 == 0
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_21
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.ActivityMonopolyMapDetailEventItemPanel
  L8_2 = G
  L8_2 = L8_2.ActivityMonopolyMapDetailEventItemPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  ::lbl_21::
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._data_tb
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L5_2(L6_2, L7_2)
  return L3_2
end
L0_1._on_item_changed = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit_btn_clicked = L2_1
return L0_1
