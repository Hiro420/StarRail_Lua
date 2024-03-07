local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.Buff.Panels.RogueSelectBuffDescPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Buff.Panels.RogueSelectBuffDescPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.RogueUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueSelectBuffRowPanel"
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
  A0_2._rogue_buff_row = nil
  A0_2._is_short_desc = false
  A0_2._show_differ = false
  A0_2._is_selected = false
  A0_2._can_click_desc_when_not_selected = false
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_click
  L1_2.IsClearSelectedByInputSwitched = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_click
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_click
    L2_3 = A0_2._index
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
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
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L1_1
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_selected_anim_end
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_handbook_hint
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._rogue_buff_data = nil
  A0_2._rogue_buff_row = nil
  A0_2._callback_func = nil
end
L0_1._on_dispose = L2_1
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
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_click
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.btn_click
      L1_2 = L1_2.gameObject
      return L1_2
    end
  end
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._is_short_desc = A1_2
  L3_2 = A0_2._rogue_buff_data
  if L3_2 ~= nil and A2_2 == true then
    L4_2 = A0_2
    L3_2 = A0_2._setup_buff_desc
    L3_2(L4_2)
  end
end
L0_1.set_short_desc = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_click
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_interactable = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_click
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  A0_2._is_selected = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_desc
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_desc
    L3_2 = L2_2
    L2_2 = L2_2.RefreshAllShownItem
    L2_2(L3_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_kepmap_tip
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.set_in_control_move_enabled
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_selected = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_in_control_move
  L2_2.ActionEnabled = A1_2
end
L0_1.set_in_control_move_enabled = L2_1
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
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  A0_2._rogue_buff_data = A1_2
  A0_2._index = A2_2
  L5_2 = A0_2._rogue_buff_data
  if L5_2 ~= nil then
    L5_2 = A0_2._rogue_buff_data
    L5_2 = L5_2.BuffID
    if L5_2 ~= 0 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.RogueStatic
  L5_2 = L5_2.GetCurModeRogueBuffInfo
  L5_2 = L5_2()
  L7_2 = L5_2
  L6_2 = L5_2.GetAchivedBuffList
  L6_2 = L6_2(L7_2)
  L7_2 = G
  L7_2 = L7_2.RogueUtils
  L7_2 = L7_2.get_rogue_add_level_maze_buff_row
  L8_2 = A0_2._rogue_buff_data
  L9_2 = L6_2
  L7_2 = L7_2(L8_2, L9_2)
  A0_2._rogue_buff_row = L7_2
  L8_2 = A0_2
  L7_2 = A0_2._setup_buff
  L7_2(L8_2)
  A0_2._callback_func = A3_2
  A0_2._callback_self = A4_2
  L8_2 = A0_2
  L7_2 = A0_2._bind_btn_callback
  L9_2 = A0_2._binder
  L9_2 = L9_2.btn_click
  L10_2 = L0_1._on_click
  L11_2 = A2_2
  L7_2(L8_2, L9_2, L10_2, L11_2)
end
L0_1.setup_add_level_view = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  A0_2._rogue_buff_data = A1_2
  A0_2._index = A2_2
  L5_2 = A0_2._rogue_buff_data
  if L5_2 ~= nil then
    L5_2 = A0_2._rogue_buff_data
    L5_2 = L5_2.BuffID
    if L5_2 ~= 0 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.RogueStatic
  L5_2 = L5_2.GetCurModeRogueBuffInfo
  L5_2 = L5_2()
  L7_2 = L5_2
  L6_2 = L5_2.GetAchivedBuffList
  L6_2 = L6_2(L7_2)
  L7_2 = G
  L7_2 = L7_2.RogueUtils
  L7_2 = L7_2.get_rogue_add_level_maze_buff_row
  L8_2 = A0_2._rogue_buff_data
  L9_2 = L6_2
  L7_2 = L7_2(L8_2, L9_2)
  A0_2._rogue_buff_row = L7_2
  L7_2 = A0_2._rogue_buff_row
  L7_2 = L7_2.Lv
  L8_2 = A0_2._rogue_buff_data
  L8_2 = L8_2.Level
  L7_2 = L7_2 ~= L8_2
  A0_2._show_differ = L7_2
  L7_2 = A0_2._show_differ
  if L7_2 then
    L7_2 = G
    L7_2 = L7_2.BuffUtils
    L7_2 = L7_2.GetMazeBuffData
    L8_2 = A0_2._rogue_buff_data
    L8_2 = L8_2.BuffID
    L9_2 = A0_2._rogue_buff_row
    L9_2 = L9_2.Lv
    L10_2 = A0_2._rogue_buff_data
    L10_2 = L10_2.Level
    L9_2 = L9_2 - L10_2
    L7_2 = L7_2(L8_2, L9_2)
    A0_2._last_buff_row = L7_2
  end
  L8_2 = A0_2
  L7_2 = A0_2._setup_buff
  L7_2(L8_2)
  A0_2._callback_func = A3_2
  A0_2._callback_self = A4_2
  L8_2 = A0_2
  L7_2 = A0_2._bind_btn_callback
  L9_2 = A0_2._binder
  L9_2 = L9_2.btn_click
  L10_2 = L0_1._on_click
  L11_2 = A2_2
  L7_2(L8_2, L9_2, L10_2, L11_2)
end
L0_1.setup_differ_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._rogue_buff_data = A1_2
  L4_2 = A1_2
  L3_2 = A1_2.GetMazeBuffRow
  L3_2 = L3_2(L4_2)
  A0_2._rogue_buff_row = L3_2
  A0_2._can_click_desc_when_not_selected = A2_2
  L3_2 = A0_2._rogue_buff_row
  if L3_2 == nil then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._setup_buff
  L3_2(L4_2)
end
L0_1.setup_origin_view = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L6_2 = A0_2
  L5_2 = A0_2.setup_add_level_view
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = A3_2
  L10_2 = A4_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_updated
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = "UIText_RogueNous_BuffEnhanced_Tip_1"
  L5_2(L6_2, L7_2)
end
L0_1.setup_select_to_enhance_view = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._index = A1_2
  A0_2._callback_func = A2_2
  A0_2._callback_self = A3_2
  L5_2 = A0_2
  L4_2 = A0_2._bind_btn_callback
  L6_2 = A0_2._binder
  L6_2 = L6_2.btn_click
  L7_2 = L0_1._on_click
  L8_2 = A1_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1.set_call_back = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._anim_end_callback = A1_2
  A0_2._anim_end_callback_self = A2_2
end
L0_1.set_selected_anim_end_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.GetAnimationState
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L3_2 = L1_1
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.length
  if not L1_2 then
    L1_2 = 1
  end
  L3_2 = A0_2
  L2_2 = A0_2.show_full_screen_block
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1.play_select_anim = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_click
  return L1_2
end
L0_1.get_navi_btn = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_desc
  L1_2 = L1_2.ScrollRect
  return L1_2
end
L0_1.get_desc_scroll_rect = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_desc
  L2_2.ForbidRepeatUpdateCheck = A1_2
end
L0_1.set_desc_list_forbid_repeat_update_check = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._anim_end_callback
  L3_2 = A0_2._anim_end_callback_self
  L1_2(L2_2, L3_2)
end
L0_1._on_selected_anim_end = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._callback_func
  if L2_2 ~= nil then
    L2_2 = A0_2._callback_self
    if L2_2 ~= nil then
      L2_2 = A0_2._callback_func
      L3_2 = A0_2._callback_self
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2.save_navigation_target
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_click
  L4_2 = L4_2.gameObject
  L2_2(L3_2, L4_2)
end
L0_1._on_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_title
  L3_2 = A0_2._rogue_buff_row
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
  L3_2 = A0_2._rogue_buff_data
  L1_2(L2_2, L3_2)
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
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = A1_2
  L2_2 = A1_2.GetRogueAeonID
  L2_2 = L2_2(L3_2)
  L4_2 = A1_2
  L3_2 = A1_2.GetRogueBuffRarity
  L3_2 = L3_2(L4_2)
  L4_2 = L2_2 ~= 0
  L6_2 = A1_2
  L5_2 = A1_2.IsBattleEventBuffCross
  L5_2 = L5_2(L6_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_img_aeon
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = L4_2 or L8_2
  if L4_2 then
    L8_2 = not L5_2
  end
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_img_cross
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = L4_2 or L8_2
  if L4_2 then
    L8_2 = L5_2
  end
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_img_icon
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = not L4_2
  L6_2(L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2._setup_up_view
  L8_2 = L4_2
  L6_2(L7_2, L8_2)
  if L4_2 then
    if L5_2 then
      L7_2 = A0_2
      L6_2 = A0_2._async_load_sprite_to
      L8_2 = A0_2._binder
      L8_2 = L8_2.img_cross
      L9_2 = A1_2.AeonCrossIcon
      L6_2(L7_2, L8_2, L9_2)
    else
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.GameCore
      L6_2 = L6_2.RogueAeonExcelTable
      L6_2 = L6_2.GetData
      L7_2 = L2_2
      L8_2 = 1
      L6_2 = L6_2(L7_2, L8_2)
      if L6_2 ~= nil then
        L7_2 = CS
        L7_2 = L7_2.RPG
        L7_2 = L7_2.Client
        L7_2 = L7_2.RogueStatic
        L7_2 = L7_2.GetRogueAeonDisplayRow
        L8_2 = L6_2
        L7_2 = L7_2(L8_2)
        L9_2 = A0_2
        L8_2 = A0_2._async_load_sprite_to
        L10_2 = A0_2._binder
        L10_2 = L10_2.img_aeon
        L11_2 = L7_2.AeonBuffIcon
        L8_2(L9_2, L10_2, L11_2)
      end
    end
    L7_2 = A0_2
    L6_2 = A0_2._setup_bg
    L8_2 = 0
    L9_2 = 0
    L6_2(L7_2, L8_2, L9_2)
  else
    L7_2 = A0_2
    L6_2 = A0_2._async_load_sprite_to
    L8_2 = A0_2._binder
    L8_2 = L8_2.img_icon
    L9_2 = A0_2._rogue_buff_row
    L9_2 = L9_2.BuffIcon
    L6_2(L7_2, L8_2, L9_2)
    L7_2 = A0_2
    L6_2 = A0_2._setup_bg
    L8_2 = L3_2
    L9_2 = A0_2._rogue_buff_row
    L9_2 = L9_2.Lv
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.panel_buff_rarity
    L7_2 = L6_2
    L6_2 = L6_2.setup_view
    L8_2 = L3_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._setup_icon_and_bg = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = not A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_updated
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_up
  L4_2 = L3_2
  L3_2 = L3_2.safe_set_active
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._show_differ
  if L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.panel_up
    L4_2 = L3_2
    L3_2 = L3_2.safe_set_active
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.panel_up
    L4_2 = L3_2
    L3_2 = L3_2.setup_view
    L5_2 = A0_2._last_buff_row
    L5_2 = L5_2.Lv
    L6_2 = A0_2._rogue_buff_row
    L6_2 = L6_2.Lv
    L7_2 = A0_2._last_buff_row
    L7_2 = L7_2.Lv
    L8_2 = A0_2._rogue_buff_row
    L8_2 = L8_2.LvMax
    L7_2 = L7_2 == L8_2
    L3_2(L4_2, L5_2, L6_2, L7_2)
  elseif L2_2 then
    L3_2 = A0_2._rogue_buff_row
    L3_2 = L3_2.LvMax
    if 2 < L3_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.panel_up
      L4_2 = L3_2
      L3_2 = L3_2.safe_set_active
      L5_2 = true
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.panel_up
      L4_2 = L3_2
      L3_2 = L3_2.setup_level_view
      L5_2 = A0_2._rogue_buff_row
      L5_2 = L5_2.Lv
      L6_2 = A0_2._rogue_buff_row
      L6_2 = L6_2.Lv
      L7_2 = A0_2._rogue_buff_row
      L7_2 = L7_2.LvMax
      L6_2 = L6_2 == L7_2
      L3_2(L4_2, L5_2, L6_2)
    else
      L3_2 = A0_2._binder
      L3_2 = L3_2.node_updated
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = true
      L3_2(L4_2, L5_2)
    end
  end
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
  L5_2 = A0_2._show_differ
  if L5_2 then
    L6_2 = L4_2
    L5_2 = L4_2.setup_differ_desc
    L7_2 = A0_2._rogue_buff_row
    L8_2 = A0_2._last_buff_row
    L9_2 = A0_2._is_short_desc
    L5_2(L6_2, L7_2, L8_2, L9_2)
  else
    L6_2 = L4_2
    L5_2 = L4_2.setup_desc
    L7_2 = A0_2._rogue_buff_row
    L8_2 = A0_2._is_short_desc
    L5_2(L6_2, L7_2, L8_2)
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_btn_enable
  L8_2 = A0_2
  L7_2 = A0_2._is_desc_can_click
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_callback
  L7_2 = A0_2._on_desc_click
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
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
L0_1._is_rogue_buff_has_extra_effect = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._rogue_buff_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._can_click_desc_when_not_selected
  if L1_2 ~= true then
    L1_2 = A0_2._is_selected
    if L1_2 ~= true then
      goto lbl_24
    end
  end
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
    goto lbl_27
    ::lbl_24::
    L2_2 = A0_2
    L1_2 = A0_2._on_click
    L3_2 = A0_2._index
    L1_2(L2_2, L3_2)
  end
  ::lbl_27::
end
L0_1._on_desc_click = L2_1
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
  L1_2 = A0_2._can_click_desc_when_not_selected
  if L1_2 ~= true then
    L1_2 = A0_2._is_selected
    if not L1_2 then
      goto lbl_18
    end
  end
  L1_2 = A0_2._rogue_buff_data
  L1_2 = L1_2 ~= nil
  ::lbl_18::
  return L1_2
end
L0_1._is_desc_can_click = L2_1
return L0_1
