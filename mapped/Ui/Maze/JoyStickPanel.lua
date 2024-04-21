local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "JoyStickPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_joystick
  L3_2 = A0_2
  L2_2 = A0_2.instantiate_object
  L4_2 = L1_2.Prefab
  L5_2 = L1_2.transform
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = L1_1.SafeGetCmpt
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.MonoJoyStickProvider
  L4_2 = L4_2(L5_2)
  L5_2 = L2_2
  L6_2 = ""
  L7_2 = ""
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  A0_2._joystick = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_joystick
  L3_2(L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_pc_or_ps_or_mobile_gamepad_mode
  L1_2 = L1_2()
  if not L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_GamePhaseManager
    L2_2 = L1_2
    L1_2 = L1_2.GetCurrentPhase
    L1_2 = L1_2(L2_2)
    if L1_2 ~= nil then
      L3_2 = L1_2
      L2_2 = L1_2.RemoveInputSource
      L4_2 = A0_2._joystick
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_dispose = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.is_pc_layout
  L4_2 = L4_2()
  L4_2 = not L4_2 and L4_2
  L2_2(L3_2, L4_2)
end
L0_1.set_hud_template = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_pc_or_ps_or_mobile_gamepad_mode
  L1_2 = L1_2()
  if not L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_GamePhaseManager
    L2_2 = L1_2
    L1_2 = L1_2.GetCurrentPhase
    L1_2 = L1_2(L2_2)
    if L1_2 ~= nil then
      L3_2 = L1_2
      L2_2 = L1_2.AddInputSource
      L4_2 = A0_2._joystick
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._setup_joystick = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L1_1.SafeGetCmpt
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.RectTransform
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_joystick
  L6_2 = "Joystick(Clone)/GraphicCast"
  L7_2 = ""
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  if L3_2 ~= nil then
    L4_2 = CS
    L4_2 = L4_2.UnityEngine
    L4_2 = L4_2.Vector3
    L5_2 = A1_2
    L6_2 = A2_2
    L7_2 = L3_2.localScale
    L7_2 = L7_2.z
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2.localScale = L4_2
  end
end
L0_1.set_response_area_scale = L2_1
return L0_1
