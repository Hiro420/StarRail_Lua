local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "EquipmentItemIconPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  A0_2._inventory_item_icon_panel = A1_2
end
L0_1.set_inventory_item_icon_panel = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._item = A1_2
  L2_2 = A0_2._inventory_item_icon_panel
  L2_2 = L2_2._binder
  L2_2 = L2_2.node_status_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetLightWeightActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._item
  L2_2 = L2_2.BelongAvatarID
  if L2_2 ~= 0 then
    L2_2 = A0_2._inventory_item_icon_panel
    L2_2 = L2_2._binder
    L2_2 = L2_2.node_belong_to
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetLightWeightActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.AvatarData
    L2_2 = L2_2.ConvertRealIDToBase
    L3_2 = A0_2._item
    L3_2 = L3_2.BelongAvatarID
    L2_2 = L2_2(L3_2)
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_ModuleManager
    L3_2 = L3_2.AvatarModule
    L3_2 = L3_2.AllAvatars
    L3_2 = L3_2[L2_2]
    L5_2 = A0_2
    L4_2 = A0_2._async_load_sprite_to
    L6_2 = A0_2._inventory_item_icon_panel
    L6_2 = L6_2._binder
    L6_2 = L6_2.img_belong_to
    L7_2 = L3_2.AvatarMiniIconPath
    L4_2(L5_2, L6_2, L7_2)
  else
    L2_2 = A0_2._inventory_item_icon_panel
    L2_2 = L2_2._binder
    L2_2 = L2_2.node_belong_to
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetLightWeightActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._inventory_item_icon_panel
  if L2_2 then
    L2_2 = A0_2._inventory_item_icon_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_text_all_textID
    L4_2 = "UIText_Level_PlayerLevel"
    L5_2 = A1_2.Level
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AvatarBaseTypeExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._item
  L3_2 = L3_2.EquipmentRow
  L3_2 = L3_2.AvatarBaseType
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._inventory_item_icon_panel
  L5_2 = L5_2._binder
  L5_2 = L5_2.img_icon_professional
  L6_2 = L2_2.BaseTypeIconSmall
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2.set_match_hint
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._inventory_item_icon_panel
  L3_2 = L3_2._binder
  L3_2 = L3_2.node_damage_plus_type
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetLightWeightActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._inventory_item_icon_panel
  L3_2 = L3_2._binder
  L3_2 = L3_2.node_refine_level_panel
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetLightWeightActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._inventory_item_icon_panel
  L3_2 = L3_2._binder
  L3_2 = L3_2.text_refine_level_panel
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = G
  L5_2 = L5_2.UITextUtils
  L5_2 = L5_2.GetLightConeRankTextID
  L6_2 = A0_2._item
  L6_2 = L6_2.Rank
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2._item
  L3_2 = L3_2.Rank
  L4_2 = A0_2._item
  L4_2 = L4_2.EquipmentRow
  L4_2 = L4_2.MaxRank
  if L3_2 < L4_2 then
    L3_2 = A0_2._inventory_item_icon_panel
    L3_2 = L3_2._binder
    L3_2 = L3_2.text_refine_level_panel
    L4_2 = G
    L4_2 = L4_2.UIColorUtils
    L4_2 = L4_2.GetColor
    L5_2 = "#DCC491"
    L4_2 = L4_2(L5_2)
    L3_2.color = L4_2
    L3_2 = A0_2._inventory_item_icon_panel
    L3_2 = L3_2._binder
    L3_2 = L3_2.img_refine_bg
    L4_2 = G
    L4_2 = L4_2.UIColorUtils
    L4_2 = L4_2.GetColor
    L5_2 = "#12121257"
    L4_2 = L4_2(L5_2)
    L3_2.color = L4_2
  else
    L3_2 = A0_2._inventory_item_icon_panel
    L3_2 = L3_2._binder
    L3_2 = L3_2.text_refine_level_panel
    L4_2 = G
    L4_2 = L4_2.UIColorUtils
    L4_2 = L4_2.GetColor
    L5_2 = "#121212"
    L4_2 = L4_2(L5_2)
    L3_2.color = L4_2
    L3_2 = A0_2._inventory_item_icon_panel
    L3_2 = L3_2._binder
    L3_2 = L3_2.img_refine_bg
    L4_2 = G
    L4_2 = L4_2.UIColorUtils
    L4_2 = L4_2.GetColor
    L5_2 = "#ffcf70ff"
    L4_2 = L4_2(L5_2)
    L3_2.color = L4_2
  end
end
L0_1.setup_view_by_item = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2._inventory_item_icon_panel
    L2_2 = L2_2._binder
    L2_2 = L2_2.img_icon_professional
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.UIColorUtils
    L3_2 = L3_2.GetColor
    L4_2 = "#18FFCB"
    L3_2 = L3_2(L4_2)
    L2_2.color = L3_2
  else
    L2_2 = A0_2._inventory_item_icon_panel
    L2_2 = L2_2._binder
    L2_2 = L2_2.img_icon_professional
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.UIColorUtils
    L3_2 = L3_2.GetColor
    L4_2 = "#FFFFFF"
    L3_2 = L3_2(L4_2)
    L2_2.color = L3_2
  end
end
L0_1.set_match_hint = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._inventory_item_icon_panel
  L2_2 = L2_2._binder
  L2_2 = L2_2.node_refine_level_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetLightWeightActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_refine_level = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._item = nil
  A0_2._inventory_item_icon_panel = nil
end
L0_1._on_dispose = L1_1
return L0_1
