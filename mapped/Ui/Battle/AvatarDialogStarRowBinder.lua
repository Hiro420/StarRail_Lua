local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarDialogStarRowBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
function L2_1()
  local L0_2, L1_2
  L0_2 = "UI/Monster/WidgetV2/StarRow.prefab"
  return L0_2
end
L0_1.get_prefab_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Dark"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.go_dark = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Light"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.go_light = L1_2
end
L0_1._on_bind = L2_1
return L0_1
