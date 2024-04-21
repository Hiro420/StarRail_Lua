local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TreasureDungeonUltraPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_ultra
  L4_2 = A0_2._on_btn_ultra
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit_ultra_mode
  L4_2 = A0_2._on_btn_exit_ultra_mode
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._set_ultra_mode
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._data
  if L1_2 then
    L1_2 = A0_2._data
    L1_2 = L1_2.ItemCount
    if L1_2 then
      goto lbl_9
    end
  end
  L1_2 = 0
  ::lbl_9::
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_empty
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2 == 0
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._data
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._data
  L4_2 = L4_2.ItemRow
  L4_2 = L4_2.Name
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._data
  L4_2 = L4_2.ItemRow
  L4_2 = L4_2.Desc
  L2_2(L3_2, L4_2)
end
L0_1._refresh = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._data
  L1_2 = L1_2 ~= nil
  return L1_2
end
L0_1.has_ultra = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._is_in_ultra
  if L3_2 == A1_2 then
    return
  end
  A0_2._is_in_ultra = A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_detail
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_team
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not A1_2
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.LayoutRebuilder
  L3_2 = L3_2.ForceRebuildLayoutImmediate
  L4_2 = A0_2._binder
  L4_2 = L4_2.root
  L4_2 = L4_2.transform
  L3_2(L4_2)
  if A2_2 then
    L3_2 = G
    L3_2 = L3_2.Utils
    L3_2 = L3_2.invoke_callback
    L4_2 = A0_2._callback
    L5_2 = A0_2._callback_self
    L6_2 = A0_2._is_in_ultra
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._set_ultra_mode = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._data
  if L1_2 then
    L1_2 = A0_2._data
    L1_2 = L1_2.ItemCount
    if L1_2 then
      goto lbl_9
    end
  end
  L1_2 = 0
  ::lbl_9::
  if 0 < L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._set_ultra_mode
    L4_2 = true
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIPileToastMessageTextID
    L4_2 = "UIText_TreasureDungeon_Stage_NoBomb"
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_btn_ultra = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._set_ultra_mode
  L3_2 = false
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_exit_ultra_mode = L1_1
return L0_1
