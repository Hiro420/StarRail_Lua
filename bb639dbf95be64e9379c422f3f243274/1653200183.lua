local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1
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
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarDetailTabItem"
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
L4_1 = 1
L5_1 = false
L6_1 = 2
L7_1 = 9906
L8_1 = 4600
L9_1 = {}
L9_1.Property = 1
L9_1.Skill = 2
L10_1 = "UIText_TitleType_Slash"
L11_1 = 0.4
function L12_1(A0_2, A1_2, A2_2, A3_2)
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
  L5_2 = L4_1
  L4_2 = L4_2(L5_2)
  A0_2._tab_data = L4_2
  L5_2 = A0_2
  L4_2 = A0_2.fetch_ui3d
  L4_2 = L4_2(L5_2)
  A0_2._avatar_ui3d = L4_2
  L4_2 = L9_1.Property
  A0_2._func_tab_index = L4_2
  L4_2 = G
  L4_2 = L4_2.NotifyManager
  L4_2 = L4_2.notify
  L5_2 = G
  L5_2 = L5_2.CS
  L5_2 = L5_2.NotifyType
  L5_2 = L5_2.RefreshTakePromotionRewardRedDot
  L4_2(L5_2)
end
L0_1.ctor = L12_1
function L12_1(A0_2, A1_2)
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
    L3_2 = A0_2
    L2_2 = A0_2._set_on_zoom1_change_enable
    L4_2 = true
    L2_2(L3_2, L4_2)
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
L0_1._on_enter_zoom = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.is_current_tab_item
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._set_on_zoom1_change_enable
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_leave_zoom = L12_1
function L12_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  if L2_2 == nil then
    return
  end
end
L0_1._set_on_zoom1_change_enable = L12_1
function L12_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = true
    return L2_2
  end
end
L0_1._is_can_to_zoom = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._func_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.find_item_gameObject
  L3_2 = 1
  return L1_2(L2_2, L3_2)
