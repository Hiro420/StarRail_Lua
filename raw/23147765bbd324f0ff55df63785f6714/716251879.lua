local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.Talent.RogueTalentUnlockConditionPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueTalentUnlockConditionPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 0.27450980392156865
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L5_2 = A1_2
  L4_2 = A1_2.GetUnlockDesc
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A1_2
  L2_2 = A1_2.IsFinished
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._change_alpha
    L4_2 = A0_2._binder
    L4_2 = L4_2.unlocked_mark_img
    L5_2 = 1
    L2_2(L3_2, L4_2, L5_2)
    L3_2 = A0_2
    L2_2 = A0_2._change_alpha
    L4_2 = A0_2._binder
    L4_2 = L4_2.desc
    L5_2 = 1
    L2_2(L3_2, L4_2, L5_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._change_alpha
    L4_2 = A0_2._binder
    L4_2 = L4_2.unlocked_mark_img
    L5_2 = L1_1
    L2_2(L3_2, L4_2, L5_2)
    L3_2 = A0_2
    L2_2 = A0_2._change_alpha
    L4_2 = A0_2._binder
    L4_2 = L4_2.desc
    L5_2 = L1_1
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A1_2.color
  L3_2.a = A2_2
  A1_2.color = L3_2
end
L0_1._change_alpha = L2_1
return L0_1
