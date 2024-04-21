local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueBoardSelectTipPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_tip_forbid_select
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_tip_can_select
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_tip_forbid_select
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_forbid_select_view = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_tip_forbid_select
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_tip_can_select
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
  if A2_2 == false or A1_2 == nil then
    return
  end
  if A3_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_selected_cell_desc
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = "UIText_RogueDLC_BlockSelect_Self"
    L4_2(L5_2, L6_2)
  else
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_selected_cell_desc
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = "UIText_RogueDLC_BlockSelect_Blockinfo"
    L7_2 = G
    L7_2 = L7_2.TextmapStatic
    L7_2 = L7_2.GetText
    L8_2 = A1_2.BlockTypeName
    L7_2 = L7_2(L8_2)
    L9_2 = A0_2
    L8_2 = A0_2._get_mark_type_row
    L10_2 = A1_2.MarkType
    L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_cur_location
  L5_2 = L4_2
  L4_2 = L4_2.safe_set_active
  L6_2 = A3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_selected_cell_icon
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not A3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_selected_cell_tag
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not A3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_selected_cell_title
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = "UIText_RogueDLC_BlockSelect_Title"
  L4_2(L5_2, L6_2)
  if A3_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_selected_cell_desc
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = "UIText_RogueDLC_BlockSelect_Self"
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.panel_cur_location
    L5_2 = L4_2
    L4_2 = L4_2.refresh_icon
    L4_2(L5_2)
  else
    L5_2 = A0_2
    L4_2 = A0_2._get_mark_type_row
    L6_2 = A1_2.MarkType
    L4_2 = L4_2(L5_2, L6_2)
    L6_2 = A0_2
    L5_2 = A0_2._setup_block_type_view
    L7_2 = A1_2.BlockType
    L5_2(L6_2, L7_2)
    L6_2 = A0_2
    L5_2 = A0_2._setup_mark_type_view
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
    if L4_2 == nil then
      L5_2 = A0_2._binder
      L5_2 = L5_2.text_selected_cell_desc
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetTextID
      L7_2 = A1_2.BlockTypeName
      L5_2(L6_2, L7_2)
    else
      L5_2 = A0_2._binder
      L5_2 = L5_2.text_selected_cell_desc
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetTextID
      L7_2 = "UIText_RogueDLC_BlockSelect_Blockinfo"
      L8_2 = G
      L8_2 = L8_2.TextmapStatic
      L8_2 = L8_2.GetText
      L9_2 = A1_2.BlockTypeName
      L8_2 = L8_2(L9_2)
      L9_2 = G
      L9_2 = L9_2.TextmapStatic
      L9_2 = L9_2.GetText
      L10_2 = L4_2.MarkTypeNameID
      L9_2, L10_2 = L9_2(L10_2)
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    end
  end
end
L0_1.setup_can_select_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RogueDLCBlockTypeExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.BlockTypeChessBoardIcon
    if L3_2 ~= nil then
      L3_2 = L2_2.BlockTypeChessBoardIcon
      if L3_2 ~= "" then
        L4_2 = A0_2
        L3_2 = A0_2._async_load_sprite_to
        L5_2 = A0_2._binder
        L5_2 = L5_2.img_selected_cell_icon
        L6_2 = L2_2.BlockTypeChessBoardIcon
        L3_2(L4_2, L5_2, L6_2)
        L3_2 = L2_2.BlockTypeChessBoardColor
        L4_2 = L3_2 ~= nil and L3_2 ~= ""
        if L4_2 then
          L5_2 = A0_2._binder
          L5_2 = L5_2.img_selected_cell_icon
          L6_2 = G
          L6_2 = L6_2.UIColorUtils
          L6_2 = L6_2.GetColor
          L7_2 = L3_2
          L6_2 = L6_2(L7_2)
          L5_2.color = L6_2
        end
      end
    end
  end
end
L0_1._setup_block_type_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_selected_cell_tag
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2 ~= nil
  L2_2(L3_2, L4_2)
  if A1_2 ~= nil then
    L2_2 = A1_2.MarkTypeChessBoardIcon
    if L2_2 ~= nil then
      L2_2 = A1_2.MarkTypeChessBoardIcon
      if L2_2 ~= "" then
        L3_2 = A0_2
        L2_2 = A0_2._async_load_sprite_to
        L4_2 = A0_2._binder
        L4_2 = L4_2.img_selected_cell_tag
        L5_2 = A1_2.MarkTypeChessBoardIcon
        L2_2(L3_2, L4_2, L5_2)
      end
    end
  end
end
L0_1._setup_mark_type_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = nil
  if A1_2 ~= 0 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.RogueDLCMarkTypeExcelTable
    L3_2 = L3_2.GetData
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
  end
  return L2_2
end
L0_1._get_mark_type_row = L1_1
return L0_1
