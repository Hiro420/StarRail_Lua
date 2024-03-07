local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TabControl"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.UIProfiler
L2_1 = L2_1.SampleType
L2_1 = L2_1.SwitchTab
L3_1 = 0.1
function L4_1()
  local L0_2, L1_2
  L0_2 = new
  L1_2 = "Ui.Component.TabControl"
  return L0_2(L1_2)
end
L0_1.Create = L4_1
function L4_1(A0_2)
  local L1_2
  A0_2.view_transform = nil
  A0_2.current_select_item = nil
  A0_2.pre_select_item = nil
  A0_2._tab_item_uid_counter = 1
  L1_2 = {}
  A0_2._all_tab_items = L1_2
  A0_2._mono_tab_control = nil
  A0_2.enable = true
  A0_2._is_navigation = false
  A0_2._is_animatorbutton_mode = false
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2
  A0_2._override_click_item_callback_listener = nil
  A0_2._override_click_item_callback = nil
end
L0_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._on_dispose
  L1_2(L2_2)
  L1_2 = A0_2._all_tab_items
  if L1_2 then
    L1_2 = pairs
    L2_2 = A0_2._all_tab_items
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L7_2 = L5_2
      L6_2 = L5_2.exit
      L6_2(L7_2)
    end
  end
  A0_2._tab_select_callback_listener = nil
  A0_2._tab_select_callback = nil
  A0_2._tab_select_pre_callback_listener = nil
  A0_2._tab_select_pre_callback = nil
  L1_2 = A0_2._mono_tab_control
  if L1_2 ~= nil then
    L1_2 = A0_2._mono_tab_control
    L2_2 = L1_2
    L1_2 = L1_2.ClearLayoutButton
    L1_2(L2_2)
    L1_2 = A0_2._mono_tab_control
    L2_2 = L1_2
    L1_2 = L1_2.ClearTabButton
    L1_2(L2_2)
  end
  L1_2 = {}
  A0_2._all_tab_items = L1_2
  A0_2.current_select_item = nil
  A0_2.pre_select_item = nil
  A0_2._tab_item_uid_counter = 1
end
L0_1.clear = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.current_select_item
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = L1_1.SafeSetActive
  L3_2 = A0_2.view_transform
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_view_active = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2.view_transform = A1_2
  L3_2 = A1_2
  L2_2 = A1_2.GetComponent
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.MonoTabControl
  L4_2, L5_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._mono_tab_control = L2_2
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.AssertFormat
  L3_2 = A0_2._mono_tab_control
  L3_2 = L3_2 ~= nil
  L4_2 = "TabControl Need MonoTabControl!!"
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._mono_tab_control
  L3_2 = L2_2
  L2_2 = L2_2.IsAnimatorCheckMode
  L2_2 = L2_2(L3_2)
  A0_2._is_animatorbutton_mode = L2_2
end
L0_1.set_tab_btns_root = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 == nil then
    return
  end
  L2_2 = A0_2._mono_tab_control
  L3_2 = L2_2
  L2_2 = L2_2.CreateTabButton
  L4_2 = A1_2.button_prefab_index
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.add_item_created
  L5_2 = A1_2
  L6_2 = L2_2
  return L3_2(L4_2, L5_2, L6_2)
end
L0_1.add_item = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._tab_select_callback_listener = A1_2
  A0_2._tab_select_callback = A2_2
end
L0_1.set_tab_select_callback = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._tab_select_pre_callback_listener = A1_2
  A0_2._tab_select_pre_callback = A2_2
end
L0_1.set_tab_select_pre_callback = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A1_2 == nil or A2_2 == nil then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2.find_item
  L5_2 = A1_2.uid
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil then
    return
  end
  L3_2 = A2_2.AnimatorButtonMode
  if L3_2 ~= nil then
    L3_2 = A0_2._mono_tab_control
    L3_2 = L3_2.AnimatorBtnMode
    A2_2.AnimatorButtonMode = L3_2
  end
  L3_2 = A0_2._is_animatorbutton_mode
  A1_2._is_animatorbutton_mode = L3_2
  L4_2 = A1_2
  L3_2 = A1_2.init
  L5_2 = A0_2._tab_item_uid_counter
  L6_2 = A2_2
  L7_2 = A0_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2._all_tab_items
  L4_2 = A0_2._tab_item_uid_counter
  L3_2[L4_2] = A1_2
  L3_2 = A0_2._tab_item_uid_counter
  L3_2 = L3_2 + 1
  A0_2._tab_item_uid_counter = L3_2
  L3_2 = A1_2.children
  if L3_2 ~= nil then
    L3_2 = pairs
    L4_2 = A1_2.children
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L9_2 = A0_2
      L8_2 = A0_2.add_item
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  L4_2 = A1_2
  L3_2 = A1_2.safe_set_active
  L5_2 = false
  L3_2(L4_2, L5_2)
  L4_2 = A1_2
  L3_2 = A1_2.show_visible_control_node
  L5_2 = false
  L3_2(L4_2, L5_2)
  return A1_2
