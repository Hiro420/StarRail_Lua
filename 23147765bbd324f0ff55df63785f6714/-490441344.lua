local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Dice.ChessRogueUnderLinePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Dice.ChessRogueUnderLinePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Tools.RogueNousUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueDiceSurfaceItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = L0_1._on_click
  L1_2(L2_2, L3_2, L4_2)
  A0_2.img_icon = nil
  A0_2.rarity_panel = nil
  A0_2._underline_panel = nil
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_btn_selected
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._list_item_index = A1_2
  L4_2 = A0_2
  L3_2 = A0_2.create_panel
  L5_2 = G
  L5_2 = L5_2.ChessRogueUnderLinePanel
  L6_2 = G
  L6_2 = L6_2.ChessRogueUnderLinePanelBinder
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A0_2._underline_panel = L3_2
  L3_2 = A0_2._underline_panel
  L4_2 = L3_2
  L3_2 = L3_2.bind
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_underline_root
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.setup_view
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L0_1.setup_rule_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._list_item_index = A1_2
  L4_2 = A0_2
  L3_2 = A0_2.create_panel
  L5_2 = G
  L5_2 = L5_2.ChessRogueUnderLinePanel
  L6_2 = G
  L6_2 = L6_2.ChessRogueUnderLinePanelBinder
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A0_2._underline_panel = L3_2
  L3_2 = A0_2._underline_panel
  L4_2 = L3_2
  L3_2 = L3_2.bind
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_underline_txt
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.setup_view
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L0_1.setup_cheat_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._underline_panel
  L2_2 = L1_2
  L1_2 = L1_2.is_extra_info_available
  return L1_2(L2_2)
end
L0_1.is_extra_info_available = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 ~= nil then
    L2_2 = A0_2.img_icon
    if L2_2 ~= nil then
      L2_2 = A0_2.rarity_panel
      if L2_2 ~= nil then
        goto lbl_10
      end
    end
  end
  do return end
  ::lbl_10::
  L3_2 = A0_2
  L2_2 = A0_2._setup_icon_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.DiceSurfaceName
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.DiceSurfaceDesc
  L5_2 = G
  L5_2 = L5_2.UITextUtils
  L5_2 = L5_2.GetSkillParams
  L6_2 = A1_2.DescParam
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_rarity_view
  L4_2 = A1_2.Rarity
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_name
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._underline_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A1_2.ExtraEffect
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.LayoutRebuilder
  L2_2 = L2_2.ForceRebuildLayoutImmediate
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L3_2 = L3_2.transform
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2.img_icon
  L5_2 = A1_2.DiceSurfaceIcon
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A1_2.IconNeedSetColor
  if L2_2 then
    L2_2 = A0_2.img_icon
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetColor
    L4_2 = G
    L4_2 = L4_2.RogueNousUtils
    L4_2 = L4_2.get_color_by_surface_rarity
    L5_2 = A1_2.Rarity
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._setup_icon_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2.rarity_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.rarity_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_name_color
  L5_2 = A2_2
  L6_2 = A1_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._setup_rarity_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_cur_tag
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_active
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_inactive
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not A1_2
  L3_2(L4_2, L5_2)
  if A1_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_icon_active
    A0_2.img_icon = L3_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.rarity_panel_active
    A0_2.rarity_panel = L3_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_cur_tag
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_icon_inactive
    A0_2.img_icon = L3_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.rarity_panel_inactive
    A0_2.rarity_panel = L3_2
  end
end
L0_1.set_active_tag_node = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_tag_rolled_out
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.LayoutRebuilder
  L2_2 = L2_2.ForceRebuildLayoutImmediate
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L3_2 = L3_2.transform
  L2_2(L3_2)
end
L0_1.set_rolled_out_tag_active = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_btn_selected = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._click_callback_listener = A1_2
  A0_2._click_callback = A2_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._selected_callback_listener = A1_2
  A0_2._selected_callback = A2_2
end
L0_1.register_selected_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._list_item_index
  if L1_2 ~= nil then
    L1_2 = A0_2._click_callback_listener
    if L1_2 ~= nil then
      L1_2 = A0_2._click_callback
      if L1_2 ~= nil then
        L1_2 = A0_2._click_callback
        L2_2 = A0_2._click_callback_listener
        L3_2 = A0_2._list_item_index
        L4_2 = A0_2
        L1_2(L2_2, L3_2, L4_2)
      end
    end
  end
end
L0_1._on_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._list_item_index
  if L1_2 ~= nil then
    L1_2 = A0_2._selected_callback_listener
    if L1_2 ~= nil then
      L1_2 = A0_2._selected_callback
      if L1_2 ~= nil then
        L1_2 = A0_2._selected_callback
        L2_2 = A0_2._selected_callback_listener
        L3_2 = A0_2._list_item_index
        L4_2 = A0_2
        L1_2(L2_2, L3_2, L4_2)
      end
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_selected = L1_1
return L0_1
