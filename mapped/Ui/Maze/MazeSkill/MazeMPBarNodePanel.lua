local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeMPBarNodePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.UIContextAssetLoader
L1_1 = L1_1()
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_progress
  L2_2 = L2_2.type
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L3_2 = L3_2.Type
  L3_2 = L3_2.Filled
  if L2_2 == L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.img_progress
    L2_2.fillAmount = A1_2
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.img_progress
    L3_2 = 0 < A1_2
    L2_2.enabled = L3_2
  end
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 == nil then
    return
  elseif A1_2 == "MpPoint_Increase" then
    L2_2 = L1_1
    L3_2 = L2_2
    L2_2 = L2_2.TryLoadEffectTo
    L4_2 = A0_2._binder
    L4_2 = L4_2.effect_root
    L5_2 = "UI/Maze/Widget/Effs/MP_Increase.prefab"
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    if L2_2 == nil then
      return
    end
    L3_2 = G
    L3_2 = L3_2.ComponentExtensions
    L3_2 = L3_2.SafeGetCmpt
    L4_2 = typeof
    L5_2 = CS
    L5_2 = L5_2.UnityEngine
    L5_2 = L5_2.Animation
    L4_2 = L4_2(L5_2)
    L5_2 = L2_2.transform
    L6_2 = ""
    L7_2 = false
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    L5_2 = L3_2
    L4_2 = L3_2.Play
    L6_2 = "MazeMpEff_Trigger"
    L4_2(L5_2, L6_2)
  elseif A1_2 == "MpPoint_Decrease" then
    L2_2 = L1_1
    L3_2 = L2_2
    L2_2 = L2_2.TryLoadEffectTo
    L4_2 = A0_2._binder
    L4_2 = L4_2.effect_root
    L5_2 = "UI/Maze/Widget/Effs/MP_Decrease.prefab"
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    if L2_2 == nil then
      return
    end
    L3_2 = G
    L3_2 = L3_2.ComponentExtensions
    L3_2 = L3_2.SafeGetCmpt
    L4_2 = typeof
    L5_2 = CS
    L5_2 = L5_2.UnityEngine
    L5_2 = L5_2.Animation
    L4_2 = L4_2(L5_2)
    L5_2 = L2_2.transform
    L6_2 = ""
    L7_2 = false
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    L5_2 = L3_2
    L4_2 = L3_2.Play
    L6_2 = "MazeMpEff_Trigger"
    L4_2(L5_2, L6_2)
  end
end
L0_1.play_animation = L2_1
return L0_1
