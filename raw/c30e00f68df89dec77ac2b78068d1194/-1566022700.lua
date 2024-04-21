local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherSpiritSkillCoreBag.AetherSpiritSkillCoreBagTabItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherSpiritSkillCoreBagTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._type_row = A3_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_callback = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_type_txt
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_icon
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_reddot
  L1_2(L2_2)
end
L0_1._on_added = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._type_row
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_type
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._type_row
    L3_2 = L3_2.Name
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_type
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_AetherDivide_Spirit_Type_All"
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_type_txt = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._type_row
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._async_load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_icon
    L4_2 = A0_2._type_row
    L4_2 = L4_2.IconPath
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.ConstValueClientExcelTable
    L1_2 = L1_2.GetData
    L2_2 = "AetherDivide_SpiritTypeAllIconPath"
    L1_2 = L1_2(L2_2)
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_icon
    L5_2 = L1_2.Value
    L5_2 = L5_2.StringValue
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._setup_icon = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._callback
  L2_2 = A0_2._callback_self
  L3_2 = A0_2._type_row
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_type
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_select = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_type
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_unselect = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._bind_reddot = L1_1
return L0_1
