local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.EvolveBuildSkillCategoryListBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.EvolveBuildSkillItem"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "EvolveBuildSkillCategoryList"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.title
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetTextID
  L8_2 = A1_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.skill_item_list
  L7_2 = L6_2
  L6_2 = L6_2.init
  L8_2 = A0_2
  L9_2 = #A2_2
  function L10_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L4_3 = A1_3
    L3_3 = A1_3.NewListViewItem
    L3_3 = L3_3(L4_3)
    L4_3 = L3_3.UserObjectData
    if L4_3 == nil then
      L6_3 = A0_3
      L5_3 = A0_3.create_panel
      L7_3 = G
      L7_3 = L7_3.EvolveBuildSkillItem
      L8_3 = G
      L8_3 = L8_3.EvolveBuildSkillItemBinder
      L5_3 = L5_3(L6_3, L7_3, L8_3)
      L4_3 = L5_3
      L6_3 = L4_3
      L5_3 = L4_3.bind
      L7_3 = L3_3.transform
      L5_3(L6_3, L7_3)
      L3_3.UserObjectData = L4_3
    end
    L5_3 = A2_3 + 1
    L5_3 = A2_2[L5_3]
    L7_3 = L4_3
    L6_3 = L4_3.setup_view
    L8_3 = L5_3
    L9_3 = A3_2
    L6_3(L7_3, L8_3, L9_3)
    L7_3 = L4_3
    L6_3 = L4_3.on_click
    L8_3 = A4_2
    L9_3 = A5_2
    L6_3(L7_3, L8_3, L9_3)
    L7_3 = L4_3
    L6_3 = L4_3.set_checked
    L8_3 = A4_2._selected_skill
    L8_3 = L5_3 == L8_3
    L6_3(L7_3, L8_3)
    L7_3 = A0_3
    L6_3 = A0_3.calc_item_width
    L9_3 = A0_3
    L8_3 = A0_3.get_width
    L8_3, L9_3 = L8_3(L9_3)
    L6_3 = L6_3(L7_3, L8_3, L9_3)
    L8_3 = A0_3
    L7_3 = A0_3.set_cell_size
    L9_3 = L6_3
    L7_3(L8_3, L9_3)
    return L3_3
  end
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.skill_item_list
  L7_2 = L6_2
  L6_2 = L6_2.SetListItemCount
  L8_2 = #A2_2
  L9_2 = true
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.skill_item_list
  L7_2 = L6_2
  L6_2 = L6_2.RefreshAllShownItem
  L6_2(L7_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L1_2 = L1_2.rect
  L1_2 = L1_2.width
  return L1_2
end
L0_1.get_width = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2 - 24
  L2_2 = L2_2 / 2
  return L2_2
end
L0_1.calc_item_width = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.grid_layout
  L2_2 = L2_2.cellSize
  L2_2.x = A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.grid_layout
  L3_2.cellSize = L2_2
end
L0_1.set_cell_size = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.skill_item_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L2_2 = L1_2.gameObject
    if L2_2 then
      goto lbl_12
    end
  end
  L2_2 = nil
  ::lbl_12::
  return L2_2
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.skill_item_list
  return L1_2
end
L0_1.get_static_list = L1_1
return L0_1
