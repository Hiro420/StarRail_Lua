local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Rogue.Handbook.Components.RogueHandbookGridItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueHandbookGridItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "SpriteOutput/ItemIcon/Rarity/FrameItemRarity01.png"
L2_1 = "SpriteOutput/ItemIcon/Rarity/FrameItemRarity03.png"
L3_1 = "SpriteOutput/ItemIcon/Rarity/FrameItemRarity05.png"
L4_1 = "UIText_Rogue_HandBook_UnKownTitle"
function L5_1(A0_2)
  local L1_2
  A0_2._current_star_num = 0
  A0_2._current_visible_star_num = 0
  L1_2 = {}
  A0_2._stars = L1_2
end
L0_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
    L0_3 = L0_3._on_root_btn_clicked
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2
  A0_2._index = A1_2
  L6_2 = A4_2 == nil
  A0_2._is_miracle = L6_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.root_btn
  L7_2 = L6_2
  L6_2 = L6_2.ClearAnimationState
  L6_2(L7_2)
  L7_2 = A0_2
  L6_2 = A0_2._set_real_icon_path
  L8_2 = A3_2
  L6_2(L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2._load_sprite_to
  L8_2 = A0_2._real_icon
  L9_2 = A2_2
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = A0_2
  L6_2 = A0_2._set_text_panel
  L8_2 = A5_2
  L9_2 = A3_2
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = A0_2
  L6_2 = A0_2._set_rank_panel
  L8_2 = A4_2
  L6_2(L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2._set_bg
  L8_2 = A4_2
  L6_2(L7_2, L8_2)
end
L0_1.setup_view = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = G
  L3_2 = L3_2.RedDotModule
  L3_2 = L3_2.Instance
  L4_2 = L3_2
  L3_2 = L3_2.bind_reddot
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = A0_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_reddot
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1.bind_reddot = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._root_btn_cbk
  if L1_2 ~= nil then
    L1_2 = A0_2._root_btn_cbk_owner
    if L1_2 ~= nil then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L1_2 = A0_2._root_btn_cbk
  L2_2 = A0_2._root_btn_cbk_owner
  L3_2 = A0_2._index
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.root_btn
  L3_2 = L3_2.transform
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
end
L0_1._on_root_btn_clicked = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._root_btn_cbk = A2_2
  A0_2._root_btn_cbk_owner = A1_2
end
L0_1.register_btn_callback = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root_btn
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.change_btn_status = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.grey_icon
  L2_2 = L2_2.transform
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.normal_icon
  L2_2 = L2_2.transform
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.normal_icon
    A0_2._real_icon = L2_2
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.grey_icon
    A0_2._real_icon = L2_2
  end
end
L0_1._set_real_icon_path = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A1_2 == nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.name_root
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.name_root
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.name_txt
    L4_2 = L3_2
    L3_2 = L3_2.SetSingleLineEllipsis
    L5_2 = true
    L3_2(L4_2, L5_2)
    if A2_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.name_txt
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetTextID
      L5_2 = A1_2
      L3_2(L4_2, L5_2)
    else
      L3_2 = A0_2._binder
      L3_2 = L3_2.name_txt
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetTextID
      L5_2 = L4_1
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1._set_text_panel = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A1_2 == nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.star_loader
    L2_2 = L2_2.transform
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    return
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.star_loader
    L2_2 = L2_2.transform
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
  L2_2 = 0
  L3_2 = A0_2._current_star_num
  if A1_2 > L3_2 then
    L3_2 = A0_2._current_star_num
    L2_2 = A1_2 - L3_2
    L3_2 = 0
    L4_2 = L2_2 - 1
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L8_2 = A0_2
      L7_2 = A0_2.instantiate_object
      L9_2 = A0_2._binder
      L9_2 = L9_2.star_loader
      L9_2 = L9_2.Prefab
      L10_2 = A0_2._binder
      L10_2 = L10_2.star_loader
      L10_2 = L10_2.transform
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = A0_2._stars
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
    A0_2._current_star_num = A1_2
  end
  L3_2 = 1
  L4_2 = A0_2._current_star_num
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    if L6_2 <= A1_2 then
      L7_2 = A0_2._stars
      L7_2 = L7_2[L6_2]
      L7_2 = L7_2.transform
      L8_2 = L7_2
      L7_2 = L7_2.SafeSetActive
      L9_2 = true
      L7_2(L8_2, L9_2)
    else
      L7_2 = A0_2._stars
      L7_2 = L7_2[L6_2]
      L7_2 = L7_2.transform
      L8_2 = L7_2
      L7_2 = L7_2.SafeSetActive
      L9_2 = false
      L7_2(L8_2, L9_2)
    end
  end
end
L0_1._set_rank_panel = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 == nil then
    A1_2 = 0
  end
  L2_2 = 0
  L3_2 = 3
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    if L5_2 == A1_2 then
      L6_2 = A0_2._binder
      L6_2 = L6_2.bg
      L6_2 = L6_2[L5_2]
      L7_2 = L6_2
      L6_2 = L6_2.SafeSetActive
      L8_2 = true
      L6_2(L7_2, L8_2)
    else
      L6_2 = A0_2._binder
      L6_2 = L6_2.bg
      L6_2 = L6_2[L5_2]
      L7_2 = L6_2
      L6_2 = L6_2.SafeSetActive
      L8_2 = false
      L6_2(L7_2, L8_2)
    end
  end
end
L0_1._set_bg = L5_1
return L0_1
