local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Qte.QteSingleClickPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "QteSingleClickPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_short_down_click
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_click
  L4_2 = A0_2._on_btn_click_short_down_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.count_down_bar
  L3_2 = L2_2
  L2_2 = L2_2.mono_tick
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.mono_tick = L1_1
function L1_1(A0_2, A1_2)
  A0_2._cfg = A1_2
end
L0_1.set_config = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._end_callback = A1_2
  A0_2._end_handler = A2_2
end
L0_1.register_end_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_button
  L2_2 = L2_2.transform
  L2_2.localPosition = A1_2
end
L0_1.set_position = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._set_in_control
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.count_down_bar
  L2_2 = L1_2
  L1_2 = L1_2.start
  L3_2 = A0_2._cfg
  L3_2 = L3_2.Duration
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.count_down_bar
  L2_2 = L1_2
  L1_2 = L1_2.register_time_out_callback
  L3_2 = A0_2._fail
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.start = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cfg
  L1_2 = L1_2.SingleClickActionName
  L2_2 = A0_2._binder
  L2_2 = L2_2.pc_in_control_button
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.pc_in_control_button
    L3_2 = L2_2
    L2_2 = L2_2.SetActionName
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.pc_in_control_tip
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.pc_in_control_tip
    L3_2 = L2_2
    L2_2 = L2_2.SetInControlTipKey
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._set_in_control = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._cfg
  L2_2 = L2_2.SingleClickActionName
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.InControlActionsManager
  L3_2 = L3_2.Instance
  L4_2 = L3_2
  L3_2 = L3_2.GetInControlActionData
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = G
  L4_2 = L4_2.UtilEngineWrap
  L4_2 = L4_2.ConvCsEnumToNum
  L5_2 = L3_2.BindKeyboard
  L4_2 = L4_2(L5_2)
  if L4_2 ~= A1_2 then
    L6_2 = A0_2
    L5_2 = A0_2._fail
    L5_2(L6_2)
  end
end
L0_1._on_keyboard_click = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.Action1
  L3_2 = #L3_2
  if not (A1_2 < L3_2) then
    L3_2 = CS
    L3_2 = L3_2.InControl
    L3_2 = L3_2.InputControlType
    L3_2 = L3_2.Action4
    L3_2 = #L3_2
    if not (A1_2 > L3_2) then
      goto lbl_16
    end
  end
  do return end
  ::lbl_16::
  L3_2 = A0_2._cfg
  L3_2 = L3_2.SingleClickActionName
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.InControlActionsManager
  L4_2 = L4_2.Instance
  L5_2 = L4_2
  L4_2 = L4_2.GetInControlActionData
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2.BindControlTypes
  L6_2 = false
  L7_2 = 0
  L8_2 = L5_2.Length
  L8_2 = L8_2 - 1
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = G
    L11_2 = L11_2.UtilEngineWrap
    L11_2 = L11_2.ConvCsEnumToNum
    L12_2 = L5_2[L10_2]
    L11_2 = L11_2(L12_2)
    if A1_2 == L11_2 then
      L6_2 = true
    end
  end
  if not L6_2 then
    L8_2 = A0_2
    L7_2 = A0_2._fail
    L7_2(L8_2)
  end
end
L0_1._on_in_control_press = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._end_callback
  L2_2 = A0_2._end_handler
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._success = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._end_callback
  L2_2 = A0_2._end_handler
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._fail = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._success
  L1_2(L2_2)
end
L0_1._on_btn_click_short_down_click = L1_1
return L0_1
