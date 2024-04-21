local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.AvatarEducation.AvatarSkillTree.SkillTreeDetailPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AvatarEducation.AvatarSkillTree.SkillTreeDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AvatarEducation.AvatarSkillTree.SkillTreePointDetailPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AvatarEducation.AvatarSkillTree.SkillTreePointDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.AvatarUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarSkillTreeTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_AvatarSkillTree_Title"
L2_1 = "UIText_TitleType_Slash"
L3_1 = 2
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  A0_2._avatar_data = A3_2
  A0_2._cur_selected_avatar = nil
  A0_2._selected_point = nil
  L5_2 = A0_2
  L4_2 = A0_2.fetch_ui3d
  L4_2 = L4_2(L5_2)
  A0_2._avatar_ui3d = L4_2
  A0_2._skill_tree_detail_panel = nil
  A0_2._is_show_page_info = true
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2)
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
    L2_2 = A0_2._on_btn_close_skill_detail
    L2_2(L3_2)
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L4_2 = A0_2._skill_tree_detail_panel
      L5_2 = L4_2
      L4_2 = L4_2.get_navigation_target
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
    else
      L2_2 = NavigationZoneType
      L2_2 = L2_2.Zone3
      if A1_2 == L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2.set_navigation_target
        L4_2 = A0_2._panel_point_detail
        L5_2 = L4_2
        L4_2 = L4_2.get_navigation_target
        L4_2, L5_2 = L4_2(L5_2)
        L2_2(L3_2, L4_2, L5_2)
        L2_2 = A0_2._panel_point_detail
        L3_2 = L2_2
        L2_2 = L2_2.setup_in_control_button_enable
        L4_2 = false
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L0_1._on_enter_zoom = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.is_current_tab_item
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone3
  if A1_2 == L2_2 then
    L2_2 = A0_2._panel_point_detail
    L3_2 = L2_2
    L2_2 = L2_2.setup_in_control_button_enable
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_leave_zoom = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = true
    return L2_2
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone3
    if A1_2 == L2_2 then
      L2_2 = A0_2._panel_point_detail
      L2_2 = L2_2 ~= nil
      return L2_2
    end
  end
end
L0_1._is_can_to_zoom = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = A0_2._panel_point_detail
    if L2_2 ~= nil then
      L2_2 = A0_2._panel_point_detail
      L3_2 = L2_2
      L2_2 = L2_2.is_showing_extend
      L2_2 = L2_2(L3_2)
      L2_2 = not L2_2
      return L2_2
    end
  end
  L2_2 = true
  return L2_2
end
L0_1._is_can_back_zoom = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._panel_point_detail
  if L2_2 ~= nil then
    L2_2 = A0_2._panel_point_detail
    L3_2 = L2_2
    L2_2 = L2_2.try_close_extend
    L2_2(L3_2)
  end
end
L0_1._on_back_zoom_fail = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._skill_tree_detail_panel
  if L1_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._skill_tree_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1._get_first_selected_object = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._material_ids
  if L1_2 ~= nil then
    L1_2 = A0_2._material_ids
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = A0_2._avatar_data
      L1_2 = L1_2.IsDisplayOnly
      if not L1_2 then
        L1_2 = {}
        L2_2 = A0_2._material_ids
        L1_2.items = L2_2
        L2_2 = G
        L2_2 = L2_2.InventoryUtils
        L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
        L3_2 = L1_2
        L2_2(L3_2)
      end
    end
  end
end
L0_1._on_left_stick_button_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AvatarSkillTreeUnlockFinish
  L4_2 = L0_1._on_skill_upgraded
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.AdventureModule
  L1_2 = L1_2.ADVAssetPreload
  L1_2 = L1_2.UIAssetGroup
  L2_2 = L1_2
  L1_2 = L1_2.AddTempCacheUI
  L3_2 = "UI/Avatar/Widget/SkillTreeIconSmall_Attribute.prefab"
  L4_2 = 10
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.AdventureModule
  L1_2 = L1_2.ADVAssetPreload
  L1_2 = L1_2.UIAssetGroup
  L2_2 = L1_2
  L1_2 = L1_2.AddTempCacheUI
  L3_2 = "UI/Avatar/Widget/SkillTreeIconSmall_Normal.prefab"
  L4_2 = 5
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.AdventureModule
  L1_2 = L1_2.ADVAssetPreload
  L1_2 = L1_2.UIAssetGroup
  L2_2 = L1_2
  L1_2 = L1_2.AddTempCacheUI
  L3_2 = "UI/Avatar/Widget/SkillTreeIconSmall_Special.prefab"
  L4_2 = 3
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close_skill_detail
  L4_2 = A0_2._on_btn_close_skill_detail
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_game_pad
  L4_2 = A0_2._on_left_stick_button_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close_compare
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2._panel_point_detail
    if L0_3 ~= nil then
      L0_3 = A0_2._panel_point_detail
      L1_3 = L0_3
      L0_3 = L0_3.try_close_extend
      L0_3(L1_3)
    end
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_close_skill_detail
  L1_2.enabled = false
  L1_2 = {}
  A0_2._material_ids = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_recommend
  L2_2 = L1_2
  L1_2 = L1_2.register_point_click_callback
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._on_point_clicked
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_recommend
  L2_2 = L1_2
  L1_2 = L1_2.register_close_callback
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2._panel_point_detail
    if L0_3 ~= nil then
      L0_3 = A0_2._panel_point_detail
      L1_3 = L0_3
      L0_3 = L0_3.try_close_extend
      L0_3(L1_3)
    end
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._update_material_ids
  L2_2(L3_2)
