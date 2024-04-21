local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Battle.AvatarDialogSkillListIconBattleBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarDialogSkillListIconBattle"
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
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2.click_self = A1_2
  A0_2.click_callback = A2_2
  A0_2.click_data = A3_2
  L4_2 = A0_2.click_callback
  if L4_2 ~= nil then
    L5_2 = A0_2
    L4_2 = A0_2._bind_btn_callback
    L6_2 = A0_2._binder
    L6_2 = L6_2.btn_click
    L7_2 = A0_2.click_callback
    L8_2 = A0_2.click_data
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_skill
  L7_2 = A3_2.IconPath
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = L1_1.SafeSetActive
  L5_2 = A0_2._binder
  L5_2 = L5_2.go_selected
  L6_2 = A3_2.isSelect
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_skill
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = A3_2.Name
  L4_2(L5_2, L6_2)
end
L0_1.setup_view = L3_1
return L0_1
