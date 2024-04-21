local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AssistRefreshBtnPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "Assist_Refresh_CD"
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.FriendModule
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueCommonExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L1_1
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.IntValue
  A0_2._refresh_cd = L1_2
  A0_2._cur_time = 0
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_cd
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._refresh_cd
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_btn_active
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.GetStrangerAssistList
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_btn_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_tick
  L1_2(L2_2)
end
L0_1._on_btn_root_click = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._cur_time
  L2_2 = L2_2 + A1_2
  A0_2._cur_time = L2_2
  L2_2 = A0_2._cur_time
  L3_2 = A0_2._refresh_cd
  if L2_2 >= L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2._remove_tick
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._set_btn_active
    L4_2 = true
    L2_2(L3_2, L4_2)
    A0_2._cur_time = 0
    return
  end
  L2_2 = math
  L2_2 = L2_2.ceil
  L3_2 = A0_2._refresh_cd
  L4_2 = A0_2._cur_time
  L3_2 = L3_2 - L4_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_cd
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_tick = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L2_2.interactable = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_cd
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._set_btn_active = L3_1
return L0_1
