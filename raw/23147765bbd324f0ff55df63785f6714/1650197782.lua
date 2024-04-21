local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Rogue.Talk.RogueRandomEvtOptionAreaPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueRandomEvtOptionAreaPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1.default = 1
L1_1.unlock = 2
L2_1 = "9051"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.random_evt_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.random_evt_options
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_option_new
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._options = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.LayoutRebuilder
  L2_2 = L2_2.ForceRebuildLayoutImmediate
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.random_evt_options
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = #A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.random_evt_options
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.try_notify_tutorial
  L2_2(L3_2)
end
L0_1.show_new_options = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._choose_option_cbk = A2_2
  A0_2._choose_option_cbk_owner = A1_2
end
L0_1.register_choose_option_callback = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.random_evt_options
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    return
  end
  L2_2 = L1_2.UserObjectData
  L2_2 = L2_2._binder
  L2_2 = L2_2.btn
  L2_2 = L2_2.transform
  L2_2 = L2_2.gameObject
  return L2_2
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.random_evt_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.safe_set_active = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._current_option = nil
  A0_2._options = nil
  L2_2 = A0_2._choose_option_cbk
  L3_2 = A0_2._choose_option_cbk_owner
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._do_confirm = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.RogueRandomEvtOptionPanel
    L8_2 = G
    L8_2 = L8_2.RogueRandomEvtOptionPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._options
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L8_2 = A2_2 + 1
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_click_cbk
  L7_2 = A0_2
  L8_2 = A0_2._on_option_choose
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = G
  L5_2 = L5_2.SuperDebug
  L5_2 = L5_2.LogFormat
  L6_2 = "trigger reset random evt option"
  L5_2(L6_2)
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.LayoutRebuilder
  L5_2 = L5_2.ForceRebuildLayoutImmediate
  L6_2 = L3_2.transform
  L5_2(L6_2)
  return L3_2
end
L0_1._on_option_new = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.is_gamepad_input
  L4_2 = L4_2()
  if L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2._do_confirm
    L6_2 = A1_2
    L4_2(L5_2, L6_2)
    return
  end
  L4_2 = A1_2.option_status
  L5_2 = L1_1.default
  if L4_2 == L5_2 then
    L4_2 = L1_1.unlock
    A1_2.option_status = L4_2
    L5_2 = A0_2
    L4_2 = A0_2._update_current_select_option
    L6_2 = A1_2
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._cur_panel
    if L4_2 then
      L4_2 = A0_2._cur_panel
      L5_2 = L4_2
      L4_2 = L4_2.change_btn_status
      L6_2 = false
      L4_2(L5_2, L6_2)
      L4_2 = A0_2._cur_panel
      L5_2 = L4_2
      L4_2 = L4_2.refresh
      L4_2(L5_2)
    end
    L5_2 = A3_2
    L4_2 = A3_2.setup_view
    L6_2 = A1_2
    L7_2 = A2_2 + 1
    L4_2(L5_2, L6_2, L7_2)
    A0_2._cur_panel = A3_2
    L4_2 = A0_2._binder
    L4_2 = L4_2.random_evt_options
    L5_2 = L4_2
    L4_2 = L4_2.OnItemSizeChanged
    L6_2 = A2_2
    L4_2(L5_2, L6_2)
    return
  end
  L4_2 = A0_2._choose_option_cbk
  if L4_2 then
    L4_2 = A0_2._choose_option_cbk_owner
    if L4_2 then
      L5_2 = A0_2
      L4_2 = A0_2._do_confirm
      L6_2 = A1_2
      L4_2(L5_2, L6_2)
    end
  end
end
L0_1._on_option_choose = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._current_option
  if L2_2 ~= nil then
    L2_2 = A0_2._current_option
    L3_2 = L1_1.default
    L2_2.option_status = L3_2
  end
  A0_2._current_option = A1_2
end
L0_1._update_current_select_option = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = ipairs
  L2_2 = A0_2._options
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.show_fade_in
    if L6_2 then
      L6_2 = G
      L6_2 = L6_2.NotifyManager
      L6_2 = L6_2.notify
      L7_2 = G
      L7_2 = L7_2.CS
      L7_2 = L7_2.NotifyType
      L7_2 = L7_2.TutorialTaskUnlock
      L8_2 = L2_1
      L6_2(L7_2, L8_2)
    end
  end
end
L0_1.try_notify_tutorial = L3_1
return L0_1
