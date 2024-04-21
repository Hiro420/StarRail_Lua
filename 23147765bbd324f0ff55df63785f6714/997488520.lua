local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Tools.RogueNousUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Entrance.Components.RogueNousPathEchoInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Entrance.Components.RogueNousPathEchoDetailPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueNousPathEchoDetailPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 5
L2_1 = {}
L2_1.Title = 0
L2_1.Desc = 1
L2_1.Buff = 2
L2_1.Tips = 3
function L3_1(A0_2, A1_2, A2_2)
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.info_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_aeon_info_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.RogueNousUtils
  L2_2 = L2_2.format_entrance_aeon_display_data
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._display_data = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_icon_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.info_list
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._display_data
  L4_2 = #L4_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.info_list
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.info_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = L1_1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L4_2 = L2_2
    L3_2 = L2_2.get_btn_root
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2.gameObject
    return L4_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.RogueStatic
  L2_2 = L2_2.GetRogueAeonDisplayRow
  L3_2 = A1_2.DisplayID
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_aeon_icon
  L6_2 = L2_2.AeonFigure
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_aeon_bg
  L6_2 = L2_2.AeonFigure
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_aeon_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.RogueAeonPathName2
  L3_2(L4_2, L5_2)
end
L0_1._setup_icon_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2._display_data
  L4_2 = A2_2 + 1
  L3_2 = L3_2[L4_2]
  L5_2 = A1_2
  L4_2 = A1_2.NewListViewItem
  L6_2 = L3_2.TypeTag
  L6_2 = L2_1[L6_2]
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2.UserObjectData
  if L5_2 == nil then
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.RogueNousPathEchoInfoPanel
    L9_2 = G
    L9_2 = L9_2.RogueNousPathEchoInfoPanelBinder
    L10_2 = L3_2.TypeTag
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    L5_2 = L6_2
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = L4_2.transform
    L6_2(L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.register_select_callback
    L8_2 = A0_2._on_list_item_select
    L9_2 = A0_2
    L6_2(L7_2, L8_2, L9_2)
    L4_2.UserObjectData = L5_2
  end
  L7_2 = L5_2
  L6_2 = L5_2.setup_view
  L8_2 = L3_2
  L6_2(L7_2, L8_2)
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.UI
  L6_2 = L6_2.LayoutRebuilder
  L6_2 = L6_2.ForceRebuildLayoutImmediate
  L7_2 = L5_2._binder
  L7_2 = L7_2.root
  L6_2(L7_2)
  if A2_2 == 1 then
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.GlobalVars
    L6_2 = L6_2.s_ModuleManager
    L6_2 = L6_2.TutorialSupportModule
    L7_2 = L6_2
    L6_2 = L6_2.SetNodeDynamicKey
    L8_2 = L5_2._binder
    L8_2 = L8_2.root
    L8_2 = L8_2.gameObject
    L9_2 = L3_2.TypeTag
    L9_2 = L2_1[L9_2]
    L6_2(L7_2, L8_2, L9_2)
  end
  return L4_2
end
L0_1._on_aeon_info_change = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A2_2
  L3_2 = A2_2.GetComponent
  L5_2 = typeof
  L6_2 = CS
  L6_2 = L6_2.SuperScrollView
  L6_2 = L6_2.LoopListViewItem2
  L5_2, L6_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if L3_2 ~= nil then
    L4_2 = L3_2.ItemIndex
    L5_2 = L1_1
    if L4_2 == L5_2 then
      L4_2 = A0_2._binder
      L4_2 = L4_2.info_list
      L5_2 = L4_2
      L4_2 = L4_2.MovePanelToItemIndex
      L6_2 = 0
      L4_2(L5_2, L6_2)
    end
  end
end
L0_1._on_list_item_select = L3_1
return L0_1
