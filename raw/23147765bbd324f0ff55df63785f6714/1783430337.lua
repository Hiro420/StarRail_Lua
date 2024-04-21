local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.ActivityEvolveBuildRaccoonTalkPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.ActivityEvolveBuildUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityEvolveBuildRaccoonTalkPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_EvolveBuild_SpecialRewardTalk"
function L2_1(A0_2)
  local L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.ActivityEvolveBuildUtils
  L1_2 = L1_2.get_cur_stage_raccoon_data
  L1_2, L2_2 = L1_2()
  L3_2 = G
  L3_2 = L3_2.ActivityEvolveBuildUtils
  L3_2 = L3_2.is_in_rookie_period_stage
  L3_2 = L3_2()
  if L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_talk
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L1_1
    L3_2(L4_2, L5_2)
  elseif L1_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_talk
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L1_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = G
  L3_2 = L3_2.SuperDebug
  L3_2 = L3_2.LogFormat
  L4_2 = "[hwx] imgPath:"
  L5_2 = tostring
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  L4_2 = L4_2 .. L5_2
  L3_2(L4_2)
  if L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._async_load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_raccoon
    L6_2 = L2_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1.setup_view = L2_1
return L0_1
