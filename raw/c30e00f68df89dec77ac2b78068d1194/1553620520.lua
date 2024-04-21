local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Entrance.Components.ChessRogueEntranceInfoItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueEntranceInfoItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_Rogue_Aeon_Buff_Active"
L2_1 = "UIText_Rogue_Aeon_Buff_Inactive"
L3_1 = "UIText_RogueDLC_DiceSurface_Active"
L4_1 = "UIText_RogueDLC_DiceSurface_NotActive"
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.RogueBuffExcelTable
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 == nil then
    return
  end
  L2_2 = A1_2.Title
  if L2_2 ~= nil then
    L2_2 = A1_2.Title
    L2_2 = not L2_2
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.TextID
    L3_2 = L3_2.empty
    if L2_2 ~= L3_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.title
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.title
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = A1_2.Title
      L2_2(L3_2, L4_2)
  end
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.title
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L2_2 = A1_2.Desc
  if L2_2 ~= nil then
    L2_2 = A1_2.Desc
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.TextID
    L3_2 = L3_2.empty
    if L2_2 ~= L3_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.desc
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = A1_2.Param
      if L2_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.desc
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetTextID
        L4_2 = A1_2.Desc
        L5_2 = G
        L5_2 = L5_2.UITextUtils
        L5_2 = L5_2.GetSkillParams
        L6_2 = A1_2.Param
        L5_2, L6_2 = L5_2(L6_2)
        L2_2(L3_2, L4_2, L5_2, L6_2)
      else
        L2_2 = A0_2._binder
        L2_2 = L2_2.desc
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetTextID
        L4_2 = A1_2.Desc
        L2_2(L3_2, L4_2)
      end
  end
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.desc
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1.setup_text = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.setup_text
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.dice_surface_active_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.dice_surface_inactive_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.aeon_active_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.aeon_inactive_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.Icon
  if L2_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.aeon_active_icon
    L5_2 = A1_2.Icon
    L2_2(L3_2, L4_2, L5_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_buff_extra_info
  L2_2(L3_2)
end
L0_1.setup_entrance_buff_view = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.setup_text
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.dice_surface_active_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.dice_surface_active_rarity_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._data
  L4_2 = L4_2.Rarity
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.dice_surface_active_rarity_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_name_color
  L4_2 = A0_2._binder
  L4_2 = L4_2.title
  L5_2 = A0_2._data
  L5_2 = L5_2.Rarity
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.dice_surface_inactive_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.aeon_active_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.aeon_inactive_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.Icon
  if L2_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.dice_surface_active_icon
    L5_2 = A1_2.Icon
    L2_2(L3_2, L4_2, L5_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_dice_extra_info
  L2_2(L3_2)
end
L0_1.setup_entrance_dice_view = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == nil then
    return
  end
  A0_2._data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.setup_text
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.dice_surface_active_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.dice_surface_inactive_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.aeon_active_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._data
  L4_2 = L4_2.IsActive
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.aeon_inactive_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._data
  L4_2 = L4_2.IsActive
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._data
  L2_2 = L2_2.IsActive
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.aeon_active_icon
    L5_2 = A0_2._data
    L5_2 = L5_2.Icon
    L2_2(L3_2, L4_2, L5_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.aeon_inactive_icon
    L5_2 = A0_2._data
    L5_2 = L5_2.Icon
    L2_2(L3_2, L4_2, L5_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2.setup_tag
  L4_2 = A1_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_buff_extra_info
  L2_2(L3_2)
end
L0_1.setup_menu_buff_view = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.setup_text
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.dice_surface_active_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._data
  L4_2 = L4_2.DiceIsActive
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.dice_surface_inactive_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._data
  L4_2 = L4_2.DiceIsActive
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.aeon_active_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.aeon_inactive_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._data
  L2_2 = L2_2.DiceIsActive
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.dice_surface_active_rarity_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = A0_2._data
    L4_2 = L4_2.Rarity
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.dice_surface_active_rarity_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_name_color
    L4_2 = A0_2._binder
    L4_2 = L4_2.title
    L5_2 = A0_2._data
    L5_2 = L5_2.Rarity
    L2_2(L3_2, L4_2, L5_2)
    L3_2 = A0_2
    L2_2 = A0_2._load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.dice_surface_active_icon
    L5_2 = A0_2._data
    L5_2 = L5_2.Icon
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.dice_surface_inactive_rarity_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = A0_2._data
    L4_2 = L4_2.Rarity
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.dice_surface_inactive_rarity_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_name_color
    L4_2 = A0_2._binder
    L4_2 = L4_2.title
    L5_2 = A0_2._data
    L5_2 = L5_2.Rarity
    L2_2(L3_2, L4_2, L5_2)
    L3_2 = A0_2
    L2_2 = A0_2._load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.dice_surface_inactive_icon
    L5_2 = A0_2._data
    L5_2 = L5_2.Icon
    L2_2(L3_2, L4_2, L5_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2.setup_tag
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_dice_extra_info
  L2_2(L3_2)
end
L0_1.setup_menu_dice_view = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A1_2.IsDice
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.setup_dice_tag
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2.setup_aeon_tag
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.setup_tag = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if not A2_2 then
    A2_2 = false
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.status_root
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A1_2.ShowStatus
  if L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.active_root
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = A1_2.IsActive
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.inactive_root
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = A1_2.IsActive
    L5_2 = not L5_2
    L3_2(L4_2, L5_2)
    L3_2 = A1_2.IsActive
    if L3_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.active_txt
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetTextID
      L5_2 = L1_1
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.root_btn
      L3_2.interactable = true
    else
      L3_2 = A0_2._binder
      L3_2 = L3_2.inactive_txt
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetTextID
      L5_2 = L2_1
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.root_btn
      L3_2.interactable = A2_2
    end
  end
end
L0_1.setup_aeon_tag = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.status_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1.setup_dice_tag = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L5_1.GetData
  L2_2 = A0_2._data
  L2_2 = L2_2.BuffID
  L3_2 = A0_2._data
  L3_2 = L3_2.BuffLv
  if not L3_2 then
    L3_2 = 1
  end
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._rogue_row = L1_2
  L1_2 = A0_2._rogue_row
  L1_2 = L1_2 ~= nil
  A0_2._show_extra_effect_hint = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.extra_info_btn
  L1_2.enabled = true
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.extra_info_btn
  L4_2 = A0_2._on_extra_info_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.root_btn
  L4_2 = A0_2._on_root_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_btn
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_root_btn_selected
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_btn
  L2_2 = L1_2
  L1_2 = L1_2.ClearAnimationState
  L1_2(L2_2)
end
L0_1._setup_buff_extra_info = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.RogueDLCAeonDiceSurfaceExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._data
  L2_2 = L2_2.DiceID
  L1_2 = L1_2(L2_2)
  A0_2._dice_row = L1_2
  L1_2 = A0_2._dice_row
  L1_2 = L1_2.ExtraEffect
  L1_2 = L1_2 ~= nil
  A0_2._show_extra_effect_hint = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.extra_info_btn
  L1_2.enabled = true
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.extra_info_btn
  L4_2 = A0_2._on_extra_info_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.root_btn
  L4_2 = A0_2._on_root_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_btn
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_root_btn_selected
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_btn
  L2_2 = L1_2
  L1_2 = L1_2.ClearAnimationState
  L1_2(L2_2)
end
L0_1._setup_dice_extra_info = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._show_extra_effect_hint
  if not L1_2 then
    return
  end
  L1_2 = A0_2._data
  L1_2 = L1_2.IsDice
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.ChessRogueUtils
    L1_2 = L1_2.show_extra_info
    L2_2 = A0_2._rogue_row
    L2_2 = L2_2.ExtraEffectIDList
    L1_2(L2_2)
  else
    L1_2 = G
    L1_2 = L1_2.ChessRogueUtils
    L1_2 = L1_2.show_extra_info
    L2_2 = A0_2._dice_row
    L2_2 = L2_2.ExtraEffect
    L1_2(L2_2)
  end
end
L0_1._on_extra_info_btn_clicked = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._show_extra_effect_hint
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.is_gamepad_input
    L1_2 = L1_2()
    if L1_2 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L1_2 = A0_2._data
  L1_2 = L1_2.IsDice
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.ChessRogueUtils
    L1_2 = L1_2.show_extra_info
    L2_2 = A0_2._rogue_row
    L2_2 = L2_2.ExtraEffectIDList
    L1_2(L2_2)
  else
    L1_2 = G
    L1_2 = L1_2.ChessRogueUtils
    L1_2 = L1_2.show_extra_info
    L2_2 = A0_2._dice_row
    L2_2 = L2_2.ExtraEffect
    L1_2(L2_2)
  end
end
L0_1._on_root_btn_clicked = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._selected_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._selected_callback_self
    if L1_2 ~= nil then
      L1_2 = A0_2._selected_callback
      L2_2 = A0_2._selected_callback_self
      L3_2 = A0_2
      L4_2 = A0_2._binder
      L4_2 = L4_2.root
      L4_2 = L4_2.transform
      L1_2(L2_2, L3_2, L4_2)
    end
  end
  L1_2 = A0_2._show_extra_effect_hint
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.setup_short_cut_hint_panel
    L3_2 = {}
    L4_2 = "ActionGroup_BuffDetail"
    L5_2 = "ActionGroup_Return"
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L1_2(L2_2, L3_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2.setup_short_cut_hint_panel
    L3_2 = {}
    L4_2 = "ActionGroup_Return"
    L3_2[1] = L4_2
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.root_btn
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
end
L0_1._on_root_btn_selected = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_btn
  return L1_2
end
L0_1.get_btn_root = L6_1
function L6_1(A0_2, A1_2, A2_2)
  A0_2._selected_callback = A1_2
  A0_2._selected_callback_self = A2_2
end
L0_1.register_selected_callback = L6_1
return L0_1
