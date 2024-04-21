local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Battle.AvatarDialogWeakPointBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarDialogWeakPoint"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
function L2_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = L1_1.SafeSetActive
    L3_2 = A0_2._binder
    L3_2 = L3_2.root
    L4_2 = true
    L2_2(L3_2, L4_2)
  else
    L2_2 = L1_1.SafeSetActive
    L3_2 = A0_2._binder
    L3_2 = L3_2.root
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1.show_weakpoint = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_protected
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_protected
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.show_protected = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_icon
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_icon_protected
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_icon_protected
    L5_2 = A1_2
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1.setup_view = L2_1
return L0_1
