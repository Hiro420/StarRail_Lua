local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = require
L1_1 = "Ui.AvatarEducation.AvatarDetail.AvatarStatisticPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AvatarEducation.AvatarDetail.AvatarStatisticPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AvatarEducation.AvatarDetail.AvatarBulletinPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AvatarEducation.AvatarDetail.AvatarBulletinPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AvatarEducation.AvatarDetail.AvatarSkillListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AvatarEducation.AvatarDetail.AvatarSkillListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LightCone.LightConeSmallContainerPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LightCone.LightConeSmallContainerPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSkillDetail.AvatarSkillDetailInfoDialog"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSkillDetail.AvatarSkillDetailInfoDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AvatarEducation.AvatarDetail.AvatarDetailFunctionTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AvatarEducation.AvatarDetail.AvatarDetailFunctionTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Gacha.GachaDetail.GachaBtnSwitchLevelPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Gacha.GachaDetail.GachaBtnSwitchLevelPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GachaAvatarDetailTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
L2_1 = G
L2_1 = L2_1.TextExtensions
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.AvatarModule
L4_1 = "UIText_TitleType_Slash"
L5_1 = 1
L6_1 = {}
L6_1.Property = 1
L6_1.Skill = 2
L7_1 = 1
L8_1 = {}
L8_1.Initial = 1
L8_1.Ultimate = 2
function L9_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  A0_2._avatar_data = A3_2
  L4_2 = A0_2._avatar_data
  L4_2 = L4_2.ID
  A0_2._avatar_id = L4_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.AvatarDetailTabExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L5_1
  L4_2 = L4_2(L5_2)
  A0_2._tab_data = L4_2
  L5_2 = A0_2
  L4_2 = A0_2.fetch_ui3d
  L4_2 = L4_2(L5_2)
  A0_2._avatar_ui3d = L4_2
  L4_2 = L6_1.Property
  A0_2._func_tab_index = L4_2
end
L0_1.ctor = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.is_current_tab_item
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L5_2 = A0_2
      L4_2 = A0_2.get_first_selected_object
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L0_1._on_enter_zoom = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.is_current_tab_item
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
  end
end
L0_1._on_leave_zoom = L9_1
function L9_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = true
    return L2_2
  end
end
L0_1._is_can_to_zoom = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._func_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.find_item_gameObject
  L3_2 = 1
  return L1_2(L2_2, L3_2)
end
L0_1.get_first_selected_object = L9_1
function L9_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lightcone_btn
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_property_selected_object = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._avatar_skill_list_panel
  if L1_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._avatar_skill_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_skill_selected_object = L9_1
function L9_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  if L2_2 == nil then
    return
  end
end
L0_1.setup_in_control_button_enable = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._hide_panel
  L1_2(L2_2)
end
L0_1._setup_view = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._avatar_data = A1_2
  L2_2 = A0_2._avatar_data
  L2_2 = L2_2.ID
  A0_2._avatar_id = L2_2
  L2_2 = A0_2._binder
  if L2_2 then
    L2_2 = A0_2._binder
    L3_2 = L2_2
    L2_2 = L2_2.is_bound
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._init_view
      L2_2(L3_2)
  end
  else
    L3_2 = A0_2
    L2_2 = A0_2.set_async_callback
    L4_2 = A0_2
    L5_2 = A0_2._init_view
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1.setup_view = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._state
  L2_2 = A0_2.SelectState
  L2_2 = L2_2.Selected
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._refresh
    L1_2(L2_2)
  end
end
L0_1._custom_refresh = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._init_max_level
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_tab
  L1_2(L2_2)
  L1_2 = A0_2._btn_switch_level_panel
  L2_2 = L1_2
  L1_2 = L1_2.reset_switch_status
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_tab_change
  L3_2 = L7_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._custom_refresh
  L1_2(L2_2)
