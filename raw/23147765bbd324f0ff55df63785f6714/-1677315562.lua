local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.JigsawPuzzle.JigsawPuzzleItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "JigsawPuzzleItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 2
L2_1 = 1
function L3_1(A0_2)
  local L1_2
  A0_2._pre_empty = false
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Vector2
  L1_2 = L1_2.zero
  A0_2._delta_pos = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.event_trigger_listener
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_exit_depot_area
    L0_3(L1_3)
  end
  L1_2.OnExitDepotAreaTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.event_trigger_listener
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_drag
    L0_3(L1_3)
  end
  L1_2.OnDragTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.event_trigger_listener
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_begin_drag
    L0_3(L1_3)
  end
  L1_2.OnBeginDragTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.event_trigger_listener
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_common_pointer_up
    L0_3(L1_3)
  end
  L1_2.OnCommonPointerUp = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.event_trigger_listener
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_end_drag
    L0_3(L1_3)
  end
  L1_2.OnEndDragTrigger = L2_2
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
    L0_3 = A0_2.collect_item_data
    if L0_3 ~= nil then
      L0_3 = A0_2.collect_item_data
      L0_3 = L0_3.isInBoard
      if not L0_3 then
        goto lbl_19
      end
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.setup_short_cut_hint_panel
    L2_3 = 1
    L0_3(L1_3, L2_3)
    goto lbl_23
    ::lbl_19::
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.setup_short_cut_hint_panel
    L2_3 = 32
    L0_3(L1_3, L2_3)
    ::lbl_23::
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2._binder
      L0_3 = L0_3.jigsaw_puzzle_item
      L1_3 = L0_3
      L0_3 = L0_3.SetState
      L2_3 = CS
      L2_3 = L2_3.RPG
      L2_3 = L2_3.Client
      L2_3 = L2_3.Prop
      L2_3 = L2_3.JigsawItemState
      L2_3 = L2_3.Pending
      L0_3(L1_3, L2_3)
    end
  end
  L1_2.onDeselectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_root
  L5_2 = L4_2
  L4_2 = L4_2.ClearAndTransitionToSelectionState
  L4_2(L5_2)
  L4_2 = L1_1
  L4_2 = A3_2 + L4_2
  A0_2._default_sortingOrder = L4_2
  L5_2 = A0_2
  L4_2 = A0_2.change_sorting_order
  L6_2 = false
  L4_2(L5_2, L6_2)
  A0_2.collect_item_data = A1_2
  A0_2._jigsaw_board = A2_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.JigsawPuzzleUtils
  L4_2 = L4_2.SetupJigsawPuzzleItem
  L5_2 = A0_2._binder
  L5_2 = L5_2.jigsaw_puzzle_item
  L6_2 = A0_2.collect_item_data
  L7_2 = A0_2._jigsaw_board
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.jigsaw_puzzle_item
  L5_2 = L4_2
  L4_2 = L4_2.SetState
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.Prop
  L6_2 = L6_2.JigsawItemState
  L6_2 = L6_2.Pending
  L4_2(L5_2, L6_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.collect_item_data
  L1_2 = L1_2.isInBoard
  if not L1_2 then
    L1_2 = A0_2.collect_item_data
    L1_2 = L1_2.isInUIDragging
  end
  L3_2 = A0_2
  L2_2 = A0_2.set_empty
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if not L1_2 then
    L2_2 = A0_2._pre_empty
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.animator_button
      L3_2 = L2_2
      L2_2 = L2_2.ResetTrigger
      L4_2 = "FadeIn"
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.animator_button
      L3_2 = L2_2
      L2_2 = L2_2.SetTrigger
      L4_2 = "FadeIn"
      L2_2(L3_2, L4_2)
    end
  end
  A0_2._pre_empty = L1_2
end
L0_1.setup_empty_state = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mesh_render
  if A1_2 then
    L3_2 = A0_2._default_sortingOrder
    L4_2 = L2_1
    L3_2 = L3_2 + L4_2
    if L3_2 then
      goto lbl_11
    end
  end
  L3_2 = A0_2._default_sortingOrder
  ::lbl_11::
  L2_2.sortingOrder = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mesh_render_outline
  if A1_2 then
    L3_2 = A0_2._default_sortingOrder
    L4_2 = L2_1
    L3_2 = L3_2 + L4_2
    if L3_2 then
      goto lbl_22
    end
  end
  L3_2 = A0_2._default_sortingOrder
  ::lbl_22::
  L2_2.sortingOrder = L3_2
end
L0_1.change_sorting_order = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.event_trigger_listener
  L3_2 = L2_2
  L2_2 = L2_2.RegisterDepotRectArea
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.register_depot_rect = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.event_trigger_listener
  L3_2 = L2_2
  L2_2 = L2_2.RegisterScrollRect
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.register_scroll_rect = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._on_common_pointer_up_callback = A1_2
  A0_2._on_common_pointer_up_callback_self = A2_2
end
L0_1.register_on_common_pointer_up_callback = L3_1
function L3_1(A0_2, A1_2)
  A0_2._parent_rect_transform = A1_2
end
L0_1.register_parent_rect = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._exit_depot_area_callback = A1_2
  A0_2._exit_depot_area_callback_self = A2_2
end
L0_1.register_exit_depot_area = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._on_end_drag_callback = A1_2
  A0_2._on_end_drag_callback_self = A2_2
end
L0_1.register_on_end_drag = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._on_begin_drag_callback = A1_2
  A0_2._on_begin_drag_callback_self = A2_2
end
L0_1.register_on_begin_drag = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._on_btn_root_callback = A1_2
  A0_2._on_btn_root_self = A2_2
end
L0_1.register_on_btn_root_callback = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.jigsaw_puzzle_item
    L3_2 = L2_2
    L2_2 = L2_2.SetDarkState
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.setup_dark_state = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.jigsaw_puzzle_item
  L3_2 = L2_2
  L2_2 = L2_2.SetEmptyState
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.event_trigger_listener
  L3_2 = not A1_2
  L2_2.enabled = L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.CoroutineUtils
  L2_2 = L2_2.InvokeNextFrame
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2._binder
      L0_3 = L0_3.animator_button
      L1_3 = A1_2
      L1_3 = G
      L1_3 = L1_3.Utils
      L1_3 = L1_3.is_gamepad_input
      L1_3 = not L1_3 or L1_3
      L0_3.enabled = L1_3
    end
  end
  L2_2(L3_2)
end
L0_1.set_empty = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_clickarea
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.enable_raycast = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_root
    L1_2 = L1_2.gameObject
    return L1_2
  end
end
L0_1.get_navigation_game_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.rect_transform_root
  L1_2 = L1_2.pivot
  L2_2 = A0_2._binder
  L2_2 = L2_2.rect_transform_root
  L2_2 = L2_2.rect
  L4_2 = A0_2
  L3_2 = A0_2._get_mouse_local_pos
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.rect_transform_root
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Vector2
  L6_2 = L1_2.x
  L6_2 = L6_2 - 0.5
  L7_2 = L2_2.width
  L6_2 = L6_2 * L7_2
  L7_2 = L1_2.y
  L7_2 = L7_2 - 0.5
  L8_2 = L2_2.height
  L7_2 = L7_2 * L8_2
  L5_2 = L5_2(L6_2, L7_2)
  L5_2 = L3_2 + L5_2
  L4_2.anchoredPosition = L5_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.rect_transform_root
  L4_2 = L4_2.anchoredPosition
  L4_2 = L4_2 - L3_2
  A0_2._delta_pos = L4_2
end
L0_1._init_panel_pos = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Input
  L1_2 = L1_2.mousePosition
  L2_2 = A0_2._binder
  L2_2 = L2_2.rect_transform_root
  L2_2 = L2_2.pivot
  L3_2 = A0_2._binder
  L3_2 = L3_2.rect_transform_root
  L3_2 = L3_2.rect
  L4_2 = L2_2.x
  L4_2 = L4_2 - 0.5
  L5_2 = L3_2.width
  L4_2 = L4_2 * L5_2
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Screen
  L5_2 = L5_2.width
  L6_2 = L2_2.x
  L6_2 = L6_2 - 0.5
  L7_2 = L3_2.width
  L6_2 = L6_2 * L7_2
  L5_2 = L5_2 + L6_2
  L6_2 = L2_2.y
  L6_2 = L6_2 - 0.5
  L7_2 = L3_2.height
  L6_2 = L6_2 * L7_2
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.Screen
  L7_2 = L7_2.height
  L8_2 = L2_2.y
  L8_2 = L8_2 - 0.5
  L9_2 = L3_2.height
  L8_2 = L8_2 * L9_2
  L7_2 = L7_2 - L8_2
  L8_2 = math
  L8_2 = L8_2.max
  L9_2 = L4_2
  L10_2 = L1_2.x
  L8_2 = L8_2(L9_2, L10_2)
  L1_2.x = L8_2
  L8_2 = math
  L8_2 = L8_2.max
  L9_2 = L6_2
  L10_2 = L1_2.y
  L8_2 = L8_2(L9_2, L10_2)
  L1_2.y = L8_2
  L8_2 = math
  L8_2 = L8_2.min
  L9_2 = L5_2
  L10_2 = L1_2.x
  L8_2 = L8_2(L9_2, L10_2)
  L1_2.x = L8_2
  L8_2 = math
  L8_2 = L8_2.min
  L9_2 = L7_2
  L10_2 = L1_2.y
  L8_2 = L8_2(L9_2, L10_2)
  L1_2.y = L8_2
  L8_2 = CS
  L8_2 = L8_2.UnityEngine
  L8_2 = L8_2.RectTransformUtility
  L8_2 = L8_2.ScreenPointToLocalPointInRectangle
  L9_2 = A0_2._parent_rect_transform
  L10_2 = CS
  L10_2 = L10_2.UnityEngine
  L10_2 = L10_2.Vector2
  L11_2 = L1_2.x
  L12_2 = L1_2.y
  L10_2 = L10_2(L11_2, L12_2)
  L11_2 = CS
  L11_2 = L11_2.RPG
  L11_2 = L11_2.Client
  L11_2 = L11_2.GlobalVars
  L11_2 = L11_2.s_UICamera
  L12_2 = nil
  L8_2, L9_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
  return L9_2
end
L0_1._get_mouse_local_pos = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.collect_item_data
  L1_2.isInUIDragging = true
  L2_2 = A0_2
  L1_2 = A0_2._init_panel_pos
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.jigsaw_puzzle_item
  L2_2 = L1_2
  L1_2 = L1_2.SetState
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Prop
  L3_2 = L3_2.JigsawItemState
  L3_2 = L3_2.Active
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_pointer_up
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.manual_begin_drag = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.LogFormat
  L2_2 = "[hwx] _on_begin_drag"
  L1_2(L2_2)
  L1_2 = A0_2._on_begin_drag_callback
  if L1_2 then
    L1_2 = A0_2._on_begin_drag_callback
    L2_2 = A0_2._on_begin_drag_callback_self
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.manual_begin_drag
  L1_2(L2_2)
end
L0_1._on_begin_drag = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.LogFormat
  L2_2 = "[hwx] _on_common_pointer_up"
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._on_common_pointer_up_callback
  L3_2 = A0_2._on_common_pointer_up_callback_self
  L1_2(L2_2, L3_2)
end
L0_1._on_common_pointer_up = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.collect_item_data
  L1_2 = L1_2.isInUIDragging
  if not L1_2 then
    return
  end
  L1_2 = A0_2.collect_item_data
  L1_2.isInUIDragging = false
  L2_2 = A0_2
  L1_2 = A0_2._set_pointer_up
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Vector2
  L1_2 = L1_2.zero
  A0_2._delta_pos = L1_2
end
L0_1.logic_end_drag = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.LogFormat
  L2_2 = "[hwx] _on_end_drag"
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.logic_end_drag
  L1_2(L2_2)
  L1_2 = A0_2._on_end_drag_callback
  if L1_2 then
    L1_2 = A0_2._on_end_drag_callback
    L2_2 = A0_2._on_end_drag_callback_self
    L1_2(L2_2)
  end
end
L0_1._on_end_drag = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.change_sorting_order
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.ui3d_clippable
  L2_2.enabled = A1_2
end
L0_1._set_pointer_up = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.rect_transform_root
  L3_2 = A0_2
  L2_2 = A0_2._get_mouse_local_pos
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._delta_pos
  L2_2 = L2_2 + L3_2
  L1_2.anchoredPosition = L2_2
end
L0_1._on_drag = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.collect_item_data
  L1_2.isInUIDragging = false
  L2_2 = A0_2
  L1_2 = A0_2._set_pointer_up
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.event_trigger_listener
  L2_2 = L1_2
  L1_2 = L1_2.ManualStopDrag
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._exit_depot_area_callback
  L2_2 = A0_2._exit_depot_area_callback_self
  L3_2 = A0_2.collect_item_data
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.LogFormat
  L2_2 = "[hwx] _on_exit_depot_area"
  L1_2(L2_2)
end
L0_1._on_exit_depot_area = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = A0_2._on_btn_root_callback
    if L1_2 then
      L1_2 = A0_2._on_btn_root_callback
      L2_2 = A0_2._on_btn_root_self
      L3_2 = A0_2
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_btn_root = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L2_2 = L1_2
  L1_2 = L1_2.ClearAnimationState
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.animator_button
    L1_2.enabled = true
  else
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.CoroutineUtils
    L1_2 = L1_2.InvokeNextFrame
    function L2_2()
      local L0_3, L1_3
      L0_3 = A0_2._binder
      if L0_3 then
        L0_3 = A0_2._binder
        L0_3 = L0_3.animator_button
        L1_3 = A0_2._pre_empty
        L1_3 = not L1_3
        L0_3.enabled = L1_3
      end
    end
    L1_2(L2_2)
  end
end
L0_1._on_in_control_input_switch = L3_1
return L0_1
