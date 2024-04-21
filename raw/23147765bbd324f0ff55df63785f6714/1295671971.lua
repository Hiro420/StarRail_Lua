local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Battle.AvatarDialogStarPropertyRowBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarDialogStarPropertyRow"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
L2_1 = G
L2_1 = L2_1.TextExtensions
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.AvatarDialogPropertyRowBinder
  L1_2 = L1_2(L2_2)
  A0_2._binder = L1_2
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
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L2_1.SafeSetText
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_name
  L4_2 = A1_2.Name
  L2_2(L3_2, L4_2)
  L2_2 = L2_1.SafeSetText
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_num
  L4_2 = A1_2.BaseNum
  L2_2(L3_2, L4_2)
  L2_2 = L2_1.SafeSetText
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_addnum
  L4_2 = "+"
  L5_2 = tostring
  L6_2 = A1_2.ChangeNum
  L5_2 = L5_2(L6_2)
  L4_2 = L4_2 .. L5_2
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.ChangeNum
  if L2_2 ~= nil then
    L2_2 = A1_2.ChangeNum
    if L2_2 ~= "0" then
      goto lbl_32
    end
  end
  L2_2 = L1_1.SafeSetActive
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_addnum
  L4_2 = false
  L2_2(L3_2, L4_2)
  goto lbl_37
  ::lbl_32::
  L2_2 = L1_1.SafeSetActive
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_addnum
  L4_2 = true
  L2_2(L3_2, L4_2)
  ::lbl_37::
  L2_2 = A1_2.IconPath
  if L2_2 == "0" then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_property
  L5_2 = A1_2.IconPath
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.setup_view = L3_1
return L0_1