end
L0_1._init_view = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_draw_card_tab
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_professsion_switch
  L4_2 = A0_2._btn_profession_switch_onclick
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.AvatarStatisticPanel
  L4_2 = G
  L4_2 = L4_2.AvatarStatisticPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._avatar_statistic_panel = L1_2
  L1_2 = A0_2._avatar_statistic_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.avatar_info_panel_root
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.AvatarSkillListPanel
  L4_2 = G
  L4_2 = L4_2.AvatarSkillListPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._avatar_skill_list_panel = L1_2
  L1_2 = A0_2._avatar_skill_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_skill_panel_root
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.GachaBtnSwitchLevelPanel
  L4_2 = G
  L4_2 = L4_2.GachaBtnSwitchLevelPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._btn_switch_level_panel = L1_2
  L1_2 = A0_2._btn_switch_level_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_click_callback
  L3_2 = A0_2._on_btn_switch
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._btn_switch_level_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_btn_switch_level
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._btn_switch_level_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_statistic_type
  L3_2 = L8_1.Initial
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_skill_panel_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "DisplayMaxAvatarPromotion"
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.Value
  L2_2 = L2_2.IntValue
  A0_2._const_max_pro_num = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.init_statistic_tab
  L3_2 = L2_2
  L2_2 = L2_2.set_btn_callback
  L4_2 = A0_2._on_tab_change
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.ultimate_statistic_tab
  L3_2 = L2_2
  L2_2 = L2_2.set_btn_callback
  L4_2 = A0_2._on_tab_change
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._init_function_tab_control
  L2_2(L3_2)
end
L0_1._on_load = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._max_level
  if L1_2 == nil then
    L1_2 = A0_2._avatar_data
    L2_2 = L1_2
    L1_2 = L1_2.SetGachaUltimateData
    L1_2(L2_2)
    L1_2 = A0_2._avatar_data
    L1_2 = L1_2.Level
    A0_2._max_level = L1_2
  end
end
L0_1._init_max_level = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.init_statistic_tab
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = L8_1.Initial
  L4_2 = A0_2._max_level
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.ultimate_statistic_tab
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = L8_1.Ultimate
  L4_2 = A0_2._max_level
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_tab = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._tab_index = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._on_tab_change
  L4_2 = A0_2._tab_index
  L2_2(L3_2, L4_2)
end
L0_1._on_btn_switch = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  if not L2_2 then
    return
  end
  A0_2._tab_index = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._set_statistic_status
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.init_statistic_tab
  L3_2 = L2_2
  L2_2 = L2_2.set_selected
  L4_2 = L8_1.Initial
  L4_2 = A1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.ultimate_statistic_tab
  L3_2 = L2_2
  L2_2 = L2_2.set_selected
  L4_2 = L8_1.Ultimate
  L4_2 = A1_2 == L4_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._tab_refresh
  L2_2(L3_2)
end
L0_1._on_tab_change = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L8_1.Initial
  if A1_2 == L2_2 then
    L2_2 = A0_2._avatar_data
    L3_2 = L2_2
    L2_2 = L2_2.SetGachaInitialData
    L2_2(L3_2)
  else
    L2_2 = L8_1.Ultimate
    if A1_2 == L2_2 then
      L2_2 = A0_2._avatar_data
      L3_2 = L2_2
      L2_2 = L2_2.SetGachaUltimateData
      L2_2(L3_2)
    end
  end
end
L0_1._set_statistic_status = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._state
  L2_2 = A0_2.SelectState
  L2_2 = L2_2.Selected
  if L1_2 ~= L2_2 then
    return
  end
  L1_2 = A0_2._avatar_data
  if L1_2 then
    L1_2 = A0_2._avatar_statistic_panel
    if L1_2 then
      L1_2 = A0_2._avatar_skill_list_panel
      if L1_2 then
        L1_2 = A0_2._avatar_skill_list_panel
        L2_2 = L1_2
        L1_2 = L1_2.setup_view
        L3_2 = A0_2._avatar_data
        L4_2 = A0_2._skill_onclick
        L5_2 = A0_2
        L1_2(L2_2, L3_2, L4_2, L5_2)
        L1_2 = A0_2._avatar_data
        L1_2 = L1_2.Row
        L1_2 = L1_2.AvatarBaseType
        L2_2 = CS
        L2_2 = L2_2.RPG
        L2_2 = L2_2.GameCore
        L2_2 = L2_2.AvatarBaseTypeExcelTable
        L2_2 = L2_2.GetData
        L3_2 = L1_2
        L2_2 = L2_2(L3_2)
        L3_2 = A0_2._binder
        L3_2 = L3_2.text_avatar_type_name
        L4_2 = L3_2
        L3_2 = L3_2.SafeSetTextID
        L5_2 = L4_1
        L6_2 = G
        L6_2 = L6_2.TextmapStatic
        L6_2 = L6_2.GetText
        L7_2 = L2_2.BaseTypeText
        L6_2 = L6_2(L7_2)
        L7_2 = G
        L7_2 = L7_2.TextmapStatic
        L7_2 = L7_2.GetText
        L8_2 = A0_2._avatar_data
        L8_2 = L8_2.Row
        L8_2 = L8_2.AvatarName
        L7_2, L8_2 = L7_2(L8_2)
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
        L4_2 = A0_2
        L3_2 = A0_2._async_load_sprite_to
        L5_2 = A0_2._binder
        L5_2 = L5_2.img_profession_type
        L6_2 = L2_2.BaseTypeIconSmall
        L3_2(L4_2, L5_2, L6_2)
        L4_2 = A0_2
        L3_2 = A0_2._display_hide_tab_function
        L3_2(L4_2)
      end
    end
  end
  L1_2 = A0_2._avatar_data
  if L1_2 == nil then
    return
  end
