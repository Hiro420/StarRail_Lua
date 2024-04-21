local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = "TravelBrochureMainInfoOption_FadeOut"
L1_1 = "Tutorial_4017_Click_Option"
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "TravelBrochureChapterChoicePanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2
  A0_2._is_hidden = false
end
L2_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_hide
  L4_2 = A0_2._on_btn_hide
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TravelBrochureChoiceSelected
  L4_2 = A0_2._on_choice_selected
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = A0_2._on_ui_animation_event
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  return L1_2
end
L2_1.get_scroll_rect = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._diary_data = A1_2
  L2_2 = A1_2.DescShowDetail
  L2_2 = not L2_2
  A0_2._is_hidden = L2_2
  L2_2 = A0_2._diary_data
  L2_2 = L2_2.HasChosen
  if L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIAnimationUtils
    L2_2 = L2_2.PlayToEnd
    L3_2 = A0_2._binder
    L3_2 = L3_2.animation
    L4_2 = L0_1
    L2_2(L3_2, L4_2)
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIAnimationUtils
    L2_2 = L2_2.PlayToBegin
    L3_2 = A0_2._binder
    L3_2 = L3_2.animation
    L4_2 = L0_1
    L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_view
  L2_2(L3_2)
end
L2_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_choice_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_hide_view
  L1_2(L2_2)
end
L2_1._refresh_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._diary_data
  L1_2 = L1_2.HasChosen
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.TravelBrochureDiaryChoiceExcelTable
    L1_2 = L1_2.GetData
    L2_2 = A0_2._diary_data
    L2_2 = L2_2.SelectedChoiceID
    L1_2 = L1_2(L2_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_title
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L1_2.DetailMessage
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_options
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._diary_data
    L3_2 = L3_2.ChoiceGroupRow
    L3_2 = L3_2.DiaryDescription
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_options
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.create_lua_table_from_cs_array
    L2_2 = A0_2._diary_data
    L2_2 = L2_2.ChoiceGroupRow
    L2_2 = L2_2.ChoiceIDList
    L1_2 = L1_2(L2_2)
    A0_2._choice_ids = L1_2
    L1_2 = A0_2._binder
    L1_2 = L1_2.list_options
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._choice_ids
    L1_2(L2_2, L3_2)
    L1_2 = 1
    L2_2 = A0_2._choice_ids
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = A0_2._binder
      L5_2 = L5_2.list_options
      L6_2 = L5_2
      L5_2 = L5_2.get_panel_by_index
      L7_2 = L4_2
      L5_2 = L5_2(L6_2, L7_2)
      L7_2 = L5_2
      L6_2 = L5_2.register_click_callback
      L8_2 = A0_2._on_choice_clicked
      L9_2 = A0_2
      L6_2(L7_2, L8_2, L9_2)
    end
    L1_2 = A0_2._binder
    L1_2 = L1_2.list_options
    L2_2 = L1_2
    L1_2 = L1_2.update_navigation
    L3_2 = NavigationType
    L3_2 = L3_2.Vertical
    L1_2(L2_2, L3_2)
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.CoroutineUtils
    L1_2 = L1_2.InvokeNextFrame
    function L2_2()
      local L0_3, L1_3
      L0_3 = A0_2._binder
      if L0_3 == nil then
        return
      end
      L0_3 = CS
      L0_3 = L0_3.UnityEngine
      L0_3 = L0_3.UI
      L0_3 = L0_3.LayoutRebuilder
      L0_3 = L0_3.ForceRebuildLayoutImmediate
      L1_3 = A0_2._binder
      L1_3 = L1_3.node_options
      L0_3(L1_3)
    end
    L1_2(L2_2)
  end
end
L2_1._refresh_choice_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._diary_data
  L2_2 = L2_2.ID
  if A1_2 ~= L2_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIAnimationUtils
  L2_2 = L2_2.PlayFromBegin
  L3_2 = A0_2._binder
  L3_2 = L3_2.animation
  L4_2 = L0_1
  L2_2(L3_2, L4_2)
end
L2_1._on_choice_selected = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "TravelBrochureRefreshUIChoice" then
    L3_2 = A0_2
    L2_2 = A0_2._refresh_choice_view
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._refresh_hide_view
    L2_2(L3_2)
  end
end
L2_1._on_ui_animation_event = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._diary_data
  L1_2 = L1_2.HasChosen
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_hide
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if not L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_to_hide
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_to_hide
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._is_hidden
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_icon_up
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._is_hidden
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_icon_down
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._is_hidden
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_hide
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._is_hidden
  if L4_2 then
    L4_2 = "UIText_TravelBrochure_ExpandButton"
    if L4_2 then
      goto lbl_43
    end
  end
  L4_2 = "UIText_TravelBrochure_HideButton"
  ::lbl_43::
  L2_2(L3_2, L4_2)
end
L2_1._refresh_hide_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_hidden
  L1_2 = not L1_2
  A0_2._is_hidden = L1_2
  L1_2 = A0_2._diary_data
  L2_2 = L1_2
  L1_2 = L1_2.UpdateDescShow
  L3_2 = A0_2._is_hidden
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_hide_view
  L1_2(L2_2)
end
L2_1._on_btn_hide = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.show_full_screen_block_for_packet
  L4_2 = CS
  L4_2 = L4_2.PBIBDHBOIGI
  L4_2 = L4_2.CFPNFGCAJOL
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_NetworkManager
  L3_2 = L2_2
  L2_2 = L2_2.DJALBDEOCFO
  L4_2 = A0_2._diary_data
  L4_2 = L4_2.ID
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.trigger_custom_string
  L3_2 = L1_1
  L2_2(L3_2)
end
L2_1._on_choice_clicked = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._diary_data
  L1_2 = L1_2.HasChosen
  if L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_options
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L2_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.incontrol_move
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.incontrol_move
    L1_2.enabled = false
  end
end
L2_1._on_enter_special_zoom = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.incontrol_move
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.incontrol_move
    L1_2.enabled = true
  end
end
L2_1._on_leave_special_zoom = L3_1
return L2_1
