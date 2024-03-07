local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.DrinkMakerBartendEnum"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.DrinkMakerMenuSelectPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerMenuSelectPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MissionModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.DrinkMakerModule
L3_1 = "5156"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.DrinkMakerMenuSelectPageBinder
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
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.DrinkMakerOnBartendMainPageOpen
  L4_2 = A0_2._on_bartend_main_page_open
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_menu
  L4_2 = A0_2._on_btn_menu_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_free
  L4_2 = A0_2._on_btn_free_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_navigation
  L3_2 = {}
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_menu
  L5_2 = A0_2._binder
  L5_2 = L5_2.btn_free
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = NavigationType
  L4_2 = L4_2.Horizontal
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "Menu_Confirm"
  L5_2 = "ActionGroup_Return"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_request
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._check_unlock_tutorial
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L4_1
function L4_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_btn_menu_banned
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_free
    L1_2 = L1_2.gameObject
    return L1_2
  end
  L1_2 = A0_2._is_btn_free_banned
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_menu
    L1_2 = L1_2.gameObject
    return L1_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_menu
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L2_1.DrinkMakerBar
  L1_2 = L1_2.CurGuestRow
  L3_2 = A0_2
  L2_2 = A0_2.async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_monster
  L5_2 = L1_2.IconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = L2_1.DrinkMakerBar
  L2_2 = L2_2.CurRequestRow
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_quest_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.RequestDesc
  L3_2(L4_2, L5_2)
  L3_2 = L2_2.BanModeEntrance
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.DrinkMakerBanModEntranceType
  L4_2 = L4_2.BanFormulaMode
  L3_2 = L3_2 == L4_2
  A0_2._is_btn_menu_banned = L3_2
  L3_2 = L2_2.BanModeEntrance
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.DrinkMakerBanModEntranceType
  L4_2 = L4_2.BanTagMode
  L3_2 = L3_2 == L4_2
  A0_2._is_btn_free_banned = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_menu_disable_hint
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._is_btn_menu_banned
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_menu
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetInteractable
  L5_2 = A0_2._is_btn_menu_banned
  L5_2 = not L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_free_disable_hint
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._is_btn_free_banned
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_free
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetInteractable
  L5_2 = A0_2._is_btn_free_banned
  L5_2 = not L5_2
  L3_2(L4_2, L5_2)
end
L0_1._setup_request = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L2_1.DrinkMakerBar
  L1_2 = L1_2.Day
  L2_2 = L2_1.DrinkMakerBar
  L2_2 = L2_2.CurSequenceIndex
  L3_2 = L2_1.DrinkMakerBar
  L3_2 = L3_2.CurSequenceRow
  L3_2 = L3_2.StartChatID
  L4_2 = L2_1.DrinkMakerBar
  L4_2 = L4_2.ChatID
  L3_2 = L3_2 == L4_2
  if L1_2 == 2 and L2_2 == 2 and L3_2 then
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
L0_1._check_unlock_tutorial = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.DrinkMaker.Handbook.DrinkMakerDrinkSelectDialog"
  L1_2(L2_2)
end
L0_1._on_btn_menu_clicked = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L2_1.DrinkMakerBar
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
  L4_2 = L2_2
  L3_2 = L2_2.SetRelatedChatID
  L5_2 = L2_1.DrinkMakerBar
  L5_2 = L5_2.ChatID
  L3_2(L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.UIManager
  L3_2 = L3_2.load_and_async_show
  L4_2 = "Ui.DrinkMaker.Bartend.DrinkMakerBartendMainPage"
  L5_2 = DrinkMakerBartendMode
  L5_2 = L5_2.FreeMode
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._on_btn_free_clicked = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_bartend_main_page_open = L4_1
return L0_1
