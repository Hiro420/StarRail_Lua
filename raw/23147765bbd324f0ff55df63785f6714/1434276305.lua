local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.AvatarEducation.AvatarEidolon.AvatarEidolonSkillIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AvatarEducation.AvatarEidolon.AvatarEidolonSkillIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarEidolonSkillGroupPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L1_2 = L1_2(L2_2)
  A0_2._avatar_ui3d = L1_2
  A0_2._is_can_tap = true
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.skill_panel_list
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.skill_panel_list
    L1_2 = #L1_2
    if not (L1_2 < 0) then
      goto lbl_12
    end
  end
  L1_2 = nil
  do return L1_2 end
  ::lbl_12::
  L1_2 = A0_2._binder
  L1_2 = L1_2.skill_panel_list
  L1_2 = L1_2[1]
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._avatar_data = A1_2
  A0_2._selected_point_row = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._get_eidolon_list
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._selected_point_row = A1_2
  L2_2 = 1
  L3_2 = A0_2._binder
  L3_2 = L3_2.skill_panel_list
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.skill_panel_list
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.try_refresh_selected_panel
    L8_2 = A1_2
    L6_2(L7_2, L8_2)
  end
end
L0_1.try_refresh_selected_panel = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = 1
  L3_2 = A0_2._binder
  L3_2 = L3_2.skill_panel_list
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.skill_panel_list
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.setup_adapted_position
    L8_2 = A1_2
    L6_2(L7_2, L8_2)
  end
end
L0_1.setup_adapted_position = L1_1
function L1_1(A0_2, A1_2)
  A0_2._select_point_callback = A1_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._cancel_event_listener = A1_2
  A0_2._cancel_callback = A2_2
end
L0_1.register_cancel_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  A0_2._eidolon_row_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_easy_touch_event
  L1_2(L2_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._eidolon_row_list = L1_2
  L1_2 = A0_2._avatar_data
  L1_2 = L1_2.Row
  L1_2 = L1_2.RankIDList
  L2_2 = 0
  L3_2 = L1_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.GameCore
    L6_2 = L6_2.AvatarRankConfigExcelTable
    L6_2 = L6_2.GetData
    L7_2 = L1_2[L5_2]
    L6_2 = L6_2(L7_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._eidolon_row_list
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._get_eidolon_list = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_gesture
  L3_2 = GestureType
  L3_2 = L3_2.TouchUp
  L4_2 = A0_2._touch_up_callback
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_gesture
  L3_2 = GestureType
  L3_2 = L3_2.TouchDown
  L4_2 = A0_2._touch_down_callback
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._bind_easy_touch_event = L1_1
function L1_1(A0_2, A1_2)
  A0_2._is_can_tap = true
end
L0_1._touch_up_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.is_top_page_or_dialog
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2._is_can_tap
    if L2_2 then
      L2_2 = A0_2._avatar_ui3d
      L2_2 = L2_2.eidolon_panel
      L3_2 = L2_2
      L2_2 = L2_2.simple_tap_eidolon
      L4_2 = A0_2._on_simple_tap
      L5_2 = A0_2
      L2_2(L3_2, L4_2, L5_2)
      A0_2._is_can_tap = false
    end
  end
end
L0_1._touch_down_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 <= 0 then
    L2_2 = A0_2._cancel_callback
    L3_2 = A0_2._cancel_event_listener
    L2_2(L3_2)
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.skill_panel_list
  L2_2 = L2_2[A1_2]
  L3_2 = L2_2
  L2_2 = L2_2.on_btn_root_click
  L2_2(L3_2)
end
L0_1._on_simple_tap = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.skill_panel_list
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.skill_panel_list
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.register_click_callback
    L7_2 = A0_2._select_point_callback
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.skill_panel_list
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.setup_view
    L7_2 = A0_2._avatar_data
    L8_2 = A0_2._eidolon_row_list
    L8_2 = L8_2[L4_2]
    L9_2 = A0_2._selected_point_row
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
end
L0_1._refresh = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._select_point_callback = nil
end
L0_1._on_dispose = L1_1
return L0_1
