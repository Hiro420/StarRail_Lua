local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.Event.MonopolyEventOptionPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.Event.MonopolyEventOptionItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.Event.MonopolyEventOptionItemPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MonopolyModule
L1_1 = "5184"
L2_1 = "Monopoly.Event.Result"
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "MonopolyEventOptionPage"
L5_1 = G
L5_1 = L5_1.UIController
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MonopolyEventOptionPageBinder
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
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L3_1.ctor = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._event_data = A1_2
  L2_2 = A1_2.ID
  A0_2._event_id = L2_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = A0_2._event_data
  L3_2 = L3_2.OptionList
  L2_2 = L2_2(L3_2)
  A0_2._option_data_table = L2_2
  A0_2._is_option_click = false
end
L3_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.option_list
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_option_list_change
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_continue
  L4_2 = A0_2._on_btn_continue
  L1_2(L2_2, L3_2, L4_2)
end
L3_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_continue
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_talk
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_text
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_event
  L4_2 = A0_2._event_data
  L4_2 = L4_2.PicturePath
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L1_2 = A0_2._event_data
  L1_2 = L1_2.IsDataReport
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.TutorialTaskUnlock
    L3_2 = L1_1
    L1_2(L2_2, L3_2)
  end
end
L3_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolySelectOptionEventFinish
  L4_2 = A0_2._on_event_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyShowSelectFriendPage
  L4_2 = A0_2._on_show_select_friend_page
  L1_2(L2_2, L3_2, L4_2)
end
L3_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolySelectOptionEventFinish
  L4_2 = A0_2._on_event_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyShowSelectFriendPage
  L4_2 = A0_2._on_show_select_friend_page
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = A0_2._on_anim_event
  L1_2(L2_2, L3_2, L4_2)
end
L3_1._add_handlers = L4_1
function L4_1(A0_2)
  local L1_2
  return
end
L3_1._in_control_exit_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.option_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L4_2 = L2_2
    L3_2 = L2_2.get_first_selected_object
    return L3_2(L4_2)
  end
end
L3_1.get_first_selected_object = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  if A1_2 == L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.set_navigation_target
    L6_2 = A0_2
    L5_2 = A0_2.get_first_selected_object
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
  end
end
L3_1._on_enter_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ActionGroup_Select"
  L3_2[1] = L4_2
  L1_2(L2_2, L3_2)
end
L3_1._init_ui_navigation = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.MonopolyEventOptionItemPanel
    L8_2 = G
    L8_2 = L8_2.MonopolyEventOptionItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._option_data_table
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.register_click_callback
  L8_2 = A0_2._on_option_click
  L9_2 = A0_2
  L6_2(L7_2, L8_2, L9_2)
  return L3_2
end
L3_1._on_option_list_change = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._is_option_click
  if not L2_2 then
    L2_2 = L0_1
    L3_2 = L2_2
    L2_2 = L2_2.SendMonopolySelectOptionCsReq
    L4_2 = A1_2.ID
    L5_2 = A0_2._event_id
    L2_2(L3_2, L4_2, L5_2)
    A0_2._is_option_click = true
  end
end
L3_1._on_option_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L3_1._on_btn_continue = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._set_after_click_option_state
  L5_2 = L2_2.OptionID
  L7_2 = L2_2
  L6_2 = L2_2.GetOptionRatio
  L8_2 = L2_2.OptionID
  L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2
  L3_2 = A0_2._set_after_click_view_state
  L5_2 = L2_2.OptionID
  L3_2(L4_2, L5_2)
end
L3_1._on_event_finish = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.ActivityMonopoly.Event.ActivityMonopolySelectFriendDialog"
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.LuaTable
  L3_2 = L2_2
  L2_2 = L2_2.set_exit_callback
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.exit
    L0_3(L1_3)
  end
  L2_2(L3_2, L4_2)
end
L3_1._on_show_select_friend_page = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_option_list
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.option_list
  L2_2 = L1_2
  L1_2 = L1_2.PlayFadeInWithAutoAnimTime
  L1_2(L2_2)
end
L3_1._on_anim_event = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.option_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._option_data_table
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.option_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L3_1._refresh_option_list = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = A0_2._event_data
  L3_2 = L3_2.IsDataReport
  if L3_2 then
    L3_2 = G
    L3_2 = L3_2.Utils
    L3_2 = L3_2.trigger_custom_string
    L4_2 = L2_1
    L3_2(L4_2)
  end
  L3_2 = 1
  L4_2 = A0_2._option_data_table
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.option_list
    L8_2 = L7_2
    L7_2 = L7_2.GetShownItemByItemIndex
    L9_2 = L6_2 - 1
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 ~= nil then
      L8_2 = L7_2.UserObjectData
      L9_2 = A0_2._option_data_table
      L9_2 = L9_2[L6_2]
      L9_2 = L9_2.ID
      L9_2 = L9_2 == A1_2
      L11_2 = L8_2
      L10_2 = L8_2.after_option_select
      L12_2 = L9_2
      L13_2 = A2_2
      L14_2 = A0_2._event_data
      L14_2 = L14_2.IsDataReport
      L10_2(L11_2, L12_2, L13_2, L14_2)
    end
  end
end
L3_1._set_after_click_option_state = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._event_data
  L3_2 = L2_2
  L2_2 = L2_2.GetOptionDataItem
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.OptionBubbleTalk
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.TextID
  L4_2 = L4_2.empty
  if L3_2 ~= L4_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.panel_talk
    L4_2 = L3_2
    L3_2 = L3_2.trigger_talk
    L5_2 = L2_2.OptionBubbleTalk
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_continue
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
end
L3_1._set_after_click_view_state = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_question
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._event_data
  L3_2 = L3_2.Content
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._event_data
  L1_2 = L1_2.Title
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.TextID
  L2_2 = L2_2.empty
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_ActivityMonopoly_Event_Optional_Title"
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._event_data
    L3_2 = L3_2.Title
    L1_2(L2_2, L3_2)
  end
end
L3_1._setup_text = L4_1
return L3_1
