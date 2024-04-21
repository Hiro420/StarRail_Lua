local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Utilities.MuseumUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumFundResultItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.MuseumUtils
  L2_2 = L2_2.get_fund_item_data
  L2_2 = L2_2()
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_fund
  L6_2 = L2_2.ItemIconPath
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_fund
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = A1_2.Funds
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A1_2.Name
  L3_2(L4_2, L5_2)
end
L0_1.setup_view = L1_1
return L0_1