end
L0_1.add_item_created = L4_1
function L4_1(A0_2, A1_2)
  A0_2.enable = A1_2
end
L0_1.set_enable = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._override_click_item_callback_listener = A1_2
  A0_2._override_click_item_callback = A2_2
end
L0_1.override_click_item = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.find_item
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._override_click_item_callback
  if L3_2 ~= nil then
    L3_2 = A0_2._override_click_item_callback
    L4_2 = A0_2._override_click_item_callback_listener
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2.click_item
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1.click_item_by_uid = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2.enable
  if not L2_2 or A1_2 == nil then
    return
  end
  L3_2 = A1_2
  L2_2 = A1_2._is_enable
  L2_2 = L2_2(L3_2)
  if L2_2 == false then
    L3_2 = A1_2
    L2_2 = A1_2._on_select_when_disable
    L2_2(L3_2)
    return
  end
  L2_2 = A1_2.uid
  L3_2 = NG_HSOD_DEBUG
  if not L3_2 then
    L3_2 = NG_HSOD_PROFILE
  end
  L4_2 = A0_2.current_select_item
  if L4_2 == nil then
    if L3_2 then
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.ProfileUtility
      L4_2 = L4_2.BeginLoadingSample
      L5_2 = "TabChange"
      L7_2 = A0_2
      L6_2 = A0_2._get_tab_name
      L8_2 = A1_2
      L6_2 = L6_2(L7_2, L8_2)
      L7_2 = 1
      L8_2 = CS
      L8_2 = L8_2.RPG
      L8_2 = L8_2.ProfileUtility
      L8_2 = L8_2.LoadReason
      L8_2 = L8_2.TabChangeUI
      L4_2(L5_2, L6_2, L7_2, L8_2)
    end
    L4_2 = A0_2._tab_select_pre_callback_listener
    if L4_2 ~= nil then
      L4_2 = A0_2._tab_select_pre_callback
      L5_2 = A0_2._tab_select_pre_callback_listener
      L6_2 = L2_2
      L4_2(L5_2, L6_2)
    end
    A0_2.current_select_item = A1_2
    L4_2 = A0_2.current_select_item
    L5_2 = L4_2
    L4_2 = L4_2.set_state
    L6_2 = G
    L6_2 = L6_2.TabItem
    L6_2 = L6_2.SelectState
    L6_2 = L6_2.Selected
    L4_2(L5_2, L6_2)
    L4_2 = A0_2.current_select_item
    L5_2 = L4_2
    L4_2 = L4_2.select
    L4_2(L5_2)
    L4_2 = A0_2._tab_select_callback_listener
    if L4_2 ~= nil then
      L4_2 = A0_2._tab_select_callback
      L5_2 = A0_2._tab_select_callback_listener
      L6_2 = L2_2
      L4_2(L5_2, L6_2)
    end
    if L3_2 then
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.ProfileUtility
      L4_2 = L4_2.EndLoadingSample
      L5_2 = "TabChange"
      L7_2 = A0_2
      L6_2 = A0_2._get_tab_name
      L8_2 = A1_2
      L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2, L8_2)
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    end
  else
    L4_2 = A0_2.current_select_item
    L4_2 = L4_2.uid
    if L4_2 ~= L2_2 then
      if L3_2 then
        L4_2 = CS
        L4_2 = L4_2.RPG
        L4_2 = L4_2.ProfileUtility
        L4_2 = L4_2.BeginLoadingSample
        L5_2 = "TabChange"
        L7_2 = A0_2
        L6_2 = A0_2._get_tab_name
        L8_2 = A1_2
        L6_2 = L6_2(L7_2, L8_2)
        L7_2 = 1
        L8_2 = CS
        L8_2 = L8_2.RPG
        L8_2 = L8_2.ProfileUtility
        L8_2 = L8_2.LoadReason
        L8_2 = L8_2.TabChangeUI
        L4_2(L5_2, L6_2, L7_2, L8_2)
      end
      L4_2 = A0_2.current_select_item
      L6_2 = L4_2
      L5_2 = L4_2.set_state
      L7_2 = G
      L7_2 = L7_2.TabItem
      L7_2 = L7_2.SelectState
      L7_2 = L7_2.Normal
      L5_2(L6_2, L7_2)
      if L3_2 then
        L5_2 = CS
        L5_2 = L5_2.RPG
        L5_2 = L5_2.Client
        L5_2 = L5_2.UIProfiler
        L5_2 = L5_2.BeginSample
        L6_2 = L2_1
        L8_2 = A0_2
        L7_2 = A0_2._get_tab_name
        L9_2 = A1_2
        L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2, L9_2)
        L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
      end
      L5_2 = A0_2._tab_select_pre_callback_listener
      if L5_2 ~= nil then
        L5_2 = A0_2._tab_select_pre_callback
        L6_2 = A0_2._tab_select_pre_callback_listener
        L7_2 = L2_2
        L5_2(L6_2, L7_2)
      end
      A0_2.current_select_item = A1_2
      L5_2 = A0_2.current_select_item
      L6_2 = L5_2
      L5_2 = L5_2.set_state
      L7_2 = G
      L7_2 = L7_2.TabItem
      L7_2 = L7_2.SelectState
      L7_2 = L7_2.Selected
      L5_2(L6_2, L7_2)
      L5_2 = A0_2.pre_select_item
      if L5_2 then
        L5_2 = A0_2.pre_select_item
        L6_2 = L5_2
        L5_2 = L5_2.force_finish_unselect
        L5_2(L6_2)
      end
      L5_2 = A0_2.current_select_item
      L6_2 = L5_2
      L5_2 = L5_2.get_root_transform
      L5_2 = L5_2(L6_2)
      L7_2 = L4_2
      L6_2 = L4_2.get_root_transform
      L6_2 = L6_2(L7_2)
      L5_2 = L5_2 == L6_2
      L6_2 = L4_2.uid
      L7_2 = A0_2.current_select_item
      L7_2 = L7_2.uid
      if L6_2 < L7_2 then
        L7_2 = L4_2
        L6_2 = L4_2.unselect_to_forward
        L8_2 = not L5_2
        L6_2(L7_2, L8_2)
        L6_2 = A0_2.current_select_item
        L7_2 = L6_2
        L6_2 = L6_2.select_from_backward
        L8_2 = not L5_2
        L6_2(L7_2, L8_2)
      else
        L7_2 = L4_2
        L6_2 = L4_2.unselect_to_backward
        L8_2 = not L5_2
        L6_2(L7_2, L8_2)
        L6_2 = A0_2.current_select_item
        L7_2 = L6_2
        L6_2 = L6_2.select_from_forward
        L8_2 = not L5_2
        L6_2(L7_2, L8_2)
      end
      A0_2.pre_select_item = L4_2
      L6_2 = A0_2._tab_select_callback_listener
      if L6_2 ~= nil then
        L6_2 = A0_2._tab_select_callback
        L7_2 = A0_2._tab_select_callback_listener
        L8_2 = L2_2
        L6_2(L7_2, L8_2)
      end
      if L3_2 then
        L6_2 = CS
        L6_2 = L6_2.RPG
        L6_2 = L6_2.ProfileUtility
        L6_2 = L6_2.EndLoadingSample
        L7_2 = "TabChange"
        L9_2 = A0_2
        L8_2 = A0_2._get_tab_name
        L10_2 = A1_2
        L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
        L6_2(L7_2, L8_2, L9_2, L10_2)
      end
      if L3_2 then
        L6_2 = CS
        L6_2 = L6_2.RPG
        L6_2 = L6_2.Client
        L6_2 = L6_2.UIProfiler
        L6_2 = L6_2.EndSample
        L7_2 = L2_1
        L9_2 = A0_2
        L8_2 = A0_2._get_tab_name
        L10_2 = A1_2
        L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
        L6_2(L7_2, L8_2, L9_2, L10_2)
      end
    end
  end
  L4_2 = A0_2._mono_tab_control
  if L4_2 ~= nil then
    L4_2 = A0_2._mono_tab_control
    L5_2 = A0_2.current_select_item
    L5_2 = L5_2.uid
    L4_2.CurrentSelectItem = L5_2
  end
  L5_2 = A0_2
  L4_2 = A0_2._refresh_tab_sep_lines
  L4_2(L5_2)
