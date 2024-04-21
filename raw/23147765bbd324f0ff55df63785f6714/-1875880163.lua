local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Rogue.Handbook.Components.RogueHandbookBuffDetailPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.ExtraDesc.ExtraDescListDialog"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.RogueUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueHandbookBuffDetailPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.RogueBuffExcelTable
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.MazeBuffExcelTable
L3_1 = "UIText_Rogue_HandBook_UnKownTitle"
function L4_1(A0_2)
  local L1_2
  A0_2._current_lv = 1
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._buff_data
  A0_2._previous_data = L2_2
  A0_2._buff_data = A1_2
end
L0_1.setup_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._previous_data
  L2_2 = A0_2._buff_data
  if L1_2 == L2_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_text_title
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_text_type
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_rarity_bg
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_icon
  L3_2 = A0_2._buff_data
  L3_2 = L3_2.IsUnlocked
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_text_desc
  L3_2 = A0_2._buff_data
  L3_2 = L3_2.IsUnlocked
  L1_2(L2_2, L3_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L2_1.GetData
  L2_2 = A0_2._buff_data
  L2_2 = L2_2.RogueRow
  L2_2 = L2_2.MazeBuffID
  L3_2 = A0_2._current_lv
  if not L3_2 then
    L3_2 = 1
  end
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._maze_row = L1_2
  L1_2 = L1_1.GetData
  L2_2 = A0_2._buff_data
  L2_2 = L2_2.RogueRow
  L2_2 = L2_2.MazeBuffID
  L3_2 = A0_2._current_lv
  if not L3_2 then
    L3_2 = 1
  end
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._rogue_row = L1_2
end
L0_1._get_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._buff_data
  L1_2 = L1_2.IsUnlocked
  L2_2 = A0_2._binder
  L2_2 = L2_2.buff_keyword
  L2_2 = L2_2.transform
  L2_2 = L2_2.parent
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.another_buff_current_lv
  L2_2 = L2_2.transform
  L2_2 = L2_2.parent
  L2_2 = L2_2.parent
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._has_special_word
    L2_2 = L2_2(L3_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.buff_detail_btn
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetEnabled
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.buff_detail_in_control_btn
  L3_2.ActionEnabled = L2_2
end
L0_1.setup_status = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._buff_data
  L1_2 = L1_2.IsUnlocked
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.buff_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._maze_row
    L3_2 = L3_2.BuffName
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.buff_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L3_1
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_text_title = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.RogueBuffTypeExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._rogue_row
  L2_2 = L2_2.RogueBuffType
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.buff_type_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.RogueBuffTypeTextmapID
  L2_2(L3_2, L4_2)
end
L0_1._setup_text_type = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._rogue_row
  L1_2 = L1_2.RogueBuffRarity
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_rarity
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.buff_rank_bg
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_line_rarity
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetColor
  L4_2 = G
  L4_2 = L4_2.RogueUtils
  L4_2 = L4_2.get_rogue_buff_rarity_color
  L5_2 = L1_2
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_rarity_bg = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.buff_icon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.buff_unknown_icon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.buff_icon
    L5_2 = A0_2._maze_row
    L5_2 = L5_2.BuffIcon
    L2_2(L3_2, L4_2, L5_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.buff_unknown_icon
    L5_2 = A0_2._maze_row
    L5_2 = L5_2.BuffIcon
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._setup_icon = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_Get_desc
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._setup_not_Get_desc
    L2_2(L3_2)
  end
end
L0_1._setup_text_desc = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_current_desc
  L2_2 = L1_2
  L1_2 = L1_2.setup_desc_text
  L3_2 = A0_2._buff_data
  L3_2 = L3_2.RogueRow
  L3_2 = L3_2.HandbookUnlockDesc
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_current_desc
  L2_2 = L1_2
  L1_2 = L1_2.setup_btn_enable
  L3_2 = false
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_next_desc_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._setup_not_Get_desc = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_current_desc
  L2_2 = L1_2
  L1_2 = L1_2.setup_desc
  L3_2 = A0_2._maze_row
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_current_desc
  L2_2 = L1_2
  L1_2 = L1_2.setup_btn_enable
  L4_2 = A0_2
  L3_2 = A0_2._has_special_word
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_current_desc
  L2_2 = L1_2
  L1_2 = L1_2.register_callback
  L3_2 = A0_2._on_special_word_click
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._has_next_level
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_next_desc_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = L2_1.GetData
    L3_2 = A0_2._buff_data
    L3_2 = L3_2.RogueRow
    L3_2 = L3_2.MazeBuffID
    L4_2 = A0_2._current_lv
    L4_2 = L4_2 + 1
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.panel_next_desc
    L4_2 = L3_2
    L3_2 = L3_2.setup_desc
    L5_2 = L2_2
    L6_2 = false
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.panel_next_desc
    L4_2 = L3_2
    L3_2 = L3_2.setup_btn_enable
    L6_2 = A0_2
    L5_2 = A0_2._has_special_word
    L5_2 = L5_2(L6_2)
    L6_2 = false
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.panel_next_desc
    L4_2 = L3_2
    L3_2 = L3_2.register_callback
    L5_2 = A0_2._on_special_word_click
    L6_2 = A0_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._setup_Get_desc = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._has_special_word
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.Common.ExtraDesc.ExtraDescListDialog"
    L3_2 = A0_2._rogue_row
    L3_2 = L3_2.ExtraEffectIDList
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_special_word_click = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._rogue_row
  L1_2 = L1_2 ~= nil
  return L1_2
end
L0_1._has_special_word = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._buff_data
  L1_2 = L1_2.MaxBuffLevel
  L2_2 = A0_2._current_lv
  L1_2 = L1_2 > L2_2
  return L1_2
end
L0_1._has_next_level = L4_1
return L0_1
