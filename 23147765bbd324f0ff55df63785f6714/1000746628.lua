local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Book.BookContentDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Book.BookContentInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Book.BookContentInfoPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.BookContentData
L0_1 = L0_1.BookContentType
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "BookContentDialog"
L3_1 = G
L3_1 = L3_1.UIController
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.BookContentDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
end
L1_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.NovelModule
  L3_2 = L3_2.CreateBookByID
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  A0_2._book = L3_2
  if A2_2 ~= nil then
    A0_2._pause_game = A2_2
  end
end
L1_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ActionGroup_Scroll"
  L5_2 = "ActionGroup_Return"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._load_book_content_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_titile
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_content
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L2_2 = L1_2
  L1_2 = L1_2.SetVerticalScrollPercent
  L3_2 = 1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._book
  L1_2.IsNew = false
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._book_config = nil
  A0_2._book_title = nil
end
L1_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.NovelModule
  L1_2 = L1_2.LoadBookContent
  L2_2 = A0_2._book
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
  local L1_2, L2_2, L3_2, L4_2, L5_2
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
  L2_2 = A0_2._title_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_title
  L4_2 = A0_2._book
  L4_2 = L4_2.Name
  L2_2(L3_2, L4_2)
end
L1_1._setup_titile = L2_1
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
      L11_2 = A0_2._book
      L11_2 = L11_2.BookDisplayConfig
      L11_2 = L11_2.Alignment
      L12_2 = A0_2._book
      L12_2 = L12_2.BookDisplayConfig
      L12_2 = L12_2.TMPAlignment
      L9_2(L10_2, L11_2, L12_2)
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
L1_1._setup_content = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L1_1._on_btn_exit = L2_1
return L1_1
