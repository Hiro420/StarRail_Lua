local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityPanel.NewbiePromotionItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.InventoryUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "NewbiePromotionItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.ActivityNewbiePromoteExcelTable
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ItemExcelTable
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.QuestDataExcelTable
function L4_1(A0_2)
  local L1_2
  A0_2._index = nil
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_select = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.root_btn
  L4_2 = A0_2._on_root_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_icon
  L2_2 = L1_2
  L1_2 = L1_2.bind_click
  L3_2 = A0_2
  L4_2 = A0_2._on_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_btn
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_root_select
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  A0_2._index = A3_2
  L5_2 = A0_2
  L4_2 = A0_2._generate_data
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.reward_icon
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = A0_2._row
  L6_2 = L6_2.DisplayItem
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_texts
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_status
  L4_2(L5_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = not A2_2
  A0_2._is_completed = L3_2
  L3_2 = L1_1.GetData
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  A0_2._row = L3_2
  L3_2 = L2_1.GetData
  L4_2 = A0_2._row
  L4_2 = L4_2.DisplayItem
  L3_2 = L3_2(L4_2)
  A0_2._item_row = L3_2
  L3_2 = L3_1.GetData
  L4_2 = A0_2._row
  L4_2 = L4_2.FinishQuest
  L3_2 = L3_2(L4_2)
  A0_2._quest_row = L3_2
end
L0_1._generate_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._item_row
  L3_2 = L3_2.ItemName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._row
  L3_2 = L3_2.Desc
  L1_2(L2_2, L3_2)
end
L0_1._setup_texts = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.InventoryUtils
  L1_2 = L1_2.show_item_detail
  L2_2 = A0_2._row
  L2_2 = L2_2.DisplayItem
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.root_btn
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
end
L0_1._on_clicked = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._on_clicked
  L1_2(L2_2)
end
L0_1._on_root_clicked = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_completed
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.reward_icon
    L2_2 = L1_2
    L1_2 = L1_2.set_attachment_getted
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.reward_icon
    L2_2 = L1_2
    L1_2 = L1_2.set_black
    L3_2 = true
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.reward_icon
    L2_2 = L1_2
    L1_2 = L1_2.set_attachment_getted
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.reward_icon
    L2_2 = L1_2
    L1_2 = L1_2.set_black
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_status = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_icon
  L2_2 = L1_2
  L1_2 = L1_2.get_btn
  return L1_2(L2_2)
end
L0_1.get_item_btn = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.root_btn
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
end
L0_1._on_root_select = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_clicked
  L1_2(L2_2)
end
L0_1._on_root_btn_click = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._click_owner = A1_2
  A0_2._cbk = A2_2
end
L0_1.register_click_cbk = L4_1
return L0_1
