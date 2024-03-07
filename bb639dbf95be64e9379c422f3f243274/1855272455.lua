local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Dimensions.ChessRogueDiceInfoTabPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Tools.ChessRogueUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Dimensions.Components.ChessRogueDiceSurfaceInfoItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Entrance.Components.ChessRogueEntranceInfoItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Dimensions.Components.ChessRogueDiceInfoRulePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Dimensions.Components.ChessRogueDiceInfoTitlePanel"
L0_1(L1_1)
L0_1 = {}
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.RogueSubMode
L1_1 = L1_1.ChessRogue
L0_1[L1_1] = "UIText_Rogue_Aeon_Effect_Title"
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.RogueSubMode
L1_1 = L1_1.ChessRogueNous
L0_1[L1_1] = "UIText_RogueNous_AeonBlessMenu_DiceEffect"
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ChessRogueDiceInfoTabPanel"
L3_1 = G
L3_1 = L3_1.TabItem
L1_1 = L1_1(L2_1, L3_1)
L2_1 = "SpriteOutput/Rogue/Tab/DiceFace.png"
L3_1 = "UIText_RogueDLC_AeonDice"
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  A0_2._data_provider = A3_2
  L4_2 = A0_2._data_provider
  L5_2 = L4_2
  L4_2 = L4_2.get_cur_dice_info
  L4_2 = L4_2(L5_2)
  A0_2._dice_info = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._get_dice_panel_required_data
  L4_2(L5_2)
end
L1_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = L3_1
  return L1_2
end
L1_1.get_tab_title = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._data_provider
  L2_2 = L1_2
  L1_2 = L1_2.get_cur_rogue_sub_mode
  L1_2 = L1_2(L2_2)
  A0_2._sub_mode = L1_2
  L1_2 = A0_2._dice_info
  L2_2 = L1_2
  L1_2 = L1_2.GetCurDiceTitle
  L1_2 = L1_2(L2_2)
  A0_2._title = L1_2
  L1_2 = A0_2._dice_info
  L2_2 = L1_2
  L1_2 = L1_2.GetFullEffectDescWithExtraDesc
  L1_2, L2_2 = L1_2(L2_2)
  A0_2._desc_extra_desc = L2_2
  A0_2._desc_str = L1_2
  L1_2 = A0_2._dice_info
  L2_2 = L1_2
  L1_2 = L1_2.GetDiceSurfaceDisplayDataList
  L1_2 = L1_2(L2_2)
  A0_2._dice_tb = L1_2
end
L1_1._get_dice_panel_required_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_selected
  L4_2 = L2_1
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_unselected
  L4_2 = L2_1
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_added = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._play_fade_in
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L1_1._on_select = L4_1
function L4_1(A0_2)
  local L1_2
end
L1_1._on_unselect = L4_1
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
  L1_2 = L1_2.title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._title
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.llv2
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._dice_tb
  L3_2 = #L3_2
  L3_2 = L3_2 + 3
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.llv2
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L1_1._refresh_view = L4_1
function L4_1(A0_2)
  local L1_2
end
L1_1._play_fade_in = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A2_2 == 0 or A2_2 == 2 then
    L4_2 = A0_2
    L3_2 = A0_2._on_title_changed
    L5_2 = A1_2
    L6_2 = A2_2
    return L3_2(L4_2, L5_2, L6_2)
  elseif A2_2 == 1 then
    L4_2 = A0_2
    L3_2 = A0_2._on_content_changed
    L5_2 = A1_2
    L6_2 = A2_2
    return L3_2(L4_2, L5_2, L6_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2._on_dice_surface_changed
    L5_2 = A1_2
    L6_2 = A2_2
    return L3_2(L4_2, L5_2, L6_2)
  end
end
L1_1._on_item_changed = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 1
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.ChessRogueDiceInfoTitlePanel
    L8_2 = G
    L8_2 = L8_2.ChessRogueDiceInfoTitlePanelbinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  if A2_2 == 0 then
    L6_2 = L4_2
    L5_2 = L4_2.setup_view
    L7_2 = A0_2._sub_mode
    L7_2 = L0_1[L7_2]
    L5_2(L6_2, L7_2)
  else
    L6_2 = L4_2
    L5_2 = L4_2.setup_view
    L7_2 = "UIText_RogueDLC_AeonDice_Effect"
    L5_2(L6_2, L7_2)
  end
  return L3_2
end
L1_1._on_title_changed = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.ChessRogueDiceInfoRulePanel
    L8_2 = G
    L8_2 = L8_2.ChessRogueDiceInfoRulePanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._desc_str
  L8_2 = A0_2._desc_extra_desc
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_select_callback
  L7_2 = A0_2._on_dice_info_rule_btn_select
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  return L3_2
end
L1_1._on_content_changed = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.ChessRogueDiceSurfaceInfoItemPanel
    L8_2 = G
    L8_2 = L8_2.ChessRogueEntranceInfoItemBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._dice_tb
  L6_2 = A2_2 - 3
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L1_1._on_dice_surface_changed = L4_1
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
L1_1._on_enter_zoom = L4_1
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
  L3_2 = 1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = L1_2.UserObjectData
  L3_2 = L2_2
  L2_2 = L2_2.get_first_selected_object
  return L2_2(L3_2)
end
L1_1.get_first_selected_object = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.llv2
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToItemIndex
  L3_2 = 0
  L1_2(L2_2, L3_2)
end
L1_1._on_dice_info_rule_btn_select = L4_1
return L1_1