end
L0_1._refresh = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._avatar_data
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.avatar_statistic_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._avatar_data
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.avatar_bulletin_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._avatar_data
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.avatar_skill_list_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._avatar_data
    L4_2 = A0_2._skill_onclick
    L5_2 = A0_2
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_lightcone
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2._display_hide_tab_function
    L1_2(L2_2)
  end
end
L0_1._tab_refresh = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._func_tab_index
  L2_2 = L6_1.Property
  if L1_2 == L2_2 then
    L1_2 = A0_2._avatar_statistic_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._avatar_data
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._refresh_statistic_panel = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_levelup
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_promotion
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_function_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_exp
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_promote_preview
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._hide_panel = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_show
  L3_2 = "Ui.Avatar.AvatarSkillDetail.AvatarSkillDetailInfoDialog"
  L4_2 = A0_2._avatar_data
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._skill_onclick = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_hero_basic_type
  if L1_2 then
    L1_2 = A0_2._hero_basic_type_table
    if L1_2 then
      L1_2 = G
      L1_2 = L1_2.UIManager
      L1_2 = L1_2.load_and_show
      L2_2 = "Ui.Avatar.SwitchHeroBasicTypePage"
      L3_2 = A0_2._cur_hero_basic_type
      L4_2 = A0_2._hero_basic_type_table
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L0_1._btn_profession_switch_onclick = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._func_tab_control = L1_2
  L1_2 = A0_2._func_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_tab_control
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.AvatarDetailFunctionTabItem
  L4_2 = G
  L4_2 = L4_2.AvatarDetailFunctionTabItemBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L1_2.button_prefab_index = 0
  L3_2 = L1_2
  L2_2 = L1_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_tab_control
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.setup_tab_text_id
  L4_2 = "UIText_AvatarDialogV2_PropertyList_TitleName"
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_select_callback
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._on_function_tab_select
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._func_tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.AvatarDetailFunctionTabItem
  L5_2 = G
  L5_2 = L5_2.AvatarDetailFunctionTabItemBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L2_2.button_prefab_index = 0
  L4_2 = L2_2
  L3_2 = L2_2.bind
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_tab_control
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.setup_tab_text_id
  L5_2 = "UIText_AvatarDialogV2_Skill"
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.set_select_callback
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._on_function_tab_select
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._func_tab_control
  L4_2 = L3_2
  L3_2 = L3_2.add_item
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._func_tab_control
  L4_2 = L3_2
  L3_2 = L3_2.setup_navigation
  L5_2 = NavigationType
  L5_2 = L5_2.Horizontal
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._func_tab_control
  L4_2 = L3_2
  L3_2 = L3_2.update_layout
  L3_2(L4_2)
  L3_2 = A0_2._func_tab_control
  L4_2 = L3_2
  L3_2 = L3_2.click_item_by_uid
  L5_2 = 1
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._init_to_up_navigation
  L3_2(L4_2)
end
L0_1._init_function_tab_control = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = A0_2._func_tab_control
  L3_2 = L2_2
  L2_2 = L2_2.find_item_button
  L4_2 = 2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L1_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.btn_profession_type
  L3_2(L4_2, L5_2)
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L1_2
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.setup_navigation
  L5_2 = L1_2
  L6_2 = NavigationType
  L6_2 = L6_2.Vertical
  L7_2 = false
  L8_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = {}
  L4_2 = A0_2._func_tab_control
  L5_2 = L4_2
  L4_2 = L4_2.find_item_button
  L6_2 = 1
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = L3_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.btn_profession_type
  L5_2(L6_2, L7_2)
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = L3_2
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2.setup_navigation
  L7_2 = L3_2
  L8_2 = NavigationType
  L8_2 = L8_2.Vertical
  L9_2 = false
  L10_2 = false
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
end
L0_1._init_to_up_navigation = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == 1 then
    L3_2 = A0_2
    L2_2 = A0_2._init_to_status_navigation
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._init_to_avatar_skill_navigation
    L2_2(L3_2)
  end