end
L0_1._on_skill_upgraded = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.AdventureModule
  L1_2 = L1_2.ADVAssetPreload
  L1_2 = L1_2.UIAssetGroup
  L2_2 = L1_2
  L1_2 = L1_2.RemoveTempCacheUI
  L3_2 = "UI/Avatar/Widget/SkillTreeIconSmall_Attribute.prefab"
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.AdventureModule
  L1_2 = L1_2.ADVAssetPreload
  L1_2 = L1_2.UIAssetGroup
  L2_2 = L1_2
  L1_2 = L1_2.RemoveTempCacheUI
  L3_2 = "UI/Avatar/Widget/SkillTreeIconSmall_Normal.prefab"
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.AdventureModule
  L1_2 = L1_2.ADVAssetPreload
  L1_2 = L1_2.UIAssetGroup
  L2_2 = L1_2
  L1_2 = L1_2.RemoveTempCacheUI
  L3_2 = "UI/Avatar/Widget/SkillTreeIconSmall_Special.prefab"
  L1_2(L2_2, L3_2)
  A0_2._cur_selected_avatar = nil
  A0_2._select_point_callback = nil
  A0_2._close_point_detail_callback = nil
end
L0_1._on_dispose = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._avatar_data = A1_2
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
L0_1.setup_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = not A1_2
  A0_2._is_show_page_info = L2_2
end
L0_1.hide_page_info = L4_1
function L4_1(A0_2)
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
L0_1._custom_refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_point_tree_view
  L1_2(L2_2)
  L1_2 = A0_2._avatar_data
  A0_2._cur_selected_avatar = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_info_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_bg_view
  L1_2(L2_2)
  L1_2 = A0_2._selected_point
  if L1_2 then
    L1_2 = A0_2._cur_selected_avatar
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._show_point_detail
      L3_2 = A0_2._cur_selected_avatar
      L4_2 = A0_2._selected_point
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L0_1._refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_page_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_show_page_info
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_show_page_info
  if not L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_avatar_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AvatarBaseTypeExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._avatar_data
  L2_2 = L2_2.Row
  L2_2 = L2_2.AvatarBaseType
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.BaseTypeIconSmall
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_avatar_type
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_avatar_type_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_1
  L6_2 = G
  L6_2 = L6_2.TextmapStatic
  L6_2 = L6_2.GetText
  L7_2 = L1_2.BaseTypeText
  L6_2 = L6_2(L7_2)
  L7_2 = A0_2._avatar_data
  L7_2 = L7_2.AvatarName
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1._setup_info_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._avatar_data
  L1_2 = L1_2.Row
  L1_2 = L1_2.DamageType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.DamageTypeExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_gradual
  L6_2 = L2_2.SkillTreePanelPath
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_bggradual
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetColor
  L5_2 = L2_2.SkillTreeLeftPanelColor
  L3_2(L4_2, L5_2)
