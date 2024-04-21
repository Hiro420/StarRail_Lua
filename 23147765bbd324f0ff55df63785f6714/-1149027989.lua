local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Book.BookTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Book.BookSeriesInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Book.BookSeriesInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Book.BookRightDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Book.BookRightDetailPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Book.Filter.BookCollectStateFilter"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.NovelModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "BookTabItem"
L3_1 = G
L3_1 = L3_1.TabItem
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_book_item_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.button
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L1_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2.callbackFunc = A1_2
  A0_2.callbackSelf = A2_2
end
L1_1.register_callback = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = G
  L3_2 = L3_2.BookCollectStateFilter
  L2_2 = L2_2(L3_2)
  A0_2._collect_state_filter = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.filter_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_filters
  L4_2 = A0_2._collect_state_filter
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.filter_panel
  L3_2 = L2_2
  L2_2 = L2_2.register_callback
  L4_2 = nil
  L5_2 = A0_2._on_filter_finished
  L6_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
  if A1_2 == nil then
    return
  end
  L2_2 = A1_2.BookSeriesWorld
  A0_2._book_series_world = L2_2
  L2_2 = A1_2.BookSeriesWorldTextmapID
  A0_2._book_series_world_name = L2_2
  L2_2 = A1_2.BookSeriesWorldIconPath
  A0_2._book_series_world_icon_path = L2_2
  L2_2 = A1_2.BookSeriesWorldBackgroundPath
  A0_2.book_world_img_path = L2_2
end
L1_1.set_tab_data = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.icon_normal
  L4_2 = A0_2._book_series_world_icon_path
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.icon_selected
  L4_2 = A0_2._book_series_world_icon_path
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_added = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_book_item_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_book_series_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._reset_filter
  L1_2(L2_2)
end
L1_1._on_select = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.reset_filter_panel
  L1_2(L2_2)
end
L1_1._reset_filter = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.BookSeriesInfoPanel
    L8_2 = G
    L8_2 = L8_2.BookSeriesInfoPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._book_series_table
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._cur_book_series
  L6_2 = L6_2.BookSeriesID
  L7_2 = L5_2.BookSeriesID
  if L6_2 == L7_2 then
    L7_2 = A0_2
    L6_2 = A0_2._book_series_item_click
    L8_2 = L5_2
    L9_2 = L4_2
    L6_2(L7_2, L8_2, L9_2)
  else
    L7_2 = L4_2
    L6_2 = L4_2.set_selected
    L8_2 = false
    L6_2(L7_2, L8_2)
  end
  L7_2 = L4_2
  L6_2 = L4_2.bind_click
  L8_2 = A0_2
  L9_2 = A0_2._book_series_item_click
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_locked
  L8_2 = L5_2.IsAvailable
  L8_2 = not L8_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L1_1._on_item_changed = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_display_table
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_default_cur_book_series
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_collect_count
  L1_2(L2_2)
  L1_2 = A0_2._text_book_title
  if L1_2 ~= nil then
    L1_2 = A0_2._text_book_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._book_series_world_name
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_empty
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._book_series_table
  L3_2 = L3_2 == nil
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._play_fade_in
  L1_2(L2_2)
end
L1_1.refresh = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._book_item_click_listener = A2_2
  A0_2._book_item_click_callback = A1_2
end
L1_1.register_book_item_click_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_book_item_list
  L2_2 = L1_2
  L1_2 = L1_2.PlayFadeIn
  L1_2(L2_2)
end
L1_1._play_fade_in = L2_1
function L2_1(A0_2, A1_2)
  A0_2._text_book_title = A1_2
end
L1_1.set_book_title_callback_node = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetBookSeriesByWorld
  L4_2 = A0_2._book_series_world
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._book_series_list = L1_2
  L1_2 = A0_2._book_series_list
  A0_2._book_series_table = L1_2
  L1_2 = A0_2._collect_state_filter
  L2_2 = L1_2
  L1_2 = L1_2.count_book_collect_state
  L3_2 = A0_2._book_series_list
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_source_data
  L3_2 = A0_2._book_series_list
  L1_2(L2_2, L3_2)
end
L1_1._get_book_series_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._book_series_table
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.CollectState
    L2_3 = #L2_3
    L3_3 = A1_3.CollectState
    L3_3 = #L3_3
    if L2_3 == L3_3 then
      L2_3 = A0_3.BookSeriesID
      L3_3 = A1_3.BookSeriesID
      L2_3 = L2_3 < L3_3
      return L2_3
    end
    L2_3 = A0_3.CollectState
    L2_3 = #L2_3
    L3_3 = A1_3.CollectState
    L3_3 = #L3_3
    L2_3 = L2_3 > L3_3
    return L2_3
  end
  L1_2(L2_2, L3_2)
end
L1_1._refresh_display_table = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.ConfigID
    if L7_2 == A1_2 then
      L7_2 = true
      return L7_2
    end
  end
  L2_2 = false
  return L2_2
end
L1_1._is_include = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._cur_book_series
  if nil ~= L1_2 then
    L1_2 = pairs
    L2_2 = A0_2._book_series_table
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = L5_2.BookSeriesID
      L7_2 = A0_2._cur_book_series
      L7_2 = L7_2.BookSeriesID
      if L6_2 == L7_2 then
        return
      end
    end
  end
  L1_2 = A0_2._book_series_table
  L1_2 = L1_2[1]
  A0_2._cur_book_series = L1_2
end
L1_1._set_default_cur_book_series = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_book_item_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._book_series_table
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_book_item_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._show_cur_book_series
  L1_2(L2_2)
end
L1_1._refresh_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = pairs
  L3_2 = A0_2._book_series_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.CollectState
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.Client
    L8_2 = L8_2.BookSeries
    L8_2 = L8_2.CollectStateEnum
    L8_2 = L8_2.CollectFinish
    if L7_2 == L8_2 then
      L1_2 = L1_2 + 1
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_cur_count
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_max_count
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._book_series_list
  L4_2 = #L4_2
  L2_2(L3_2, L4_2)
end
L1_1._refresh_collect_count = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.index_of_item
  L4_2 = A0_2._book_series_table
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 == nil then
    return
  end
  L3_2 = A0_2._cur_book_series_panel
  if L3_2 ~= nil then
    L3_2 = A0_2._cur_book_series_panel
    L4_2 = L3_2
    L3_2 = L3_2.set_selected
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
  if A2_2 ~= nil then
    A0_2._cur_book_series_panel = A2_2
    L3_2 = A0_2._cur_book_series_panel
    L4_2 = L3_2
    L3_2 = L3_2.set_selected
    L5_2 = true
    L3_2(L4_2, L5_2)
  end
  A0_2._cur_book_series = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._show_cur_book_series
  L3_2(L4_2)
end
L1_1._book_series_item_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._book_item_click_listener
  if L1_2 then
    L1_2 = A0_2._book_item_click_callback
    if L1_2 then
      L1_2 = A0_2._book_item_click_callback
      L2_2 = A0_2._book_item_click_listener
      L3_2 = A0_2._cur_book_series
      L1_2(L2_2, L3_2)
    end
  end
end
L1_1._show_cur_book_series = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._book_series_table = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.refresh
  L2_2(L3_2)
  L2_2 = A0_2.callbackFunc
  if L2_2 then
    L2_2 = A0_2.callbackFunc
    L3_2 = A0_2.callbackSelf
    L2_2(L3_2)
  end
end
L1_1._on_filter_finished = L2_1
return L1_1