end
L0_1.click_item = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.current_select_item
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._owner
  L1_2 = L1_2._button_mutex
  L2_2 = L1_2
  L1_2 = L1_2.Check
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.item_count
    L0_3 = L0_3(L1_3)
    L1_3 = G
    L1_3 = L1_3.MathUtils
    L1_3 = L1_3.get_next_circular_index
    L2_3 = A0_2.current_select_item
    L2_3 = L2_3.uid
    L3_3 = L0_3
    L4_3 = true
    L1_3 = L1_3(L2_3, L3_3, L4_3)
    L2_3 = A0_2.current_select_item
    L2_3 = L2_3.uid
    if L1_3 ~= L2_3 then
      L2_3 = A0_2
      L3_3 = L2_3
      L2_3 = L2_3.find_item
      L4_3 = L1_3
      L2_3 = L2_3(L3_3, L4_3)
      L3_3 = A0_2.enable
      if L3_3 and L2_3 ~= nil then
        L4_3 = L2_3
        L3_3 = L2_3.can_select
        L5_3 = L1_3
        L3_3 = L3_3(L4_3, L5_3)
        if L3_3 then
          goto lbl_31
        end
      end
      do return end
      ::lbl_31::
      L3_3 = A0_2
      L4_3 = L3_3
      L3_3 = L3_3.click_item_by_uid
      L5_3 = L1_3
      L3_3(L4_3, L5_3)
      L3_3 = G
      L3_3 = L3_3.UIUtils
      L3_3 = L3_3.play_navigation_audio
      L3_3()
    end
  end
  L4_2 = L3_1
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.select_next = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.current_select_item
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._owner
  L1_2 = L1_2._button_mutex
  L2_2 = L1_2
  L1_2 = L1_2.Check
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.item_count
    L0_3 = L0_3(L1_3)
    L1_3 = G
    L1_3 = L1_3.MathUtils
    L1_3 = L1_3.get_pre_circular_index
    L2_3 = A0_2.current_select_item
    L2_3 = L2_3.uid
    L3_3 = L0_3
    L4_3 = true
    L1_3 = L1_3(L2_3, L3_3, L4_3)
    L2_3 = A0_2.current_select_item
    L2_3 = L2_3.uid
    if L1_3 ~= L2_3 then
      L2_3 = A0_2
      L3_3 = L2_3
      L2_3 = L2_3.find_item
      L4_3 = L1_3
      L2_3 = L2_3(L3_3, L4_3)
      L3_3 = A0_2.enable
      if L3_3 and L2_3 ~= nil then
        L4_3 = L2_3
        L3_3 = L2_3.can_select
        L5_3 = L1_3
        L3_3 = L3_3(L4_3, L5_3)
        if L3_3 then
          goto lbl_31
        end
      end
      do return end
      ::lbl_31::
      L3_3 = A0_2
      L4_3 = L3_3
      L3_3 = L3_3.click_item_by_uid
      L5_3 = L1_3
      L3_3(L4_3, L5_3)
      L3_3 = G
      L3_3 = L3_3.UIUtils
      L3_3 = L3_3.play_navigation_audio
      L3_3()
    end
  end
  L4_2 = L3_1
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.select_prev = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._all_tab_items
  L2_2 = L2_2[A1_2]
  return L2_2
