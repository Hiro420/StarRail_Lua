local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Profiler.PerformanceMonitorPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PerformanceMonitorPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.ImportCsToLua
  L2_2 = L2_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._create_binder
  L4_2 = G
  L4_2 = L4_2.PerformanceMonitorPageBinder
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._binder = L2_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L3_2 = L2_2
  L2_2 = L2_2.set_prefab_path
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._load_listView_items
  L1_2(L2_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L2_2 = L1_2
  L1_2 = L1_2.GetComponentsInChildren
  L3_2 = typeof
  L4_2 = CS
  L4_2 = L4_2.SuperScrollView
  L4_2 = L4_2.LoopListView2
  L3_2 = L3_2(L4_2)
  L4_2 = true
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if L1_2 == nil then
    return
  end
  L2_2 = 0
  L3_2 = L1_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L6_2.ItemPreviewCount = 100
  end
end
L0_1._load_listView_items = L1_1
return L0_1
