local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ItemComposeTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ItemComposeModule
function L2_1(A0_2)
  local L1_2
  A0_2._sort_type_list = nil
  A0_2._sort_type = nil
  A0_2._sort_ascend = true
  A0_2._current_item = nil
  L1_2 = {}
  A0_2._item_table = L1_2
  A0_2._click_callback = nil
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._item_table = nil
  A0_2._cur_item_panel = nil
end
L0_1._on_dispose = L2_1
function L2_1(A0_2, A1_2)
end
L0_1.set_view_active = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._refresh = L2_1
function L2_1(A0_2, A1_2)
  A0_2._tab_data = A1_2
end
L0_1.set_tab_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._tab_data
  L1_2 = L1_2.TypeIconPath
  if L1_2 == nil or L1_2 == "" then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.tab_icon
  if L2_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.tab_icon
    L5_2 = L1_2
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.tab_select_icon
  if L2_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.tab_select_icon
    L5_2 = L1_2
    L2_2(L3_2, L4_2, L5_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._bind_red_dot
  L2_2(L3_2)
end
L0_1._on_added = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.trigger_callback
  L1_2(L2_2)
  L1_2 = A0_2._tab_data
  L1_2 = L1_2.UnlockID
  if L1_2 ~= 0 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.OnEnterComposeTabItem
    L3_2 = A0_2._tab_data
    L3_2 = L3_2.UnlockID
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_select = L2_1
function L2_1(A0_2, A1_2)
  A0_2._click_callback = A1_2
end
L0_1.set_select_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._click_callback
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._click_callback
  L2_2 = A0_2._tab_data
  L1_2(L2_2)
end
L0_1.trigger_callback = L2_1
function L2_1(A0_2, A1_2)
  A0_2._current_item = nil
end
L0_1._on_unselect = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._tab_data
  L1_2 = L1_2.UnlockID
  if L1_2 == 0 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.bind_reddot
    L3_2 = "ItemComposeTypeIsNew"
    L4_2 = A0_2._tab_data
    L4_2 = L4_2.TypeID
    L5_2 = A0_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.tab_red_dot
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  else
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.bind_reddot
    L3_2 = "ItemComposeNewMainTypeUnlock"
    L4_2 = A0_2._tab_data
    L4_2 = L4_2.UnlockID
    L5_2 = A0_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.tab_red_dot
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1._bind_red_dot = L2_1
return L0_1
