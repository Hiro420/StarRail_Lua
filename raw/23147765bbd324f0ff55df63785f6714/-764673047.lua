local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleTargetItemProxyPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_fix_height
  if L1_2 then
    L1_2 = "UI/Common/Widget/CommonChallengeTargetInfoRow_Battle.prefab"
    return L1_2
  else
    L1_2 = "UI/Common/Widget/CommonChallengeTargetInfoRow_WithRoot.prefab"
    return L1_2
  end
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2, A1_2)
  A0_2._is_fix_height = A1_2
end
L0_1.set_is_fix_height = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_bind = L1_1
return L0_1
