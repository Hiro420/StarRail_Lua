local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.InventoryModule
L1_1 = "UIText_ItemCommonIcon_Num"
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "OptionalGiftPackItemPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_nav
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._on_click_callback = nil
  A0_2._on_click_callback_self = nil
  A0_2._reward_id = nil
end
L2_1._on_dispose = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._reward_id = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_item
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L3_2 = A2_2.ItemID
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ItemExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = L0_1
  L6_2 = L5_2
  L5_2 = L5_2.GetItemCountByConfigID
  L7_2 = L3_2
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = A0_2
  L6_2 = A0_2._setup_name
  L8_2 = L4_2.ItemName
  L6_2(L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2._setup_count
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
end
L2_1.setup_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._on_click_callback = A1_2
  A0_2._on_click_callback_self = A2_2
end
L2_1.register_click_handler = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._on_nav_callback = A1_2
  A0_2._on_nav_callback_self = A2_2
end
L2_1.register_nav_handler = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L2_1.set_selected = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._on_click_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._on_click_callback
    L2_2 = A0_2._on_click_callback_self
    L3_2 = A0_2._reward_id
    L1_2(L2_2, L3_2)
  end
end
L2_1._on_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._on_nav_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._on_nav_callback
    L2_2 = A0_2._on_nav_callback_self
    L3_2 = A0_2._reward_id
    L1_2(L2_2, L3_2)
  end
end
L2_1._on_nav = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.item_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view_by_reward_item
  L4_2 = A1_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
end
L2_1._setup_item = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L2_1._setup_name = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_count_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_1
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_count
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L2_1._setup_count = L3_1
return L2_1
