local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSelect.MultiAvatarSelectPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSelect.MultiAvatarSelectPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TeamMemberMultiListSelectPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MultiAvatarSelectPanel
  L4_2 = G
  L4_2 = L4_2.MultiAvatarSelectPanelBinder
  L5_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_avatar_select = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "TitlePanel"
  L4_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if L1_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_bind = L1_1
return L0_1
