local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Entrance.Components.ChessRogueEntranceDiceInfoDisplayPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Tools.ChessRogueUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueEntranceDiceInfoDisplayPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_panels
  L1_2(L2_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_dice_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_content_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_dice_surface_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_extra_info_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._init_navigation
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.dice_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._data
  L3_2 = L3_2.DiceData
  L3_2 = L3_2.TitleID
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.dice_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._data
  L3_2 = L3_2.DiceData
  L3_2 = L3_2.ContentID
  L1_2(L2_2, L3_2)
end
L0_1._setup_dice_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.common_desc_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._data
  L3_2 = L3_2.ContentData
  L3_2 = L3_2.TitleID
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.common_desc
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = A0_2._data
  L3_2 = L3_2.ContentData
  L3_2 = L3_2.DescContent
  L1_2(L2_2, L3_2)
end
L0_1._setup_content_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  A0_2._dice_panels = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.desc_item_roots
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.ChessRogueEntranceInfoItem
    L9_2 = G
    L9_2 = L9_2.ChessRogueEntranceInfoItemBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.register_selected_callback
    L9_2 = A0_2._on_dice_panel_selected
    L10_2 = A0_2
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._dice_panels
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._init_panels = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._data
  L1_2 = L1_2.DiceSurfaceData
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_dice_surface_panel
  L1_2(L2_2)
end
L0_1._setup_dice_surface_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = ipairs
  L2_2 = A0_2._dice_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._data
    L6_2 = L6_2.DiceSurfaceData
    L6_2 = L6_2[L4_2]
    if L6_2 ~= nil then
      L7_2 = L5_2
      L6_2 = L5_2.safe_set_active
      L8_2 = true
      L6_2(L7_2, L8_2)
      L7_2 = L5_2
      L6_2 = L5_2.setup_entrance_dice_view
      L8_2 = A0_2._data
      L8_2 = L8_2.DiceSurfaceData
      L8_2 = L8_2[L4_2]
      L6_2(L7_2, L8_2)
    else
      L7_2 = L5_2
      L6_2 = L5_2.safe_set_active
      L8_2 = false
      L6_2(L7_2, L8_2)
    end
  end
end
L0_1._refresh_dice_surface_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._data
  L1_2 = L1_2.DiceData
  L1_2 = L1_2.ExtraInfo
  L1_2 = L1_2 ~= nil
  A0_2._show_extra_effect_hint = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.dice_effect_btn
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_extra_info_btn_selected
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._show_extra_effect_hint
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._bind_btn_callback
    L3_2 = A0_2._binder
    L3_2 = L3_2.dice_effect_btn
    L4_2 = A0_2._on_extra_info_btn_clicked
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._setup_extra_info_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._show_extra_effect_hint
  if not L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.ChessRogueUtils
  L1_2 = L1_2.show_extra_info
  L2_2 = A0_2._data
  L2_2 = L2_2.DiceData
  L2_2 = L2_2.ExtraInfo
  L1_2(L2_2)
end
L0_1._on_extra_info_btn_clicked = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
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
  L3_2 = L3_2.dice_effect_btn
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._parent
  L2_2 = L1_2
  L1_2 = L1_2.get_scroll_rect
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.SetVerticalScrollPercent
  L4_2 = 1
  L2_2(L3_2, L4_2)
end
L0_1._on_extra_info_btn_selected = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._parent
  L4_2 = L3_2
  L3_2 = L3_2.get_scroll_rect
  L3_2 = L3_2(L4_2)
  L5_2 = L3_2
  L4_2 = L3_2.ScrollToTransform
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
end
L0_1._on_dice_panel_selected = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = A0_2._binder
  L2_2 = L2_2.dice_effect_btn
  L1_2[1] = L2_2
  L2_2 = ipairs
  L3_2 = A0_2._dice_panels
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.is_active
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = L1_2
      L10_2 = L6_2
      L9_2 = L6_2.get_btn_root
      L9_2, L10_2 = L9_2(L10_2)
      L7_2(L8_2, L9_2, L10_2)
    end
  end
  L2_2 = G
  L2_2 = L2_2.UIUtils
  L2_2 = L2_2.setup_navigation
  L3_2 = L1_2
  L4_2 = NavigationType
  L4_2 = L4_2.Vertical
  L2_2(L3_2, L4_2)
end
L0_1._init_navigation = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.dice_effect_btn
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L1_1
return L0_1
