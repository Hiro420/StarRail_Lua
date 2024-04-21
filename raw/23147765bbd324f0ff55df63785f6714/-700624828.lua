local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Book.BookSeriesInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BookSeriesInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.button
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._trigger_click
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._click_book_series_item
  L3_2 = A0_2._book_series
  L1_2(L2_2, L3_2)
end
L0_1._trigger_click = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._click_event_listner = nil
  A0_2._on_click_item = nil
  A0_2._book_series = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._click_event_listner = A1_2
  A0_2._on_click_item = A2_2
end
L0_1.bind_click = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._on_click_item
  if L2_2 ~= nil then
    L2_2 = A0_2._on_click_item
    L3_2 = A0_2._click_event_listner
    L4_2 = A1_2
    L5_2 = A0_2
    L2_2(L3_2, L4_2, L5_2)
    L3_2 = A0_2
    L2_2 = A0_2.save_navigation_target
    L4_2 = A0_2._binder
    L4_2 = L4_2.button
    L4_2 = L4_2.gameObject
    L2_2(L3_2, L4_2)
  end
end
L0_1._click_book_series_item = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._book_series = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._bind_btn_callback
  L4_2 = A0_2._binder
  L4_2 = L4_2.button
  L5_2 = A0_2._click_book_series_item
  L6_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.bind_reddot
  L4_2 = "BookSeriesNew"
  L5_2 = A1_2.BookSeriesID
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_red_dot
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_name
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_icon
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_count
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_count
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._book_series
  L4_2 = L4_2.IsAvailable
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
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
  L3_2 = A0_2._book_series
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
end
L0_1._setup_name = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._book_series
  L1_2 = L1_2.IconFigurePath
  if nil == L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.icon
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.icon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.icon
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_icon = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_cur_count
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = A0_2._book_series
  L3_2 = L3_2.CurrentNum
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_total_count
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = A0_2._book_series
  L3_2 = L3_2.TotalNum
  L1_2(L2_2, L3_2)
end
L0_1._setup_count = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.button
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_selected = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.status_animation
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = "BookListLock"
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.status_animation
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = "BookListNormal"
    L2_2(L3_2, L4_2)
  end
end
L0_1.set_locked = L1_1
return L0_1
