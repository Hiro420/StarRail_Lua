local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.LightConeItemInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LightConeItemInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  A0_2._is_instantiate_rarity = false
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_promotion
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.num_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.hide_num = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._item = A1_2
  A0_2._is_only_display = A2_2
  L4_2 = A0_2
  L3_2 = A0_2.safe_set_active
  L5_2 = true
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_rarity
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_light_cone_level
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_light_cone_icon
  L6_2 = A0_2._item
  L6_2 = L6_2.EquipmentRow
  L6_2 = L6_2.ThumbnailPath
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AvatarBaseTypeExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2._item
  L4_2 = L4_2.EquipmentRow
  L4_2 = L4_2.AvatarBaseType
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_profession_icon
  L7_2 = L3_2.BaseTypeIconSmall
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._set_level
  L6_2 = A0_2._item
  L6_2 = L6_2.Level
  L7_2 = A0_2._item
  L8_2 = L7_2
  L7_2 = L7_2.GetCurrentMaxLv
  L7_2, L8_2 = L7_2(L8_2)
  L4_2(L5_2, L6_2, L7_2, L8_2)
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
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_detail
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_detail_btn_interactable = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_level_current
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_level_current
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  if A2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_level_max
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_level_splash
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_level_max
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_level_splash
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_level_max
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
end
L0_1._set_level = L1_1
return L0_1
