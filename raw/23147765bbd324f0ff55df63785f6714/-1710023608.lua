local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Component.RedDotNew"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.RedDotNewBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherDivideBadgeItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._data
  L2_2 = L1_2
  L1_2 = L1_2.IsBadgeUnlock
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_icon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_lock
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_badge
    L5_2 = A0_2._data
    L5_2 = L5_2.IconPath
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._reddot_panel
  if L1_2 ~= nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.RedDotNew
  L4_2 = G
  L4_2 = L4_2.RedDotNewBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._reddot_panel = L1_2
  L1_2 = A0_2._reddot_panel
  L2_2 = L1_2
  L1_2 = L1_2.async_bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_reddot
  L1_2(L2_2, L3_2)
end
L0_1.show_new_status = L1_1
return L0_1
