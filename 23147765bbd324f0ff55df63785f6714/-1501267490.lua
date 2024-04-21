local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.TabItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TabItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1.Normal = 0
L1_1.Selected = 1
L1_1.Disable = 2
L0_1.SelectState = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2.uid = 0
  A0_2.button_prefab_index = 0
  A0_2.panel = nil
  A0_2.children = nil
  A0_2.parent = nil
  A0_2._tab_control = nil
  L1_2 = L0_1.SelectState
  L1_2 = L1_2.Normal
  A0_2._state = L1_2
  A0_2._is_auto_trigger_select = true
  A0_2._is_animatorbutton_mode = false
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  A0_2.uid = A1_2
  A0_2._tab_control = A3_2
  L4_2 = A0_2._binder
  L5_2 = L4_2
  L4_2 = L4_2.bind_tab_btn
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._bind_btn_callback
  L6_2 = A0_2._binder
  L6_2 = L6_2.tab_btn
  L7_2 = A0_2._on_btn_click
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.tab_btn
  L4_2.IsSelectDisabled = true
  L4_2 = A0_2._binder
  L4_2 = L4_2.tab_btn
  function L5_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._trigger_select
    L0_3(L1_3)
    L0_3 = A0_2._tab_control
    L0_3 = L0_3._is_navigation
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.save_navigation_target
      L2_3 = A0_2._binder
      L2_3 = L2_3.tab_btn
      L2_3 = L2_3.gameObject
      L0_3(L1_3, L2_3)
    end
  end
  L4_2.onSelectTrigger = L5_2
  L5_2 = A0_2
  L4_2 = A0_2._set_transform_name
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._update_select_state
  L6_2 = A0_2._state
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.init_finish
  L4_2(L5_2)
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._exit
  L1_2(L2_2)
end
L0_1.exit = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._tab_control
  if L1_2 then
    L1_2 = A0_2._is_auto_trigger_select
    if L1_2 then
      L1_2 = A0_2._tab_control
      L2_2 = L1_2
      L1_2 = L1_2.click_item_by_uid
      L3_2 = A0_2.uid
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._trigger_select = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2.children = nil
  A0_2.parent = nil
  A0_2._tab_control = nil
  A0_2.panel = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._state
  return L1_2
end
L0_1.get_state = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._state
  if L2_2 ~= A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._update_select_state
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
  A0_2._state = A1_2
end
L0_1.set_state = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.children
  if L2_2 == nil then
    L2_2 = {}
    A0_2.children = L2_2
  end
  A1_2.parent = A0_2
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2.children
  L4_2 = A0_2.children
  L4_2 = #L4_2
  L4_2 = L4_2 + 1
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.add_child = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.panel
  if L1_2 then
    L1_2 = A0_2.panel
    L2_2 = L1_2
    L1_2 = L1_2.set_view_active_by_scale
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L1_2 = G
  L1_2 = L1_2.ComponentExtensions
  L1_2 = L1_2.SafeFind
  L2_2 = A0_2._binder
  L2_2 = L2_2.tab_btn
  L4_2 = A0_2
  L3_2 = A0_2._get_sep_line_path
  L3_2 = L3_2(L4_2)
  L4_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._node_sep_line = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._on_added
  L1_2(L2_2)
end
L0_1.init_finish = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._node_sep_line
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._node_sep_line
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.show_sep_line = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.panel
  if L1_2 then
    L1_2 = A0_2.panel
    L2_2 = L1_2
    L1_2 = L1_2.set_view_active_by_scale
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._on_click
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.is_async
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_loaded
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.async_bind_with_callback
      L3_2 = A0_2._binder
      L3_2 = L3_2.root_parent
      L4_2 = A0_2
      L5_2 = A0_2._load_finish_callback
      L1_2(L2_2, L3_2, L4_2, L5_2)
  end
  else
    L2_2 = A0_2
    L1_2 = A0_2._show_content
    L3_2 = true
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2.trigger_scrollrect_move
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.on_select
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._try_sample_anim
    L1_2(L2_2)
  end
end
L0_1.select = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2._mono_tab_control
  if L1_2 ~= nil then
    L1_2 = A0_2._tab_control
    L1_2 = L1_2._mono_tab_control
    L2_2 = L1_2
    L1_2 = L1_2.OnItemIndexSelect
    L3_2 = A0_2.uid
    L3_2 = L3_2 - 1
    L1_2(L2_2, L3_2)
  end
end
L0_1.trigger_scrollrect_move = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2._mono_tab_control
  if L1_2 ~= nil then
    L1_2 = A0_2._tab_control
    L1_2 = L1_2._mono_tab_control
    L2_2 = L1_2
    L1_2 = L1_2.ScrollToIndex
    L3_2 = A0_2.uid
    L3_2 = L3_2 - 1
    L1_2(L2_2, L3_2)
  end
