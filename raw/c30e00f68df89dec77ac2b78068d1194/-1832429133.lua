local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = "ItemPurpose_PurposeText_6"
L1_1 = "4022"
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "RelicSellSuperRareResultSwitchPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2
  A0_2._is_on = true
end
L2_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_on
  L4_2 = A0_2._on_btn_on
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_off
  L4_2 = A0_2._on_btn_off
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.gamepad_btn_switch
  L4_2 = A0_2._on_gamepad_btn_switch
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._switch_callback_func = nil
  A0_2._switch_callback_self = nil
end
L2_1._on_dispose = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._switch_callback_func = A1_2
  A0_2._switch_callback_self = A2_2
end
L2_1.register_switch_callback = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L5_2 = A0_2
  L4_2 = A0_2._setup_switch_items
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
  A0_2._is_on = A3_2
  L5_2 = A0_2
  L4_2 = A0_2._refresh_switch_btn_states
  L4_2(L5_2)
  if A3_2 then
    L4_2 = G
    L4_2 = L4_2.NotifyManager
    L4_2 = L4_2.notify
    L5_2 = G
    L5_2 = L5_2.CS
    L5_2 = L5_2.NotifyType
    L5_2 = L5_2.TutorialTaskUnlock
    L6_2 = L1_1
    L4_2(L5_2, L6_2)
  end
end
L2_1.setup_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L5_2 = A0_2
    L4_2 = A0_2._async_load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.img_on
    L7_2 = L3_2.ItemIconPath
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_on
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = L3_2.ItemName
    L4_2(L5_2, L6_2)
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ItemExcelTable
  L4_2 = L4_2.GetData
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  if L4_2 ~= nil then
    L6_2 = A0_2
    L5_2 = A0_2._async_load_sprite_to
    L7_2 = A0_2._binder
    L7_2 = L7_2.img_off
    L8_2 = L4_2.ItemIconPath
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_off
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = L0_1
    L5_2(L6_2, L7_2)
  end
end
L2_1._setup_switch_items = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_on
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = A0_2._is_on
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_off
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = A0_2._is_on
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
end
L2_1._refresh_switch_btn_states = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  A0_2._is_on = true
  L2_2 = A0_2
  L1_2 = A0_2._on_after_switch
  L1_2(L2_2)
end
L2_1._on_btn_on = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  A0_2._is_on = false
  L2_2 = A0_2
  L1_2 = A0_2._on_after_switch
  L1_2(L2_2)
end
L2_1._on_btn_off = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_on
  L1_2 = not L1_2
  A0_2._is_on = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._on_after_switch
  L1_2(L2_2)
end
L2_1._on_gamepad_btn_switch = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_switch_btn_states
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._switch_callback_func
  L3_2 = A0_2._switch_callback_self
  L4_2 = A0_2._is_on
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_after_switch = L3_1
return L2_1
