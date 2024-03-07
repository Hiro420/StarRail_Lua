local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "IdentifyAimPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_aim_container
  L1_2(L2_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.aim_container
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.aim_container
    L2_2 = L1_2
    L1_2 = L1_2.DisposeAllAims
    L1_2(L2_2)
  end
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.PhotoGraphSys
  L4_2 = L2_2
  L3_2 = L2_2.BindPhotoGraphAimContainer
  L5_2 = A0_2._binder
  L5_2 = L5_2.aim_container
  L3_2(L4_2, L5_2)
end
L0_1._init_aim_container = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.aim_container
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.aim_container
    L2_2 = L1_2
    L1_2 = L1_2.GetManualAimEntityInRange
    return L1_2(L2_2)
  end
end
L0_1.get_manual_aim_entity_in_range = L1_1
return L0_1
