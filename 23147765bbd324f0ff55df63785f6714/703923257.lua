local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.ChessBoard.ChessRogueBoardCellDetailDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueBoardCellDetailDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ChessRogueBoardCellDetailDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2
  A0_2._cell_data_item = A1_2
  L3_2 = A2_2 == 1
  A0_2._show_forbid_hint = L3_2
  L3_2 = A2_2 == 2
  A0_2._show_break_hint = L3_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = L0_1._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_tip_forbid_select
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._show_forbid_hint
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_tip_break
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._show_break_hint
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.RogueDLCMarkTypeExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._cell_data_item
  L2_2 = L2_2.MarkType
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 ~= nil
  L3_2 = A0_2._cell_data_item
  L3_2 = L3_2.BlockTypeChessBoardIcon
  if L3_2 ~= nil and L3_2 ~= "" then
    L5_2 = A0_2
    L4_2 = A0_2.async_load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.img_icon
    L7_2 = L3_2
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = A0_2._cell_data_item
    L4_2 = L4_2.BlockTypeChessBoardColor
    L5_2 = L4_2 ~= nil and L4_2 ~= ""
    if L5_2 then
      L6_2 = A0_2._binder
      L6_2 = L6_2.img_icon
      L7_2 = G
      L7_2 = L7_2.UIColorUtils
      L7_2 = L7_2.GetColor
      L8_2 = L4_2
      L7_2 = L7_2(L8_2)
      L6_2.color = L7_2
    end
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_tag
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  if L2_2 then
    L5_2 = A0_2
    L4_2 = A0_2.async_load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.img_tag
    L7_2 = L1_2.MarkTypeChessBoardIcon
    L4_2(L5_2, L6_2, L7_2)
  end
  if not L2_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_title
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = A0_2._cell_data_item
    L6_2 = L6_2.BlockTypeName
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_desc
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = "UIText_RogueDLC_BlockIntro_Link_1"
    L8_2 = A0_2
    L7_2 = A0_2._get_block_type_desc_text
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  else
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_title
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = "UIText_RogueDLC_BlockSelect_Blockinfo"
    L7_2 = G
    L7_2 = L7_2.TextmapStatic
    L7_2 = L7_2.GetText
    L8_2 = A0_2._cell_data_item
    L8_2 = L8_2.BlockTypeName
    L7_2 = L7_2(L8_2)
    L8_2 = G
    L8_2 = L8_2.TextmapStatic
    L8_2 = L8_2.GetText
    L9_2 = L1_2.MarkTypeNameID
    L8_2, L9_2, L10_2 = L8_2(L9_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_desc
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = "UIText_RogueDLC_BlockIntro_Desc"
    L8_2 = A0_2
    L7_2 = A0_2._get_block_type_desc_text
    L7_2 = L7_2(L8_2)
    L9_2 = A0_2
    L8_2 = A0_2._get_mark_type_desc_text
    L10_2 = L1_2
    L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  end
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._get_intro_desc
  L3_2 = A0_2._cell_data_item
  L3_2 = L3_2.BlockIntroID
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    L2_2 = ""
    return L2_2
  else
    L2_2 = G
    L2_2 = L2_2.TextmapStatic
    L2_2 = L2_2.GetText
    L3_2 = L1_2
    return L2_2(L3_2)
  end
end
L0_1._get_block_type_desc_text = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._get_intro_desc
  L4_2 = A1_2.BlockIntroID
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L3_2 = ""
    return L3_2
  else
    L3_2 = G
    L3_2 = L3_2.TextmapStatic
    L3_2 = L3_2.GetText
    L4_2 = L2_2
    return L3_2(L4_2)
  end
end
L0_1._get_mark_type_desc_text = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RogueDLCBlockIntroExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    L3_2 = nil
    return L3_2
  else
    L3_2 = L2_2.BlockIntroDesc
    return L3_2
  end
end
L0_1._get_intro_desc = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close = L1_1
return L0_1
