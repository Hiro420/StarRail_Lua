local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = require
L1_1 = "Ui.AvatarEducation.AvatarDetail.AvatarStatisticDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Equipment.StatusDetailInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Equipment.StatusDetailInfoPanelReverseBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.BattleUIUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.AvatarUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarStatisticDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.AvatarPropertyType
L1_1 = L1_1.MaxHP
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.AvatarPropertyType
L2_1 = L2_1.BaseHP
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.AvatarPropertyType
L3_1 = L3_1.Attack
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.AvatarPropertyType
L4_1 = L4_1.BaseAttack
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.AvatarPropertyType
L5_1 = L5_1.Defence
L6_1 = CS
L6_1 = L6_1.RPG
L6_1 = L6_1.GameCore
L6_1 = L6_1.AvatarPropertyType
L6_1 = L6_1.BaseDefence
L7_1 = {}
L8_1 = "UIText_PlayerInfo_PropertyList_Classify_Basic"
L9_1 = "UIText_PlayerInfo_PropertyList_Classify_Advanced"
L10_1 = "UIText_PlayerInfo_PropertyList_Classify_DamageType"
L7_1[1] = L8_1
L7_1[2] = L9_1
L7_1[3] = L10_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AvatarStatisticDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  A0_2._titled_index = L1_2
  L1_2 = G
  L1_2 = L1_2.BattleUIUtils
  L1_2 = L1_2.set_battle_pause
  L2_2 = true
  L1_2(L2_2)
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L8_1
function L8_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  A0_2._avatar_data = A1_2
  L4_2 = G
  L4_2 = L4_2.AvatarUtils
  L4_2 = L4_2.get_avatar_property_table
  L5_2 = A1_2
  L6_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2)
  A0_2._avatar_property_table = L4_2
  A0_2._turn_based_ability = A3_2
  A0_2._is_in_battle = A2_2
  L4_2 = -1
  L5_2 = ipairs
  L6_2 = A0_2._avatar_property_table
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = L9_2.PropertyClassify
    if L4_2 < L10_2 then
      L4_2 = L9_2.PropertyClassify
      L10_2 = A0_2._titled_index
      L11_2 = L9_2.PropertyClassify
      L10_2[L11_2] = L8_2
    end
  end
end
L0_1.init = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 33
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_status_info_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._on_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_exit
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.content_root
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._avatar_property_table
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.BattleUIUtils
  L1_2 = L1_2.set_battle_pause
  L2_2 = false
  L1_2(L2_2)
end
L0_1._on_dispose = L8_1
function L8_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.get_list_object_by_index
  L3_2 = 0
  return L1_2(L2_2, L3_2)
end
L0_1.get_first_selected_object = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_view
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.UserObjectData
    L3_2 = L3_2._binder
    L3_2 = L3_2.btn_root
    L3_2 = L3_2.gameObject
    return L3_2
  end
  L3_2 = nil
  return L3_2
end
L0_1.get_list_object_by_index = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.get_list_object_by_index
  L3_2 = A0_2._selected_index
  if not L3_2 then
    L3_2 = 0
  end
  return L1_2(L2_2, L3_2)
