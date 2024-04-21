local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.MapBoxExpandItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MapBoxExpandItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MapProgressConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2.show_type
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_chest_icon
  L6_2 = L2_2.IconPath
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_chest_type
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.ProgressName
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_num
  L4_2 = A1_2.opened_num
  L5_2 = "/"
  L6_2 = A1_2.exist_num
  L4_2 = L4_2 .. L5_2 .. L6_2
  L3_2.text = L4_2
end
L0_1.setup_view = L1_1
return L0_1
