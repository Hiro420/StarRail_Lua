local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherCommonSpiritTypePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AetherSpiritTypeExcelTable
  L2_2 = L2_2.GetData
  L3_2 = #A1_2
  L2_2 = L2_2(L3_2)
  A0_2._row = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.is_loaded
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._refresh
    L2_2(L3_2)
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._row
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._async_load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_icon
    L4_2 = A0_2._row
    L4_2 = L4_2.IconPath
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._refresh = L1_1
return L0_1