end
L0_1.get_first_selected_object = L12_1
function L12_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lightcone_btn
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_property_selected_object = L12_1
function L12_1(A0_2)
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
L0_1.get_first_skill_selected_object = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.levelup_in_control_button
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.promotion_in_control_button
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.status_in_control_button
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_levelup_btn_tips
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_promotion_btn_tips
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_status_btn_tips
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_in_control_button_enable = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._avatar_data = A1_2
  L2_2 = A0_2._avatar_data
  L2_2 = L2_2.ID
  A0_2._avatar_id = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._bind_tab_reddot
  L2_2(L3_2)
  L2_2 = A0_2._binder
  if L2_2 then
    L2_2 = A0_2._binder
    L3_2 = L2_2
    L2_2 = L2_2.is_bound
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._custom_refresh
      L2_2(L3_2)
  end
  else
    L3_2 = A0_2
    L2_2 = A0_2.set_async_callback
    L4_2 = A0_2
    L5_2 = A0_2._custom_refresh
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1.setup_view = L12_1
function L12_1(A0_2)
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
L0_1._custom_refresh = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_draw_card_tab
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_levelup
  L4_2 = A0_2._btn_levelup_onclick
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_promotion
  L4_2 = A0_2._btn_promotion_onclick
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_professsion_switch
  L4_2 = A0_2._btn_profession_switch_onclick
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_promotion_preview
  L4_2 = A0_2._btn_promotion_preview
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_avatar_skin
  L4_2 = A0_2.btn_avatar_skin_onclick
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AvatarLevelUpFinish
  L4_2 = L0_1._on_avatar_levelup_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AvatarPromoteFinish
  L4_2 = L0_1._on_avatar_promote_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AvatarSync
  L4_2 = L0_1._on_avatar_sync
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
  L3_2 = L3_2.AvatarBulletinPanel
  L4_2 = G
  L4_2 = L4_2.AvatarBulletinPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._avatar_bulletin_panel = L1_2
  L1_2 = A0_2._avatar_bulletin_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.avatar_bulletin_panel_root
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
  L3_2 = L3_2.LightConeSmallContainerPanel
  L4_2 = G
  L4_2 = L4_2.LightConeSmallContainerPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._lightcone_small_container_panel = L1_2
  L1_2 = A0_2._lightcone_small_container_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_lightcone
  L1_2(L2_2, L3_2)
  L1_2 = false
  L5_1 = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_skill_panel_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_hide_ui
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
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
  L3_2 = A0_2
  L2_2 = A0_2._init_function_tab_control
  L2_2(L3_2)
  A0_2._is_refresh_statistic = true
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_promotion_preview
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_promotion_preview
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L2_2.onSelectTrigger = L3_2
end
L0_1._on_load = L12_1
function L12_1(A0_2)
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
      L1_2 = A0_2._avatar_bulletin_panel
      if L1_2 then
        L1_2 = A0_2._avatar_skill_list_panel
        if L1_2 then
          L1_2 = A0_2._avatar_data
          L2_2 = L1_2
          L1_2 = L1_2.GetEquipment
          L1_2 = L1_2(L2_2)
          L2_2 = A0_2._lightcone_small_container_panel
          L3_2 = L2_2
          L2_2 = L2_2.setup_view
          L4_2 = L1_2
          L5_2 = A0_2._avatar_data
          L6_2 = A0_2
          L7_2 = A0_2._click_lightcone_tab
          L8_2 = A0_2._avatar_ui3d
          L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
          L3_2 = A0_2
          L2_2 = A0_2._refresh_upgrade_btn
          L2_2(L3_2)
          L2_2 = A0_2._avatar_bulletin_panel
          L3_2 = L2_2
          L2_2 = L2_2.setup_view
          L4_2 = A0_2._avatar_data
          L2_2(L3_2, L4_2)
          L2_2 = A0_2._avatar_skill_list_panel
          L3_2 = L2_2
          L2_2 = L2_2.setup_view
          L4_2 = A0_2._avatar_data
          L5_2 = A0_2._skill_onclick
          L6_2 = A0_2
          L2_2(L3_2, L4_2, L5_2, L6_2)
          L2_2 = A0_2._binder
          L2_2 = L2_2.txt_avatar_name
          L3_2 = L2_2
          L2_2 = L2_2.SetCustomizedText
          L4_2 = A0_2._avatar_data
          L4_2 = L4_2.AvatarName
          L2_2(L3_2, L4_2)
          L2_2 = CS
          L2_2 = L2_2.RPG
          L2_2 = L2_2.GameCore
          L2_2 = L2_2.AvatarBaseTypeExcelTable
          L2_2 = L2_2.GetData
          L3_2 = A0_2._avatar_data
          L3_2 = L3_2.Row
          L3_2 = L3_2.AvatarBaseType
          L2_2 = L2_2(L3_2)
          L3_2 = L2_2.BaseTypeIconSmall
          L5_2 = A0_2
          L4_2 = A0_2._async_load_sprite_to
          L6_2 = A0_2._binder
          L6_2 = L6_2.img_profession_type
          L7_2 = L3_2
          L4_2(L5_2, L6_2, L7_2)
          L4_2 = A0_2._binder
          L4_2 = L4_2.text_avatar_type_name
          L5_2 = L4_2
          L4_2 = L4_2.SafeSetTextID
          L6_2 = L10_1
          L7_2 = G
          L7_2 = L7_2.TextmapStatic
          L7_2 = L7_2.GetText
          L8_2 = L2_2.BaseTypeText
          L7_2 = L7_2(L8_2)
          L8_2 = A0_2._avatar_data
          L8_2 = L8_2.AvatarName
          L4_2(L5_2, L6_2, L7_2, L8_2)
          L5_2 = A0_2
          L4_2 = A0_2._display_hide_tab_function
          L4_2(L5_2)
        end
      end
    end
  end
  L1_2 = A0_2._avatar_data
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_avatar_profession_type_filter_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_active_lightcone_container
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_promotion_preview
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._avatar_data
  L3_2 = L3_2.IsDisplayOnly
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SystemOpenModule
  L1_2 = L1_2.IsOpen
  L2_2 = L8_1
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_avatar_skin
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._avatar_data
  L4_2 = L4_2.IsDisplayOnly
  L4_2 = not L4_2 and L4_2
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.bind_reddot
  L4_2 = "AvatarPromotionTakeReward"
  L5_2 = A0_2._avatar_data
  L5_2 = L5_2.ID
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_promotion_preview_reddot
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.bind_reddot
  L4_2 = "AvatarSkin"
  L5_2 = A0_2._avatar_data
  L5_2 = L5_2.ID
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_avatar_skin_reddot
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_tab_reddot
  L2_2(L3_2)
end
L0_1._refresh = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._func_tab_index
  L2_2 = L9_1.Property
  L1_2 = L1_2 == L2_2 and L1_2
  L2_2 = A0_2._avatar_statistic_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._avatar_data
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._refresh_statistic_panel = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.PlayerModule
  L1_2 = L1_2.PlayerData
  L1_2 = L1_2.HeroAvatarInfoData
  L3_2 = L1_2
  L2_2 = L1_2.GetCurrentHeroGender
  L2_2 = L2_2(L3_2)
  L4_2 = L1_2
  L3_2 = L1_2.GetCurrentHeroBasicType
  L3_2 = L3_2(L4_2)
  A0_2._cur_hero_basic_type = L3_2
  L4_2 = L1_2
  L3_2 = L1_2.GetHeroBasicTypes
  L3_2 = L3_2(L4_2)
  L4_2 = L0_1._get_cur_gender_basic_types
  L5_2 = L2_2
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  A0_2._hero_basic_type_table = L4_2
  L4_2 = A0_2._hero_basic_type_table
  L4_2 = L4_2 ~= nil
  L5_2 = A0_2._avatar_data
  if L5_2 then
    L5_2 = A0_2._avatar_data
    L5_2 = L5_2.IsHero
  end
  L7_2 = A0_2
  L6_2 = A0_2._is_display_only
  L6_2 = L6_2(L7_2)
  if L6_2 then
    L6_2 = A0_2._binder
    L6_2 = L6_2.btn_professsion_switch
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = false
    L6_2(L7_2, L8_2)
  else
    L6_2 = A0_2._binder
    L6_2 = L6_2.btn_professsion_switch
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = L5_2 or L8_2
    if L5_2 then
      L8_2 = L4_2
    end
    L6_2(L7_2, L8_2)
  end
