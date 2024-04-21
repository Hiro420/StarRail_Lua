local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.Handbook.Components.RogueHandbookAeonCoverPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Handbook.RogueHandbookAeonDetailPage"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueHandbookAeonCoverPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.root_btn
  L4_2 = A0_2._on_aeon_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_btn
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_item_selected
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._data = A1_2
  A0_2._index = A2_2
  L3_2 = A0_2._data
  L3_2 = L3_2.IsUnLocked
  if L3_2 ~= nil then
    L3_2 = A0_2._data
    L3_2 = L3_2.IsUnLocked
    if L3_2 == false then
      L3_2 = A0_2._binder
      L3_2 = L3_2.aeon_name
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetTextID
      L5_2 = "UIText_Rogue_HandBook_UnKownTitle"
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.aeon_profession_text
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetTextID
      L5_2 = "UIText_Rogue_HandBook_UnKownTitle"
      L3_2(L4_2, L5_2)
      L4_2 = A0_2
      L3_2 = A0_2._async_load_sprite_to
      L5_2 = A0_2._binder
      L5_2 = L5_2.aeon_profession_icon
      L6_2 = "SpriteOutput/TabIcon/Quest/QuestRogueIcon.png"
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.aeon_profession_img
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = false
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.aeon_img
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = false
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.node_aeon_bg
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = false
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.node_lock
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = true
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.lock_img
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetEnabled
      L5_2 = false
      L3_2(L4_2, L5_2)
  end
  else
    L3_2 = A0_2._data
    L3_2 = L3_2.DisplayRow
    L4_2 = A0_2._binder
    L4_2 = L4_2.aeon_name
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = L3_2.RogueAeonName
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.aeon_profession_text
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = L3_2.RogueAeonPathName2
    L4_2(L5_2, L6_2)
    L5_2 = A0_2
    L4_2 = A0_2._async_load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.aeon_profession_icon
    L7_2 = L3_2.AeonIcon
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.aeon_profession_img
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = true
    L4_2(L5_2, L6_2)
    L5_2 = A0_2
    L4_2 = A0_2._async_load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.aeon_profession_img
    L7_2 = L3_2.AeonFigure
    L4_2(L5_2, L6_2, L7_2)
    L5_2 = A0_2
    L4_2 = A0_2._async_load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.aeon_img
    L7_2 = L3_2.AeonImage
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.aeon_img
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_aeon_bg
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_lock
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
  end
  L3_2 = G
  L3_2 = L3_2.RedDotModule
  L3_2 = L3_2.Instance
  L4_2 = L3_2
  L3_2 = L3_2.bind_reddot
  L5_2 = "RogueHandbookAeon"
  L6_2 = A0_2._data
  L6_2 = L6_2.ID
  L7_2 = A0_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.red_dot
  L8_2 = L8_2.transform
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root_btn
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.show_cur_effect = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.root_btn
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._cbk
  if L1_2 then
    L1_2 = A0_2._cbk_owner
    if L1_2 then
      L1_2 = A0_2._cbk
      L2_2 = A0_2._cbk_owner
      L3_2 = A0_2._index
      L4_2 = A0_2._data
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L0_1._on_aeon_btn_clicked = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._cbk_owner = A1_2
  A0_2._cbk = A2_2
end
L0_1.register_click_cbk = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._select_cbk = A2_2
  A0_2._select_cbk_owner = A1_2
end
L0_1.register_select_cbk = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._select_cbk
  if L1_2 then
    L1_2 = A0_2._select_cbk_owner
    if L1_2 then
      L1_2 = A0_2._select_cbk
      L2_2 = A0_2._select_cbk_owner
      L3_2 = A0_2._index
      L1_2(L2_2, L3_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.root_btn
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
end
L0_1._on_item_selected = L1_1
return L0_1