end
L0_1._setup_bg_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._cur_selected_avatar
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._is_cur_selected
    L3_2 = A0_2._avatar_data
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      goto lbl_36
    end
  end
  L1_2 = A0_2._skill_tree_detail_panel
  if L1_2 then
    L1_2 = A0_2._skill_tree_detail_panel
    L2_2 = L1_2
    L1_2 = L1_2.dispose
    L1_2(L2_2)
    A0_2._skill_tree_detail_panel = nil
  end
  L1_2 = A0_2._avatar_data
  L1_2 = L1_2.RealID
  A0_2._skill_tree_avatar_real_id = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.SkillTreeDetailPanel
  L4_2 = G
  L4_2 = L4_2.SkillTreeDetailPanelBinder
  L5_2 = A0_2._avatar_data
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._skill_tree_detail_panel = L1_2
  L1_2 = A0_2._skill_tree_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_point_click_callback
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._on_point_clicked
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._skill_tree_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.async_bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_skill_tree
  L1_2(L2_2, L3_2)
  ::lbl_36::
  L1_2 = A0_2._skill_tree_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._avatar_data
  L4_2 = A0_2._selected_point
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_point_tree_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._selected_point = A1_2
  L2_2 = A0_2._skill_tree_detail_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._avatar_data
  L5_2 = A0_2._selected_point
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._select_point_callback
  if L2_2 then
    L2_2 = A0_2._select_point_callback
    L2_2()
  end
  L3_2 = A0_2
  L2_2 = A0_2._show_point_detail
  L4_2 = A0_2._avatar_data
  L5_2 = A0_2._selected_point
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_close_skill_detail
  L2_2.enabled = true
  L3_2 = A0_2
  L2_2 = A0_2._update_material_ids
  L2_2(L3_2)
end
L0_1._on_point_clicked = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  A0_2._material_ids = L1_2
  L1_2 = A0_2._avatar_data
  L1_2 = L1_2.SkillTreeData
  L2_2 = L1_2
  L1_2 = L1_2.GetSkillTreePointLevel
  L3_2 = A0_2._selected_point
  L3_2 = L3_2.PointID
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AvatarSkillTreeExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._selected_point
  L3_2 = L3_2.PointID
  L4_2 = L1_2 + 1
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._selected_point
  L3_2 = L3_2.MaxLevel
  if L1_2 < L3_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.AvatarSkillTreeExcelTable
    L3_2 = L3_2.GetData
    L4_2 = A0_2._selected_point
    L4_2 = L4_2.PointID
    L5_2 = L1_2 + 1
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = G
    L4_2 = L4_2.AvatarUtils
    L4_2 = L4_2.get_skill_material_cost
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    L5_2 = 1
    L6_2 = #L4_2
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = A0_2._material_ids
      L11_2 = L4_2[L8_2]
      L11_2 = L11_2.ID
      L9_2(L10_2, L11_2)
    end
  end
  L3_2 = A0_2._material_ids
  L3_2 = #L3_2
  if L3_2 ~= 0 then
    L3_2 = A0_2._avatar_data
    L3_2 = L3_2.IsDisplayOnly
    if not L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2.setup_short_cut_hint_panel
      L5_2 = {}
      L6_2 = "ActionGroup_Return"
      L5_2[1] = L6_2
      L3_2(L4_2, L5_2)
  end
  else
    L4_2 = A0_2
    L3_2 = A0_2.setup_short_cut_hint_panel
    L5_2 = {}
    L6_2 = "ActionGroup_Return"
    L5_2[1] = L6_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._update_material_ids = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = A0_2._panel_point_detail
  if L3_2 == nil then
    L4_2 = A0_2
    L3_2 = A0_2.create_panel
    L5_2 = G
    L5_2 = L5_2.SkillTreePointDetailPanel
    L6_2 = G
    L6_2 = L6_2.SkillTreePointDetailPanelBinder
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    A0_2._panel_point_detail = L3_2
    L3_2 = A0_2._panel_point_detail
    L4_2 = L3_2
    L3_2 = L3_2.bind
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_point_detail_panel
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._panel_point_detail
    L4_2 = L3_2
    L3_2 = L3_2.register_recommend_callback
    L5_2 = A0_2._on_show_recommend
    L6_2 = A0_2
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2._panel_point_detail
    L4_2 = L3_2
    L3_2 = L3_2.register_close_callback
    L5_2 = A0_2._close_point_detail
    L6_2 = A0_2
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2._panel_point_detail
    L4_2 = L3_2
    L3_2 = L3_2.register_next_level_node
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_next_level
    L6_2 = A0_2._binder
    L6_2 = L6_2.text_next_add_level
    L7_2 = A0_2._binder
    L7_2 = L7_2.text_next_level_desc
    L8_2 = A0_2._binder
    L8_2 = L8_2.text_next_skill_name
    L9_2 = A0_2._binder
    L9_2 = L9_2.node_compare_panel
    L10_2 = A0_2._binder
    L10_2 = L10_2.next_scroll_rect_desc
    L11_2 = A0_2._binder
    L11_2 = L11_2.text_next_tag
    L12_2 = A0_2._binder
    L12_2 = L12_2.node_next_level_sub_skill
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  end
  L3_2 = A0_2._panel_point_detail
  L4_2 = L3_2
  L3_2 = L3_2.safe_set_active
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._panel_point_detail
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._show_point_detail = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._panel_point_detail
  if L1_2 == nil then
    return
  else
    A0_2._selected_point = nil
    L1_2 = A0_2._panel_point_detail
    L2_2 = L1_2
    L1_2 = L1_2.try_close_extend
    L1_2(L2_2)
    L1_2 = A0_2._panel_point_detail
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_point_tree_view
  L1_2(L2_2)
  L1_2 = A0_2._owner
  L1_2 = L1_2.is_played_fade_in
  if L1_2 then
    L1_2 = A0_2._close_point_detail_callback
    if L1_2 then
      L1_2 = A0_2._close_point_detail_callback
      L1_2()
    end
  end
  L1_2 = {}
  A0_2._material_ids = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ActionGroup_Select"
  L5_2 = "ActionGroup_Return"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L1_2(L2_2, L3_2)
