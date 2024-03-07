local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Book.BookContentPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Book.BookContentInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Book.BookContentInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Book.TitleInfoRowPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Book.TitleInfoRowPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.BookContentData
L0_1 = L0_1.BookContentType
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "BookContentPage"
L3_1 = G
L3_1 = L3_1.UIController
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.BookContentPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  A0_2._content_panel = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._book_series = A1_2
  A0_2._world_img_path = A2_2
end
L1_1.init = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L1_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L1_1._init_ui_navigation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_title
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_default_cur_book
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_books_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_book_content
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._play_fade_in
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_world
  L4_2 = A0_2._world_img_path
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_next_frame_callback
  L2_2 = A0_2._init_ui_navigation
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L1_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_book_list
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
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_book_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_book_item_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_books_data
  L1_2(L2_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._book_series = nil
  A0_2._books = nil
  A0_2._book_content = nil
end
L1_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_book_list
  L2_2 = L1_2
  L1_2 = L1_2.PlayFadeIn
  L1_2(L2_2)
end
L1_1._play_fade_in = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.TextExtensions
  L1_2 = L1_2.SafeSetTextID
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_title
  L3_2 = A0_2._book_series
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
end
L1_1._setup_title = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._book_series
  L2_2 = L1_2
  L1_2 = L1_2.GetBooks
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  A0_2._books = L2_2
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._books
    L7_2 = A0_2._books
    L7_2 = #L7_2
    L7_2 = L7_2 + 1
    L8_2 = L1_2[L5_2]
    L6_2[L7_2] = L8_2
  end
end
L1_1._get_books_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_book_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._books
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_book_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L1_1._refresh_books_list = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.TitleInfoRowPanel
    L8_2 = G
    L8_2 = L8_2.TitleInfoRowPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._books
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = A2_2 + 1
  L9_2 = L5_2
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_selected
  L8_2 = A0_2._cur_book
  L8_2 = L5_2 == L8_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_title
  L8_2 = L5_2.Name
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_locked
  L8_2 = L5_2.IsAvailable
  L8_2 = not L8_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.bind_click
  L8_2 = A0_2
  L9_2 = A0_2._on_book_name_row_click
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = G
  L6_2 = L6_2.RedDotModule
  L6_2 = L6_2.Instance
  L7_2 = L6_2
  L6_2 = L6_2.bind_reddot
  L8_2 = "BookNew"
  L9_2 = L5_2.BookID
  L10_2 = L4_2
  L12_2 = L4_2
  L11_2 = L4_2.get_node_red_dot
  L11_2 = L11_2(L12_2)
  L11_2 = L11_2.transform
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  return L3_2
end
L1_1._on_book_item_change = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._books
  L2_2 = L2_2[A1_2]
  A0_2._cur_book = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_books_list
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_book_content
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.CoroutineUtils
  L2_2 = L2_2.InvokeNextFrame
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.setup_short_cut_hint_panel
    L2_3 = 33
    L3_3 = A0_2._binder
    L3_3 = L3_3.scroll_rect
    L0_3(L1_3, L2_3, L3_3)
  end
  L2_2(L3_2)
end
L1_1._on_book_name_row_click = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._books
  if nil ~= L1_2 then
    L1_2 = A0_2._books
    L1_2 = L1_2[1]
    A0_2._cur_book = L1_2
  end
end
L1_1._setup_default_cur_book = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_detail
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._cur_book
  L3_2 = L3_2.IsAvailable
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_empty
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._cur_book
  L3_2 = L3_2.IsAvailable
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._cur_book
  L1_2 = L1_2.IsAvailable
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._load_book_content_data
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._clear_title_and_content_panel
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._refresh_titile
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._refresh_content
    L1_2(L2_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.scroll_rect
    L2_2 = L1_2
    L1_2 = L1_2.SetVerticalScrollPercent
    L3_2 = 1
    L1_2(L2_2, L3_2)
  end
end
L1_1._refresh_book_content = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.NovelModule
  L1_2 = L1_2.LoadBookContent
  L2_2 = A0_2._cur_book
  L2_2 = L2_2.BookID
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  A0_2._book_content = L2_2
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._book_content
    L7_2 = A0_2._book_content
    L7_2 = #L7_2
    L7_2 = L7_2 + 1
    L8_2 = L1_2[L5_2]
    L6_2[L7_2] = L8_2
  end
end
L1_1._load_book_content_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = ipairs
  L2_2 = A0_2._content_panel
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2._binder
    if L6_2 then
      L6_2 = L5_2._binder
      L6_2 = L6_2.root
      if L6_2 then
        L7_2 = A0_2
        L6_2 = A0_2.destroy_object
        L8_2 = L5_2._binder
        L8_2 = L8_2.root
        L6_2(L7_2, L8_2)
      end
    end
    L7_2 = L5_2
    L6_2 = L5_2.dispose
    L6_2(L7_2)
  end
  L1_2 = {}
  A0_2._content_panel = L1_2
end
L1_1._clear_title_and_content_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._title_panel
  if nil == L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.instantiate_object
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_content
    L3_2 = L3_2.BookContentPrefabList
    L3_2 = L3_2[0]
    L3_2 = L3_2.Prefab
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_content
    L4_2 = L4_2.transform
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.create_panel
    L4_2 = G
    L4_2 = L4_2.BookContentInfoPanel
    L5_2 = G
    L5_2 = L5_2.BookContentInfoPanelBinder
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._title_panel = L2_2
    L2_2 = A0_2._title_panel
    L3_2 = L2_2
    L2_2 = L2_2.bind
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  L1_2 = A0_2._title_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_title
  L3_2 = A0_2._cur_book
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
end
L1_1._refresh_titile = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = pairs
  L2_2 = A0_2._book_content
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.Type
    L7_2 = L0_1.Text
    if L6_2 == L7_2 then
      L6_2 = A0_2._binder
      L6_2 = L6_2.node_content
      L6_2 = L6_2.BookContentPrefabList
      L6_2 = L6_2[1]
      L6_2 = L6_2.Prefab
      L8_2 = A0_2
      L7_2 = A0_2.instantiate_object
      L9_2 = L6_2
      L10_2 = A0_2._binder
      L10_2 = L10_2.node_content
      L10_2 = L10_2.transform
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L9_2 = A0_2
      L8_2 = A0_2.create_panel
      L10_2 = G
      L10_2 = L10_2.BookContentInfoPanel
      L11_2 = G
      L11_2 = L11_2.BookContentInfoPanelBinder
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L10_2 = L8_2
      L9_2 = L8_2.bind
      L11_2 = L7_2
      L9_2(L10_2, L11_2)
      L10_2 = L8_2
      L9_2 = L8_2.setup_content_text
      L11_2 = L5_2.Text
      L9_2(L10_2, L11_2)
      L10_2 = L8_2
      L9_2 = L8_2.setup_content_text_alignment
      L11_2 = A0_2._cur_book
      L11_2 = L11_2.BookDisplayConfig
      L11_2 = L11_2.Alignment
      L12_2 = A0_2._cur_book
      L12_2 = L12_2.BookDisplayConfig
      L12_2 = L12_2.TMPAlignment
      L9_2(L10_2, L11_2, L12_2)
      L9_2 = A0_2._content_panel
      L10_2 = A0_2._content_panel
      L10_2 = #L10_2
      L10_2 = L10_2 + 1
      L9_2[L10_2] = L8_2
    else
      L6_2 = L5_2.Type
      L7_2 = L0_1.Picture
      if L6_2 == L7_2 then
        L7_2 = A0_2
        L6_2 = A0_2.instantiate_object
        L8_2 = A0_2._binder
        L8_2 = L8_2.node_content
        L8_2 = L8_2.BookContentPrefabList
        L8_2 = L8_2[2]
        L8_2 = L8_2.Prefab
        L9_2 = A0_2._binder
        L9_2 = L9_2.node_content
        L9_2 = L9_2.transform
        L6_2 = L6_2(L7_2, L8_2, L9_2)
        L8_2 = A0_2
        L7_2 = A0_2.create_panel
        L9_2 = G
        L9_2 = L9_2.BookContentInfoPanel
        L10_2 = G
        L10_2 = L10_2.BookContentInfoPanelBinder
        L7_2 = L7_2(L8_2, L9_2, L10_2)
        L9_2 = L7_2
        L8_2 = L7_2.bind
        L10_2 = L6_2
        L8_2(L9_2, L10_2)
        L9_2 = L7_2
        L8_2 = L7_2.setup_content_pic
        L10_2 = L5_2.ImagePath
        L8_2(L9_2, L10_2)
        L8_2 = A0_2._content_panel
        L9_2 = A0_2._content_panel
        L9_2 = #L9_2
        L9_2 = L9_2 + 1
        L8_2[L9_2] = L7_2
      else
        L6_2 = G
        L6_2 = L6_2.SuperDebug
        L6_2 = L6_2.LogWarningFormat
        L7_2 = "BookContentDialog setup content with undefined type"
        L6_2(L7_2)
      end
    end
  end
end
L1_1._refresh_content = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L1_1._on_btn_exit = L2_1
return L1_1
