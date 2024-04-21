local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Dimensions.Components.ChessRogueDimensionEffectItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Dimensions.Components.ChessRogueDimensionDisplayEffectPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueDimensionDisplayEffectPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.effect_list_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_effect_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._dimension_info = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.dimension_icon
  L4_2 = A0_2._dimension_info
  L4_2 = L4_2.DimensionLargeIcon
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_small_dimension
  L4_2 = A0_2._dimension_info
  L4_2 = L4_2.DimensionSmallIcon
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.dimension_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._dimension_info
  L3_2 = L3_2.DimensionTitle
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.dimension_aeon
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_RogueDLC_Dimension_Talent"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.effect_list_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._dimension_info
  L3_2 = L3_2.TalentRows
  L3_2 = L3_2.Count
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.effect_list_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = A0_2._dimension_info
  L2_2 = L1_2
  L1_2 = L1_2.GetFirstUnseenTalentRowIndex
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.effect_list_view
  L3_2 = L2_2
  L2_2 = L2_2.MovePanelToItemIndex
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._refresh = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.ChessRogueDimensionEffectItem
    L8_2 = G
    L8_2 = L8_2.ChessRogueDimensionEffectItemBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._dimension_info
  L5_2 = L5_2.TalentRows
  L5_2 = L5_2[A2_2]
  L6_2 = L5_2.UnlockAeonDimensionPoint
  L7_2 = A0_2._dimension_info
  L7_2 = L7_2.CurDimensionProgress
  L6_2 = L6_2 <= L7_2
  L8_2 = L4_2
  L7_2 = L4_2.setup_view
  L9_2 = L5_2
  L10_2 = L6_2
  L7_2(L8_2, L9_2, L10_2)
  L8_2 = L4_2
  L7_2 = L4_2.setup_rect_mask
  L9_2 = A2_2 == 0
  L10_2 = A0_2._dimension_info
  L10_2 = L10_2.TalentRows
  L10_2 = L10_2.Count
  L10_2 = L10_2 - 1
  L10_2 = A2_2 == L10_2
  L7_2(L8_2, L9_2, L10_2)
  L8_2 = L4_2
  L7_2 = L4_2.setup_top_line
  L9_2 = A2_2 == 0
  L7_2(L8_2, L9_2)
  return L3_2
end
L0_1._on_effect_changed = L1_1
return L0_1