end
L0_1.find_item = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.index_of_item
  L3_2 = A0_2._all_tab_items
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L3_2 = 0
    return L3_2
  end
  return L2_2
end
L0_1.find_item_index_by_item = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._all_tab_items
  L2_2 = L2_2[A1_2]
  L3_2 = L2_2
  L2_2 = L2_2.get_tab_btn
  return L2_2(L3_2)
end
L0_1.find_item_button = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._all_tab_items
  L2_2 = L2_2[A1_2]
  L3_2 = L2_2
  L2_2 = L2_2.get_tab_btn
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.gameObject
  return L2_2
end
L0_1.find_item_gameObject = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.get_table_length
  L2_2 = A0_2._all_tab_items
  return L1_2(L2_2)
end
L0_1.item_count = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.current_select_item
  if L1_2 == nil then
    return
  end
  L3_2 = L1_2
  L2_2 = L1_2.force_scrollrect_move
  L2_2(L3_2)
end
L0_1.move_to_current_item = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.find_item
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    return
  end
  L4_2 = L2_2
  L3_2 = L2_2.force_scrollrect_move
  L3_2(L4_2)
end
L0_1.move_to_item_by_uid = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.current_select_item
  if L1_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2.current_select_item
  L2_2 = L1_2
  L1_2 = L1_2.get_tab_btn
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_cur_tab_btn_object = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._mono_tab_control
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._mono_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.ClearLayoutButton
  L1_2(L2_2)
  L1_2 = pairs
  L2_2 = A0_2._all_tab_items
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.parent
    if L6_2 == nil then
      L7_2 = A0_2
      L6_2 = A0_2._add_layout_button_rescursion
      L8_2 = L5_2
      L9_2 = 0
      L6_2(L7_2, L8_2, L9_2)
    end
  end
  L1_2 = A0_2._mono_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.UpdateLayout
  L1_2(L2_2)
