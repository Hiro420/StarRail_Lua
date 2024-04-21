local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = {}
L1_1 = 0
L2_1 = 90
L3_1 = 180
L4_1 = 270
L0_1[1] = L1_1
L0_1[2] = L2_1
L0_1[3] = L3_1
L0_1[4] = L4_1
L1_1 = 270
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "ActivityMonopolyMapPlayerPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2
end
L2_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2
end
L2_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._map_index = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_gender_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_arrow_view
  L2_2(L3_2)
end
L2_1.setup_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_scale
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector3
  L4_2 = A1_2
  L5_2 = A1_2
  L6_2 = 1
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2.localScale = L3_2
end
L2_1.refresh_scale = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.PlayerModule
  L1_2 = L1_2.PlayerData
  L1_2 = L1_2.HeroAvatarInfoData
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentHeroGender
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GenderType
  L2_2 = L2_2.GENDER_WOMAN
  L2_2 = L1_2 == L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_female
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_male
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
end
L2_1._refresh_gender_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_arrow
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Vector3
  L3_2 = 0
  L4_2 = 0
  L5_2 = A0_2._map_index
  L5_2 = L0_1[L5_2]
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2.localEulerAngles = L2_2
end
L2_1._refresh_arrow_view = L3_1
return L2_1
