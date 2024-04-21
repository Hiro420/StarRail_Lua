local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarEidolonSkillGroupPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2.skill_icon_path = L1_2
  L1_2 = A0_2.skill_icon_path
  L1_2[1] = "SkillTreeList/Point01"
  L1_2 = A0_2.skill_icon_path
  L1_2[2] = "SkillTreeList/Point02"
  L1_2 = A0_2.skill_icon_path
  L1_2[3] = "SkillTreeList/Point03"
  L1_2 = A0_2.skill_icon_path
  L1_2[4] = "SkillTreeList/Point04"
  L1_2 = A0_2.skill_icon_path
  L1_2[5] = "SkillTreeList/Point05"
  L1_2 = A0_2.skill_icon_path
  L1_2[6] = "SkillTreeList/Point06"
  L1_2 = {}
  A0_2.skill_panel_list = L1_2
  L1_2 = 1
  L2_2 = A0_2.skill_icon_path
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2._create_panel
    L7_2 = G
    L7_2 = L7_2.AvatarEidolonSkillIconPanel
    L8_2 = G
    L8_2 = L8_2.AvatarEidolonSkillIconPanelBinder
    L9_2 = A0_2.skill_icon_path
    L9_2 = L9_2[L4_2]
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2.skill_panel_list
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L1_1
return L0_1
