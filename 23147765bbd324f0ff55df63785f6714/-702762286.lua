local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = "Stages/OriginalResPos/InteractiveProp/Chapter01/Chap01_GameplayProp_FarmElement_01/Chap01_GameplayProp_FarmElement_04_Lod0.prefab"
L1_1 = "EnviroSystem/PostProcessVolumeProfile/UI3D_FarmStage_Lookdev.asset"
L2_1 = 9
L3_1 = {}
L4_1 = "Effects/Eff_Prefab/Eff_Scene/Scene_Void/Eff_BossDoman/Eff_Common_BossDomain_01_Inactive_01.prefab"
L5_1 = "Effects/Eff_Prefab/Eff_Scene/Scene_Void/Eff_BossDoman/Eff_Common_BossDomain_01_Inactive_03.prefab"
L3_1[1] = L4_1
L3_1[2] = L5_1
L4_1 = "FESpecialStandByBS1"
L5_1 = G
L5_1 = L5_1.Class
L6_1 = "FarmElementUI3DPage"
L7_1 = G
L7_1 = L7_1.UI3DController
L5_1 = L5_1(L6_1, L7_1)
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.config
  L1_2.prefab_path = "UI/UI3D/UI3DFarmStage/Prefabs/UI3DFramStage.prefab"
  A0_2.monster_go = nil
  L1_2 = {}
  A0_2.spawn_effects = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._get_entity_manager
  L1_2 = L1_2(L2_2)
  A0_2._entity_mgr = L1_2
  A0_2._is_element_loaded = false
end
L5_1.ctor = L6_1
function L6_1(A0_2)
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
  L3_2 = "Element/Monster"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._root_element_monster = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Element/Floor"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._root_element_floor = L1_2
end
L5_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = nil
  L3_2 = G
  L3_2 = L3_2.UtilEngineWrap
  L3_2 = L3_2.IsCsType
  L4_2 = L1_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.BattleGamePhase
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L3_2 = L1_2.BattleInstanceRef
    L2_2 = L3_2.GameWorldRef
  else
    L4_2 = L1_2
    L3_2 = L1_2.GetMainWorld
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
  end
  L3_2 = L2_2.EntityManagerRef
  return L3_2
end
L5_1._get_entity_manager = L6_1
function L6_1(A0_2, A1_2)
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
L5_1.setup_data = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_env
  L1_2(L2_2)
end
L5_1.on_reload_environment = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_bg
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_element
  L1_2(L2_2)
end
L5_1.setup_view = L6_1
function L6_1(A0_2)
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
L5_1._setup_bg = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UI3DCameraCopyUtil
  L1_2 = L1_2.OverrideDofOfEnvVolume
  L3_2 = A0_2
  L2_2 = A0_2.get_camera
  L2_2 = L2_2(L3_2)
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
end
L5_1._setup_env = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._is_element_loaded
  if L1_2 then
    return
  end
  A0_2._is_element_loaded = true
  L1_2 = A0_2._entity_mgr
  L2_2 = L1_2
  L1_2 = L1_2.ClientCreateUI3DFarmEntity
  L3_2 = A0_2._row
  L3_2 = L3_2.UIEntranceMonsterPath
  L4_2 = A0_2._row
  L4_2 = L4_2.UIEntranceMonsterConfig
  L5_2 = A0_2._root_element_monster
  L6_2 = L2_1
  L7_2 = L4_1
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2._entity = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.async_load_prefab
  L3_2 = L0_1
  L4_2 = A0_2._on_floor_loaded
  L5_2 = A0_2
  L6_2 = A0_2._root_element_floor
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L5_1._setup_element = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 then
    L2_2 = A0_2._entity
    if L2_2 ~= nil then
      L2_2 = A0_2._entity
      L3_2 = L2_2
      L2_2 = L2_2.GetComponent
      L4_2 = typeof
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.GameCore
      L5_2 = L5_2.CharacterVisibleComponent
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
      L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
      L4_2 = L2_2
      L3_2 = L2_2.SetVisible
      L5_2 = false
      L6_2 = true
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.GameCore
      L7_2 = L7_2.CharacterVisibleReason
      L7_2 = L7_2.Task
      L3_2(L4_2, L5_2, L6_2, L7_2)
      L3_2 = A0_2._entity
      L4_2 = L3_2
      L3_2 = L3_2.GetComponent
      L5_2 = typeof
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.GameCore
      L6_2 = L6_2.UI3DAnimControllerComponent
      L5_2, L6_2, L7_2 = L5_2(L6_2)
      L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
      L5_2 = L3_2
      L4_2 = L3_2.GetUnityAnimator
      L4_2 = L4_2(L5_2)
      L5_2 = L4_2
      L4_2 = L4_2.CrossFade
      L6_2 = L4_1
      L7_2 = 0
      L4_2(L5_2, L6_2, L7_2)
    end
  end
