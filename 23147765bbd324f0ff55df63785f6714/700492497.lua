local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LightConeLockSettingItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._sort_type = nil
  A0_2._callback = nil
  A0_2._is_multi_select = false
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  A0_2._is_multi_select = A1_2
end
L0_1.enable_multi_select = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_index
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2 ~= nil
  L2_2(L3_2, L4_2)
  if A1_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_index
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.set_selected_index = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = A0_2._callback
  if not L4_2 then
    L4_2 = A2_2
  end
  A0_2._callback = L4_2
  A0_2._callback_self = A3_2
  L4_2 = A1_2.Type
  A0_2._type = L4_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_name
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = A1_2.Name
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._is_multi_select
  if not L4_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.btn_root
    L5_2 = L4_2
    L4_2 = L4_2.SetChecked
    L6_2 = A1_2.IsSelected
    L4_2(L5_2, L6_2)
    L4_2 = A1_2.IsSelected
    if L4_2 then
      L4_2 = A0_2._binder
      L4_2 = L4_2.btn_root
      L5_2 = L4_2
      L4_2 = L4_2.Select
      L4_2(L5_2)
    end
  else
    L5_2 = A0_2
    L4_2 = A0_2.set_selected_index
    L6_2 = A1_2.Index
    if not L6_2 then
      L6_2 = A1_2.index
    end
    L4_2(L5_2, L6_2)
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._callback
  if L1_2 then
    L1_2 = A0_2._callback
    L2_2 = A0_2._callback_self
    L3_2 = A0_2._type
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_root_click = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._callback = nil
end
L0_1._on_dispose = L1_1
return L0_1
