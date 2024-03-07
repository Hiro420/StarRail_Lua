local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = typeof
L1_1 = CS
L1_1 = L1_1.UnityEngine
L1_1 = L1_1.Animator
L0_1 = L0_1(L1_1)
L1_1 = typeof
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.UI3DMonsterDataComponent
L1_1 = L1_1(L2_1)
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "UI3DAetherSpirit"
L2_1 = L2_1(L3_1)
L3_1 = 0.15
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_entity_manager
  L1_2 = L1_2(L2_2)
  A0_2._entity_mgr = L1_2
  A0_2._entity = nil
  A0_2._animator = nil
end
L2_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_disposed
  if L1_2 then
    return
  end
  L1_2 = A0_2._entity
  L2_2 = L1_2
  L1_2 = L1_2.GetComponent
  L3_2 = L1_1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.RemoveEffectByPath
    L2_2(L3_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2.release_entity
  L2_2(L3_2)
  A0_2._is_disposed = true
end
L2_1.dispose = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2._entity
  if L4_2 ~= nil then
    return
  end
  L4_2 = A0_2._entity_mgr
  L5_2 = L4_2
  L4_2 = L4_2.ClientCreateUI3DMonsterEntity
  L6_2 = A2_2
  L7_2 = A3_2
  L8_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  A0_2._entity = L4_2
  L4_2 = A0_2._entity
  L4_2 = L4_2.UnityGO
  L5_2 = L4_2
  L4_2 = L4_2.GetComponentInChildren
  L6_2 = L0_1
  L7_2 = true
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  A0_2._animator = L4_2
  L4_2 = A0_2._entity
  return L4_2
end
L2_1.load_entity = L4_1
function L4_1(A0_2)
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
  L1_2 = L1_2.UnityGO
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._entity
  L1_2 = L1_2.UnityGO
  L1_2 = L1_2.transform
  L2_2 = L1_2
  L1_2 = L1_2.SetParent
  L3_2 = G
  L3_2 = L3_2.UI3DManager
  L3_2 = L3_2.get_ui3d_root
  L3_2 = L3_2()
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._entity_mgr
  L1_2 = L1_2.OwnerWorldRef
  L2_2 = L1_2
  L1_2 = L1_2.MakeEntityDie
  L3_2 = A0_2._entity
  L1_2(L2_2, L3_2)
end
L2_1.release_entity = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
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
  L2_2 = L2_2.UnityGO
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L2_1.set_entity_visibility = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.get_transform
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    return
  end
  L4_2 = L2_2
  L3_2 = L2_2.SetPositionAndRotation
  L5_2 = A1_2.localPosition
  L6_2 = A1_2.rotation
  L3_2(L4_2, L5_2, L6_2)
end
L2_1.place_to_anchor = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2._entity
  if L2_2 ~= nil then
    L2_2 = A0_2._entity
    L2_2 = L2_2.UnityGO
    if L2_2 ~= nil then
      goto lbl_10
    end
  end
  L2_2 = nil
  do return L2_2 end
  ::lbl_10::
  L3_2 = A0_2
  L2_2 = A0_2.get_transform
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._entity
  L3_2 = L3_2.UnityGO
  L3_2 = L3_2.transform
  L4_2 = L2_2.rotation
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Quaternion
  L5_2 = L5_2.Euler
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.Vector3
  L7_2 = 0
  L8_2 = L3_1
  L8_2 = L8_2 * A1_2
  L9_2 = 0
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2, L8_2, L9_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L4_2 = L4_2 * L5_2
  L3_2.rotation = L4_2
end
L2_1.rotate_spirit = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._entity
  L1_2 = L1_2.UnityGO
  L1_2 = L1_2.transform
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Vector3
  L3_2 = 0
  L4_2 = 0
  L5_2 = 0
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2.localEulerAngles = L2_2
end
L2_1.reset_rotate = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.get_transform
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    return
  end
  L2_2.localScale = A1_2
end
L2_1.set_scale = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._entity
  if L1_2 ~= nil then
    L1_2 = A0_2._entity
    L1_2 = L1_2.UnityGO
    if L1_2 ~= nil then
      goto lbl_10
    end
  end
  L1_2 = nil
  do return L1_2 end
  ::lbl_10::
  L1_2 = A0_2._entity
  L1_2 = L1_2.UnityGO
  L1_2 = L1_2.transform
  return L1_2
end
L2_1.get_transform = L4_1
function L4_1(A0_2)
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
  L2_2 = L2_2.MonsterBodySize
  return L2_2
end
L2_1.get_body_size = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._entity
  L2_2 = L1_2
  L1_2 = L1_2.GetComponent
  L3_2 = L1_1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    L2_2 = 0
    return L2_2
  end
  L2_2 = L1_2.JsonConfigRef
  L2_2 = L2_2.OutlineWidth
  return L2_2
end
L2_1.get_outline_width = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._entity
  L2_2 = L1_2
  L1_2 = L1_2.GetComponent
  L3_2 = L1_1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    L2_2 = false
    return L2_2
  end
  L2_2 = L1_2.JsonConfigRef
  L2_2 = L2_2.EnableFloor
  return L2_2
end
L2_1.is_enable_floor = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == 0 then
    return
  end
  L2_2 = A0_2._entity
  L3_2 = L2_2
  L2_2 = L2_2.GetComponent
  L4_2 = L1_1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L3_2 = nil
    return L3_2
  end
  L4_2 = L2_2
  L3_2 = L2_2.SetOutlineWidth
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L2_1.set_outline_width = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._animator
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._animator
  L3_2 = L2_2
  L2_2 = L2_2.Play
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L2_1.play_anim = L4_1
function L4_1(A0_2, A1_2, A2_2)
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
end
L2_1.set_anim_bool = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.GetMainWorld
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.EntityManagerRef
  return L3_2
end
L2_1._get_entity_manager = L4_1
return L2_1
