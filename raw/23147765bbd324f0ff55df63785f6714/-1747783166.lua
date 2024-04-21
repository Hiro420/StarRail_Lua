local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Common.CommonItemInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CommonItemInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "ItemDetailsDialog_HiddenItemCount_ItemID"
L2_1 = "ItemDetailsDialog_HiddenItemCount_ItemSubType"
function L3_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = {}
  A0_2._instantiate_rarity_go_list = L3_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_relic_position
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_rarity_star
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.num_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.hide_num = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._item = A1_2
  A0_2._is_only_display = A2_2
  L4_2 = A0_2
  L3_2 = A0_2.safe_set_active
  L5_2 = true
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_rarity
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_purpose
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._should_show_amount_panel
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_amount_panel
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_amount
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = A0_2._item
  L6_2 = L6_2.Count
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_item_icon
  L7_2 = A0_2._item
  L7_2 = L7_2.ItemFigureIconPath
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_item_total_num
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._should_hide_item_num_by_id
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._should_hide_item_num_by_main_type
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._should_hide_item_num_by_sub_type
  L1_2 = L1_2(L2_2)
  L1_2 = not L1_2 and L1_2
  return L1_2
end
L0_1._should_show_amount_panel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._item
  L1_2 = L1_2.ItemMainType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemMainType
  L2_2 = L2_2.AvatarCard
  L1_2 = L1_2 == L2_2
  return L1_2
end
L0_1._should_hide_item_num_by_main_type = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L1_1
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.Value
    if L2_2 ~= nil then
      goto lbl_14
    end
  end
  do return end
  ::lbl_14::
  L2_2 = L1_2.Value
  L2_2 = L2_2.ArrayValue
  L3_2 = 0
  L4_2 = L2_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2[L6_2]
    L8_2 = A0_2._item
    L8_2 = L8_2.Row
    L8_2 = L8_2.ID
    L9_2 = L7_2.IntValue
    if L8_2 == L9_2 then
      L8_2 = true
      return L8_2
    end
  end
  L3_2 = false
  return L3_2
end
L0_1._should_hide_item_num_by_id = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L2_1
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.Value
    if L2_2 ~= nil then
      goto lbl_14
    end
  end
  do return end
  ::lbl_14::
  L2_2 = L1_2.Value
  L2_2 = L2_2.ArrayValue
  L3_2 = 0
  L4_2 = L2_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2[L6_2]
    L8_2 = G
    L8_2 = L8_2.UtilEngineWrap
    L8_2 = L8_2.ConvCsEnumToNum
    L9_2 = A0_2._item
    L9_2 = L9_2.ItemSubType
    L8_2 = L8_2(L9_2)
    L9_2 = L7_2.IntValue
    if L8_2 == L9_2 then
      L8_2 = true
      return L8_2
    end
  end
  L3_2 = false
  return L3_2
end
L0_1._should_hide_item_num_by_sub_type = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
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
  L4_2 = L4_2.rarity_frame
  L5_2 = L1_2.FrameItemRarityPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = ipairs
  L3_2 = A0_2._instantiate_rarity_go_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = A0_2
    L7_2 = A0_2.destroy_object
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = {}
  A0_2._instantiate_rarity_go_list = L2_2
  L2_2 = A0_2._item
  L2_2 = L2_2.Rarity
  L3_2 = type
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 ~= "number" then
    L3_2 = A0_2._item
    L3_2 = L3_2.Rarity
    L2_2 = #L3_2
  end
  L3_2 = 1
  L4_2 = L2_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L8_2 = A0_2
    L7_2 = A0_2.instantiate_object
    L9_2 = A0_2._binder
    L9_2 = L9_2.item_prefab_load_meta
    L9_2 = L9_2.Prefab
    L10_2 = A0_2._binder
    L10_2 = L10_2.node_rarity_star
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._instantiate_rarity_go_list
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
end
L0_1._setup_rarity = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ItemPurposeExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._item
  L2_2 = L2_2.Row
  L2_2 = L2_2.PurposeType
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_purpose
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = L1_2.PurposeText
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_purpose
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_purpose
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
end
L0_1._setup_purpose = L3_1
return L0_1
