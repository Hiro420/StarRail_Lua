local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Component.RedDot"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.RedDotBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RedDotUtil"
L2_1 = nil
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._ParentTrans2RedDot = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._ParentTrans2RedDot = nil
end
L0_1.dtor = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2
  L6_2 = A0_2
  L5_2 = A0_2._rebind_reddot
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = A4_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  if L5_2 then
    return
  end
  if A3_2 == nil then
    return
  end
  L6_2 = A3_2
  L5_2 = A3_2.create_panel
  L7_2 = G
  L7_2 = L7_2.RedDot
  L8_2 = G
  L8_2 = L8_2.RedDotBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L5_2._reddot_key = A1_2
  L5_2._reddot_subkey = A2_2
  L7_2 = L5_2
  L6_2 = L5_2.async_bind
  L8_2 = A4_2
  L6_2(L7_2, L8_2)
  L7_2 = L5_2
  L6_2 = L5_2.set_async_callback
  L8_2 = nil
  function L9_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L5_2
    L1_3 = L0_3
    L0_3 = L0_3.bind_reddot
    L2_3 = L5_2._reddot_key
    L3_3 = L5_2._reddot_subkey
    L0_3(L1_3, L2_3, L3_3)
    L5_2._reddot_ready = true
  end
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = A0_2
  L6_2 = A0_2._add_reddot
  L8_2 = A4_2
  L9_2 = L5_2
  L6_2(L7_2, L8_2, L9_2)
end
L0_1.bind_reddot = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._get_reddot
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    return
  end
  L4_2 = L2_2
  L3_2 = L2_2.unbind_reddot
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._remove_reddot
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1.unbind_reddot = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == nil then
    return
  end
  L2_2 = nil
  L3_2 = A1_2._binder
  if L3_2 ~= nil then
    L3_2 = A1_2._binder
    L2_2 = L3_2.root_parent
  else
    L2_2 = A1_2._ParentTransform
  end
  L4_2 = A0_2
  L3_2 = A0_2._remove_reddot
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1.on_dispose_reddot = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L5_2 = A0_2
  L4_2 = A0_2._get_reddot
  L6_2 = A3_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 ~= nil then
    L5_2 = L4_2._reddot_ready
    if L5_2 then
      L6_2 = L4_2
      L5_2 = L4_2.bind_reddot
      L7_2 = A1_2
      L8_2 = A2_2
      L5_2(L6_2, L7_2, L8_2)
    else
      L4_2._reddot_key = A1_2
      L4_2._reddot_subkey = A2_2
    end
    L5_2 = true
    return L5_2
  end
  L5_2 = false
  return L5_2
end
L0_1._rebind_reddot = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2._ParentTrans2RedDot
  L3_2[A1_2] = A2_2
end
L0_1._add_reddot = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  if A1_2 ~= nil then
    L2_2 = A0_2._ParentTrans2RedDot
    L2_2[A1_2] = nil
  end
end
L0_1._remove_reddot = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._ParentTrans2RedDot
  L2_2 = L2_2[A1_2]
  return L2_2
end
L0_1._get_reddot = L1_1
return L0_1
