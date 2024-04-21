local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.EvolveBuildSkillPointItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "EvolveBuildSkillPointItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2[1]
  L3_2 = A1_2[2]
  A0_2._is_recommend = L3_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.box_act
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L2_2 or L6_2
  if L2_2 then
    L6_2 = not L3_2
  end
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.box_recommend_act
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L2_2 or L6_2
  if L2_2 then
    L6_2 = L3_2
  end
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.normal_bg
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.recommend_bg
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_recommend
  L2_2 = A0_2._binder
  L2_2 = L2_2.box_act
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.box_recommend_act
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim
  L3_2 = L2_2
  L2_2 = L2_2.Play
  if L1_2 then
    L4_2 = "UI_EvolveRecommendSkillPoint_FadeIn"
    if L4_2 then
      goto lbl_21
    end
  end
  L4_2 = "UI_EvolveSkillPoint_FadeIn"
  ::lbl_21::
  L2_2(L3_2, L4_2)
end
L0_1.play_level_up_anim = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_recommend
  L2_2 = A0_2._binder
  L2_2 = L2_2.box_act
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.box_recommend_act
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim
  L3_2 = L2_2
  L2_2 = L2_2.Play
  if L1_2 then
    L4_2 = "UI_EvolveRecommendSkillPoint_FadeOut"
    if L4_2 then
      goto lbl_21
    end
  end
  L4_2 = "UI_EvolveSkillPoint_FadeOut"
  ::lbl_21::
  L2_2(L3_2, L4_2)
end
L0_1.play_level_down_anim = L1_1
return L0_1
