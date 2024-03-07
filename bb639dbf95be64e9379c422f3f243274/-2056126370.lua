local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.UI3DSystem.UI3DCameraPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "EnterDreamUI3DPage"
L2_1 = G
L2_1 = L2_1.UI3DController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.config
  L1_2.prefab_path = "UI/UI3D/ScreenDream/Prefab/Eff_ScreenDream.prefab"
  A0_2._camera = nil
  A0_2._is_enterDream = true
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_enterDream
  if L1_2 then
    L1_2 = A0_2._anim_root
    L2_2 = L1_2
    L1_2 = L1_2.SetTrigger
    L3_2 = "FadeIn"
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._anim_root
    L2_2 = L1_2
    L1_2 = L1_2.SetTrigger
    L3_2 = "FadeIn_Back"
    L1_2(L2_2, L3_2)
  end
end
L0_1.play_fade_in_anim = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_enterDream
  if L1_2 then
    L1_2 = A0_2._anim_root
    L2_2 = L1_2
    L1_2 = L1_2.SetTrigger
    L3_2 = "FadeOut"
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._anim_root
    L2_2 = L1_2
    L1_2 = L1_2.SetTrigger
    L3_2 = "FadeOut_Back"
    L1_2(L2_2, L3_2)
  end
end
L0_1.play_fade_out_anim = L1_1
function L1_1(A0_2, A1_2)
  A0_2._is_enterDream = A1_2
end
L0_1.set_dream_type = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animator
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._anim_root = L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._setup_view = L1_1
return L0_1
