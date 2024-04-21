local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.Talent.RogueTalentItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Talent.RogueTalentItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueTalentTreeRowPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._talent_item_panels = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.talent_tree_item_trans_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.RogueTalentItemPanel
    L9_2 = G
    L9_2 = L9_2.RogueTalentItemPanelBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._talent_item_panels
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A1_2
  L3_2 = A1_2.get_data_items
  L3_2 = L3_2(L4_2)
  A0_2._items = L3_2
  L3_2 = 1
  L4_2 = A0_2._talent_item_panels
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._items
    L8_2 = L7_2
    L7_2 = L7_2.Get
    L9_2 = L6_2 - 1
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = A0_2._talent_item_panels
    L8_2 = L8_2[L6_2]
    L9_2 = L8_2
    L8_2 = L8_2.setup_view
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    L8_2 = A0_2._talent_item_panels
    L8_2 = L8_2[L6_2]
    L9_2 = L8_2
    L8_2 = L8_2.set_selected
    L10_2 = L7_2 == A2_2
    L8_2(L9_2, L10_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._setup_line_data
  L3_2(L4_2)
end
L0_1.setup_row_data = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._talent_item_panels
  L2_2 = L2_2[A1_2]
  return L2_2
end
L0_1.try_get_item_panel_by_index = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = 1
  L5_2 = A0_2._talent_item_panels
  L5_2 = #L5_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2._talent_item_panels
    L8_2 = L8_2[L7_2]
    L9_2 = L8_2
    L8_2 = L8_2.set_click_callback
    L10_2 = A1_2
    L11_2 = A2_2
    L12_2 = A3_2
    L13_2 = L7_2 - 1
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  end
end
L0_1.set_item_click_callback = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._talent_item_panels
  L1_2 = #L1_2
  return L1_2
end
L0_1.get_item_count = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._talent_item_panels
  if L1_2 ~= nil then
    L1_2 = A0_2._talent_item_panels
    L1_2 = #L1_2
    if L1_2 ~= 0 then
      goto lbl_10
    end
  end
  L1_2 = nil
  do return L1_2 end
  ::lbl_10::
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = A0_2._talent_item_panels
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L1_2
    L9_2 = L6_2._binder
    L9_2 = L9_2.button
    L7_2(L8_2, L9_2)
  end
  return L1_2
end
L0_1.get_btn_list = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._talent_item_panels
  if L2_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = A0_2._talent_item_panels
  L2_2 = L2_2[A1_2]
  if L2_2 == nil then
    L3_2 = nil
    return L3_2
  end
  L4_2 = L2_2
  L3_2 = L2_2.get_first_selected_object
  return L3_2(L4_2)
end
L0_1.get_btn_go = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = 1
  L3_2 = A0_2._talent_item_panels
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._talent_item_panels
    L6_2 = L6_2[L5_2]
    L8_2 = L6_2
    L7_2 = L6_2.get_item_data
    L7_2 = L7_2(L8_2)
    if L7_2 == A1_2 then
      return L6_2
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_item_panel_by_data = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = nil
  L3_2 = A0_2
  L2_2 = A0_2.get_item_count
  L2_2 = L2_2(L3_2)
  if L2_2 == 1 then
    L2_2 = A0_2._items
    L3_2 = L2_2
    L2_2 = L2_2.Get
    L4_2 = 0
    L2_2 = L2_2(L3_2, L4_2)
    L4_2 = L2_2
    L3_2 = L2_2.IsActivated
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2.get_blackboard
      L3_2 = L3_2(L4_2)
      L4_2 = L3_2
      L3_2 = L3_2.query
      L5_2 = "LineActiveColor"
      L3_2 = L3_2(L4_2, L5_2)
      L1_2 = L3_2
    else
      L4_2 = A0_2
      L3_2 = A0_2.get_blackboard
      L3_2 = L3_2(L4_2)
      L4_2 = L3_2
      L3_2 = L3_2.query
      L5_2 = "LineUnActiveColor"
      L3_2 = L3_2(L4_2, L5_2)
      L1_2 = L3_2
    end
    L4_2 = A0_2
    L3_2 = A0_2._set_all_lines_color
    L5_2 = L1_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2.get_item_count
    L2_2 = L2_2(L3_2)
    if L2_2 == 3 then
      L2_2 = 1
      L3_2 = A0_2._items
      L4_2 = L3_2
      L3_2 = L3_2.Count
      L3_2 = L3_2(L4_2)
      L4_2 = 1
      for L5_2 = L2_2, L3_2, L4_2 do
        L6_2 = A0_2._items
        L7_2 = L6_2
        L6_2 = L6_2.Get
        L8_2 = L5_2 - 1
        L6_2 = L6_2(L7_2, L8_2)
        L8_2 = L6_2
        L7_2 = L6_2.IsActivated
        L7_2 = L7_2(L8_2)
        if L7_2 then
          L8_2 = A0_2
          L7_2 = A0_2.get_blackboard
          L7_2 = L7_2(L8_2)
          L8_2 = L7_2
          L7_2 = L7_2.query
          L9_2 = "LineActiveColor"
          L7_2 = L7_2(L8_2, L9_2)
          L1_2 = L7_2
        else
          L8_2 = A0_2
          L7_2 = A0_2.get_blackboard
          L7_2 = L7_2(L8_2)
          L8_2 = L7_2
          L7_2 = L7_2.query
          L9_2 = "LineUnActiveColor"
          L7_2 = L7_2(L8_2, L9_2)
          L1_2 = L7_2
        end
        L8_2 = A0_2
        L7_2 = A0_2._set_one_line_color_by_index
        L9_2 = L5_2
        L10_2 = L1_2
        L7_2(L8_2, L9_2, L10_2)
      end
    end
  end
end
L0_1._setup_line_data = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_lines
  L3_2 = L3_2[A1_2]
  if L3_2 then
    L5_2 = L3_2
    L4_2 = L3_2.SafeSetColor
    L6_2 = A2_2
    L4_2(L5_2, L6_2)
  end
end
L0_1._set_one_line_color_by_index = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = ipairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_lines
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.SafeSetColor
    L9_2 = A1_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._set_all_lines_color = L1_1
return L0_1
