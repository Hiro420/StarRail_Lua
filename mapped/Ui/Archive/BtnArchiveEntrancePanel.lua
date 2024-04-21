local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Utilities.Utils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BtnArchiveEntrancePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ArchiveModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L2_2 = L1_2
  L1_2 = L1_2.ClearAnimationState
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._type = A1_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetArchiveDataByType
  L4_2 = A0_2._type
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._refresh_progress
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_bind_red_dot
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_click_callback = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_total_progress
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A1_2.TotalProgress
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_cur_progress
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A1_2.CurProgress
  L2_2(L3_2, L4_2)
end
L0_1._refresh_progress = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2.ReddotKey
  if L2_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.RedDotModule
    L2_2 = L2_2.Instance
    L3_2 = L2_2
    L2_2 = L2_2.bind_reddot
    L4_2 = "ArchiveEntry"
    L5_2 = A1_2.ReddotKey
    L6_2 = A0_2
    L7_2 = A0_2._binder
    L7_2 = L7_2.node_reddot
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
end
L0_1._try_bind_red_dot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._callback
  L3_2 = A0_2._callback_self
  L4_2 = A0_2._type
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_root = L2_1
return L0_1