end
L0_1.force_scrollrect_move = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.panel
  if L2_2 then
    L2_2 = A0_2.panel
    L3_2 = L2_2
    L2_2 = L2_2.set_view_active_by_scale
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._on_click
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.is_async
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_loaded
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.async_bind_with_callback
      L4_2 = A0_2._binder
      L4_2 = L4_2.root_parent
      L5_2 = A0_2
      L6_2 = A0_2._load_finish_callback
      L2_2(L3_2, L4_2, L5_2, L6_2)
  end
  else
    L3_2 = A0_2
    L2_2 = A0_2._show_content
    L4_2 = true
    L5_2 = A1_2
    L2_2(L3_2, L4_2, L5_2)
    L3_2 = A0_2
    L2_2 = A0_2.on_select
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2.trigger_scrollrect_move
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._try_play_from_forward_anim
    L2_2 = L2_2(L3_2)
    if L2_2 then
      return
    end
  end
end
L0_1.select_from_forward = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.panel
  if L2_2 then
    L2_2 = A0_2.panel
    L3_2 = L2_2
    L2_2 = L2_2.set_view_active_by_scale
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._on_click
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.is_async
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_loaded
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.async_bind_with_callback
      L4_2 = A0_2._binder
      L4_2 = L4_2.root_parent
      L5_2 = A0_2
      L6_2 = A0_2._load_finish_callback
      L2_2(L3_2, L4_2, L5_2, L6_2)
  end
  else
    L3_2 = A0_2
    L2_2 = A0_2._show_content
    L4_2 = true
    L5_2 = A1_2
    L2_2(L3_2, L4_2, L5_2)
    L3_2 = A0_2
    L2_2 = A0_2.on_select
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2.trigger_scrollrect_move
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._try_play_from_backward_anim
    L2_2 = L2_2(L3_2)
    if L2_2 then
      return
    end
  end
end
L0_1.select_from_backward = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._try_play_to_forward_anim
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._do_unselect
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.unselect_to_forward = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._try_play_to_backward_anim
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._do_unselect
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.unselect_to_backward = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.switch_animation
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.content_anim
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.switch_animation
      L1_2 = L1_2.isPlaying
      if L1_2 then
        L1_2 = A0_2._binder
        L1_2 = L1_2.switch_animation
        L2_2 = L1_2
        L1_2 = L1_2.IsPlaying
        L3_2 = A0_2._binder
        L3_2 = L3_2.content_anim
        L3_2 = L3_2.ToForwardAnimClipName
        L1_2 = L1_2(L2_2, L3_2)
        if L1_2 then
          L1_2 = CS
          L1_2 = L1_2.RPG
          L1_2 = L1_2.Client
          L1_2 = L1_2.UIAnimationUtils
          L1_2 = L1_2.PlayFromEnd
          L2_2 = A0_2._binder
          L2_2 = L2_2.switch_animation
          L3_2 = A0_2._binder
          L3_2 = L3_2.content_anim
          L3_2 = L3_2.ToForwardAnimClipName
          L1_2(L2_2, L3_2)
        else
          L1_2 = CS
          L1_2 = L1_2.RPG
          L1_2 = L1_2.Client
          L1_2 = L1_2.UIAnimationUtils
          L1_2 = L1_2.PlayFromEnd
          L2_2 = A0_2._binder
          L2_2 = L2_2.switch_animation
          L3_2 = A0_2._binder
          L3_2 = L3_2.content_anim
          L3_2 = L3_2.ToBackwardAnimClipName
          L1_2(L2_2, L3_2)
        end
      end
    end
  end
end
L0_1.force_finish_unselect = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn
  return L1_2
end
L0_1.get_tab_btn = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.uid
  L2_2 = A0_2._tab_control
  L2_2 = L2_2.current_select_item
  L2_2 = L2_2.uid
  L1_2 = L1_2 == L2_2
  return L1_2
end
L0_1.is_current_tab_item = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = pairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.visible_control_nodes
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.SafeSetActive
    L9_2 = A1_2
    L7_2(L8_2, L9_2)
  end
end
L0_1.show_visible_control_node = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.content_anim
  if L2_2 == nil then
    L2_2 = false
    return L2_2
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.content_anim
  L2_2 = L2_2.ToForwardAnimClipName
  L4_2 = A0_2
  L3_2 = A0_2._try_play_panel_anim
  L5_2 = L2_2
  function L6_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._do_unselect
    L2_3 = A1_2
    L0_3(L1_3, L2_3)
  end
  return L3_2(L4_2, L5_2, L6_2)
end
L0_1._try_play_to_forward_anim = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.content_anim
  if L2_2 == nil then
    L2_2 = false
    return L2_2
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.content_anim
  L2_2 = L2_2.ToBackwardAnimClipName
  L4_2 = A0_2
  L3_2 = A0_2._try_play_panel_anim
  L5_2 = L2_2
  function L6_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._do_unselect
    L2_3 = A1_2
    L0_3(L1_3, L2_3)
  end
  return L3_2(L4_2, L5_2, L6_2)
end
L0_1._try_play_to_backward_anim = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.content_anim
  if L1_2 == nil then
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.content_anim
  L1_2 = L1_2.FromForwardAnimClipName
  L3_2 = A0_2
  L2_2 = A0_2._try_play_panel_anim
  L4_2 = L1_2
  return L2_2(L3_2, L4_2)
