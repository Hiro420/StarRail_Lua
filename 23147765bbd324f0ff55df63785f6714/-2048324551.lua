local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Battle.AvatarDialogSkillDetailsBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarDialogSkillDetails"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
L2_1 = G
L2_1 = L2_1.TextExtensions
function L3_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L2_1.SafeSetText
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_skillname
  L4_2 = A1_2.Name
  L2_2(L3_2, L4_2)
  L2_2 = L2_1.SafeSetText
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_skilltype
  L4_2 = A1_2.Tag
  L2_2(L3_2, L4_2)
  L2_2 = L2_1.SafeSetText
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_Skilldesc
  L4_2 = A1_2.Desc
  L2_2(L3_2, L4_2)
  L2_2 = L1_1.SafeSetActive
  L3_2 = A0_2._binder
  L3_2 = L3_2.go_BP
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L3_1
return L0_1
