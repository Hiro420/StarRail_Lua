local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSelect.AvatarSelectPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSelect.AvatarSelectPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Avatar.Panels.RogueAvatarListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Avatar.Panels.RogueAvatarListPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TreasureDungeonAvatarSelectPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.AvatarSelectPanel
  L4_2 = G
  L4_2 = L4_2.AvatarSelectPanelBinder
  L5_2 = "MemberList"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_avatar_select = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RogueAvatarListPanel
  L4_2 = G
  L4_2 = L4_2.RogueAvatarListPanelBinder
  L5_2 = "RightPanel/MonsterDetailPanel/Viewport/Content/TeamEdit/CharacterList/TeamList"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_avatar_list = L1_2
end
L0_1._on_bind = L1_1
return L0_1
