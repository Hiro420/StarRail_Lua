local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Avatar.SwitchHeroBasicTypePageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.HeroBasicTypePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.HeroBasicTypePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SwitchHeroBasicTypePage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_HeroPath_Change_Hint_Already"
L2_1 = "UIText_HeroPath_Change_ConfirmDialog_V2"
L3_1 = "UIText_HeroPath_Change_Hint_Disable"
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.GlobalVars
L4_1 = L4_1.s_ModuleManager
L4_1 = L4_1.SystemOpenModule
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.SwitchHeroBasicTypePageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._selected_panel = nil
  A0_2._switch_hero_basic_type = nil
  A0_2._is_close_by_switch_success = false
end
L0_1.ctor = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  A0_2._original_hero_basic_type = A1_2
  L5_2 = A0_2
  L4_2 = A0_2._prepare_hero_basic_type_list
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
  A0_2._target_hero_basic_type = A3_2
  L5_2 = A0_2
  L4_2 = A0_2._refresh_profession_list_index
  L4_2(L5_2)
end
L0_1.init = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = {}
  A0_2._hero_basic_type_table = L2_2
  L2_2 = ipairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._hero_basic_type_table
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._prepare_hero_basic_type_list = L5_1
function L5_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._selected_panel
  if L1_2 then
    L1_2 = A0_2._selected_panel
    L1_2 = L1_2._binder
    L1_2 = L1_2.btn_root
    L1_2 = L1_2.gameObject
    return L1_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.profession_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = A0_2._original_profession_index
  L3_2 = L3_2 - 1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.btn_root
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 31
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerSetHeroBasicType
  L4_2 = L0_1._on_player_set_hero_basic_type
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.profession_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_enable
  L1_2(L2_2)
end
L0_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_profession_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._original_hero_basic_type = nil
  A0_2._hero_basic_type_table = nil
  L1_2 = A0_2._is_close_by_switch_success
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_show
    L2_2 = "Ui.Avatar.SwitchHeroBasicTypeHintDialog"
    L3_2 = A0_2._switch_hero_basic_type
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_dispose = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = 1
  L2_2 = A0_2._hero_basic_type_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._hero_basic_type_table
    L5_2 = L5_2[L4_2]
    L6_2 = A0_2._original_hero_basic_type
    if L5_2 == L6_2 then
      A0_2._original_profession_index = L4_2
    end
    L5_2 = A0_2._hero_basic_type_table
    L5_2 = L5_2[L4_2]
    L6_2 = A0_2._target_hero_basic_type
    if L5_2 == L6_2 then
      A0_2._target_profession_index = L4_2
    end
  end
end
L0_1._refresh_profession_list_index = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.profession_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._hero_basic_type_table
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.profession_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = A0_2._target_profession_index
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.profession_list
    L2_2 = L1_2
    L1_2 = L1_2.MovePanelToItemIndex
    L3_2 = A0_2._target_profession_index
    L3_2 = L3_2 - 1
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_profession_list = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L4_1
  L2_2 = L1_2
  L1_2 = L1_2.HasGotoType
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.GotoType
  L3_2 = L3_2.HeroBasicType
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._enable = L1_2
end
L0_1._set_enable = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close_click = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.HeroBasicTypePanel
    L8_2 = G
    L8_2 = L8_2.HeroBasicTypePanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._hero_basic_type_table
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_btn_callback
  L8_2 = A0_2._on_hero_basic_type_click
  L9_2 = A0_2
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = A0_2._original_hero_basic_type
  L6_2 = L5_2 == L6_2
  L8_2 = L4_2
  L7_2 = L4_2.set_selected
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  return L3_2
end
L0_1._on_item_change = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2._enable
  if not L3_2 then
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UIPileToastMessageTextID
    L5_2 = L3_1
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = A0_2._original_hero_basic_type
  if A1_2 == L3_2 then
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UIPileToastMessageTextID
    L5_2 = L1_1
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.ConfirmDialogUtil
  L3_2 = L3_2.ShowOkCancelHint
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.TextID
  L4_2 = L4_2.empty
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.TextID
  L5_2 = L5_2.empty
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = CS
      L1_3 = L1_3.RPG
      L1_3 = L1_3.Client
      L1_3 = L1_3.NetworkManager
      L1_3 = L1_3.FFOMLPONIFB
      L2_3 = L1_3
      L1_3 = L1_3.PPOCHPEJBDB
      L3_3 = A1_2
      L1_3(L2_3, L3_3)
    end
  end
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.AvatarBaseTypeExcelTable
  L4_2 = L4_2.GetData
  L5_2 = A2_2.AvatarBaseType
  L4_2 = L4_2(L5_2)
  L6_2 = L3_2
  L5_2 = L3_2.SetContent
  L7_2 = L2_1
  L8_2 = G
  L8_2 = L8_2.TextmapStatic
  L8_2 = L8_2.GetText
  L9_2 = L4_2.BaseTypeText
  L8_2, L9_2 = L8_2(L9_2)
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = L3_2
  L5_2 = L3_2.SetBtnBgInteractable
  L7_2 = false
  L5_2(L6_2, L7_2)
  A0_2._switch_hero_basic_type = A1_2
end
L0_1._on_hero_basic_type_click = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._is_close_by_switch_success = true
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
end
L0_1._on_player_set_hero_basic_type = L5_1
return L0_1
