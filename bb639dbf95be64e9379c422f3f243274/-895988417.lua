local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.ActivityMonopolyMapDetailDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.Components.ActivityMonopolyMapDetailEventItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.Components.ActivityMonopolyMapDetailEventItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonopolyMapDetailDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1[1] = "UIText_ActivityMonopoly_Map_Detail_Tab_Normal"
L1_1[2] = "UIText_ActivityMonopoly_Map_Detail_Tab_Special"
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.MonopolyModule
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyMapDetailDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._update_datas
  L1_2(L2_2)
end
L0_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  A0_2._display_datas = L1_2
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.GetCellDisplayCommonList
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = {}
    L8_2 = L6_2.IconPath
    L7_2.IconPath = L8_2
    L8_2 = G
    L8_2 = L8_2.TextmapStatic
    L8_2 = L8_2.GetText
    L9_2 = L6_2.CellName
    L8_2 = L8_2(L9_2)
    L7_2.CellName = L8_2
    L8_2 = G
    L8_2 = L8_2.TextmapStatic
    L8_2 = L8_2.GetText
    L9_2 = L6_2.CellDesc
    L8_2 = L8_2(L9_2)
    L7_2.CellDesc = L8_2
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._display_datas
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.GetCellDisplayGame
  L2_2 = L2_2(L3_2)
  L3_2 = L2_1.GameInfo
  L3_2 = L3_2.RatioUnlocked
  if L3_2 then
    L3_2 = L2_1.GameInfo
    L3_2 = L3_2.RatioMaxLimit
    if L3_2 then
      goto lbl_45
    end
  end
  L3_2 = 1
  ::lbl_45::
  L4_2 = {}
  L5_2 = L2_2.IconPath
  L4_2.IconPath = L5_2
  L5_2 = G
  L5_2 = L5_2.TextmapStatic
  L5_2 = L5_2.GetText
  L6_2 = L2_2.CellName
  L5_2 = L5_2(L6_2)
  L4_2.CellName = L5_2
  L5_2 = G
  L5_2 = L5_2.TextmapStatic
  L5_2 = L5_2.GetText
  L6_2 = L2_2.CellDesc
  L5_2 = L5_2(L6_2)
  L4_2.CellDesc = L5_2
  L5_2 = G
  L5_2 = L5_2.TextmapStatic
  L5_2 = L5_2.GetText
  L6_2 = "UIText_ActivityMonopoly_Map_Detail_GameRaiseAddLimitCount"
  L7_2 = L3_2
  L5_2 = L5_2(L6_2, L7_2)
  L4_2.ExtraInfo = L5_2
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = A0_2._display_datas
  L7_2 = 1
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = L2_1
  L6_2 = L5_2
  L5_2 = L5_2.GetCellDisplayAsset
  L5_2 = L5_2(L6_2)
  L6_2 = {}
  L7_2 = L5_2.IconPath
  L6_2.IconPath = L7_2
  L7_2 = G
  L7_2 = L7_2.TextmapStatic
  L7_2 = L7_2.GetText
  L8_2 = L5_2.CellName
  L7_2 = L7_2(L8_2)
  L6_2.CellName = L7_2
  L7_2 = G
  L7_2 = L7_2.TextmapStatic
  L7_2 = L7_2.GetText
  L8_2 = L5_2.CellDesc
  L7_2 = L7_2(L8_2)
  L6_2.CellDesc = L7_2
  L7_2 = G
  L7_2 = L7_2.TextmapStatic
  L7_2 = L7_2.GetText
  L8_2 = "UIText_ActivityMonopoly_Map_Detail_IncomePreview"
  L9_2 = L2_1.AssetInfo
  L10_2 = L9_2
  L9_2 = L9_2.GetCurActionProfit
  L9_2, L10_2 = L9_2(L10_2)
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L6_2.ExtraInfo = L7_2
  L7_2 = table
  L7_2 = L7_2.insert
  L8_2 = A0_2._display_datas
  L9_2 = 2
  L10_2 = L6_2
  L7_2(L8_2, L9_2, L10_2)
end
L0_1._update_datas = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.empty_btn
  L4_2 = A0_2._on_exit_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.exit_btn
  L4_2 = A0_2._on_exit_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._display_datas
  L3_2 = #L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit_btn_clicked = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_21
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.ActivityMonopolyMapDetailEventItemPanel
  L8_2 = G
  L8_2 = L8_2.ActivityMonopolyMapDetailEventItemPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  ::lbl_21::
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._display_datas
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L5_2(L6_2, L7_2)
  return L3_2
end
L0_1._on_item_changed = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.get_zoom_navigation_target
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L4_2 = A0_2
    L3_2 = A0_2.get_first_selected_object
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
  end
  L4_2 = A0_2
  L3_2 = A0_2.set_navigation_target
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_enter_zoom = L3_1
return L0_1
