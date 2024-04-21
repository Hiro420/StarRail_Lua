local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.Handbook.RogueHandbookAeonDetailPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Handbook.Components.RogueHandbookAeonDocPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Handbook.Components.RogueHandbookAeonRewardPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueHandbookAeonDetailPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = G
  L4_2 = L4_2.ImportCsToLua
  L4_2 = L4_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L4_2
  L4_2 = G
  L4_2 = L4_2.ImportCsToLua
  L4_2 = L4_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._create_binder
  L6_2 = G
  L6_2 = L6_2.RogueHandbookAeonDetailPageBinder
  L4_2 = L4_2(L5_2, L6_2)
  A0_2._binder = L4_2
  A0_2._pause_game = true
  L4_2 = {}
  L5_2 = NavigationZoneType
  L5_2 = L5_2.Zone1
  L4_2[1] = L5_2
  A0_2.listen_zooms = L4_2
  A0_2._data = A3_2
  A0_2._select_index = 0
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  A0_2._data = A1_2
  A0_2._select_index = 0
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
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
  L3_2 = L3_2.back_btn
  L4_2 = A0_2._on_back_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.aeon_doc_looplist_view
  L2_2 = L1_2
  L1_2 = L1_2.InitListView
  L3_2 = 0
  L4_2 = A0_2._on_docs_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._data = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_aeon_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_listviews
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.aeon_doc_looplist_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._data
  L3_2 = L3_2.DocKeys
  L3_2 = L3_2.Count
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.aeon_doc_looplist_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_btns_navi
  L1_2(L2_2)
end
L0_1._setup_listviews = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._data
  L1_2 = L1_2.DisplayRow
  L2_2 = A0_2._binder
  L2_2 = L2_2.aeon_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.RogueAeonName
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.aeon_road_text
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.RogueAeonPathName2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.aeon_road_icon
  L5_2 = L1_2.AeonFigure
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2.load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.aeon_main_img
  L5_2 = L1_2.AeonImage
  L2_2(L3_2, L4_2, L5_2)
  A0_2._unlocked_doc_num = 0
  L2_2 = pairs
  L3_2 = A0_2._data
  L3_2 = L3_2.DocUnlockStatus
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 == true then
      L7_2 = A0_2._unlocked_doc_num
      L7_2 = L7_2 + 1
      A0_2._unlocked_doc_num = L7_2
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.aeon_doc_num
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = A0_2._unlocked_doc_num
  L5_2 = "/"
  L6_2 = A0_2._data
  L6_2 = L6_2.DocUnlockStatus
  L6_2 = L6_2.Count
  L4_2 = L4_2 .. L5_2 .. L6_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_aeon_eff
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._setup_aeon_info = L1_1
function L1_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.RogueHandbookAeonDocPanel
    L8_2 = G
    L8_2 = L8_2.RogueHandbookAeonDocPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._data
  L5_2 = L5_2.DocKeys
  L5_2 = L5_2[A2_2]
  L6_2 = A0_2._data
  L6_2 = L6_2.DocUnlockStatus
  L6_2 = L6_2[A2_2]
  L8_2 = L4_2
  L7_2 = L4_2.setup_view
  L9_2 = A0_2._data
  L9_2 = L9_2.Row
  L9_2 = L9_2.RogueAeonID
  L10_2 = not L6_2
  L11_2 = L5_2
  L12_2 = A2_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L8_2 = L4_2
  L7_2 = L4_2.set_selected
  L9_2 = A0_2._select_index
  L9_2 = L9_2 == A2_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._select_index
  if L7_2 == A2_2 then
    L7_2 = A0_2._data
    L8_2 = L7_2
    L7_2 = L7_2.OnDocClicked
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
  end
  L8_2 = L4_2
  L7_2 = L4_2.register_click_cbk
  L9_2 = A0_2
  L10_2 = A0_2._on_doc_unfold
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.UI
  L7_2 = L7_2.LayoutRebuilder
  L7_2 = L7_2.ForceRebuildLayoutImmediate
  L8_2 = L3_2.transform
  L7_2(L8_2)
  return L3_2
end
L0_1._on_docs_changed = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L1_2 = {}
  L2_2 = A0_2._binder
  L2_2 = L2_2.aeon_doc_looplist_view
  L2_2 = L2_2.ItemList
  L3_2 = 0
  L4_2 = L2_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2[L6_2]
    L8_2 = L7_2.UserObjectData
    if L8_2 then
      L10_2 = L8_2
      L9_2 = L8_2.get_navi_btn
      L9_2 = L9_2(L10_2)
      if L9_2 then
        L10_2 = table
        L10_2 = L10_2.insert
        L11_2 = L1_2
        L12_2 = L9_2
        L10_2(L11_2, L12_2)
      end
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2.setup_navigation
  L5_2 = L1_2
  L6_2 = NavigationType
  L6_2 = L6_2.Vertical
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._setup_btns_navi = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_back_btn_clicked = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L1_1
function L1_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.aeon_doc_looplist_view
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = L1_2.UserObjectData
  L2_2 = L2_2._binder
  L2_2 = L2_2.root
  L2_2 = L2_2.gameObject
  return L2_2
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._select_index = A2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.aeon_doc_looplist_view
  L4_2 = L3_2
  L3_2 = L3_2.RefreshAllShownItem
  L3_2(L4_2)
  L3_2 = A0_2._data
  L4_2 = L3_2
  L3_2 = L3_2.OnDocClicked
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1._on_doc_unfold = L1_1
return L0_1