end
L5_1._on_active_change = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = A1_2
  L2_2 = A1_2.SetLayerRecursively
  L4_2 = L2_1
  L2_2(L3_2, L4_2)
  A0_2.monster_go = A1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_MonoEffectManager
  L3_2 = ipairs
  L4_2 = L3_1
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.Client
    L8_2 = L8_2.MonoEffectManager
    L8_2 = L8_2.GetTriggerEffectParam
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    L9_2 = A0_2.spawn_effects
    L11_2 = L2_2
    L10_2 = L2_2.FireEffect
    L12_2 = L8_2
    L10_2 = L10_2(L11_2, L12_2)
    L9_2[L6_2] = L10_2
    L9_2 = A0_2.spawn_effects
    L9_2 = L9_2[L6_2]
    L9_2 = L9_2.Behavior
    L11_2 = L9_2
    L10_2 = L9_2.SetTargetOverrideGO
    L12_2 = A0_2.monster_go
    L10_2(L11_2, L12_2)
    L11_2 = L9_2
    L10_2 = L9_2.ResetPlugins
    L10_2(L11_2)
  end
  L3_2 = A0_2.monster_go
  L4_2 = L3_2
  L3_2 = L3_2.GetComponent
  L5_2 = typeof
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.Animator
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L5_2 = L3_2
  L4_2 = L3_2.CrossFade
  L6_2 = L4_1
  L7_2 = 0
  L4_2(L5_2, L6_2, L7_2)
end
L5_1._on_monster_loaded = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._floor_go = A1_2
  L2_2 = A0_2._floor_go
  L2_2 = L2_2.transform
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector3
  L3_2 = L3_2.zero
  L2_2.localPosition = L3_2
  L3_2 = A1_2
  L2_2 = A1_2.SetLayerRecursively
  L4_2 = L2_1
  L2_2(L3_2, L4_2)
end
L5_1._on_floor_loaded = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_MonoEffectManager
  L2_2 = ipairs
  L3_2 = A0_2.spawn_effects
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.Behavior
    L8_2 = L7_2
    L7_2 = L7_2.SetFinish
    L9_2 = false
    L7_2(L8_2, L9_2)
    L7_2 = CS
    L7_2 = L7_2.UnityEngine
    L7_2 = L7_2.Object
    L7_2 = L7_2.Destroy
    L8_2 = L6_2.gameObject
    L7_2(L8_2)
  end
  L2_2 = A0_2._entity
  L2_2 = L2_2.UnityGO
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._entity
  L2_2 = L2_2.UnityGO
  L2_2 = L2_2.transform
  L3_2 = L2_2
  L2_2 = L2_2.SetParent
  L4_2 = G
  L4_2 = L4_2.UI3DManager
  L4_2 = L4_2.get_ui3d_root
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2()
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L2_2 = A0_2._entity_mgr
  L2_2 = L2_2.OwnerWorldRef
  L3_2 = L2_2
  L2_2 = L2_2.MakeEntityDie
  L4_2 = A0_2._entity
  L2_2(L3_2, L4_2)
  A0_2.monster_go = nil
  A0_2.spawn_effects = nil
end
L5_1._on_dispose = L6_1
return L5_1
