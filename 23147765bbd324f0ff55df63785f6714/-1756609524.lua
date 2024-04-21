local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.Buff.Panels.RogueSelectBuffDescPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Buff.Panels.RogueSelectBuffDescPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueEndlessDisplayBuffPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "RogueTabBuff_SelcetedHint"
function L2_1(A0_2)
  local L1_2
  A0_2._callback_func = nil
  A0_2._callback_self = nil
  A0_2._index = nil
  A0_2._rogue_buff_data = nil
  A0_2._maze_buff_row = nil
  A0_2._is_short_desc = false
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_click
  L4_2 = A0_2._on_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_click
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_click
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_selected
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_click
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_selected
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L1_2.onDeselectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_desc_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_bg_bonus
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_handbook_hint
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_kepmap_tip
  L1_2(L2_2)
end
L0_1._on_in_control_input_switch = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_click
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.RogueBuffData
  L4_2 = A1_2
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._rogue_buff_data = L3_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.MazeBuffExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._maze_buff_row = L3_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.MazeBuffExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2
  L5_2 = A0_2._maze_buff_row
  L5_2 = L5_2.LvMax
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._preview_buff_row = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_buff
  L3_2(L4_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_click
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._is_desc_can_click
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._rogue_buff_data
    L2_2 = L1_2
    L1_2 = L1_2.GetExtraEffectRowIDs
    L1_2 = L1_2(L2_2)
    L2_2 = L1_2.Length
    if 0 < L2_2 then
      L2_2 = G
      L2_2 = L2_2.UIManager
      L2_2 = L2_2.load_and_async_show
      L3_2 = "Ui.Common.ExtraDesc.ExtraDescListDialog"
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_btn_click = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_kepmap_tip
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_in_control_move
  L2_2.ActionEnabled = A1_2
end
L0_1._on_selected = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_mark
  L3_2 = L2_2
  L2_2 = L2_2.setup_handbook
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_handbook_hint = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_title
  L3_2 = A0_2._maze_buff_row
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_tag
  L3_2 = A0_2._rogue_buff_data
  L4_2 = L3_2
  L3_2 = L3_2.GetRogueBuffTypeRow
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_icon_and_bg
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_buff_desc
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_mark
  L2_2 = L1_2
  L1_2 = L1_2.setup_buff_view
  L3_2 = A0_2._rogue_buff_data
  L3_2 = L3_2.BuffID
  L1_2(L2_2, L3_2)
end
L0_1._setup_buff = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_tag
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_tag
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_tag
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = A1_2.RogueBuffTypeTextmapID
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_tag = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.BuffName
  L2_2(L3_2, L4_2)
end
L0_1._setup_title = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._rogue_buff_data
  L2_2 = L1_2
  L1_2 = L1_2.GetRogueAeonID
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._rogue_buff_data
  L3_2 = L2_2
  L2_2 = L2_2.GetRogueBuffRarity
  L2_2 = L2_2(L3_2)
  L3_2 = L1_2 ~= 0
  L4_2 = A0_2._rogue_buff_data
  L5_2 = L4_2
  L4_2 = L4_2.IsBattleEventBuffCross
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_img_aeon
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = L3_2 or L7_2
  if L3_2 then
    L7_2 = not L4_2
  end
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_img_cross
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = L3_2 or L7_2
  if L3_2 then
    L7_2 = L4_2
  end
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_img_icon
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = not L3_2
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_up_view
  L5_2(L6_2)
  if L3_2 then
    if L4_2 then
      L6_2 = A0_2
      L5_2 = A0_2._async_load_sprite_to
      L7_2 = A0_2._binder
      L7_2 = L7_2.img_cross
      L8_2 = A0_2._rogue_buff_data
      L8_2 = L8_2.AeonCrossIcon
      L5_2(L6_2, L7_2, L8_2)
    else
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.GameCore
      L5_2 = L5_2.RogueAeonExcelTable
      L5_2 = L5_2.GetData
      L6_2 = L1_2
      L7_2 = 1
      L5_2 = L5_2(L6_2, L7_2)
      if L5_2 ~= nil then
        L6_2 = CS
        L6_2 = L6_2.RPG
        L6_2 = L6_2.Client
        L6_2 = L6_2.RogueStatic
        L6_2 = L6_2.GetRogueAeonDisplayRow
        L7_2 = L5_2
        L6_2 = L6_2(L7_2)
        L8_2 = A0_2
        L7_2 = A0_2._async_load_sprite_to
        L9_2 = A0_2._binder
        L9_2 = L9_2.img_aeon
        L10_2 = L6_2.AeonBuffIcon
        L7_2(L8_2, L9_2, L10_2)
      end
    end
    L6_2 = A0_2
    L5_2 = A0_2._setup_bg
    L7_2 = 0
    L8_2 = 0
    L5_2(L6_2, L7_2, L8_2)
  else
    L6_2 = A0_2
    L5_2 = A0_2._async_load_sprite_to
    L7_2 = A0_2._binder
    L7_2 = L7_2.img_icon
    L8_2 = A0_2._maze_buff_row
    L8_2 = L8_2.BuffIcon
    L5_2(L6_2, L7_2, L8_2)
    L6_2 = A0_2
    L5_2 = A0_2._setup_bg
    L7_2 = L2_2
    L8_2 = A0_2._maze_buff_row
    L8_2 = L8_2.Lv
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.panel_buff_rarity
    L6_2 = L5_2
    L5_2 = L5_2.setup_view
    L7_2 = L2_2
    L5_2(L6_2, L7_2)
  end
end
L0_1._setup_icon_and_bg = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_updated
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._maze_buff_row
  L3_2 = L3_2.Lv
  L3_2 = 1 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_up
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._setup_up_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = ipairs
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_bg_normal_table
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.SafeSetActive
    L10_2 = A2_2 == 1 and L6_2 == A1_2
    L8_2(L9_2, L10_2)
  end
  L3_2 = ipairs
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_bg_up_table
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.SafeSetActive
    L10_2 = 1 < A2_2 and L6_2 == A1_2
    L8_2(L9_2, L10_2)
  end
end
L0_1._setup_bg = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_desc
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = L1_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_desc
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
end
L0_1._setup_buff_desc = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.RogueSelectBuffDescPanel
    L8_2 = G
    L8_2 = L8_2.RogueSelectBuffDescPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._preview_buff_row
  L5_2 = L5_2.Lv
  if 2 < L5_2 then
    L6_2 = L4_2
    L5_2 = L4_2.setup_preview_desc
    L7_2 = A0_2._maze_buff_row
    L8_2 = A0_2._preview_buff_row
    L9_2 = A0_2._is_short_desc
    L5_2(L6_2, L7_2, L8_2, L9_2)
  else
    L6_2 = L4_2
    L5_2 = L4_2.setup_desc
    L7_2 = A0_2._maze_buff_row
    L8_2 = A0_2._is_short_desc
    L5_2(L6_2, L7_2, L8_2)
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_btn_enable
  L7_2 = false
  L5_2(L6_2, L7_2)
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.LayoutRebuilder
  L5_2 = L5_2.ForceRebuildLayoutImmediate
  L6_2 = L3_2.CachedRectTransform
  L5_2(L6_2)
  L6_2 = A1_2
  L5_2 = A1_2.OnItemSizeChanged
  L7_2 = A2_2
  L5_2(L6_2, L7_2)
  return L3_2
end
L0_1._on_desc_changed = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._rogue_buff_data
  L1_2 = L1_2 ~= nil
  return L1_2
end
L0_1._has_extra_effect = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_keymap_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._is_desc_can_click
    L3_2 = L3_2(L4_2)
  end
  L1_2(L2_2, L3_2)
end
L0_1._refresh_kepmap_tip = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_click
  L1_2 = L1_2.IsSelectedByController
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.is_gamepad_input
    L1_2 = L1_2()
  end
  L2_2 = A0_2
  L1_2 = A0_2._has_extra_effect
  L1_2 = not L1_2 and L1_2
  return L1_2
end
L0_1._is_desc_can_click = L2_1
return L0_1
