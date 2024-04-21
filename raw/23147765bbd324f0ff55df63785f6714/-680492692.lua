local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.AvatarSkill.AvatarSkillDetailDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AvatarSkill.AvatarSkillDetailInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AvatarSkill.AvatarSkillDetailInfoPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarSkillDetailDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AvatarSkillDetailDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._avatar_data = A1_2
  A0_2._skill_id = A2_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_back
  L4_2 = A0_2._btn_back_onclick
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.AvatarSkillDetailInfoPanel
  L4_2 = G
  L4_2 = L4_2.AvatarSkillDetailInfoPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._skill_info_panel = L1_2
  L1_2 = A0_2._skill_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.skill_info_root
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._add_handlers = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._skill_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._avatar_data
  L4_2 = A0_2._skill_id
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._btn_back_onclick = L1_1
return L0_1
