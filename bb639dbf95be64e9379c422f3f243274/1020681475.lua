local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Entrance.Components.ChessRogueEntranceInfoItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Dimensions.ChessRogueMenuAeonTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Tools.ChessRogueUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Entrance.Components.ChessRogueAeonBuffTipsPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueMenuAeonTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "SpriteOutput/Rogue/Tab/IdentifyIcon.png"
L2_1 = "UIText_RogueDLC_AeonBless"
L3_1 = G
L3_1 = L3_1.ComponentExtensions
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  A0_2._data_provider = A3_2
  A0_2._is_inited = false
  L4_2 = {}
  A0_2._custom_panels = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._get_aeon_panel_required_data
  L4_2(L5_2)
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  A0_2._title = "UIText_Rogue_Aeon_Show_Hint_2"
  A0_2._content = "UIText_Rogue_Aeon_Echo_Hint_4"
  A0_2._sub_title = "UIText_Rogue_BattleEvent_EnhanceBuff_Title"
  L1_2 = A0_2._data_provider
  L2_2 = L1_2
  L1_2 = L1_2.get_aeon_display_buff_tb
  L1_2 = L1_2(L2_2)
  A0_2._buff_tb = L1_2
end
L0_1._get_aeon_panel_required_data = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = L2_1
  return L1_2
end
L0_1.get_tab_title = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_selected
  L4_2 = L1_1
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_unselected
  L4_2 = L1_1
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_added = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._on_select = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_unselect = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_list_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_title_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_content_view
  L1_2(L2_2)
end
L0_1._refresh_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.llv2
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.llv2
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._buff_tb
  L3_2 = #L3_2
  L3_2 = L3_2 + 1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.llv2
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._setup_list_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = G
  L1_2 = L1_2.TextmapStatic
  L1_2 = L1_2.GetText
  L2_2 = A0_2._data_provider
  L3_2 = L2_2
  L2_2 = L2_2.get_aeon_display_row
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.RogueAeonPathName2
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.ChessRogueUtils
  L2_2 = L2_2.get_aeon_related_achieved_common_buff_count
  L3_2 = A0_2._data_provider
  L4_2 = L3_2
  L3_2 = L3_2.get_cur_selected_aeon_id
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.title
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A0_2._title
  L6_2 = L1_2
  L7_2 = L2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1._setup_title_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._data_provider
  L2_2 = L1_2
  L1_2 = L1_2.get_aeon_display_content_and_param
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.desc
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_content_view = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = nil
  if A2_2 ~= 1 then
    L5_2 = A1_2
    L4_2 = A1_2.NewListViewItem
    L6_2 = 1
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L4_2
  else
    L5_2 = A1_2
    L4_2 = A1_2.NewListViewItem
    L6_2 = 0
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L4_2
  end
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    if A2_2 ~= 1 then
      L6_2 = A0_2
      L5_2 = A0_2.create_panel
      L7_2 = G
      L7_2 = L7_2.ChessRogueEntranceInfoItem
      L8_2 = G
      L8_2 = L8_2.ChessRogueEntranceInfoItemBinder
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L4_2 = L5_2
    else
      L6_2 = A0_2
      L5_2 = A0_2.create_panel
      L7_2 = G
      L7_2 = L7_2.ChessRogueAeonBuffTipsPanel
      L8_2 = G
      L8_2 = L8_2.ChessRogueAeonBuffTipsPanelBinder
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L4_2 = L5_2
    end
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  if A2_2 ~= 1 then
    L5_2 = A2_2
    if L5_2 == 0 then
      L5_2 = 1
    end
    L6_2 = A0_2._buff_tb
    L6_2 = L6_2[L5_2]
    L8_2 = L4_2
    L7_2 = L4_2.setup_menu_buff_view
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  else
    L6_2 = L4_2
    L5_2 = L4_2.setup_view
    L7_2 = "UIText_RogueDLC_AeonEntrance_Hint"
    L5_2(L6_2, L7_2)
  end
  return L3_2
end
L0_1._on_item_changed = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.is_active
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_first_selected_object
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.llv2
    if L1_2 ~= nil then
      goto lbl_10
    end
  end
  L1_2 = nil
  do return L1_2 end
  ::lbl_10::
  L1_2 = A0_2._binder
  L1_2 = L1_2.llv2
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = L1_2.UserObjectData
  L3_2 = L2_2
  L2_2 = L2_2.get_btn_root
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.gameObject
  return L2_2
end
L0_1.get_first_selected_object = L4_1
return L0_1
