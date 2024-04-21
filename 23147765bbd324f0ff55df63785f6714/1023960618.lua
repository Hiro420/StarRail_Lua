local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.CommonTextPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.CommonTextPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Tools.RogueNousUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueNousDiceHandbookDetailPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = {}
  A0_2._surface_tag_panels = L3_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._dice_surface_data_item = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_basic_info
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_tags
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_desc
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_unlock_condition
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.LayoutRebuilder
  L2_2 = L2_2.ForceRebuildLayoutImmediate
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_rect_desc
  L3_2 = L3_2.content
  L3_2 = L3_2.transform
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect_desc
  return L1_2
end
L0_1.get_desc_scroll_rect = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.desc_underline_panel
  L2_2 = L1_2
  L1_2 = L1_2.is_extra_info_available
  return L1_2(L2_2)
end
L0_1.is_extra_effect_available = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._dice_surface_data_item
  L3_2 = L3_2.SurfaceName
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_surface
  L4_2 = A0_2._dice_surface_data_item
  L4_2 = L4_2.Icon
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_surface
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetColor
  L3_2 = G
  L3_2 = L3_2.RogueNousUtils
  L3_2 = L3_2.get_color_by_surface_rarity
  L4_2 = A0_2._dice_surface_data_item
  L4_2 = L4_2.Rarity
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L1_2 = pairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_bg_rarity
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.SafeSetActive
    L8_2 = A0_2._dice_surface_data_item
    L8_2 = L8_2.Rarity
    L8_2 = L4_2 == L8_2
    L6_2(L7_2, L8_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_locked
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._dice_surface_data_item
  L3_2 = L3_2.IsUnlocked
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_basic_info = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.RogueNousSurfaceTagExcelTable
  L2_2 = {}
  L3_2 = 0
  L4_2 = A0_2._dice_surface_data_item
  L4_2 = L4_2.TagList
  L4_2 = L4_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._dice_surface_data_item
    L7_2 = L7_2.TagList
    L7_2 = L7_2[L6_2]
    L8_2 = L1_2.GetData
    L9_2 = #L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 ~= nil then
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L2_2
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
    end
  end
  L3_2 = table
  L3_2 = L3_2.sort
  L4_2 = L2_2
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.Sort
    L3_3 = A1_3.Sort
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L3_2(L4_2, L5_2)
  L3_2 = 1
  L4_2 = math
  L4_2 = L4_2.max
  L5_2 = #L2_2
  L6_2 = A0_2._surface_tag_panels
  L6_2 = #L6_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._surface_tag_panels
    L7_2 = L7_2[L6_2]
    if L7_2 == nil then
      L8_2 = A0_2
      L7_2 = A0_2.instantiate_object
      L9_2 = A0_2._binder
      L9_2 = L9_2.prefab_load_meta_tags
      L9_2 = L9_2.Prefab
      L10_2 = A0_2._binder
      L10_2 = L10_2.prefab_load_meta_tags
      L10_2 = L10_2.transform
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L9_2 = A0_2
      L8_2 = A0_2.create_panel
      L10_2 = G
      L10_2 = L10_2.CommonTextPanel
      L11_2 = G
      L11_2 = L11_2.CommonTextPanelBinder
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L10_2 = L8_2
      L9_2 = L8_2.bind
      L11_2 = L7_2
      L9_2(L10_2, L11_2)
      L9_2 = A0_2._surface_tag_panels
      L9_2[L6_2] = L8_2
    end
    L7_2 = A0_2._surface_tag_panels
    L7_2 = L7_2[L6_2]
    L8_2 = L7_2
    L7_2 = L7_2.safe_set_active
    L9_2 = L2_2[L6_2]
    L9_2 = L9_2 ~= nil
    L7_2(L8_2, L9_2)
    L7_2 = L2_2[L6_2]
    if L7_2 ~= nil then
      L7_2 = A0_2._surface_tag_panels
      L7_2 = L7_2[L6_2]
      L8_2 = L7_2
      L7_2 = L7_2.setup_view
      L9_2 = {}
      L9_2.path = "TxtAct"
      L10_2 = L2_2[L6_2]
      L10_2 = L10_2.TagName
      L9_2.text_id = L10_2
      L7_2(L8_2, L9_2)
    end
  end
end
L0_1._setup_tags = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2._dice_surface_data_item
  L2_2 = L2_2.DescParam
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._dice_surface_data_item
  L4_2 = L4_2.SurfaceDesc
  L5_2 = table
  L5_2 = L5_2.unpack
  L6_2 = L1_2
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.desc_underline_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._dice_surface_data_item
  L4_2 = L4_2.ExtraDesc
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_rect_desc
  L2_2.verticalNormalizedPosition = 1
end
L0_1._setup_desc = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._dice_surface_data_item
  L1_2 = L1_2.IsUnlocked
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_unlock_condition
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_unlock_condition
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_unlock_condition
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._dice_surface_data_item
  L3_2 = L3_2.UnlockCondition
  L1_2(L2_2, L3_2)
end
L0_1._setup_unlock_condition = L1_1
return L0_1
