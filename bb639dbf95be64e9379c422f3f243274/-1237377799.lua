local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Book.BookContentInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Book.BookContentInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "NounDescPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._entry = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_node
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_info
  L1_2(L2_2)
end
L0_1._refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_content
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._entry
  L3_2 = L3_2.IsUnlock
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._entry
  L3_2 = L3_2.IsUnlock
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
end
L0_1._refresh_node = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._entry
  L1_2 = L1_2.IsUnlock
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_titile
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_content
  L1_2(L2_2)
end
L0_1._refresh_info = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._title_panel
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.instantiate_object
    L3_2 = A0_2._binder
    L3_2 = L3_2.book_content
    L3_2 = L3_2.BookContentPrefabList
    L3_2 = L3_2[0]
    L3_2 = L3_2.Prefab
    L4_2 = A0_2._binder
    L4_2 = L4_2.book_content
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
  L3_2 = A0_2._entry
  L3_2 = L3_2.Row
  L3_2 = L3_2.NounTitle
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._title_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_cover_title
  L3_2 = A0_2._entry
  L3_2 = L3_2.Row
  L3_2 = L3_2.IsIntroPage
  L1_2(L2_2, L3_2)
end
L0_1._setup_titile = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._text_panel
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.instantiate_object
    L3_2 = A0_2._binder
    L3_2 = L3_2.book_content
    L3_2 = L3_2.BookContentPrefabList
    L3_2 = L3_2[1]
    L3_2 = L3_2.Prefab
    L4_2 = A0_2._binder
    L4_2 = L4_2.book_content
    L4_2 = L4_2.transform
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.create_panel
    L4_2 = G
    L4_2 = L4_2.BookContentInfoPanel
    L5_2 = G
    L5_2 = L5_2.BookContentInfoPanelBinder
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._text_panel = L2_2
    L2_2 = A0_2._text_panel
    L3_2 = L2_2
    L2_2 = L2_2.bind
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  L1_2 = A0_2._text_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_content_text_id
  L3_2 = A0_2._entry
  L3_2 = L3_2.Row
  L3_2 = L3_2.NounDesc
  L1_2(L2_2, L3_2)
end
L0_1._setup_content = L1_1
return L0_1
