local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Book.TreasureMapDialogBinder"
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
L2_1 = "TreasureMapDialog"
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
  L3_2 = L3_2.TreasureMapDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
end
L1_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemCureInfoDataExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    L3_2 = G
    L3_2 = L3_2.SuperDebug
    L3_2 = L3_2.LogErrorFormat
    L4_2 = "ItemCureInfoDataRow Not Exist!! ID: "
    L5_2 = A1_2
    L4_2 = L4_2 .. L5_2
    L3_2(L4_2)
  end
  A0_2._item_cure_info_data_row = L2_2
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
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._item_cure_info_data_row
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._setup_titile
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._setup_picture
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._setup_desc
    L1_2(L2_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L2_2 = L1_2
  L1_2 = L1_2.SetVerticalScrollPercent
  L3_2 = 1
  L1_2(L2_2, L3_2)
end
L1_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._item_cure_info_data_row = nil
end
L1_1._on_dispose = L2_1
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
  L4_2 = A0_2._item_cure_info_data_row
  L4_2 = L4_2.CureInfoTitle
  L2_2(L3_2, L4_2)
end
L1_1._setup_titile = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.instantiate_object
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_content
  L3_2 = L3_2.BookContentPrefabList
  L3_2 = L3_2[2]
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
  L4_2 = L2_2
  L3_2 = L2_2.bind
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._item_cure_info_data_row
  L3_2 = L3_2.ImgPath
  L3_2 = L3_2 ~= nil
  L5_2 = L2_2
  L4_2 = L2_2.safe_set_active
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  if L3_2 then
    L5_2 = L2_2
    L4_2 = L2_2.setup_content_pic
    L6_2 = A0_2._item_cure_info_data_row
    L6_2 = L6_2.ImgPath
    L4_2(L5_2, L6_2)
  end
end
L1_1._setup_picture = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.instantiate_object
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_content
  L3_2 = L3_2.BookContentPrefabList
  L3_2 = L3_2[1]
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
  L4_2 = L2_2
  L3_2 = L2_2.bind
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.setup_content_text_id
  L5_2 = A0_2._item_cure_info_data_row
  L5_2 = L5_2.CureInfoDesc
  L3_2(L4_2, L5_2)
end
L1_1._setup_desc = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L1_1._on_btn_exit = L2_1
return L1_1
