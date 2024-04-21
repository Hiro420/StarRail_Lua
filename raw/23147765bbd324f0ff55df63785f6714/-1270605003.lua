local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "UI3DAvatar"
L0_1 = L0_1(L1_1)
L1_1 = typeof
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.UI3DCharacterDataComponent
L1_1 = L1_1(L2_1)
L2_1 = typeof
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.UI3DModelRotateComponent
L2_1 = L2_1(L3_1)
L3_1 = typeof
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.CharacterModelComponent
L3_1 = L3_1(L4_1)
L4_1 = typeof
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.UI3DAnimControllerComponent
L4_1 = L4_1(L5_1)
L5_1 = typeof
L6_1 = CS
L6_1 = L6_1.UnityEngine
L6_1 = L6_1.Animator
L5_1 = L5_1(L6_1)
L6_1 = G
L6_1 = L6_1.ComponentExtensions
L7_1 = "Detail"
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L4_2 = A0_2
  L3_2 = A0_2._get_entity_manager
  L3_2 = L3_2(L4_2)
  A0_2._entity_mgr = L3_2
  A0_2._avatar_data = A1_2
  L3_2 = A1_2.RealID
  A0_2._avatar_real_id = L3_2
  A0_2._skin_id = A2_2
  A0_2._entity = nil
  A0_2._animator = nil
  A0_2._is_active = false
  A0_2._model_loaded = false
end
L0_1.ctor = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_disposed
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.release_entity
  L1_2(L2_2)
  A0_2._is_disposed = true
end
L0_1.dispose = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._entity
  if L2_2 ~= nil then
    return
  end
  L2_2 = A0_2._avatar_data
  if L2_2 ~= nil then
    L2_2 = A0_2._avatar_data
    L2_2 = L2_2.Row
    if L2_2 ~= nil then
      goto lbl_13
    end
  end
  do return end
  ::lbl_13::
  L2_2 = A0_2._skin_id
  if not L2_2 then
    L2_2 = A0_2._avatar_data
    L2_2 = L2_2.DressedSkinID
  end
  L3_2 = A0_2._entity_mgr
  L4_2 = L3_2
  L3_2 = L3_2.ClientCreateUI3DModelEntity
  L5_2 = A0_2._avatar_data
  L6_2 = L2_2
  L7_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  A0_2._entity = L3_2
end
L0_1.create_entity = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._entity
  if L1_2 ~= nil then
    L1_2 = A0_2._entity
    L1_2 = L1_2.HasDisposed
    if not L1_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = A0_2._model_loaded
  if L1_2 then
    L1_2 = A0_2._entity
    L1_2 = L1_2.UnityGO
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2.get_transform
    L1_2 = L1_2(L2_2)
    L2_2 = L1_2
    L1_2 = L1_2.SetParent
    L3_2 = G
    L3_2 = L3_2.UI3DManager
    L3_2 = L3_2.get_ui3d_root
    L3_2 = L3_2()
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2.reset_animator_state
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.set_eye_look
    L3_2 = nil
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.clear_load_callback
  L1_2(L2_2)
  A0_2._model_loaded = false
  L1_2 = A0_2._entity_mgr
  L1_2 = L1_2.OwnerWorldRef
  L2_2 = L1_2
  L1_2 = L1_2.MakeEntityDie
  L3_2 = A0_2._entity
  L1_2(L2_2, L3_2)
end
L0_1.release_entity = L8_1
function L8_1(A0_2)
  local L1_2
  A0_2._load_callback = nil
  A0_2._load_callback_self = nil
end
L0_1.clear_load_callback = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._is_active = A1_2
  L2_2 = A0_2._entity
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._entity
  L3_2 = L2_2
  L2_2 = L2_2.GetComponent
  L4_2 = L1_1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    return
  end
  L4_2 = L2_2
  L3_2 = L2_2.SetVisible
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1.set_visible = L8_1
function L8_1(A0_2, A1_2)
  A0_2._is_in_use = A1_2
end
L0_1.set_in_use = L8_1
function L8_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_in_use
  return L1_2
end
L0_1.is_in_use = L8_1
function L8_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_active
  return L1_2
end
L0_1.is_visible = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._is_active
  if L2_2 == false and A1_2 == true then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.set_visible
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_visible_when_active_change = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._entity
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._entity
  L3_2 = L2_2
  L2_2 = L2_2.GetComponent
  L4_2 = L2_1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    return
  end
  L2_2.EnableDragRotate = A1_2
