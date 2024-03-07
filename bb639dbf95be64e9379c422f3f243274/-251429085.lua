local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.AvatarEducation.AvatarEidolon.AvatarEidolonSkillGroupPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AvatarEducation.AvatarEidolon.AvatarEidolonSkillGroupPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AvatarEducation.AvatarEidolon.AvatarEidolonSkillDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AvatarEducation.AvatarEidolon.AvatarEidolonSkillDetailPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.AvatarUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarEidolonTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AvatarModule
L2_1 = "UIText_TitleType_Slash"
L3_1 = "AvatarRankPanel_In"
L4_1 = "SwitchAvatar"
L5_1 = 12
L6_1 = 4
function L7_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2
  A0_2._avatar_data = A3_2
  L5_2 = A0_2._avatar_data
  L5_2 = L5_2.ID
  A0_2._avatar_id = L5_2
  A0_2._cur_selected_avatar = nil
  A0_2._avatar_sub_menu_panel_ref = A4_2
  A0_2._is_show_page_info = true
  L6_2 = A0_2
  L5_2 = A0_2.fetch_ui3d
  L5_2 = L5_2(L6_2)
  A0_2._avatar_ui3d = L5_2
end
L0_1.ctor = L7_1
function L7_1(A0_2, A1_2)
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
    L2_2 = A0_2.on_btn_close_skill_detail
    L2_2(L3_2)
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L5_2 = A0_2
      L4_2 = A0_2.get_navigation_target
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
    else
      L2_2 = NavigationZoneType
      L2_2 = L2_2.Zone3
      if A1_2 == L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2.set_navigation_target
        L4_2 = A0_2._binder
        L4_2 = L4_2.avatar_eidolon_skill_detail_panel
        L5_2 = L4_2
        L4_2 = L4_2.get_first_selected_object
        L4_2, L5_2 = L4_2(L5_2)
        L2_2(L3_2, L4_2, L5_2)
        L2_2 = A0_2._binder
        L2_2 = L2_2.avatar_eidolon_skill_detail_panel
        L3_2 = L2_2
        L2_2 = L2_2.setup_in_control_button_enable
        L4_2 = false
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L0_1._on_enter_zoom = L7_1
function L7_1(A0_2, A1_2)
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
    L2_2 = A0_2._binder
    L2_2 = L2_2.avatar_eidolon_skill_detail_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_in_control_button_enable
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_leave_zoom = L7_1
function L7_1(A0_2, A1_2)
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
      L2_2 = A0_2._binder
      L2_2 = L2_2.avatar_eidolon_skill_detail_panel
      L3_2 = L2_2
      L2_2 = L2_2.get_first_selected_object
      L2_2 = L2_2(L3_2)
      L2_2 = L2_2 ~= nil
      return L2_2
    end
  end
end
L0_1._is_can_to_zoom = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.avatar_eidolon_skill_group_panel
  if L1_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.avatar_eidolon_skill_group_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L7_1
function L7_1(A0_2)
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
L0_1._on_left_stick_button_click = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._avatar_data = A1_2
  L2_2 = A0_2._avatar_data
  L2_2 = L2_2.ID
  A0_2._avatar_id = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._bind_reddot
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
L0_1.setup_view = L7_1
function L7_1(A0_2, A1_2)
  local L2_2
  L2_2 = not A1_2
  A0_2._is_show_page_info = L2_2
end
L0_1.hide_page_info = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._state
  L2_2 = A0_2.SelectState
  L2_2 = L2_2.Selected
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._refresh
    L1_2(L2_2)
    L1_2 = A0_2._avatar_ui3d
    if L1_2 then
      L1_2 = A0_2._avatar_ui3d
      L2_2 = L1_2
      L1_2 = L1_2.show_avatar_main_page_tab
      L3_2 = G
      L3_2 = L3_2.AvatarMainPageSubType
      L3_2 = L3_2.Eidolon
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._avatar_ui3d
      L1_2 = L1_2.eidolon_panel
      L2_2 = L1_2
      L1_2 = L1_2.show_eidolon
      L3_2 = A0_2._avatar_data
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._avatar_ui3d
      L1_2 = L1_2.eidolon_panel
      L2_2 = L1_2
      L1_2 = L1_2.play_root_anim
      L3_2 = L4_1
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._custom_refresh = L7_1
function L7_1(A0_2, A1_2)
  A0_2._select_point_callback = A1_2
