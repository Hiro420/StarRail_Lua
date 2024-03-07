local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.AvatarEducation.AvatarDetail.AvatarSkillListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSkillDetail.AvatarSkillInfoDialogPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarSkillListDialogPanel"
L2_1 = G
L2_1 = L2_1.AvatarSkillListPanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2.skill_panel_table = L1_2
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.skill_icon
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.AvatarSkillInfoDialogPanel
    L8_2 = G
    L8_2 = L8_2.AvatarSkillInfoPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = A0_2._binder
    L8_2 = L8_2.skill_icon
    L8_2 = L8_2[L4_2]
    L6_2(L7_2, L8_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2.skill_panel_table
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = 1
  L3_2 = A0_2.skill_panel_table
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2.skill_panel_table
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.set_icon_checked
    L8_2 = A1_2
    L6_2(L7_2, L8_2)
  end
end
L0_1.set_icon_checked = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = 1
  L2_2 = A0_2.skill_panel_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2.skill_panel_table
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.clear_button_status
    L5_2(L6_2)
  end
end
L0_1.clear_button_status = L1_1
return L0_1
