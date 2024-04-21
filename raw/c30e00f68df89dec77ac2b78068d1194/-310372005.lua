local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.EvolveBuildStatsBarBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.EvolveBuildConst"
L0_1 = L0_1(L1_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.EvolveGearType
L1_1 = L1_1.Forge
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "EvolveBuildStatsBar"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_weapon_icon
  L4_2 = A1_2.weapon
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_num
  L4_2 = A1_2.damage
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.max_damage
  if L2_2 <= 0 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_bar
    L4_2 = 0
    L5_2 = 0
    L2_2(L3_2, L4_2, L5_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._setup_bar
    L4_2 = A1_2.hp_damage
    L5_2 = A1_2.max_damage
    L4_2 = L4_2 / L5_2
    L5_2 = A1_2.damage
    L6_2 = A1_2.hp_damage
    L5_2 = L5_2 - L6_2
    L6_2 = A1_2.max_damage
    L5_2 = L5_2 / L6_2
    L2_2(L3_2, L4_2, L5_2)
  end
end
L2_1.setup_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.weapon_icon
  L5_2 = A1_2.IconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A1_2.GearType
  L3_2 = A0_2._binder
  L3_2 = L3_2.super_weapon_bg
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L1_1
  L5_2 = L2_2 == L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.normal_weapon_bg
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L1_1
  L5_2 = L2_2 ~= L5_2
  L3_2(L4_2, L5_2)
end
L2_1._setup_weapon_icon = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L0_1.NumTextFormat
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L2_1._setup_num = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = G
  L3_2 = L3_2.MathUtils
  L3_2 = L3_2.get_clamp
  L4_2 = A1_2
  L5_2 = 1.0E-4
  L6_2 = 1
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A1_2 = L3_2
  L3_2 = G
  L3_2 = L3_2.MathUtils
  L3_2 = L3_2.get_clamp
  L4_2 = A2_2
  L5_2 = 1.0E-4
  L6_2 = 1
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A2_2 = L3_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CoroutineUtils
  L3_2 = L3_2.InvokeNextFrame
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = A0_2._binder
    L0_3 = L0_3.progress_panel
    L0_3 = L0_3.rect
    L0_3 = L0_3.height
    L1_3 = A1_2
    L1_3 = L1_3 * L0_3
    L2_3 = A2_2
    L2_3 = L2_3 * L0_3
    L3_3 = A0_2._binder
    L3_3 = L3_3.bar1
    L4_3 = L3_3
    L3_3 = L3_3.SetSizeWithCurrentAnchors
    L5_3 = CS
    L5_3 = L5_3.UnityEngine
    L5_3 = L5_3.RectTransform
    L5_3 = L5_3.Axis
    L5_3 = L5_3.Vertical
    L6_3 = L1_3
    L3_3(L4_3, L5_3, L6_3)
    L3_3 = A0_2._binder
    L3_3 = L3_3.bar2
    L4_3 = L3_3
    L3_3 = L3_3.SetSizeWithCurrentAnchors
    L5_3 = CS
    L5_3 = L5_3.UnityEngine
    L5_3 = L5_3.RectTransform
    L5_3 = L5_3.Axis
    L5_3 = L5_3.Vertical
    L6_3 = L2_3
    L3_3(L4_3, L5_3, L6_3)
  end
  L3_2(L4_2)
  L3_2 = A0_2._anim_played
  if not L3_2 then
    A0_2._anim_played = true
    L3_2 = "EvolveBuildStatisticDataInfo_ProgressBar_FadeIn"
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.UIAnimationUtils
    L4_2 = L4_2.GetAnimationState
    L5_2 = A0_2._binder
    L5_2 = L5_2.bar1_anim
    L6_2 = L3_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = 1.0 / A1_2
    L4_2.speed = L5_2
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.UIAnimationUtils
    L4_2 = L4_2.GetAnimationState
    L5_2 = A0_2._binder
    L5_2 = L5_2.bar2_anim
    L6_2 = L3_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = 1.0 / A2_2
    L4_2.speed = L5_2
    L4_2 = A0_2._binder
    L4_2 = L4_2.bar1_anim
    L5_2 = L4_2
    L4_2 = L4_2.Play
    L4_2(L5_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.bar2
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.num
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.bar1_anim_event
    L5_2 = L4_2
    L4_2 = L4_2.AddAnimationEvent
    L6_2 = L3_2
    function L7_2()
      local L0_3, L1_3, L2_3
      L0_3 = A0_2._binder
      L0_3 = L0_3.bar2
      L1_3 = L0_3
      L0_3 = L0_3.SafeSetActive
      L2_3 = true
      L0_3(L1_3, L2_3)
      L0_3 = CS
      L0_3 = L0_3.RPG
      L0_3 = L0_3.Client
      L0_3 = L0_3.UIAnimationUtils
      L0_3 = L0_3.PlayFromBegin
      L1_3 = A0_2._binder
      L1_3 = L1_3.bar2_anim
      L0_3(L1_3)
    end
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.bar2_anim_event
    L5_2 = L4_2
    L4_2 = L4_2.AddAnimationEvent
    L6_2 = L3_2
    function L7_2()
      local L0_3, L1_3, L2_3
      L0_3 = A0_2._binder
      L0_3 = L0_3.num
      L1_3 = L0_3
      L0_3 = L0_3.SafeSetActive
      L2_3 = true
      L0_3(L1_3, L2_3)
      L0_3 = CS
      L0_3 = L0_3.RPG
      L0_3 = L0_3.Client
      L0_3 = L0_3.UIAnimationUtils
      L0_3 = L0_3.PlayFromBegin
      L1_3 = A0_2._binder
      L1_3 = L1_3.num_anim
      L0_3(L1_3)
    end
    L4_2(L5_2, L6_2, L7_2)
  end
end
L2_1._setup_bar = L3_1
return L2_1
