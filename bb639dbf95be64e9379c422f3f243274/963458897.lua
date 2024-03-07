local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "InteractRewardInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_timer_callback
  L4_2 = 0
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._count_down_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.button
  L4_2 = A0_2._on_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.itemRow
  A0_2._row = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_view_internal
  L2_2(L3_2)
  L2_2 = A0_2._count_down_timer
  L3_2 = L2_2
  L2_2 = L2_2.set_interval
  L4_2 = A1_2.delayTime
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._count_down_timer
  L3_2 = L2_2
  L2_2 = L2_2.reset
  L2_2(L3_2)
  L2_2 = A0_2._count_down_timer
  L3_2 = L2_2
  L2_2 = L2_2.start
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._row = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_view_internal
  L2_2(L3_2)
  A0_2._is_already_interacted = false
end
L0_1.setup_view_by_itemRow = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.icon
  L4_2 = A0_2._row
  L4_2 = L4_2.ItemIconPath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_name
  L2_2 = L1_2
  L1_2 = L1_2.SetSingleLineEllipsis
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._row
  L3_2 = L3_2.ItemName
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_view_by_item_sub_type
  L3_2 = A0_2._row
  L3_2 = L3_2.ItemSubType
  L1_2(L2_2, L3_2)
end
L0_1._setup_view_internal = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = A0_2._is_waiting_fade_out
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.play_fade_out
    L1_2(L2_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.play_fade_in
  L1_2(L2_2)
end
L0_1._on_timer_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemSubType
  L2_2 = L2_2.Book
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_hint
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_view_by_item_sub_type = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_already_interacted
  if L1_2 then
    return
  end
  A0_2._is_already_interacted = true
  L1_2 = A0_2._row
  L1_2 = L1_2.ItemSubType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemSubType
  L2_2 = L2_2.Book
  if L1_2 ~= L2_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Book.BookContentDialog"
  L3_2 = A0_2._row
  L3_2 = L3_2.ID
  L1_2(L2_2, L3_2)
end
L0_1._on_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation
  L2_2 = L1_2
  L1_2 = L1_2.Stop
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "MazeBookTipsFadeIn"
  L1_2(L2_2, L3_2)
end
L0_1.play_fade_in = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation
  L2_2 = L1_2
  L1_2 = L1_2.Stop
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "MazeBookTipsFadeOut"
  L1_2(L2_2, L3_2)
end
L0_1.play_fade_out = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if nil == A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.play_fade_out
    L2_2(L3_2)
  end
  A0_2._is_waiting_fade_out = true
  L2_2 = A0_2._count_down_timer
  L3_2 = L2_2
  L2_2 = L2_2.set_interval
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._count_down_timer
  L3_2 = L2_2
  L2_2 = L2_2.reset
  L2_2(L3_2)
  L2_2 = A0_2._count_down_timer
  L3_2 = L2_2
  L2_2 = L2_2.start
  L2_2(L3_2)
end
L0_1.fade_out = L1_1
return L0_1