end
L0_1._setup_avatar_profession_type_filter_panel = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = {}
  L3_2 = 0
  L4_2 = A1_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A1_2[L6_2]
    L7_2 = #L7_2
    L8_2 = L0_1._get_gender_by_hero_avatar_id
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 == A0_2 then
      L9_2 = #L2_2
      L9_2 = L9_2 + 1
      L10_2 = A1_2[L6_2]
      L2_2[L9_2] = L10_2
    end
  end
  return L2_2
end
L0_1._get_cur_gender_basic_types = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.HeroConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L1_2.Gender
    return L2_2
  end
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.LogErrorFormat
  L3_2 = "HeroCofig of avatarID %d not exist!"
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GenderType
  L2_2 = L2_2.GENDER_NONE
  return L2_2
end
L0_1._get_gender_by_hero_avatar_id = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
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
  L1_2 = A0_2._avatar_data
  L2_2 = L1_2
  L1_2 = L1_2.IsPromotionMaxLevel
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L1_1.SafeSetActive
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_levelup
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._avatar_data
    L1_2 = L1_2.Promotion
    L2_2 = A0_2._avatar_data
    L2_2 = L2_2.Row
    L2_2 = L2_2.MaxPromotion
    if L1_2 ~= L2_2 then
      L1_2 = A0_2._avatar_data
      L1_2 = L1_2.Promotion
      L2_2 = A0_2._const_max_pro_num
      if not (L1_2 >= L2_2) then
        goto lbl_39
      end
    end
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_promotion
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    goto lbl_55
    ::lbl_39::
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_promotion
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
  else
    L1_2 = L1_1.SafeSetActive
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_levelup
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = L1_1.SafeSetActive
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_promotion
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  ::lbl_55::
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "AvatarPromotion"
  L4_2 = A0_2._avatar_data
  L4_2 = L4_2.ID
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.go_promotion_reddot
  L6_2 = L6_2.transform
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._is_display_only
  L1_2 = L1_2(L2_2)
  if L1_2 then
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
  end
