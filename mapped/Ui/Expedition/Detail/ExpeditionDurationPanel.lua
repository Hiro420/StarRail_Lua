local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Expedition.Detail.ExpeditionDurationPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ExpeditionDurationPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L2_1 = 4
L3_1 = 8
L4_1 = 12
L5_1 = 20
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L1_1[4] = L5_1
function L2_1(A0_2)
  local L1_2
  A0_2._selected_index = 1
  A0_2._duration_record = 0
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.btns
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2._bind_btn_callback
    L8_2 = L5_2
    L9_2 = A0_2._on_btn_click
    L10_2 = L4_2
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_left
  L4_2 = A0_2._on_left_bumper_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_right
  L4_2 = A0_2._on_right_bumper_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._duration_change_callback = A1_2
  A0_2._duration_change_callback_self = A2_2
end
L0_1.register_duration_change_callback = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._duration
  return L1_2
end
L0_1.get_duration = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._init_data
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_txt_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.refresh_view
  L2_2(L3_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2.ID
  A0_2._expedition_id = L2_2
  L2_2 = A1_2.Duration
  A0_2._duration = L2_2
  L2_2 = A0_2._duration
  if L2_2 ~= nil then
    L2_2 = A0_2._duration
    if L2_2 ~= 0 then
      goto lbl_22
    end
  end
  L2_2 = A0_2._duration_record
  if L2_2 == nil or L2_2 == 0 then
    L3_2 = L1_1
    L3_2 = #L3_2
    L3_2 = L1_1[L3_2]
    A0_2._duration = L3_2
  else
    A0_2._duration = L2_2
  end
  ::lbl_22::
  A0_2._selected_index = 1
  L2_2 = 1
  L3_2 = L1_1
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._duration
    L7_2 = L1_1[L5_2]
    if L6_2 == L7_2 then
      A0_2._selected_index = L5_2
      break
    end
  end
end
L0_1._init_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = ipairs
  L2_2 = L1_1
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.txt_btns
    L6_2 = L6_2[L4_2]
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetTextID
    L8_2 = "UIText_Assignment_AssignTime_Choose_Btn"
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
  end
end
L0_1._setup_txt_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_selected_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_control_tip_view
  L1_2(L2_2)
end
L0_1.refresh_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 1
  L2_2 = L1_1
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.btns
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.SetChecked
    L7_2 = A0_2._selected_index
    L7_2 = L7_2 == L4_2
    L5_2(L6_2, L7_2)
  end
end
L0_1._refresh_selected_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.canvas_group_btn_left
  L2_2 = A0_2._selected_index
  if L2_2 == 1 then
    L2_2 = 0.5
    if L2_2 then
      goto lbl_10
    end
  end
  L2_2 = 1
  ::lbl_10::
  L1_2.alpha = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.canvas_group_btn_right
  L2_2 = A0_2._selected_index
  L3_2 = L1_1
  L3_2 = #L3_2
  if L2_2 == L3_2 then
    L2_2 = 0.5
    if L2_2 then
      goto lbl_22
    end
  end
  L2_2 = 1
  ::lbl_22::
  L1_2.alpha = L2_2
end
L0_1._refresh_control_tip_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._selected_index = A1_2
  L2_2 = L1_1[A1_2]
  A0_2._duration = L2_2
  L2_2 = A0_2._duration
  A0_2._duration_record = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.refresh_view
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A0_2._duration_change_callback
  L4_2 = A0_2._duration_change_callback_self
  L5_2 = A0_2._duration
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_btn_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._selected_index
  if 1 < L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_btn_click
    L3_2 = A0_2._selected_index
    L3_2 = L3_2 - 1
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_left_bumper_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._selected_index
  L2_2 = L1_1
  L2_2 = #L2_2
  if L1_2 < L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_btn_click
    L3_2 = A0_2._selected_index
    L3_2 = L3_2 + 1
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_right_bumper_click = L2_1
return L0_1
