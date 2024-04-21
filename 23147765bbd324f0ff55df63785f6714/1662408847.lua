local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DefaultGachaUpLightConePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._gacha_pool_data = A3_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_up_avatar_img
  L1_2(L2_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._gacha_pool_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._gacha_pool_data
  L1_2 = L1_2.DetailItemsRow
  L2_2 = {}
  L3_2 = 0
  L4_2 = L1_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L1_2[L6_2]
    L8_2 = L7_2.Rarity
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.ItemRarity
    L9_2 = L9_2.VeryRare
    if L8_2 == L9_2 then
      L8_2 = L7_2.ItemMainType
      L9_2 = CS
      L9_2 = L9_2.RPG
      L9_2 = L9_2.GameCore
      L9_2 = L9_2.ItemMainType
      L9_2 = L9_2.Equipment
      if L8_2 == L9_2 then
        L8_2 = CS
        L8_2 = L8_2.RPG
        L8_2 = L8_2.GameCore
        L8_2 = L8_2.EquipmentExcelTable
        L8_2 = L8_2.GetData
        L9_2 = L7_2.ID
        L8_2 = L8_2(L9_2)
        L9_2 = table
        L9_2 = L9_2.insert
        L10_2 = L2_2
        L11_2 = L8_2.ThumbnailPath
        L9_2(L10_2, L11_2)
      end
    end
  end
  L3_2 = 1
  L4_2 = #L2_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L8_2 = A0_2
    L7_2 = A0_2._async_load_sprite_to
    L9_2 = A0_2._binder
    L9_2 = L9_2.img_lightcone
    L9_2 = L9_2[L6_2]
    L10_2 = L2_2[L6_2]
    L7_2(L8_2, L9_2, L10_2)
  end
end
L0_1._setup_up_avatar_img = L1_1
return L0_1
