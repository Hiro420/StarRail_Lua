local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.WorldMapBtnPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "WorldMapBtnPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 202
L2_1 = {}
L3_1 = 201
L4_1 = 301
L2_1[1] = L3_1
L2_1[2] = L4_1
L3_1 = "RegionalMap_Exculde_Beta"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._world_id = A1_2
  L2_2 = A0_2._binder
  L3_2 = L2_2
  L2_2 = L2_2.set_active
  L5_2 = A0_2
  L4_2 = A0_2._is_unlock
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2
  L2_2 = A0_2._is_unlock
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.RedDotModule
    L2_2 = L2_2.Instance
    L3_2 = L2_2
    L2_2 = L2_2.bind_reddot
    L4_2 = "RegionalMapBtn"
    L5_2 = A0_2._world_id
    L6_2 = A0_2
    L7_2 = A0_2._binder
    L7_2 = L7_2.red_dot
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
end
L0_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._is_main_line
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SystemOpenModule
  L1_2 = L1_2.IsOpen
  L2_2 = L1_1
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._is_banned_by_const
    L1_2 = L1_2(L2_2)
    L1_2 = not L1_2
  end
  return L1_2
end
L0_1._is_unlock = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.StoryLineModule
  L2_2 = L1_2
  L1_2 = L1_2.IsMainLine
  return L1_2(L2_2)
end
L0_1._is_main_line = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L3_1
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L1_2.Value
    L2_2 = L2_2.IntValue
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.index_of_item
    L3_2 = L2_1
    L4_2 = A0_2._world_id
    L2_2 = L2_2 == 1 and L2_2
    return L2_2
  end
  L2_2 = false
  return L2_2
end
L0_1._is_banned_by_const = L4_1
return L0_1
