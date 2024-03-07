local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ExpeditionDetailInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ExpeditionModule
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._expedition_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_base_view
  L2_2(L3_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._expedition_data
  L1_2 = L1_2.IsActivity
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_client_name
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._expedition_data
    L3_2 = L3_2.Config
    L3_2 = L3_2.AssignerName
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_expedition_desc
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._expedition_data
    L3_2 = L3_2.Config
    L3_2 = L3_2.AssignDesc
    L1_2(L2_2, L3_2)
  else
    L1_2 = nil
    L2_2 = A0_2._expedition_data
    L2_2 = L2_2.Config
    L2_2 = L2_2.AssignerIDList
    L2_2 = L2_2.Length
    if 1 < L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._get_local_memorized_assigner_index
      L2_2 = L2_2(L3_2)
      L1_2 = L2_2
    else
      L1_2 = 0
    end
    L2_2 = A0_2._expedition_data
    L2_2 = L2_2.Config
    L2_2 = L2_2.AssignerIDList
    L2_2 = L2_2[L1_2]
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.ExpeditionAssignerExcelTable
    L3_2 = L3_2.GetData
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_client_name
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = L3_2.AssignerName
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_expedition_desc
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = A0_2._expedition_data
    L6_2 = L6_2.Config
    L6_2 = L6_2.AssignDesc
    L7_2 = G
    L7_2 = L7_2.TextmapStatic
    L7_2 = L7_2.GetText
    L8_2 = L3_2.AssignerName
    L7_2, L8_2 = L7_2(L8_2)
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
end
L0_1._setup_base_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.ExpeditionAssigner
  L3_2 = L1_2
  L2_2 = L1_2.ContainsKey
  L4_2 = A0_2._expedition_data
  L4_2 = L4_2.ID
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = A0_2._expedition_data
    L2_2 = L2_2.ID
    L2_2 = L1_2[L2_2]
    return L2_2
  end
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Random
  L3_2 = L3_2.Range
  L4_2 = 0
  L5_2 = A0_2._expedition_data
  L5_2 = L5_2.Config
  L5_2 = L5_2.AssignerIDList
  L5_2 = L5_2.Length
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._set_local_memorized_assigner_index
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  return L2_2
end
L0_1._get_local_memorized_assigner_index = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2 = L2_2.ExpeditionAssigner
  L4_2 = L2_2
  L3_2 = L2_2.ContainsKey
  L5_2 = A0_2._expedition_data
  L5_2 = L5_2.ID
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L3_2 = A0_2._expedition_data
    L3_2 = L3_2.ID
    L2_2[L3_2] = A1_2
  else
    L4_2 = L2_2
    L3_2 = L2_2.Add
    L5_2 = A0_2._expedition_data
    L5_2 = L5_2.ID
    L6_2 = A1_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._set_local_memorized_assigner_index = L2_1
return L0_1
