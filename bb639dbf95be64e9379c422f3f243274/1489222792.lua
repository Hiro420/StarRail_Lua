local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Expedition.ExpeditionGroupTabItemBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ExpeditionModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ExpeditionGroupTabItem"
L3_1 = G
L3_1 = L3_1.TabItem
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
  A0_2._group_id = nil
  A0_2.intro_id = 25
end
L1_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  A0_2._group_id = A1_2
end
L1_1.init_param = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._group_id
  if L1_2 == nil then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ExpeditionGroupExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._group_id
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_img
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_icon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.Name
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_reddot
  L2_2(L3_2)
end
L1_1._on_added = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._group_id
  if L1_2 == nil then
    L1_2 = {}
    return L1_2
  end
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetExpeditionDatasByGroupId
  L3_2 = A0_2._group_id
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = L1_2
  return L2_2(L3_2)
end
L1_1.get_expedition_datas = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = nil
  return L1_2
end
L1_1.get_schedule = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1._on_unselect = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ExpeditionGroup"
  L4_2 = A0_2._group_id
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L1_1._bind_reddot = L2_1
return L1_1