end
L0_1.register_click_callback = L7_1
function L7_1(A0_2, A1_2)
  A0_2._close_point_detail_callback = A1_2
end
L0_1.register_close_point_detail_callback = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._selected_point_row = nil
  A0_2._selected_point_row_record = nil
  A0_2._cur_selected_avatar = nil
  L1_2 = A0_2._binder
  L1_2 = L1_2.avatar_eidolon_skill_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_close_point_detail_callback
  function L3_2()
    local L0_3, L1_3
    L0_3 = L0_1.on_btn_close_skill_detail
    L1_3 = A0_2
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.avatar_eidolon_skill_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_on_click_active_callback
  L3_2 = A0_2._on_click_active_btn_callback
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AvatarEidolonActiveFinish
  L4_2 = L0_1._on_avatar_eidolon_active_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_detail_close
  L4_2 = A0_2.on_btn_close_skill_detail
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_game_pad
  L4_2 = A0_2._on_left_stick_button_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = {}
  A0_2._material_ids = L1_2
end
L0_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._avatar_data
  L1_2 = L1_2.Row
  L1_2 = L1_2.MaxRank
  if L1_2 == 0 then
    return
  end
  L1_2 = A0_2._cur_selected_avatar
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._is_cur_selected
    L3_2 = A0_2._avatar_data
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      goto lbl_47
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_page_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_show_page_info
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
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_avatar_type_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L2_1
  L5_2 = G
  L5_2 = L5_2.TextmapStatic
  L5_2 = L5_2.GetText
  L6_2 = L1_2.BaseTypeText
  L5_2 = L5_2(L6_2)
  L6_2 = A0_2._avatar_data
  L6_2 = L6_2.AvatarName
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = L1_2.BaseTypeIconSmall
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_avatar_type
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  ::lbl_47::
  function L1_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    A0_2._selected_point_row = A0_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._refresh
    L1_3(L2_3)
    L1_3 = A0_2._owner
    L1_3 = L1_3.is_eidolon_played_fade_in
    if L1_3 == false then
      L1_3 = A0_2._avatar_ui3d
      if L1_3 then
        L1_3 = A0_2._avatar_ui3d
        L2_3 = L1_3
        L1_3 = L1_3.show_avatar_main_page_tab
        L3_3 = G
        L3_3 = L3_3.AvatarMainPageSubType
        L3_3 = L3_3.Eidolon
        L4_3 = true
        L1_3(L2_3, L3_3, L4_3)
      end
    end
    L1_3 = A0_2._select_point_callback
    if L1_3 then
      L1_3 = A0_2._select_point_callback
      L1_3()
    end
    L1_3 = A0_2._binder
    L1_3 = L1_3.avatar_eidolon_skill_group_panel
    L2_3 = L1_3
    L1_3 = L1_3.setup_adapted_position
    L3_3 = true
    L1_3(L2_3, L3_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._update_material_ids
    L1_3(L2_3)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.avatar_eidolon_skill_group_panel
  L3_2 = L2_2
  L2_2 = L2_2.register_click_callback
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.avatar_eidolon_skill_group_panel
  L3_2 = L2_2
  L2_2 = L2_2.register_cancel_callback
  L4_2 = A0_2
  L5_2 = A0_2.on_btn_close_skill_detail
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.avatar_eidolon_skill_group_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._avatar_data
  L5_2 = A0_2._selected_point_row
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._selected_point_row
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.avatar_eidolon_skill_detail_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = A0_2._avatar_data
    L5_2 = A0_2._selected_point_row
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = A0_2._avatar_data
  A0_2._cur_selected_avatar = L2_2
  L2_2 = A0_2._avatar_data
  L2_2 = L2_2.RealID
  A0_2._avatar_real_id = L2_2
end
L0_1._refresh = L7_1
function L7_1(A0_2, A1_2)
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
      goto lbl_43
      ::lbl_30::
      L2_2 = A0_2._cur_selected_avatar
      L2_2 = A1_2 == L2_2
      return L2_2
    end
  else
    L2_2 = false
    return L2_2
  end
  ::lbl_43::
end
L0_1._is_cur_selected = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._material_ids = L1_2
  L1_2 = A0_2._selected_point_row
  L1_2 = L1_2.Rank
  L2_2 = A0_2._avatar_data
  L2_2 = L2_2.Rank
  if L1_2 > L2_2 then
    L1_2 = A0_2._avatar_data
    L1_2 = L1_2.IsDisplayOnly
    if not L1_2 then
      L1_2 = G
      L1_2 = L1_2.AvatarUtils
      L1_2 = L1_2.get_avatar_rankup_cost
      L2_2 = A0_2._selected_point_row
      L1_2 = L1_2(L2_2)
      L2_2 = 1
      L3_2 = #L1_2
      L4_2 = 1
      for L5_2 = L2_2, L3_2, L4_2 do
        L6_2 = table
        L6_2 = L6_2.insert
        L7_2 = A0_2._material_ids
        L8_2 = L1_2[L5_2]
        L8_2 = L8_2.ID
        L6_2(L7_2, L8_2)
      end
      L3_2 = A0_2
      L2_2 = A0_2.setup_short_cut_hint_panel
      L4_2 = {}
      L5_2 = "ActionGroup_Return"
      L4_2[1] = L5_2
      L2_2(L3_2, L4_2)
  end
  else
    L2_2 = A0_2
    L1_2 = A0_2.setup_short_cut_hint_panel
    L3_2 = {}
    L4_2 = "ActionGroup_Return"
    L3_2[1] = L4_2
    L1_2(L2_2, L3_2)
  end
end
L0_1._update_material_ids = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAvatar
  L3_2 = A0_2._avatar_id
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._avatar_data = L1_2
  L1_2 = A0_2._avatar_ui3d
  if L1_2 then
    L1_2 = A0_2._avatar_ui3d
    L1_2 = L1_2.eidolon_panel
    L2_2 = L1_2
    L1_2 = L1_2.register_unlock_anim_callback
    function L3_2()
      local L0_3, L1_3, L2_3
      L0_3 = A0_2._binder
      L0_3 = L0_3.avatar_eidolon_skill_group_panel
      L1_3 = L0_3
      L0_3 = L0_3.try_refresh_selected_panel
      L2_3 = A0_2._selected_point_row
      L0_3(L1_3, L2_3)
    end
    L4_2 = A0_2._selected_point_row_record
    L4_2 = L4_2.Rank
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.AvatarEducation.AvatarEidolon.AvatarEidolonActiveResultDialog"
  L3_2 = A0_2._selected_point_row_record
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_GamePhaseManager
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentPhase
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2 or L3_2
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.GetAdventureAudioManager
    L3_2 = L3_2(L4_2)
  end
  if L3_2 ~= nil then
    L5_2 = L3_2
    L4_2 = L3_2.PlayUICharacterVO
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.GameCore
    L6_2 = L6_2.AdventureCharacterVOType
    L6_2 = L6_2.EidolonActive
    L7_2 = A0_2._avatar_data
    L4_2(L5_2, L6_2, L7_2)
  end
  L5_2 = L1_2
  L4_2 = L1_2.register_close_callback
  L6_2 = A0_2
  L7_2 = A0_2._on_active_result_dialog_close
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.avatar_eidolon_skill_group_panel
  L5_2 = L4_2
  L4_2 = L4_2.try_refresh_selected_panel
  L6_2 = A0_2._selected_point_row
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._selected_point_row
  if L4_2 ~= nil then
    L4_2 = A0_2._binder
    L4_2 = L4_2.avatar_eidolon_skill_detail_panel
    L5_2 = L4_2
    L4_2 = L4_2.setup_view
    L6_2 = A0_2._avatar_data
    L7_2 = A0_2._selected_point_row
    L4_2(L5_2, L6_2, L7_2)
  end
  L5_2 = A0_2
  L4_2 = A0_2._update_material_ids
  L4_2(L5_2)
end
L0_1._on_avatar_eidolon_active_finish = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._on_active_result_dialog_close = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._owner
  L1_2 = L1_2.is_eidolon_played_fade_in
  if L1_2 == false then
    return
  end
  A0_2._selected_point_row = nil
  L1_2 = A0_2._binder
  L1_2 = L1_2.avatar_eidolon_skill_group_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_adapted_position
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L1_2 = A0_2._avatar_ui3d
  if L1_2 then
    L1_2 = A0_2._avatar_ui3d
    L2_2 = L1_2
    L1_2 = L1_2.show_avatar_main_page_tab
    L3_2 = G
    L3_2 = L3_2.AvatarMainPageSubType
    L3_2 = L3_2.Eidolon
    L4_2 = false
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = A0_2._close_point_detail_callback
  if L1_2 then
    L1_2 = A0_2._close_point_detail_callback
    L1_2()
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
L0_1.on_btn_close_skill_detail = L7_1
function L7_1(A0_2, A1_2)
  A0_2._selected_point_row_record = A1_2
end
L0_1._on_click_active_btn_callback = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_reddot
  L1_2(L2_2)
end
L0_1._on_added = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = true
  L2_2 = A0_2._avatar_ui3d
  if L2_2 then
    L2_2 = A0_2._avatar_ui3d
    L2_2 = L2_2.eidolon_panel
    L3_2 = L2_2
    L2_2 = L2_2.is_eidolon_loaded
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
    if not L1_2 then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.CoroutineUtils
      L2_2 = L2_2.InvokeNextFrame
      function L3_2()
        local L0_3, L1_3, L2_3, L3_3
        L0_3 = A0_2._avatar_ui3d
        if not L0_3 then
          return
        end
        L0_3 = A0_2._avatar_ui3d
        L0_3 = L0_3.eidolon_panel
        L1_3 = A0_2._avatar_ui3d
        L1_3 = L1_3.eidolon_panel
        L2_3 = L1_3
        L1_3 = L1_3.async_load_eidolon
        function L3_3()
          local L0_4, L1_4, L2_4
          L0_4 = A0_2._avatar_ui3d
          if not L0_4 then
            L0_4 = L0_3
            if L0_4 then
              L0_4 = L0_3
              L1_4 = L0_4
              L0_4 = L0_4.dispose_eidolon
              L0_4(L1_4)
            end
            return
          end
          L0_4 = A0_2._avatar_ui3d
          L0_4 = L0_4.eidolon_panel
          L1_4 = L0_4
          L0_4 = L0_4.show_eidolon
          L2_4 = A0_2._avatar_data
          L0_4(L1_4, L2_4)
          L0_4 = A0_2._binder
          L0_4 = L0_4.anim_root
          L1_4 = L0_4
          L0_4 = L0_4.Play
          L2_4 = L3_1
          L0_4(L1_4, L2_4)
        end
        L1_3(L2_3, L3_3)
      end
      L2_2(L3_2)
    end
    L2_2 = A0_2._avatar_ui3d
    L3_2 = L2_2
    L2_2 = L2_2.show_avatar_main_page_tab
    L4_2 = G
    L4_2 = L4_2.AvatarMainPageSubType
    L4_2 = L4_2.Eidolon
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._avatar_ui3d
    L2_2 = L2_2.eidolon_panel
    L3_2 = L2_2
    L2_2 = L2_2.show_eidolon
    L4_2 = A0_2._avatar_data
    L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.avatar_eidolon_skill_group_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_adapted_position
  L4_2 = false
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_root
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = L3_1
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_select = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._avatar_ui3d
  if L1_2 then
    L1_2 = A0_2._avatar_ui3d
    L1_2 = L1_2.eidolon_panel
    L2_2 = L1_2
    L1_2 = L1_2.hide_eidolon
    L1_2(L2_2)
  end
end
L0_1._on_unselect = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._avatar_data
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._is_display_only
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = G
      L1_2 = L1_2.RedDotModule
      L1_2 = L1_2.Instance
      L2_2 = L1_2
      L1_2 = L1_2.bind_reddot
      L3_2 = "AvatarRank"
      L4_2 = A0_2._avatar_data
      L4_2 = L4_2.ID
      L5_2 = A0_2
      L6_2 = A0_2._binder
      L6_2 = L6_2.go_reddot
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
  else
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.unbind_reddot
    L3_2 = A0_2._binder
    L3_2 = L3_2.go_reddot
    L1_2(L2_2, L3_2)
  end
end
L0_1._bind_reddot = L7_1
function L7_1(A0_2)
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
L0_1._is_display_only = L7_1
function L7_1(A0_2)
  local L1_2
  A0_2._cur_selected_avatar = nil
  A0_2._select_point_callback = nil
  A0_2._close_point_detail_callback = nil
end
L0_1._on_dispose = L7_1
return L0_1
