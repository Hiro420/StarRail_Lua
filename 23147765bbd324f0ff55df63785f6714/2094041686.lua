local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueEnhanceBuffTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 100
function L2_1(A0_2, A1_2)
  A0_2._rogue_buff_type_row = A1_2
end
L0_1.set_tab_data = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A0_2._rogue_buff_type_row
  if L2_2 == nil then
    return A1_2
  end
  L2_2 = A0_2._rogue_buff_type_row
  L2_2 = L2_2.RogueBuffType
  L3_2 = L1_1
  if L2_2 == L3_2 then
    return A1_2
  end
  L3_2 = {}
  L4_2 = pairs
  L5_2 = A1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L10_2 = L8_2
    L9_2 = L8_2.GetRogueBuffType
    L9_2 = L9_2(L10_2)
    if L9_2 == L2_2 then
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L3_2
      L11_2 = #L3_2
      L11_2 = L11_2 + 1
      L12_2 = L8_2
      L9_2(L10_2, L11_2, L12_2)
    end
  end
  return L3_2
end
L0_1.filter = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = 0
  L3_2 = A0_2._rogue_buff_type_row
  L3_2 = L3_2.RogueBuffType
  L4_2 = L1_1
  if L3_2 == L4_2 then
    L2_2 = #A1_2
  else
    L4_2 = pairs
    L5_2 = A1_2
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2, L8_2 in L4_2, L5_2, L6_2 do
      L10_2 = L8_2
      L9_2 = L8_2.GetRogueBuffType
      L9_2 = L9_2(L10_2)
      if L9_2 == L3_2 then
        L2_2 = L2_2 + 1
      end
    end
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_num
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
end
L0_1.refresh_num = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._rogue_buff_type_row
  if L1_2 ~= nil then
    L1_2 = A0_2._rogue_buff_type_row
    L1_2 = L1_2.RogueBuffTypeTitle
    return L1_2
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_tab_title_text_id = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 == nil then
    return
  end
  L2_2 = A0_2._rogue_buff_type_row
  L2_2 = L2_2 == nil
  if L2_2 then
    L4_2 = A1_2
    L3_2 = A1_2.SafeSetTextID
    L5_2 = "UIText_Rogue_Menu_Empty_1"
    L3_2(L4_2, L5_2)
  else
    L4_2 = A1_2
    L3_2 = A1_2.SafeSetTextID
    L5_2 = "UIText_Rogue_Menu_Empty_3"
    L6_2 = G
    L6_2 = L6_2.TextmapStatic
    L6_2 = L6_2.GetText
    L7_2 = A0_2._rogue_buff_type_row
    L7_2 = L7_2.RogueBuffTypeTextmapID
    L6_2, L7_2 = L6_2(L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end
L0_1.setup_empty_tip = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._rogue_buff_type_row
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._async_load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.icon_normal
    L4_2 = A0_2._rogue_buff_type_row
    L4_2 = L4_2.RogueBuffTypeIcon
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2
    L1_2 = A0_2._async_load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.icon_selected
    L4_2 = A0_2._rogue_buff_type_row
    L4_2 = L4_2.RogueBuffTypeIcon
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_num
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_added = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_select = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_unselect = L2_1
return L0_1
