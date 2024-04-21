local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Inventory.ItemUse.ReviveAvatarInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ReviveAvatarInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.ItemExcelTable
function L2_1(A0_2, A1_2, A2_2)
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._data = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_lv
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A1_2.Level
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_avatar_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.Row
  L4_2 = L4_2.AvatarName
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.DamageTypeExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2.Row
  L3_2 = L3_2.DamageType
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_damage_type
  L6_2 = L2_2.IconNatureColor
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = L1_1.GetData
  L4_2 = A1_2.RealID
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_avatar_icon
  L7_2 = L3_2.ItemAvatarIconPath
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.InventoryModule
  L4_2 = L4_2.GetItemRarityConfig
  L5_2 = L3_2.Rarity
  L4_2 = L4_2(L5_2)
  L6_2 = A0_2
  L5_2 = A0_2._async_load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.image_rarity
  L8_2 = L4_2.FrameItemRarityBgPath
  L5_2(L6_2, L7_2, L8_2)
end
L0_1.setup_view = L2_1
return L0_1