end
L0_1._close_point_detail = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_recommend
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = A0_2._avatar_data
    L5_2 = A0_2._selected_point
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_recommend
    L3_2 = L2_2
    L2_2 = L2_2.safe_set_active
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_recommend
    L3_2 = L2_2
    L2_2 = L2_2.get_first_selected_object
    L2_2 = L2_2(L3_2)
    if L2_2 ~= nil then
      L4_2 = A0_2
      L3_2 = A0_2.is_in_special_zoom
      L3_2 = L3_2(L4_2)
      if not L3_2 then
        L4_2 = A0_2
        L3_2 = A0_2.set_navigation_target
        L5_2 = L2_2
        L3_2(L4_2, L5_2)
      end
    end
  else
    L2_2 = A0_2._selected_point
    if L2_2 ~= nil then
      L2_2 = A0_2._skill_tree_detail_panel
      if L2_2 ~= nil then
        L2_2 = A0_2._skill_tree_detail_panel
        L3_2 = L2_2
        L2_2 = L2_2.get_point_selected_object
        L4_2 = A0_2._selected_point
        L4_2 = L4_2.PointID
        L2_2 = L2_2(L3_2, L4_2)
        L4_2 = A0_2
        L3_2 = A0_2.set_navigation_target
        L5_2 = L2_2
        L3_2(L4_2, L5_2)
        L4_2 = A0_2
        L3_2 = A0_2.save_navigation_target
        L5_2 = L2_2
        L3_2(L4_2, L5_2)
      end
    end
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_recommend
    L3_2 = L2_2
    L2_2 = L2_2.safe_set_active
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_show_recommend = L4_1
function L4_1(A0_2, A1_2)
  A0_2._select_point_callback = A1_2
end
L0_1.register_click_callback = L4_1
function L4_1(A0_2, A1_2)
  A0_2._close_point_detail_callback = A1_2
end
L0_1.register_close_point_detail_callback = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._close_point_detail
  L1_2(L2_2)
end
L0_1._on_btn_close_skill_detail = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._cur_selected_avatar
  if L2_2 then
    L2_2 = A0_2._cur_selected_avatar
    L2_2 = L2_2.IsTrialPlayer
    if L2_2 then
      L2_2 = A1_2.IsTrialPlayer
      if L2_2 then
        L2_2 = A0_2._cur_selected_avatar
        L2_2 = L2_2.TrialPlayerID
        L3_2 = A1_2.TrialPlayerID
        L2_2 = L2_2 == L3_2
        return L2_2
    end
    else
      L2_2 = A0_2._cur_selected_avatar
      L2_2 = L2_2.IsTrialPlayer
      if not L2_2 then
        L2_2 = A1_2.IsTrialPlayer
        if not L2_2 then
          goto lbl_30
        end
      end
      L2_2 = false
      do return L2_2 end
      goto lbl_45
      ::lbl_30::
      L2_2 = A0_2._cur_selected_avatar
      L2_2 = L2_2.RealID
      L3_2 = A1_2.RealID
      L2_2 = L2_2 == L3_2
      return L2_2
    end
  else
    L2_2 = false
    return L2_2
  end
  ::lbl_45::
end
L0_1._is_cur_selected = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AvatarDetailTabExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L3_1
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_tab_name_normal
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.TabName
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_tab_name_selected
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.TabName
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_tab_normal
  L5_2 = L1_2.IconPath
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_tab_selected
  L5_2 = L1_2.IconPath
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_added = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._avatar_ui3d
  if L1_2 then
    L1_2 = A0_2._avatar_ui3d
    L2_2 = L1_2
    L1_2 = L1_2.show_avatar_main_page_tab
    L3_2 = G
    L3_2 = L3_2.AvatarMainPageSubType
    L3_2 = L3_2.SkillTree
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._on_select = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_unselect = L4_1
return L0_1
