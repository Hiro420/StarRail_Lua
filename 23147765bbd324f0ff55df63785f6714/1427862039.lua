local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Battle.AvatarDialogPropertyRowBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarDialogPropertyRow"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
L2_1 = G
L2_1 = L2_1.TextExtensions
L3_1 = "#87e0ff"
L4_1 = "#eb4d3d"
function L5_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
end
L0_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2
end
L0_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = G
  L2_2 = L2_2.UIColorUtils
  L2_2 = L2_2.GetColor
  L3_2 = L3_1
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L3_2 = L3_2.UIColorUtils
  L3_2 = L3_2.GetColor
  L4_2 = L4_1
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_name
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = A1_2.NameID
  L4_2(L5_2, L6_2)
  L4_2 = L2_1.SafeSetText
  L5_2 = A0_2._binder
  L5_2 = L5_2.txt_num
  L6_2 = A1_2.BaseNum
  L4_2(L5_2, L6_2)
  L4_2 = A1_2.ChangeNum
  if L4_2 == nil then
    L4_2 = L1_1.SafeSetActive
    L5_2 = A0_2._binder
    L5_2 = L5_2.txt_addnum
    L6_2 = false
    L4_2(L5_2, L6_2)
  else
    L4_2 = L1_1.SafeSetActive
    L5_2 = A0_2._binder
    L5_2 = L5_2.txt_addnum
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = A1_2.ChangeNumValue
    if 0 < L4_2 then
      L5_2 = A0_2._binder
      L5_2 = L5_2.txt_addnum
      L5_2.color = L2_2
      L5_2 = L2_1.SafeSetText
      L6_2 = A0_2._binder
      L6_2 = L6_2.txt_addnum
      L7_2 = "+"
      L8_2 = A1_2.ChangeNum
      L7_2 = L7_2 .. L8_2
      L5_2(L6_2, L7_2)
    elseif L4_2 < 0 then
      L5_2 = A0_2._binder
      L5_2 = L5_2.txt_addnum
      L5_2.color = L3_2
      L5_2 = L2_1.SafeSetText
      L6_2 = A0_2._binder
      L6_2 = L6_2.txt_addnum
      L7_2 = A1_2.ChangeNum
      L5_2(L6_2, L7_2)
    else
      L5_2 = L1_1.SafeSetActive
      L6_2 = A0_2._binder
      L6_2 = L6_2.txt_addnum
      L7_2 = false
      L5_2(L6_2, L7_2)
    end
  end
  L4_2 = A1_2.IconPath
  if L4_2 == "0" then
    return
  end
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_property
  L7_2 = A1_2.IconPath
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.setup_view = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  if not L2_2 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_name_active = L5_1
return L0_1
