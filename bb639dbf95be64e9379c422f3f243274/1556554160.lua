local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSelect.BaseAvatarSelectStrategy"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SingleAvatarSelectStrategy"
L2_1 = G
L2_1 = L2_1.BaseAvatarSelectStrategy
L0_1 = L0_1(L1_1, L2_1)
L0_1.max_selection = 1
L0_1.auto_refresh_on_click = true
L0_1.is_selection_top = false
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = {}
  L4_2 = A2_2
  L3_2[1] = L4_2
  return L3_2
end
L0_1._do_select = L1_1
function L1_1(A0_2, A1_2, A2_2)
  return A1_2
end
L0_1._do_unselect = L1_1
return L0_1
