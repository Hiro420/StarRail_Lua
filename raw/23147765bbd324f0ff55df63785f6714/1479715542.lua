local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.AvatarItemInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarItemInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  A0_2._is_instantiate_rarity = false
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._item = A1_2
  A0_2._is_only_display = A2_2
  L4_2 = A0_2
  L3_2 = A0_2.safe_set_active
  L5_2 = true
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_avatar_icon
  L6_2 = A0_2._item
  L6_2 = L6_2.Row
  L6_2 = L6_2.ItemAvatarIconPath
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.InventoryModule
  L3_2 = L3_2.GetItemRarityConfig
  L4_2 = A0_2._item
  L4_2 = L4_2.Rarity
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.image_rarity
  L7_2 = L3_2.FrameItemRarityPath
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_rarity
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_avatar_display_content
  L4_2(L5_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.InventoryModule
  L1_2 = L1_2.GetItemRarityConfig
  L2_2 = A0_2._item
  L2_2 = L2_2.Rarity
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.image_rarity
  L5_2 = L1_2.FrameItemRarityPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._is_instantiate_rarity
  if L2_2 == false then
    L2_2 = 1
    L3_2 = A0_2._item
    L3_2 = L3_2.Rarity
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L7_2 = A0_2
      L6_2 = A0_2.instantiate_object
      L8_2 = A0_2._binder
      L8_2 = L8_2.item_prefab_load_meta
      L8_2 = L8_2.Prefab
      L9_2 = A0_2._binder
      L9_2 = L9_2.node_promotion
      L6_2(L7_2, L8_2, L9_2)
    end
    A0_2._is_instantiate_rarity = true
  end
end
L0_1._setup_rarity = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.AvatarData
  L1_2 = L1_2.CreateGachaData
  L2_2 = A0_2._item
  L2_2 = L2_2.ConfigID
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_level
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2.Level
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_max_level
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L5_2 = L1_2
  L4_2 = L1_2.GetCurrentMaxLv
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.DamageTypeExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2.DamageType
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_damage_type_icon
  L6_2 = L2_2.DamageTypeIconPath
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AvatarBaseTypeExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L1_2.ProfessionType
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_profession_icon
  L7_2 = L3_2.BaseTypeIconSmall
  L4_2(L5_2, L6_2, L7_2)
end
L0_1._setup_avatar_display_content = L1_1
return L0_1