end
L0_1._refresh_upgrade_btn = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_show
  L3_2 = "Ui.Avatar.AvatarSkillDetail.AvatarSkillDetailInfoDialog"
  L4_2 = A0_2._avatar_data
  L5_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.register_close_callback
  L5_2 = A0_2._on_skill_dialog_close
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_skill_panel_root
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
end
L0_1._skill_onclick = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._avatar_skill_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.interrupt_fade_in_anim
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_skill_panel_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_skill_dialog_close = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L5_1
  if L1_2 == true then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_lightcone
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._is_display_only
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = A0_2._avatar_data
      L2_2 = L1_2
      L1_2 = L1_2.GetEquipment
      L1_2 = L1_2(L2_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_lightcone
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = L1_2 ~= nil
      L2_2(L3_2, L4_2)
    else
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_lightcone
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = true
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._set_active_lightcone_container = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block
  L3_2 = L11_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.on_click_levelup
  L3_2 = true
  L1_2(L2_2, L3_2)
  A0_2._is_refresh_statistic = false
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Avatar.AvatarLevelUpDialog"
  L3_2 = A0_2._avatar_data
  L4_2 = A0_2._owner
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.register_close_callback
  L4_2 = A0_2._on_levelup_promotion_dialog_close
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._btn_levelup_onclick = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block
  L3_2 = L11_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.on_click_levelup
  L3_2 = true
  L1_2(L2_2, L3_2)
  A0_2._is_refresh_statistic = false
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.AvatarPromotion.AvatarPromotionDialog"
  L3_2 = A0_2._avatar_data
  L4_2 = A0_2._owner
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.register_close_callback
  L4_2 = A0_2._on_levelup_promotion_dialog_close
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._btn_promotion_onclick = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  A0_2._is_refresh_statistic = true
  L2_2 = A0_2
  L1_2 = A0_2._refresh_statistic_panel
  L1_2(L2_2)
end
L0_1._on_levelup_promotion_dialog_close = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_hero_basic_type
  if L1_2 then
    L1_2 = A0_2._hero_basic_type_table
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.show_full_screen_block
      L3_2 = L11_1
      L1_2(L2_2, L3_2)
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
L0_1._btn_profession_switch_onclick = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._avatar_data
  L1_2 = L1_2.IsDisplayOnly
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block
  L3_2 = L11_1
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.PromotionPreview.PromotionPreviewDialog"
  L3_2 = A0_2._avatar_data
  L1_2(L2_2, L3_2)
end
L0_1._btn_promotion_preview = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block
  L3_2 = L11_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.on_click_avatar_skin
  L3_2 = true
  L1_2(L2_2, L3_2)
  A0_2._is_refresh_statistic = false
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.AvatarSkin.AvatarSkinMainPage"
  L3_2 = SkinPageMode
  L3_2 = L3_2.Avatar
  L4_2 = A0_2._avatar_data
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.register_close_callback
  L4_2 = A0_2._on_skin_close
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RefreshTakePromotionRewardRedDot
  L4_2 = A0_2._avatar_data
  L4_2 = L4_2.ID
  L2_2(L3_2, L4_2)
end
L0_1.btn_avatar_skin_onclick = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.on_click_avatar_skin
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_skin_close = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._on_avatar_levelup_finish = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._on_avatar_promote_finish = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._on_avatar_sync = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = L6_1
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.to_first_zoom
    L1_2(L2_2)
  end
end
L0_1._click_lightcone_tab = L12_1
function L12_1(A0_2)
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
L0_1._init_function_tab_control = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = A0_2._func_tab_control
  L3_2 = L2_2
  L2_2 = L2_2.find_item_button
  L4_2 = 2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_promotion_preview
  L4_2 = A0_2._avatar_data
  L4_2 = L4_2.IsDisplayOnly
  if L4_2 then
    L4_2 = A0_2._binder
    L3_2 = L4_2.btn_profession_type
  end
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = L1_2
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = L1_2
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.setup_navigation
  L6_2 = L1_2
  L7_2 = NavigationType
  L7_2 = L7_2.Vertical
  L8_2 = false
  L9_2 = false
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = {}
  L5_2 = A0_2._func_tab_control
  L6_2 = L5_2
  L5_2 = L5_2.find_item_button
  L7_2 = 1
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = table
  L6_2 = L6_2.insert
  L7_2 = L4_2
  L8_2 = L3_2
  L6_2(L7_2, L8_2)
  L6_2 = table
  L6_2 = L6_2.insert
  L7_2 = L4_2
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2.setup_navigation
  L8_2 = L4_2
  L9_2 = NavigationType
  L9_2 = L9_2.Vertical
  L10_2 = false
  L11_2 = false
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
end
L0_1._init_to_up_navigation = L12_1
function L12_1(A0_2, A1_2)
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
L0_1._init_to_down_navigation = L12_1
function L12_1(A0_2)
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
L0_1._init_to_status_navigation = L12_1
function L12_1(A0_2)
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
L0_1._init_to_avatar_skill_navigation = L12_1
function L12_1(A0_2, A1_2)
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
L0_1._on_function_tab_select = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_property_status_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._func_tab_index
  L4_2 = L9_1.Property
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_skill_panel_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._func_tab_index
  L4_2 = L9_1.Skill
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_statistic_panel
  L1_2(L2_2)
end
L0_1._display_hide_tab_function = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._avatar_data
  L1_2 = L1_2.IsDisplayOnly
  if L1_2 == false then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.bind_reddot
    L3_2 = "AvatarDetailTab"
    L4_2 = A0_2._avatar_data
    L4_2 = L4_2.ID
    L5_2 = A0_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_tab_reddot
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  else
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.unbind_reddot
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_tab_reddot
    L1_2(L2_2, L3_2)
  end
end
L0_1._bind_tab_reddot = L12_1
function L12_1(A0_2)
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
    L2_2 = A0_2
    L1_2 = A0_2._bind_tab_reddot
    L1_2(L2_2)
  end
end
L0_1._on_added = L12_1
function L12_1(A0_2)
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
end
L0_1._on_click = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_on_zoom1_change_enable
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_select = L12_1
function L12_1(A0_2)
  local L1_2
end
L0_1._on_unselect = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._display_only
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.get_blackboard
    L1_2 = L1_2(L2_2)
    L3_2 = L1_2
    L2_2 = L1_2.query
    L4_2 = "IsDisplayOnly"
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      L2_2 = false
    end
    A0_2._display_only = L2_2
  end
  L1_2 = A0_2._avatar_data
  L1_2 = L1_2.IsDisplayOnly
  if not L1_2 then
    L1_2 = A0_2._display_only
  end
  return L1_2
end
L0_1._is_display_only = L12_1
function L12_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L12_1
return L0_1
