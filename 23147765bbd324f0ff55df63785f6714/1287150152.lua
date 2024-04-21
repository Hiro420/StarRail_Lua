local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.Event.ActivityMonopolyMBTIEventDialogBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MonopolyModule
L1_1 = "UIText_ActivityMonopoly_Event_OptionalGroup_First_Confirm"
L2_1 = "UIText_ActivityMonopoly_Event_OptionalGroup_SelectConfirm"
L3_1 = "UIText_ActivityMonopoly_Event_OptionalGroup_Next"
L4_1 = "UIText_ActivityMonopoly_Event_OptionalGroup_Finish"
L5_1 = "UIText_ActivityMonopoly_Event_OptionalGroup_End_Confirm"
L6_1 = "UIText_ActivityMonopoly_Event_OptionalGroup_FinalEnd_Confirm"
L7_1 = "UIText_ActivityMonopoly_Event_OptionalGroup_First_Desc"
L8_1 = "UIText_ActivityMonopoly_Event_OptionalGroup_First_Signature"
L9_1 = "UIText_ActivityMonopoly_Event_OptionalGroup_End_Desc"
L10_1 = "UIText_ActivityMonopoly_Event_OptionalGroup_End_Signature"
L11_1 = "UIText_ActivityMonopoly_Event_OptionalGroup_FinalEnd_Desc"
L12_1 = "UIText_ActivityMonopoly_Event_OptionalGroup_FinalEnd_Signature"
L13_1 = "UIText_ActivityMonopoly_Event_OptionalGroup_Select"
L14_1 = "UIText_ActivityMonopoly_Event_OptionalGroup_SelectResult"
L15_1 = "5184"
L16_1 = "Monopoly.Event.Result"
L17_1 = {}
L17_1.Begin = 1
L17_1.Click = 2
L17_1.Confirm = 3
L17_1.Finish = 4
L17_1.End = 5
L17_1.FinalEnd = 6
L18_1 = G
L18_1 = L18_1.Class
L19_1 = "ActivityMonopolyMBTIEventDialog"
L20_1 = G
L20_1 = L20_1.UIController
L18_1 = L18_1(L19_1, L20_1)
function L19_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyMBTIEventDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L18_1.ctor = L19_1
function L19_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = A1_2.OptionalEventList
  L2_2 = L2_2(L3_2)
  A0_2._option_event_table = L2_2
  L2_2 = A1_2.CurEventIndex
  L2_2 = L2_2 + 1
  A0_2._cur_event_index = L2_2
end
L18_1.init = L19_1
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_next
  L4_2 = A0_2._on_btn_next
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolySelectOptionEventFinish
  L4_2 = A0_2._on_click_option_finish
  L1_2(L2_2, L3_2, L4_2)
