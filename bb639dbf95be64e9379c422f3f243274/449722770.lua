local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.DrinkMakerBartendEnum"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Handbook.Components.DrinkMakerHandbookDrinkPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Handbook.DrinkMakerHandbookDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerDrinkSelectDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.DrinkMakerModule
L2_1 = "5152"
L3_1 = "5153"
L4_1 = "UIText_DrinkMaker_HandBook_SubTitle_3"
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.DrinkMakerHandbookDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._pause_game = true
end
L0_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1.DrinkMakerBar
  L1_2 = L1_2.CurRequestRow
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.DrinkMakerBartendRequestData
  L3_2 = L1_2.RequestID
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.DrinkMakerRequestSourceType
  L4_2 = L4_2.FromBusinessDay
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._bartend_request = L2_2
  L2_2 = A0_2._bartend_request
  L3_2 = L2_2
  L2_2 = L2_2.SetRelatedChatID
  L4_2 = L1_1.DrinkMakerBar
  L4_2 = L4_2.ChatID
  L2_2(L3_2, L4_2)
end
L0_1.init = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_start
  L4_2 = A0_2._on_btn_start_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_drink_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_material_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_request_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_start
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.DrinkMakerHandbookDrinkPanel
  L4_2 = G
  L4_2 = L4_2.DrinkMakerHandbookDrinkPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._panel_drinks = L1_2
  L1_2 = A0_2._panel_drinks
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_drink_panel
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetAllUnlockedDrinksData
  L2_2, L3_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._unlocked_drinks = L1_2
  L1_2 = A0_2._panel_drinks
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._unlocked_drinks
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._panel_drinks
  L2_2 = L1_2
  L1_2 = L1_2.show_filter
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_request
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_title
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._check_unlock_tutorial
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L5_1
function L5_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._panel_drinks
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1.DrinkMakerBar
  L1_2 = L1_2.CurGuestRow
  L3_2 = A0_2
  L2_2 = A0_2.async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_guest_icon
  L5_2 = L1_2.IconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = L1_1.DrinkMakerBar
  L2_2 = L2_2.CurRequestRow
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_request_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.RequestDesc
  L3_2(L4_2, L5_2)
end
L0_1._setup_request = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L4_1
  L1_2(L2_2, L3_2)
end
L0_1._setup_title = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L1_1.DrinkMakerBar
  L1_2 = L1_2.Day
  L2_2 = L1_1.DrinkMakerBar
  L2_2 = L2_2.CurSequenceIndex
  L3_2 = L1_1.DrinkMakerBar
  L3_2 = L3_2.CurSequenceRow
  L3_2 = L3_2.StartChatID
  L4_2 = L1_1.DrinkMakerBar
  L4_2 = L4_2.ChatID
  L3_2 = L3_2 == L4_2
  if L1_2 ~= 1 then
    return
  end
  if L2_2 ~= 1 then
    return
  end
  if L3_2 then
    L4_2 = G
    L4_2 = L4_2.NotifyManager
    L4_2 = L4_2.notify
    L5_2 = G
    L5_2 = L5_2.CS
    L5_2 = L5_2.NotifyType
    L5_2 = L5_2.TutorialTaskUnlock
    L6_2 = L2_1
    L4_2(L5_2, L6_2)
  elseif not L3_2 then
    L4_2 = G
    L4_2 = L4_2.NotifyManager
    L4_2 = L4_2.notify
    L5_2 = G
    L5_2 = L5_2.CS
    L5_2 = L5_2.NotifyType
    L5_2 = L5_2.TutorialTaskUnlock
    L6_2 = L3_1
    L4_2(L5_2, L6_2)
  end
end
L0_1._check_unlock_tutorial = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._panel_drinks
  L2_2 = L1_2
  L1_2 = L1_2.get_cur_selected_drink
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._bartend_request
  L3_2 = L2_2
  L2_2 = L2_2.SetTargetDrink
  L4_2 = L1_2.FormulaID
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.set_exit_after_transition
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.DrinkMaker.Bartend.DrinkMakerBartendMainPage"
  L4_2 = DrinkMakerBartendMode
  L4_2 = L4_2.DrinkMenuMode
  L5_2 = A0_2._bartend_request
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._open_bartend_main_page = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._panel_drinks
  L2_2 = L1_2
  L1_2 = L1_2.get_cur_selected_drink
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._bartend_request
  L3_2 = L2_2
  L2_2 = L2_2.SetTargetDrink
  L4_2 = L1_2.FormulaID
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._bartend_request
  L3_2 = L2_2
  L2_2 = L2_2.ConfirmMakingDrink
  L4_2 = L1_2.AllTagID
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._bartend_request
  L2_2 = L2_2.IsRequestSatisfied
  L3_2 = A0_2._bartend_request
  L4_2 = L3_2
  L3_2 = L3_2.ResetAll
  L3_2(L4_2)
  return L2_2
end
L0_1._is_select_drink_match_request = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._is_select_drink_match_request
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.ConfirmDialogUtil
    L1_2 = L1_2.ShowOkCancelHint
    L2_2 = "UIText_DrinkMaker_FormulaModeConfirm"
    L3_2 = ""
    function L4_2(A0_3)
      local L1_3, L2_3
      if A0_3 then
        L1_3 = A0_2
        L2_3 = L1_3
        L1_3 = L1_3._open_bartend_main_page
        L1_3(L2_3)
      end
    end
    L1_2(L2_2, L3_2, L4_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._open_bartend_main_page
    L1_2(L2_2)
  end
end
L0_1._on_btn_start_clicked = L5_1
return L0_1
