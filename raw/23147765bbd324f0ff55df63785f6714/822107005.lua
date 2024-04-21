local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Book.BookContentDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Book.BookContentInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Book.BookContentInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Archive.RelicArchive.RelicBGStorySubTitlePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Archive.RelicArchive.RelicBGStorySubTitlePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.Utils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicArchiveSuitBGStoryDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 0
L2_1 = 1
L3_1 = 5
L4_1 = 4
function L5_1(A0_2)
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
end
L0_1.ctor = L5_1
function L5_1(A0_2, A1_2)
  A0_2._data = A1_2
end
L0_1.init = L5_1
function L5_1(A0_2)
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
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L2_2 = L1_2
  L1_2 = L1_2.SetVerticalScrollPercent
  L3_2 = 1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_page_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_page_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_unload = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_titile
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._construct_content
  L1_2(L2_2)
end
L0_1._setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.instantiate_object
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_content
  L3_2 = L3_2.BookContentPrefabList
  L4_2 = L1_1
  L3_2 = L3_2[L4_2]
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
  L4_2 = A0_2._data
  L4_2 = L4_2.Row
  L4_2 = L4_2.SetName
  L2_2(L3_2, L4_2)
end
L0_1._setup_titile = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._data
  L1_2 = L1_2.Row
  L1_2 = L1_2.IsPlanarSuit
  if L1_2 then
    L1_2 = 5
    if L1_2 then
      goto lbl_10
    end
  end
  L1_2 = 1
  ::lbl_10::
  L2_2 = A0_2._data
  L2_2 = L2_2.Row
  L2_2 = L2_2.IsPlanarSuit
  if L2_2 then
    L2_2 = 6
    if L2_2 then
      goto lbl_19
    end
  end
  L2_2 = 4
  ::lbl_19::
  L3_2 = L1_2
  L4_2 = L2_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = G
    L7_2 = L7_2.Utils
    L7_2 = L7_2.enum_from_int_str
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.RelicType
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.RelicDataInfoExcelTable
    L8_2 = L8_2.GetData
    L9_2 = A0_2._data
    L9_2 = L9_2.ID
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    L10_2 = A0_2
    L9_2 = A0_2._setup_sub_title
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
    L9_2 = A0_2._data
    L10_2 = L9_2
    L9_2 = L9_2.IsTypeUnlock
    L11_2 = L7_2
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 then
      L10_2 = A0_2
      L9_2 = A0_2._setup_content
      L11_2 = L8_2.BGStoryContent
      L9_2(L10_2, L11_2)
    else
      L10_2 = A0_2
      L9_2 = A0_2._setup_lock_tip
      L9_2(L10_2)
    end
  end
end
L0_1._construct_content = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2.instantiate_object
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_content
  L4_2 = L4_2.BookContentPrefabList
  L5_2 = L2_1
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.Prefab
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_content
  L5_2 = L5_2.transform
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.create_panel
  L5_2 = G
  L5_2 = L5_2.BookContentInfoPanel
  L6_2 = G
  L6_2 = L6_2.BookContentInfoPanelBinder
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = L3_2
  L4_2 = L3_2.bind
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L5_2 = L3_2
  L4_2 = L3_2.setup_content_text_id
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
end
L0_1._setup_content = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.instantiate_object
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_content
  L3_2 = L3_2.BookContentPrefabList
  L4_2 = L4_1
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.Prefab
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_content
  L4_2 = L4_2.transform
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_lock_tip = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2
  L2_2 = A0_2.instantiate_object
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_content
  L4_2 = L4_2.BookContentPrefabList
  L5_2 = L3_1
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.Prefab
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_content
  L5_2 = L5_2.transform
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.create_panel
  L5_2 = G
  L5_2 = L5_2.RelicBGStorySubTitlePanel
  L6_2 = G
  L6_2 = L6_2.RelicBGStorySubTitlePanelBinder
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = L3_2
  L4_2 = L3_2.bind
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L5_2 = L3_2
  L4_2 = L3_2.setup_view
  L6_2 = A1_2.RelicName
  L7_2 = A1_2.Type
  L4_2(L5_2, L6_2, L7_2)
end
L0_1._setup_sub_title = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close = L5_1
return L0_1