end
L18_1._on_load = L19_1
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_option_event_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_option_list
  L2_2 = L1_2
  L1_2 = L1_2.register_click_option_callback
  L3_2 = A0_2._on_click_option
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = L0_1.EventInfo
  L1_2 = L1_2.FinishMBTIEventCount
  if L1_2 == 0 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_btn_text
    L3_2 = L17_1.Begin
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2._setup_question_text
    L1_2(L2_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_next
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetInteractable
    L3_2 = true
    L1_2(L2_2, L3_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._setup_btn_text
    L3_2 = L17_1.Click
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2._init_ui_navigation
    L1_2(L2_2)
  end
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
    L3_2 = L15_1
    L1_2(L2_2, L3_2)
  end
end
L18_1._setup_view = L19_1
function L19_1(A0_2)
  local L1_2
end
L18_1._on_dispose = L19_1
function L19_1(A0_2)
  local L1_2
  return
end
L18_1._in_control_exit_click = L19_1
function L19_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_option_list
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L18_1.get_first_selected_object = L19_1
function L19_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  if A1_2 == L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.set_navigation_target
    L6_2 = A0_2
    L5_2 = A0_2.get_navigation_target
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L4_2 = A0_2
    L3_2 = A0_2.setup_short_cut_hint_panel
    L5_2 = {}
    L6_2 = "ActionGroup_Scroll"
    L7_2 = "ActionGroup_Select"
    L5_2[1] = L6_2
    L5_2[2] = L7_2
    L3_2(L4_2, L5_2)
  end
end
L18_1._on_enter_zoom = L19_1
function L19_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L18_1._init_ui_navigation = L19_1
function L19_1(A0_2, A1_2)
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
L18_1._set_short_cut_active = L19_1
function L19_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._set_short_cut_active
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._cur_event_index
  L3_2 = A0_2._option_event_table
  L3_2 = #L3_2
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_btn_text
    L4_2 = L17_1.Finish
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._setup_btn_text
    L4_2 = L17_1.Confirm
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L14_1
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_option_list
  L3_2 = L2_2
  L2_2 = L2_2.select_option_finish
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_next
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._event_data
  L2_2 = L2_2.IsDataReport
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.trigger_custom_string
    L3_2 = L16_1
    L2_2(L3_2)
  end
end
L18_1._on_click_option_finish = L19_1
function L19_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._select_option_data = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_next
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L18_1._on_click_option = L19_1
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._option_event_table
  L2_2 = A0_2._cur_event_index
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.EventID
  A0_2._cur_event_id = L1_2
  L1_2 = L0_1.EventInfo
  L2_2 = L1_2
  L1_2 = L1_2.TryGetMonopolyEventDataItem
  L3_2 = A0_2._cur_event_id
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._event_data = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_option_list
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._event_data
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_next
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L18_1._refresh_option_event_view = L19_1
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._state
  L2_2 = L17_1.Begin
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_name
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L8_1
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_question_desc
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L7_1
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._state
    L2_2 = L17_1.End
    if L1_2 == L2_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.text_name
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = L10_1
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.text_question_desc
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = L9_1
      L4_2 = L0_1.EventInfo
      L4_2 = L4_2.FinishMBTIEventCount
      L5_2 = L0_1.EventInfo
      L5_2 = L5_2.TotalMBTIEventCount
      L1_2(L2_2, L3_2, L4_2, L5_2)
    else
      L1_2 = A0_2._state
      L2_2 = L17_1.FinalEnd
      if L1_2 == L2_2 then
        L1_2 = A0_2._binder
        L1_2 = L1_2.text_name
        L2_2 = L1_2
        L1_2 = L1_2.SafeSetTextID
        L3_2 = L12_1
        L1_2(L2_2, L3_2)
        L1_2 = A0_2._binder
        L1_2 = L1_2.text_question_desc
        L2_2 = L1_2
        L1_2 = L1_2.SafeSetTextID
        L3_2 = L11_1
        L1_2(L2_2, L3_2)
      end
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_finish
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_main
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_cover
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L18_1._setup_question_text = L19_1
function L19_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._switch_btn_next_callback
  L1_2(L2_2)
end
L18_1._on_btn_next = L19_1
function L19_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._state
  L2_2 = L17_1.Begin
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._begin_state_callback
    L1_2(L2_2)
  else
    L1_2 = A0_2._state
    L2_2 = L17_1.Click
    if L1_2 == L2_2 then
      L2_2 = A0_2
      L1_2 = A0_2._click_state_callback
      L1_2(L2_2)
    else
      L1_2 = A0_2._state
      L2_2 = L17_1.Confirm
      if L1_2 == L2_2 then
        L2_2 = A0_2
        L1_2 = A0_2._confirm_state_callback
        L1_2(L2_2)
      else
        L1_2 = A0_2._state
        L2_2 = L17_1.Finish
        if L1_2 == L2_2 then
          L2_2 = A0_2
          L1_2 = A0_2._finish_state_callback
          L1_2(L2_2)
        else
          L1_2 = A0_2._state
          L2_2 = L17_1.End
          if L1_2 == L2_2 then
            L2_2 = A0_2
            L1_2 = A0_2._end_state_callback
            L1_2(L2_2)
          else
            L2_2 = A0_2
            L1_2 = A0_2._final_end_state_callback
            L1_2(L2_2)
          end
        end
      end
    end
  end
end
L18_1._switch_btn_next_callback = L19_1
function L19_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_main
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_cover
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_option_event_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_btn_text
  L3_2 = L17_1.Click
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_default_navigation_target
  L1_2(L2_2)
end
L18_1._begin_state_callback = L19_1
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.FGKECAKAKLC
  L1_2(L2_2, L3_2)
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.SendMonopolySelectOptionCsReq
  L3_2 = A0_2._select_option_data
  L3_2 = L3_2.ID
  L4_2 = A0_2._cur_event_id
  L1_2(L2_2, L3_2, L4_2)
end
L18_1._click_state_callback = L19_1
function L19_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_event_index
  L1_2 = L1_2 + 1
  A0_2._cur_event_index = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_option_event_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_short_cut_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_btn_text
  L3_2 = L17_1.Click
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L13_1
  L1_2(L2_2, L3_2)
end
L18_1._confirm_state_callback = L19_1
function L19_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIMonopolyMBTIFinishHint
  L1_2(L2_2)
  L1_2 = L0_1.EventInfo
  L1_2 = L1_2.FinishMBTIEventCount
  L2_2 = L0_1.EventInfo
  L2_2 = L2_2.TotalMBTIEventCount
  if L1_2 < L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_btn_text
    L3_2 = L17_1.End
    L1_2(L2_2, L3_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._setup_btn_text
    L3_2 = L17_1.FinalEnd
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_question_text
  L1_2(L2_2)
end
L18_1._finish_state_callback = L19_1
function L19_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L18_1._end_state_callback = L19_1
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.ActivityMonopoly.History.ActivityMonopolyHistoryMainDialog"
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
L18_1._final_end_state_callback = L19_1
function L19_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._state = A1_2
  L2_2 = nil
  L3_2 = A0_2._state
  L4_2 = L17_1.Begin
  if L3_2 == L4_2 then
    L3_2 = G
    L3_2 = L3_2.TextmapStatic
    L3_2 = L3_2.GetText
    L4_2 = L1_1
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
  else
    L3_2 = A0_2._state
    L4_2 = L17_1.Click
    if L3_2 == L4_2 then
      L3_2 = G
      L3_2 = L3_2.TextmapStatic
      L3_2 = L3_2.GetText
      L4_2 = L2_1
      L3_2 = L3_2(L4_2)
      L2_2 = L3_2
    else
      L3_2 = A0_2._state
      L4_2 = L17_1.Confirm
      if L3_2 == L4_2 then
        L3_2 = G
        L3_2 = L3_2.TextmapStatic
        L3_2 = L3_2.GetText
        L4_2 = L3_1
        L5_2 = A0_2._cur_event_index
        L6_2 = A0_2._option_event_table
        L6_2 = #L6_2
        L3_2 = L3_2(L4_2, L5_2, L6_2)
        L2_2 = L3_2
      else
        L3_2 = A0_2._state
        L4_2 = L17_1.Finish
        if L3_2 == L4_2 then
          L3_2 = G
          L3_2 = L3_2.TextmapStatic
          L3_2 = L3_2.GetText
          L4_2 = L4_1
          L5_2 = A0_2._cur_event_index
          L6_2 = A0_2._option_event_table
          L6_2 = #L6_2
          L3_2 = L3_2(L4_2, L5_2, L6_2)
          L2_2 = L3_2
        else
          L3_2 = A0_2._state
          L4_2 = L17_1.End
          if L3_2 == L4_2 then
            L3_2 = G
            L3_2 = L3_2.TextmapStatic
            L3_2 = L3_2.GetText
            L4_2 = L5_1
            L3_2 = L3_2(L4_2)
            L2_2 = L3_2
          else
            L3_2 = G
            L3_2 = L3_2.TextmapStatic
            L3_2 = L3_2.GetText
            L4_2 = L6_1
            L3_2 = L3_2(L4_2)
            L2_2 = L3_2
          end
        end
      end
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_btn_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L18_1._setup_btn_text = L19_1
return L18_1
