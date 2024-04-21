local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumStaffIconPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  A0_2._item_row = L3_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemRarityConfigExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2._item_row
  L4_2 = L4_2.Rarity
  L3_2 = L3_2(L4_2)
  A0_2._rarity_row = L3_2
  if A2_2 == nil then
    A2_2 = true
  end
  if A2_2 then
    L3_2 = A0_2._item_row
    L3_2 = L3_2.ItemIconPath
    if L3_2 then
      goto lbl_29
    end
  end
  L3_2 = A0_2._item_row
  L3_2 = L3_2.ItemFigureIconPath
  ::lbl_29::
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_icon
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_rarity_frame
  if L4_2 ~= nil then
    L5_2 = A0_2
    L4_2 = A0_2._async_load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.img_rarity_frame
    L7_2 = A0_2._rarity_row
    L7_2 = L7_2.FrameItemRarityPath
    L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_rarity_line
  L5_2 = G
  L5_2 = L5_2.UIColorUtils
  L5_2 = L5_2.GetColor
  L6_2 = A0_2._rarity_row
  L6_2 = L6_2.FrameItemRarityColor
  L5_2 = L5_2(L6_2)
  L4_2.color = L5_2
end
L0_1.setup_view = L1_1
return L0_1