end
L0_1.get_first_selected_object = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.StatusDetailInfoPanel
    L8_2 = G
    L8_2 = L8_2.StatusDetailInfoPanelReverseBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._avatar_property_table
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L6_2 = A0_2._is_in_battle
  if L6_2 then
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.UINumberUtils
    L6_2 = L6_2.GetPropertyUIData
    L7_2 = A0_2._turn_based_ability
    L8_2 = L5_2.PropertyType
    L6_2 = L6_2(L7_2, L8_2)
    L8_2 = L4_2
    L7_2 = L4_2.setup_battle_view
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  else
    L6_2 = A0_2._avatar_data
    L7_2 = L6_2
    L6_2 = L6_2.GetPropertyUIData
    L8_2 = L5_2.PropertyType
    L6_2 = L6_2(L7_2, L8_2)
    L8_2 = L4_2
    L7_2 = L4_2.setup_view
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L7_2 = L4_2
  L6_2 = L4_2.show_reverse_bg
  L8_2 = A2_2 % 2
  L8_2 = L8_2 == 0
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_arrow_show
  L8_2 = false
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._titled_index
  L7_2 = L5_2.PropertyClassify
  L6_2 = L6_2[L7_2]
  L7_2 = A2_2 + 1
  L6_2 = L6_2 == L7_2
  L8_2 = L4_2
  L7_2 = L4_2.setup_type_title
  L9_2 = L6_2
  L10_2 = L5_2.PropertyClassify
  L10_2 = L10_2 + 1
  L10_2 = L7_1[L10_2]
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.AvatarPropertyExcelTable
  L7_2 = L7_2.GetData
  L8_2 = L5_2.PropertyType
  L7_2 = L7_2(L8_2)
  L9_2 = L4_2
  L8_2 = L4_2.setup_info_button
  L10_2 = L7_2.PropertyInstructionID
  L10_2 = L10_2 ~= 0
  L11_2 = A0_2._on_click_extra_info
  L12_2 = A0_2
  L13_2 = L7_2.PropertyInstructionID
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  L9_2 = L4_2
  L8_2 = L4_2.set_in_control_enabled
  L10_2 = false
  L8_2(L9_2, L10_2)
  L9_2 = L4_2
  L8_2 = L4_2.register_select_trigger
  function L10_2()
    local L0_3, L1_3, L2_3
    L0_3 = L4_2
    L1_3 = L0_3
    L0_3 = L0_3.set_checked
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = A2_2
    A0_2._selected_index = L0_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = L4_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = L4_2
    L1_3 = L0_3
    L0_3 = L0_3.set_in_control_enabled
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._update_short_cut_hint
    L2_3 = L7_2.PropertyInstructionID
    L2_3 = L2_3 ~= 0
    L0_3(L1_3, L2_3)
  end
  L8_2(L9_2, L10_2)
  L9_2 = L4_2
  L8_2 = L4_2.register_deselect_trigger
  function L10_2()
    local L0_3, L1_3, L2_3
    L0_3 = L4_2
    L1_3 = L0_3
    L0_3 = L0_3.set_checked
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = L4_2
    L1_3 = L0_3
    L0_3 = L0_3.set_in_control_enabled
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L8_2(L9_2, L10_2)
  L8_2 = CS
  L8_2 = L8_2.UnityEngine
  L8_2 = L8_2.UI
  L8_2 = L8_2.LayoutRebuilder
  L8_2 = L8_2.ForceRebuildLayoutImmediate
  L9_2 = L4_2._binder
  L9_2 = L9_2.root
  L9_2 = L9_2.transform
  L8_2(L9_2)
  return L3_2
end
L0_1._on_status_info_change = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = {}
    L5_2 = "ActionGroup_PropertyCheck"
    L6_2 = "ActionGroup_Return"
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = 1
    L2_2(L3_2, L4_2)
  end
end
L0_1._update_short_cut_hint = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ExtraEffectExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = {}
    L4_2 = L2_2.ExtraEffectName
    L3_2.Name = L4_2
    L4_2 = L2_2.ExtraEffectDesc
    L3_2.Desc = L4_2
    L4_2 = table
    L4_2 = L4_2.pack
    L5_2 = G
    L5_2 = L5_2.UITextUtils
    L5_2 = L5_2.GetSkillParams
    L6_2 = L2_2.DescParamList
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2.DescParam = L4_2
    L4_2 = G
    L4_2 = L4_2.UIManager
    L4_2 = L4_2.load_and_show
    L5_2 = "Ui.AvatarEducation.AvatarDetail.StatusDescriptionDialog"
    L6_2 = {}
    L7_2 = L3_2
    L6_2[1] = L7_2
    L4_2(L5_2, L6_2)
  end
end
L0_1._on_click_extra_info = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit = L8_1
return L0_1