end
L0_1.enable_rotate = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._weapon
  if L2_2 == nil then
    L2_2 = L6_1.SafeGetCmpt
    L3_2 = typeof
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.AttachPointMapping
    L3_2 = L3_2(L4_2)
    L4_2 = A0_2._cache_trans
    L5_2 = ""
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L4_2 = L2_2
    L3_2 = L2_2.FindAttachPoint
    L5_2 = "Weapon"
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = G
    L4_2 = L4_2.ComponentExtensions
    L4_2 = L4_2.SafeGetCmpt
    L5_2 = typeof
    L6_2 = CS
    L6_2 = L6_2.UnityEngine
    L6_2 = L6_2.SkinnedMeshRenderer
    L5_2 = L5_2(L6_2)
    L6_2 = L3_2
    L7_2 = ""
    L8_2 = false
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
    A0_2._weapon = L4_2
  end
  L2_2 = A0_2._weapon
  if L2_2 ~= nil then
    L2_2 = A0_2._weapon
    L2_2.enabled = A1_2
  end
end
L0_1.show_weapon = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._entity
  L2_2 = L1_2
  L1_2 = L1_2.GetComponent
  L3_2 = L2_1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    return
  end
  L3_2 = L1_2
  L2_2 = L1_2.BlendToOrigin
  L2_2(L3_2)
end
L0_1.blend_rotate_to_origin = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._entity
  L3_2 = L2_2
  L2_2 = L2_2.GetComponent
  L4_2 = L1_1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    return
  end
  L2_2.EnableIdleTimer = A1_2
end
L0_1.enable_idle_anim = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if not A1_2 then
    A1_2 = 0
  end
  L2_2 = A0_2._entity
  L3_2 = L2_2
  L2_2 = L2_2.GetComponent
  L4_2 = L4_1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    return
  end
  L4_2 = L2_2
  L3_2 = L2_2.ResetAnimStateToIdle
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1.reset_animator_state = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._entity
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._entity
  L2_2 = L1_2
  L1_2 = L1_2.GetComponent
  L3_2 = L1_1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    return
  end
  L3_2 = L1_2
  L2_2 = L1_2.BeginDrag
  L2_2(L3_2)
end
L0_1.begin_drag = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._entity
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._entity
  L2_2 = L1_2
  L1_2 = L1_2.GetComponent
  L3_2 = L1_1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    return
  end
  L3_2 = L1_2
  L2_2 = L1_2.EndDrag
  L2_2(L3_2)
end
L0_1.end_drag = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 == nil then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2.get_transform
  L3_2 = L3_2(L4_2)
  if L3_2 == nil then
    return
  end
  L4_2 = nil
  if A2_2 ~= nil then
    L5_2 = A0_2._entity
    L6_2 = L5_2
    L5_2 = L5_2.GetComponent
    L7_2 = L1_1
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 ~= nil then
      L7_2 = L5_2
      L6_2 = L5_2.GetTeamRotationByIndex
      L8_2 = A2_2
      L6_2 = L6_2(L7_2, L8_2)
      L4_2 = L6_2
    end
  end
  if L4_2 == nil then
    L4_2 = A1_2.rotation
  end
  L6_2 = L3_2
  L5_2 = L3_2.SetPositionAndRotation
  L7_2 = A1_2.position
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
end
L0_1.place_to_anchor = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._animator
  if L3_2 == nil then
    return
  end
  L3_2 = A0_2._animator
  L4_2 = L3_2
  L3_2 = L3_2.SetBool
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._animator
  L4_2 = L3_2
  L3_2 = L3_2.Update
  L5_2 = 0
  L3_2(L4_2, L5_2)
end
L0_1.trigger_anim_param = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._animator
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._animator
  L3_2 = L2_2
  L2_2 = L2_2.SetTrigger
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_anim_trigger = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2._entity
  if L3_2 == nil then
    return
  end
  L3_2 = A0_2._entity
  L4_2 = L3_2
  L3_2 = L3_2.GetComponent
  L5_2 = L1_1
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 == nil then
    return
  end
  if A2_2 == nil then
    A2_2 = true
  end
  L5_2 = L3_2
  L4_2 = L3_2.RemoveEffectByPath
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.remove_effect = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._entity
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._entity
  L3_2 = L2_2
  L2_2 = L2_2.GetComponent
  L4_2 = L1_1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    return
  end
  L4_2 = L2_2
  L3_2 = L2_2.FireEffectByPath
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1.fire_effect = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._entity
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._entity
  L3_2 = L2_2
  L2_2 = L2_2.GetComponent
  L4_2 = L1_1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    return
  end
  L4_2 = L2_2
  L3_2 = L2_2.SetLookAt
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1.set_eye_look = L8_1
function L8_1(A0_2)
  local L1_2
  L1_2 = A0_2._avatar_data
  if L1_2 == nil then
    L1_2 = 0
    return L1_2
  end
  L1_2 = A0_2._avatar_data
  L1_2 = L1_2.ID
  return L1_2
end
L0_1.get_avatar_id = L8_1
function L8_1(A0_2)
  local L1_2
  L1_2 = A0_2._avatar_real_id
  return L1_2
