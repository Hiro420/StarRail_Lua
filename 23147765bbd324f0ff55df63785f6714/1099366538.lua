local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.ItemTip.CommonItemPrefabLoaderBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CommonItemPrefabLoader"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._is_loaded = false
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._is_loaded
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.safe_set_active
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  elseif A1_2 == true then
    L3_2 = A0_2
    L2_2 = A0_2.instantiate_object
    L4_2 = A0_2._binder
    L4_2 = L4_2.prefab_loader
    L4_2 = L4_2.Prefab
    L5_2 = A0_2._binder
    L5_2 = L5_2.root
    L2_2(L3_2, L4_2, L5_2)
    L3_2 = A0_2
    L2_2 = A0_2.safe_set_active
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    A0_2._is_loaded = true
  else
    L3_2 = A0_2
    L2_2 = A0_2.safe_set_active
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.set_node_active = L1_1
return L0_1