end
L0_1.update_layout = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = L1_1.IsActiveByScale
  L4_2 = A1_2._binder
  L4_2 = L4_2.tab_btn_root
  L3_2 = L3_2(L4_2)
  if L3_2 == false then
    return
  end
  L3_2 = A0_2._mono_tab_control
  L4_2 = L3_2
  L3_2 = L3_2.AddLayoutButton
  L5_2 = A1_2._binder
  L5_2 = L5_2.tab_btn_root
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A1_2.children
  if L3_2 ~= nil then
    L3_2 = pairs
    L4_2 = A1_2.children
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L9_2 = A0_2
      L8_2 = A0_2._add_layout_button_rescursion
      L10_2 = L7_2
      L11_2 = A2_2 + 1
      L8_2(L9_2, L10_2, L11_2)
    end
  end
end
L0_1._add_layout_button_rescursion = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = {}
  L3_2 = ipairs
  L4_2 = A0_2._all_tab_items
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2._is_enable
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L8_2 = L7_2._binder
      L8_2 = L8_2.tab_btn_root
      L9_2 = L1_1.SafeGetCmpt
      L10_2 = typeof
      L11_2 = CS
      L11_2 = L11_2.UnityEngine
      L11_2 = L11_2.UI
      L11_2 = L11_2.Button
      L10_2 = L10_2(L11_2)
      L11_2 = L8_2
      L12_2 = ""
      L13_2 = false
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
      if L9_2 then
        L10_2 = table
        L10_2 = L10_2.insert
        L11_2 = L2_2
        L12_2 = L9_2
        L10_2(L11_2, L12_2)
      end
    end
  end
  A0_2._is_navigation = true
  L3_2 = G
  L3_2 = L3_2.UIUtils
  L3_2 = L3_2.setup_navigation
  L4_2 = L2_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1.setup_navigation = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A1_2
  L2_2 = A1_2.get_root_transform
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2.find_item_index_by_item
    L4_2 = A1_2
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 == nil then
      L3_2 = ""
      return L3_2
    end
    L3_2 = tostring
    L4_2 = L2_2
    return L3_2(L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2.find_item_index_by_item
    L4_2 = A1_2
    L2_2 = L2_2(L3_2, L4_2)
    L4_2 = A1_2
    L3_2 = A1_2.get_root_transform
    L3_2 = L3_2(L4_2)
    L3_2 = L3_2.name
    L4_2 = tostring
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    L3_2 = L3_2 .. L4_2
    return L3_2
  end
end
L0_1._get_tab_name = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = nil
  L2_2 = A0_2._tab_item_uid_counter
  L2_2 = L2_2 - 1
  L3_2 = 1
  L4_2 = -1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._all_tab_items
    L6_2 = L6_2[L5_2]
    if L6_2 ~= nil then
      L7_2 = A0_2.current_select_item
      L7_2 = L6_2 ~= L7_2 and L1_2 ~= nil
      L9_2 = L6_2
      L8_2 = L6_2.show_sep_line
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
    L1_2 = L6_2
  end
end
L0_1._refresh_tab_sep_lines = L4_1
return L0_1