end
L0_1.get_avatar_real_id = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._skin_id
  if not L2_2 then
    L2_2 = A0_2._avatar_data
    L2_2 = L2_2.DressedSkinID
  end
  L3_2 = A1_2 or L3_2
  if not A1_2 then
    L3_2 = A0_2._avatar_data
    L3_2 = L3_2.DressedSkinID
  end
  L4_2 = L2_2 == L3_2
  return L4_2
end
L0_1.is_dress_same_skin = L8_1
function L8_1(A0_2)
  local L1_2
  L1_2 = A0_2._avatar_data
  return L1_2
end
L0_1.get_avatar_data = L8_1
function L8_1(A0_2)
  local L1_2
  L1_2 = A0_2._entity
  return L1_2
end
L0_1.get_entity = L8_1
function L8_1(A0_2)
  local L1_2
  L1_2 = A0_2._animator
  return L1_2
end
L0_1.get_animator = L8_1
function L8_1(A0_2)
  local L1_2
  L1_2 = A0_2._cache_trans
  if L1_2 ~= nil then
    L1_2 = A0_2._cache_trans
    return L1_2
  end
  L1_2 = A0_2._entity
  if L1_2 ~= nil then
    L1_2 = A0_2._entity
    L1_2 = L1_2.UnityGO
    if L1_2 ~= nil then
      goto lbl_15
    end
  end
  L1_2 = nil
  do return L1_2 end
  ::lbl_15::
  L1_2 = A0_2._entity
  L1_2 = L1_2.UnityGO
  L1_2 = L1_2.transform
  A0_2._cache_trans = L1_2
  L1_2 = A0_2._cache_trans
  return L1_2
end
L0_1.get_transform = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L6_1.SafeAddExclusiveCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.ManikinCharaHoloMat
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._cache_trans
  L4_2 = ""
  L5_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1.add_eidolon_effect = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.UnityGO
  L3_2 = L2_2
  L2_2 = L2_2.GetComponentInChildren
  L4_2 = L5_1
  L5_2 = true
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._animator = L2_2
  L2_2 = A1_2.UnityGO
  L2_2 = L2_2.transform
  A0_2._cache_trans = L2_2
  A0_2._model_loaded = true
  L2_2 = A0_2._load_callback
  if L2_2 ~= nil then
    L2_2 = A0_2._load_callback
    L3_2 = A0_2._load_callback_self
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_entity_loaded = L8_1
function L8_1(A0_2)
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
L0_1._get_entity_manager = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._entity
  L2_2 = L1_2
  L1_2 = L1_2.GetComponent
  L3_2 = L1_1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L3_2 = L1_2
  L2_2 = L1_2.GetAllRenderers
  return L2_2(L3_2)
end
L0_1.get_all_renderers = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._entity
  L2_2 = L1_2
  L1_2 = L1_2.GetComponent
  L3_2 = L1_1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = L1_2.JsonConfigRef
  L2_2 = L2_2.CharacterBodySize
  return L2_2
end
L0_1.get_body_size = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._entity
  if L2_2 ~= nil then
    L2_2 = A0_2._entity
    L2_2 = L2_2.UnityGO
    if L2_2 ~= nil then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L2_2 = A0_2._entity
  L3_2 = L2_2
  L2_2 = L2_2.GetComponent
  L4_2 = L3_1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    return
  end
  L4_2 = L2_2
  L3_2 = L2_2.SetUI3DTeamShadow
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1.set_team_shadow = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._entity
  if L1_2 ~= nil then
    L1_2 = A0_2._entity
    L1_2 = L1_2.UnityGO
    if L1_2 ~= nil then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = A0_2._entity
  L2_2 = L1_2
  L1_2 = L1_2.GetComponent
  L3_2 = L3_1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    return
  end
  L3_2 = L1_2
  L2_2 = L1_2.SetUI3DSingleShadow
  L2_2(L3_2)
end
L0_1.set_single_shadow = L8_1
function L8_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2._model_loaded
  if L4_2 then
    if A2_2 ~= nil then
      L4_2 = A2_2
      L5_2 = A3_2
      L6_2 = A0_2
      L4_2(L5_2, L6_2)
    end
    return
  end
  L4_2 = A0_2._entity
  L5_2 = L4_2
  L4_2 = L4_2.GetComponent
  L6_2 = L3_1
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 == nil then
    return
  end
  A0_2._load_callback = A2_2
  A0_2._load_callback_self = A3_2
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._on_entity_loaded
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L7_2 = L4_2
  L6_2 = L4_2.WaitModelArtLoadFinish
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.LoadModel
  L8_2 = not A1_2
  L6_2(L7_2, L8_2)
end
L0_1.load_model = L8_1
return L0_1