end
L0_1._try_play_from_forward_anim = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.content_anim
  if L1_2 == nil then
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.content_anim
  L1_2 = L1_2.FromBackwardAnimClipName
  L3_2 = A0_2
  L2_2 = A0_2._try_play_panel_anim
  L4_2 = L1_2
  return L2_2(L3_2, L4_2)
end
L0_1._try_play_from_backward_anim = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.content_anim
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.content_anim
  L1_2 = L1_2.FromForwardAnimClipName
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.content_anim
    L1_2 = L1_2.FromBackwardAnimClipName
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.switch_animation
  if L2_2 == nil or L1_2 == nil then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIAnimationUtils
  L2_2 = L2_2.PlayFromEnd
  L3_2 = A0_2._binder
  L3_2 = L3_2.switch_animation
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._try_sample_anim = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.switch_animation
  if L3_2 == nil or A1_2 == nil then
    L3_2 = false
    return L3_2
  end
  if A2_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.switch_animation_event
    L4_2 = L3_2
    L3_2 = L3_2.AddAnimationEvent
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.switch_animation
  L4_2 = L3_2
  L3_2 = L3_2.Play
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = true
  return L3_2
end
L0_1._try_play_panel_anim = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.panel
  if L2_2 then
    L2_2 = A0_2.panel
    L3_2 = L2_2
    L2_2 = L2_2.safe_set_active
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._show_content
  L4_2 = false
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2.is_async
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_loaded
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      goto lbl_22
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._on_unselect
  L2_2(L3_2)
  ::lbl_22::
end
L0_1._do_unselect = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._state
  L2_2 = L0_1.SelectState
  L2_2 = L2_2.Selected
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2.on_select
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._try_play_from_backward_anim
    L1_2 = L1_2(L2_2)
    if L1_2 then
      return
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._show_content
  L3_2 = A0_2._state
  L4_2 = L0_1.SelectState
  L4_2 = L4_2.Selected
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
end
L0_1._load_finish_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A2_2 == nil or A2_2 == true then
    L4_2 = A0_2
    L3_2 = A0_2.safe_set_active
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2.show_visible_control_node
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1._show_content = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_added = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2._is_navigation
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.save_navigation_target
    L3_2 = A0_2._binder
    L3_2 = L3_2.tab_btn
    L3_2 = L3_2.gameObject
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._on_select
  L1_2(L2_2)
end
L0_1.on_select = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_click = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_select = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_unselect = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = true
  return L1_2
end
L0_1._is_enable = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_select_when_disable = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._owner
  L1_2 = L1_2._button_mutex
  L2_2 = L1_2
  L1_2 = L1_2.Check
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._call_tab_control
    L0_3(L1_3)
  end
  L4_2 = 0.05
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._tab_control
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.can_select
    L3_2 = A0_2.uid
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L1_2 = A0_2._tab_control
      L2_2 = L1_2
      L1_2 = L1_2.click_item_by_uid
      L3_2 = A0_2.uid
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._call_tab_control = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = true
  return L2_2
end
L0_1.can_select = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = "TabControlSepLine"
  return L1_2
end
L0_1._get_sep_line_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = string
  L1_2 = L1_2.format
  L2_2 = "%s.%d"
  L3_2 = A0_2.__name
  L4_2 = A0_2.uid
  return L1_2(L2_2, L3_2, L4_2)
end
L0_1._get_transform_name = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_root
  if L1_2 ~= nil then
    L1_2 = GamePhaseContext
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._get_transform_name
      L1_2 = L1_2(L2_2)
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.GlobalVars
      L2_2 = L2_2.s_ModuleManager
      L2_2 = L2_2.TutorialSupportModule
      L3_2 = L2_2
      L2_2 = L2_2.SetNodeDynamicKey
      L4_2 = A0_2._binder
      L4_2 = L4_2.tab_btn_root
      L4_2 = L4_2.gameObject
      L5_2 = L1_2
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L0_1._set_transform_name = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.tab_btn
  if L2_2 == nil then
    return
  end
  L2_2 = L0_1.SelectState
  L2_2 = L2_2.Disable
  if A1_2 ~= L2_2 then
    L2_2 = L0_1.SelectState
    L2_2 = L2_2.Selected
    if A1_2 ~= L2_2 then
      goto lbl_27
    end
  end
  L2_2 = A0_2._is_animatorbutton_mode
  if not L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.tab_btn
    L2_2.interactable = false
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.tab_btn
    L3_2 = L2_2
    L2_2 = L2_2.SetChecked
    L4_2 = true
    L2_2(L3_2, L4_2)
    goto lbl_39
    ::lbl_27::
    L2_2 = A0_2._is_animatorbutton_mode
    if not L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.tab_btn
      L2_2.interactable = true
    else
      L2_2 = A0_2._binder
      L2_2 = L2_2.tab_btn
      L3_2 = L2_2
      L2_2 = L2_2.SetChecked
      L4_2 = false
      L2_2(L3_2, L4_2)
    end
  end
  ::lbl_39::
end
L0_1._update_select_state = L1_1
return L0_1
