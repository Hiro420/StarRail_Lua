local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.UI3DSystem.UI3DCamera"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "UI3DCameraPanel"
L2_1 = G
L2_1 = L2_1.BaseUI3DPanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._camera_entity = nil
  A0_2._camera_ctrl = nil
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = G
  L3_2 = L3_2.List
  L2_2 = L2_2(L3_2)
  A0_2._camera_states = L2_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._camera_ctrl
  if L2_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = G
  L3_2 = L3_2.UI3DCamera
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._camera_ctrl
  L4_2 = L3_2
  L3_2 = L3_2.CreateCameraState
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = L2_2
  L4_2 = L2_2.set_native
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  return L2_2
end
L0_1.create_camera_state = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._camera_ctrl
  if L2_2 == nil or A1_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L3_2 = A1_2
  L2_2 = A1_2.root
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._camera_ctrl
  L4_2 = L3_2
  L3_2 = L3_2.CreateCameraState
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A1_2
  L4_2 = A1_2.set_native
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._camera_states
  L5_2 = L4_2
  L4_2 = L4_2.Add
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
end
L0_1.add_camera_state = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2._camera_ctrl
  if L3_2 == nil or A1_2 == nil or A2_2 == nil then
    L3_2 = nil
    return L3_2
  end
  L4_2 = A1_2
  L3_2 = A1_2.root
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._camera_ctrl
  L5_2 = L4_2
  L4_2 = L4_2.CreateCameraState
  L6_2 = typeof
  L7_2 = A2_2
  L6_2 = L6_2(L7_2)
  L7_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L6_2 = A1_2
  L5_2 = A1_2.set_native
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._camera_states
  L6_2 = L5_2
  L5_2 = L5_2.Add
  L7_2 = A1_2
  L5_2(L6_2, L7_2)
end
L0_1.add_camera_state_with_type = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._camera_ctrl
  L3_2 = L2_2
  L2_2 = L2_2.EnableMainLightChange
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if A1_2 == false then
    L2_2 = A0_2._camera_ctrl
    L3_2 = L2_2
    L2_2 = L2_2.ResetMainLightDir
    L2_2(L3_2)
  end
end
L0_1.enable_main_light_dir_change = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._camera_ctrl
  L3_2 = L2_2
  L2_2 = L2_2.SetMainLightDirOffset
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_main_light_dir_offset = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    return
  end
  L2_2 = A0_2._camera_ctrl
  L3_2 = L2_2
  L2_2 = L2_2.SetBlend
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_camera_blend = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._camera_ctrl
  L2_2 = L1_2
  L1_2 = L1_2.UpdateCinemachineBrain
  L1_2(L2_2)
end
L0_1.update_cinemachine_brain = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L2_2 = nil
    return L2_2
  end
  if L1_2 == nil then
    return
  end
  L2_2 = L1_2.GetMainWorld
  if L2_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.GetMainWorld
    L2_2 = L2_2(L3_2)
    if L2_2 == nil then
      L3_2 = nil
      return L3_2
    end
    L3_2 = L2_2.EntityManagerRef
    return L3_2
  end
  L2_2 = L1_2.BattleInstanceRef
  if L2_2 ~= nil then
    L2_2 = L1_2.BattleInstanceRef
    L2_2 = L2_2.GameWorldRef
    if L2_2 == nil then
      L3_2 = nil
      return L3_2
    end
    L3_2 = L2_2.EntityManagerRef
    return L3_2
  end
end
L0_1._entity_manager = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.get_camera
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._entity_manager
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    return
  end
  L4_2 = L2_2
  L3_2 = L2_2.ClientCreateUI3DCameraEntity
  L5_2 = L1_2
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = L3_2
  L4_2 = L3_2.GetComponent
  L6_2 = typeof
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.UI3DVirtualCameraComponent
  L6_2, L7_2 = L6_2(L7_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  A0_2._camera_entity = L3_2
  A0_2._camera_ctrl = L4_2
end
L0_1._create_camera_ctrl = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._camera_entity
  if L1_2 ~= nil then
    L1_2 = A0_2._camera_entity
    L1_2 = L1_2.HasDisposed
    if not L1_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L2_2 = A0_2
  L1_2 = A0_2._entity_manager
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L2_2 = L1_2.OwnerWorldRef
  L3_2 = L2_2
  L2_2 = L2_2.MakeEntityDie
  L4_2 = A0_2._camera_entity
  L2_2(L3_2, L4_2)
end
L0_1._release_ui3d_camera_entity = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._create_camera_ctrl
  L1_2(L2_2)
  L1_2 = A0_2._camera_ctrl
  L2_2 = L1_2
  L1_2 = L1_2.ResetInputController
  L1_2(L2_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._release_ui3d_camera_entity
  L1_2(L2_2)
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 then
    L2_2 = A0_2._camera_ctrl
    L3_2 = L2_2
    L2_2 = L2_2.ResetInputController
    L2_2(L3_2)
  end
end
L0_1._on_owner_active_change = L1_1
return L0_1
