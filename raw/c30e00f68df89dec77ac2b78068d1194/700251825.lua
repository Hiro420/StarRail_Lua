local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.UI3DSystem.UI3DMonsterPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UI3DSystem.UI3DCameraPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherDivideTerminalUI3DPage"
L2_1 = G
L2_1 = L2_1.UI3DController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.config
  L1_2.prefab_path = "UI/UI3D/AetherSpirit/Prefabs/UI3D_AetherDivide_BG.prefab"
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Effect_Loop"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._node_effect_loop = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Effect_Finshed_Loop"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._node_effect_finished_loop = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Effect_Finshed"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._node_effect_finished = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.ParticleSystemProxy
  L4_2 = "Plane/Particle"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._particle_enter = L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._particle_enter
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L1_2(L2_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._node_effect_loop
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._node_effect_finished_loop
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.AetherDivideModule
  L1_2 = L1_2.GymData
  L3_2 = L1_2
  L2_2 = L1_2.ShouldPlayGetChampionEffect
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2._node_effect_finished
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L3_2 = L1_2
    L2_2 = L1_2.RecordGetChampionEffectPlayed
    L2_2(L3_2)
  end
end
L0_1.play_finished_anim = L1_1
return L0_1
