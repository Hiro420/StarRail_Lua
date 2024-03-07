local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.Event.MonopolyEventOptionItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.Event.MonopolyEventOptionItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.Event.ActivityMonopolyRandomOptionPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UI3DSystem.Monopoly.MonopolyUI3DPage"
L0_1(L1_1)
L0_1 = "5176"
L1_1 = "5186"
L2_1 = "MonopolyEventRollDialog_EventPic_FadeOut"
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "ActivityMonopolyRandomOptionPage"
L5_1 = G
L5_1 = L5_1.UIController
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyRandomOptionPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L3_2 = G
  L3_2 = L3_2.MonopolyUI3DPage
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._ui_3d_page = L1_2
  A0_2._is_select_option_over = false
end
L3_1.ctor = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2
  A0_2._event_data = A1_2
  L3_2 = A0_2._event_data
  L3_2 = L3_2.ID
  A0_2._event_id = L3_2
  A0_2._random_option_content_data = A2_2
end
L3_1.init = L4_1
function L4_1(A0_2)
  local L1_2
end
L3_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_event_info
  L1_2(L2_2)
  L1_2 = A0_2._random_option_content_data
  L1_2 = L1_2.SelectOptionID
  if L1_2 ~= 0 then
    L1_2 = A0_2._event_data
    L2_2 = L1_2
    L1_2 = L1_2.GetOptionDataItem
    L3_2 = A0_2._random_option_content_data
    L3_2 = L3_2.SelectOptionID
    L1_2 = L1_2(L2_2, L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._select_option_over
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L1_2 = A0_2._event_data
  L1_2 = L1_2.IsSpecial
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
  else
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.TutorialTaskUnlock
    L3_2 = L0_1
    L1_2(L2_2, L3_2)
  end
end
L3_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyRollRandomEventFinish
  L4_2 = A0_2._on_event_finish
  L1_2(L2_2, L3_2, L4_2)
end
L3_1._add_handlers = L4_1
function L4_1(A0_2)
  local L1_2
end
L3_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2
  return
end
L3_1._in_control_exit_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_select_option_over
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_event_option
    L2_2 = L1_2
    L1_2 = L1_2.get_first_selected_object
    return L1_2(L2_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_roll_dice
    L2_2 = L1_2
    L1_2 = L1_2.get_first_selected_object
    return L1_2(L2_2)
  end
end
L3_1.get_first_selected_object = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  if A1_2 == L3_2 then
    L3_2 = A0_2._is_select_option_over
    if not L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._set_short_cut_hint_panel_active
      L5_2 = true
      L3_2(L4_2, L5_2)
      L4_2 = A0_2
      L3_2 = A0_2.set_navigation_target
      L6_2 = A0_2
      L5_2 = A0_2.get_navigation_target
      L5_2, L6_2 = L5_2(L6_2)
      L3_2(L4_2, L5_2, L6_2)
    else
      L4_2 = A0_2
      L3_2 = A0_2._set_short_cut_hint_panel_active
      L5_2 = false
      L3_2(L4_2, L5_2)
    end
  end
end
L3_1._on_enter_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ActionGroup_Select"
  L3_2[1] = L4_2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L3_1._init_ui_navigation = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._short_cut_hint_panel
  if L2_2 ~= nil then
    L2_2 = A0_2._short_cut_hint_panel
    L3_2 = L2_2
    L2_2 = L2_2.safe_set_active
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L3_1._set_short_cut_hint_panel_active = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._ui_3d_page
  L2_2 = L1_2
  L1_2 = L1_2.set_random_event_dice_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L3_1._on_event_finish = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._select_option_over
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L3_1._on_click_option_finish = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_event
  L4_2 = A0_2._event_data
  L4_2 = L4_2.PicturePath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_talk
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_roll_dice
  L2_2 = L1_2
  L1_2 = L1_2.set_dice_panel_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_event_option
  L2_2 = L1_2
  L1_2 = L1_2.set_option_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_event_option
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._event_data
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_event_option
  L2_2 = L1_2
  L1_2 = L1_2.register_click_option_finish_callback
  L3_2 = A0_2._on_click_option_finish
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L3_1._setup_event_info = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  A0_2._is_select_option_over = true
  L3_2 = A1_2
  L2_2 = A1_2.GetNextOptionDataList
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.Count
    if L3_2 ~= 0 then
      goto lbl_12
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2.exit
  L3_2(L4_2)
  do return end
  ::lbl_12::
  L4_2 = A0_2
  L3_2 = A0_2._set_panel_roll_dice_active
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._random_option_content_data
  if L3_2 ~= nil then
    L3_2 = A0_2._random_option_content_data
    L3_2 = L3_2.RandomOptionID
    if L3_2 ~= 0 then
      L3_2 = A0_2._random_option_content_data
      L3_2 = L3_2.RollResultList
      L3_2 = L3_2[0]
      L4_2 = A0_2._random_option_content_data
      L4_2 = L4_2.RollResultList
      L4_2 = L4_2[1]
      L5_2 = A0_2._binder
      L5_2 = L5_2.panel_roll_dice
      L6_2 = L5_2
      L5_2 = L5_2.set_roll_result
      L7_2 = L3_2
      L8_2 = L4_2
      L9_2 = A0_2._random_option_content_data
      L9_2 = L9_2.ExtraRollResult
      L10_2 = A0_2._random_option_content_data
      L10_2 = L10_2.RandomOptionID
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    end
  end
end
L3_1._select_option_over = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2._set_short_cut_hint_panel_active
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_event_option
  L3_2 = L2_2
  L2_2 = L2_2.set_option_active
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._ui_3d_page
  L3_2 = L2_2
  L2_2 = L2_2.calculate_random_event_vc_orthographic_size
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIAnimationUtils
  L2_2 = L2_2.PlayFromBegin
  L3_2 = A0_2._binder
  L3_2 = L3_2.anim_pic
  L4_2 = L2_1
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_roll_dice
  L3_2 = L2_2
  L2_2 = L2_2.set_dice_panel_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_roll_dice
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._event_id
  L6_2 = A1_2
  L5_2 = A1_2.GetNextOptionDataList
  L5_2 = L5_2(L6_2)
  L6_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_roll_dice
  L3_2 = L2_2
  L2_2 = L2_2.setup_text_desc
  L4_2 = A1_2.OptionBubbleTalk
  L2_2(L3_2, L4_2)
end
L3_1._set_panel_roll_dice_active = L4_1
return L3_1