end
L0_1._init_to_down_navigation = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = A0_2._func_tab_control
  L3_2 = L2_2
  L2_2 = L2_2.find_item_button
  L4_2 = 2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L1_2
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L1_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.button_status
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.setup_navigation
  L5_2 = L1_2
  L6_2 = NavigationType
  L6_2 = L6_2.Vertical
  L7_2 = false
  L8_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = {}
  L4_2 = A0_2._func_tab_control
  L5_2 = L4_2
  L4_2 = L4_2.find_item_button
  L6_2 = 1
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = L3_2
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = L3_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.button_status
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2.setup_navigation
  L7_2 = L3_2
  L8_2 = NavigationType
  L8_2 = L8_2.Vertical
  L9_2 = false
  L10_2 = false
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = {}
  L6_2 = table
  L6_2 = L6_2.insert
  L7_2 = L5_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.button_status
  L6_2(L7_2, L8_2)
  L6_2 = table
  L6_2 = L6_2.insert
  L7_2 = L5_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.btn_light_cone
  L6_2(L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2.setup_navigation
  L8_2 = L5_2
  L9_2 = NavigationType
  L9_2 = L9_2.Vertical
  L10_2 = false
  L11_2 = false
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
end
L0_1._init_to_status_navigation = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = A0_2._func_tab_control
  L3_2 = L2_2
  L2_2 = L2_2.find_item_button
  L4_2 = 1
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L1_2
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L1_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.button_avatar_skill_1
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.setup_navigation
  L5_2 = L1_2
  L6_2 = NavigationType
  L6_2 = L6_2.Vertical
  L7_2 = false
  L8_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = {}
  L4_2 = A0_2._func_tab_control
  L5_2 = L4_2
  L4_2 = L4_2.find_item_button
  L6_2 = 2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = L3_2
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = L3_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.button_avatar_skill_4
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2.setup_navigation
  L7_2 = L3_2
  L8_2 = NavigationType
  L8_2 = L8_2.Vertical
  L9_2 = false
  L10_2 = false
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = {}
  L6_2 = table
  L6_2 = L6_2.insert
  L7_2 = L5_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.button_avatar_skill_5
  L6_2(L7_2, L8_2)
  L6_2 = table
  L6_2 = L6_2.insert
  L7_2 = L5_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.btn_light_cone
  L6_2(L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2.setup_navigation
  L8_2 = L5_2
  L9_2 = NavigationType
  L9_2 = L9_2.Vertical
  L10_2 = false
  L11_2 = false
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
end
L0_1._init_to_avatar_skill_navigation = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._func_tab_index = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._display_hide_tab_function
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._init_to_down_navigation
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_function_tab_select = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_property_status_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._func_tab_index
  L4_2 = L6_1.Property
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_skill_panel_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._func_tab_index
  L4_2 = L6_1.Skill
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_statistic_panel
  L1_2(L2_2)
end
L0_1._display_hide_tab_function = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._tab_data
  if L1_2 then
    L1_2 = L2_1.SafeSetTextID
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_tab_name_normal
    L3_2 = A0_2._tab_data
    L3_2 = L3_2.TabName
    L1_2(L2_2, L3_2)
    L1_2 = L2_1.SafeSetTextID
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_tab_name_selected
    L3_2 = A0_2._tab_data
    L3_2 = L3_2.TabName
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2._async_load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_tab_normal
    L4_2 = A0_2._tab_data
    L4_2 = L4_2.IconPath
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2
    L1_2 = A0_2._async_load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_tab_selected
    L4_2 = A0_2._tab_data
    L4_2 = L4_2.IconPath
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._on_added = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._avatar_ui3d
  if L1_2 then
    L1_2 = A0_2._avatar_ui3d
    L2_2 = L1_2
    L1_2 = L1_2.show_avatar_main_page_tab
    L3_2 = G
    L3_2 = L3_2.AvatarMainPageSubType
    L3_2 = L3_2.AvatarDetail
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L1_2 = A0_2._tab_index
  L2_2 = L8_1.Ultimate
  if L1_2 == L2_2 then
    L1_2 = A0_2._btn_switch_level_panel
    L2_2 = L1_2
    L1_2 = L1_2.play_anim
    L3_2 = A0_2._tab_index
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_select = L9_1
return L0_1
