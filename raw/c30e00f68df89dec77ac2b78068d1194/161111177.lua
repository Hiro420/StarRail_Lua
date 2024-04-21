local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = 9
L1_1 = {}
L2_1 = "Effects/Eff_Prefab/Eff_Scene/Interactive Object/Eff_Common_MAZ_Prop_Cocoon_01_GrowUp.prefab"
L1_1[1] = L2_1
L2_1 = "EnviroSystem/PostProcessVolumeProfile/UI3D_FarmStage_Lookdev.asset"
L3_1 = "Activing"
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "FarmCocoonUI3DPage"
L6_1 = G
L6_1 = L6_1.UI3DController
L4_1 = L4_1(L5_1, L6_1)
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2.config
  L1_2.prefab_path = "UI/UI3D/UI3DFarmStage/Prefabs/UI3DFramStage.prefab"
  A0_2.cocoon_go = nil
  L1_2 = {}
  A0_2.spawn_effects = L1_2
  A0_2._is_cocoon_loaded = false
end
L4_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.MeshRenderer
  L4_2 = "BG"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._mesh_render = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Cocoon"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._root_cocoon = L1_2
end
L4_1._on_load = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.FarmStageUnlockConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._row = L2_2
  L2_2 = A0_2._row
  L2_2 = L2_2.UIEnviromentConfig
  if L2_2 ~= "" then
    L2_2 = A0_2.config
    L3_2 = A0_2._row
    L3_2 = L3_2.UIEnviromentConfig
    L2_2.environment_profile_path = L3_2
  end
end
L4_1.setup_data = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_env
  L1_2(L2_2)
end
L4_1.on_reload_environment = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_cocoon
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_bg
  L1_2(L2_2)
end
L4_1.setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._mesh_render
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.AssetLoader
  L2_2 = L2_2.SyncLoadAsset
  L3_2 = A0_2._row
  L3_2 = L3_2.UIEntranceBgPath
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Material
  L4_2, L5_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2.material = L2_2
end
L4_1._setup_bg = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._is_cocoon_loaded
  if L1_2 then
    return
  end
  A0_2._is_cocoon_loaded = true
  L2_2 = A0_2
  L1_2 = A0_2.async_load_prefab
  L3_2 = "Stages/OriginalResPos/InteractiveProp/Chapter01/Chap01_GameplayProp_Cocoon_01/Chap01_GameplayProp_Cocoon_01_Lod0.prefab"
  L4_2 = A0_2._on_cocoon_loaded
  L5_2 = A0_2
  L6_2 = A0_2._root_cocoon
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L4_1._setup_cocoon = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UI3DCameraCopyUtil
  L1_2 = L1_2.OverrideDofOfEnvVolume
  L3_2 = A0_2
  L2_2 = A0_2.get_camera
  L2_2 = L2_2(L3_2)
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
end
L4_1._setup_env = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = A1_2
  L2_2 = A1_2.SetLayerRecursively
  L4_2 = L0_1
  L2_2(L3_2, L4_2)
  A0_2.cocoon_go = A1_2
  L2_2 = A0_2.cocoon_go
  L2_2 = L2_2.transform
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector3
  L3_2 = L3_2.zero
  L2_2.localPosition = L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_MonoEffectManager
  L3_2 = ipairs
  L4_2 = L1_1
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.Client
    L8_2 = L8_2.MonoEffectManager
    L8_2 = L8_2.GetTriggerEffectParam
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    L9_2 = A0_2.cocoon_go
    L9_2 = L9_2.transform
    L8_2.AttachTransform = L9_2
    L9_2 = A0_2._root_cocoon
    L9_2 = L9_2.transform
    L9_2 = L9_2.position
    L8_2.InitPosition = L9_2
    L9_2 = A0_2.spawn_effects
    L11_2 = L2_2
    L10_2 = L2_2.FireEffect
    L12_2 = L8_2
    L10_2 = L10_2(L11_2, L12_2)
    L9_2[L6_2] = L10_2
    L9_2 = A0_2.spawn_effects
    L9_2 = L9_2[L6_2]
    L9_2 = L9_2.Behavior
    L10_2 = A0_2.spawn_effects
    L10_2 = L10_2[L6_2]
    L10_2 = L10_2.gameObject
    L11_2 = L10_2
    L10_2 = L10_2.SetLayerRecursively
    L12_2 = L0_1
    L10_2(L11_2, L12_2)
    L10_2 = A0_2.spawn_effects
    L10_2 = L10_2[L6_2]
    L11_2 = L10_2
    L10_2 = L10_2.SetLocalScale
    L12_2 = A0_2._root_cocoon
    L12_2 = L12_2.transform
    L12_2 = L12_2.localScale
    L10_2(L11_2, L12_2)
    L11_2 = L9_2
    L10_2 = L9_2.SetTargetOverrideGO
    L12_2 = A0_2.cocoon_go
    L10_2(L11_2, L12_2)
    L11_2 = L9_2
    L10_2 = L9_2.ResetPlugins
    L10_2(L11_2)
  end
  L3_2 = A0_2.cocoon_go
  L4_2 = L3_2
  L3_2 = L3_2.GetComponentInChildren
  L5_2 = typeof
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.Animator
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  A0_2._animator = L3_2
  L3_2 = A0_2._animator
  L4_2 = L3_2
  L3_2 = L3_2.CrossFade
  L5_2 = L3_1
  L6_2 = 0
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._animator
  L4_2 = L3_2
  L3_2 = L3_2.SetBool
  L5_2 = "IsOpen"
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._animator
  L4_2 = L3_2
  L3_2 = L3_2.SetBool
  L5_2 = "IsDormant"
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
end
L4_1._on_cocoon_loaded = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2.spawn_effects
  if L2_2 ~= nil then
    L2_2 = ipairs
    L3_2 = A0_2.spawn_effects
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = L6_2.gameObject
      L8_2 = L7_2
      L7_2 = L7_2.SetActive
      L9_2 = A1_2
      L7_2(L8_2, L9_2)
    end
  end
  if A1_2 then
    L2_2 = A0_2._animator
    L3_2 = L2_2
    L2_2 = L2_2.CrossFade
    L4_2 = L3_1
    L5_2 = 0
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._animator
    L3_2 = L2_2
    L2_2 = L2_2.SetBool
    L4_2 = "IsOpen"
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._animator
    L3_2 = L2_2
    L2_2 = L2_2.SetBool
    L4_2 = "IsDormant"
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
  end
end
L4_1._on_active_change = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = ipairs
  L2_2 = A0_2.spawn_effects
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.Behavior
    L7_2 = L6_2
    L6_2 = L6_2.SetFinish
    L8_2 = false
    L6_2(L7_2, L8_2)
    L6_2 = CS
    L6_2 = L6_2.UnityEngine
    L6_2 = L6_2.Object
    L6_2 = L6_2.Destroy
    L7_2 = L5_2.gameObject
    L6_2(L7_2)
  end
  A0_2.cocoon_go = nil
  A0_2.spawn_effects = nil
end
L4_1._on_dispose = L5_1
return L4_1
