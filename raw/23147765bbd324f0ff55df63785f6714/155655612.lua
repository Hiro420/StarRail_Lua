local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.EvolveBuildStagePageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.EvolveBuildAvatarSelectHelper"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.EvolveBuildWeaponChangePage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.EvolveBuildMonsterDataProvider"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarMainPage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.ActivityEvolveBuildUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.Select.BattleEvolveBuildSelectGearPropPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.ActivityEvolveBuildUtils"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Ui.Activity.EvolveBuild.EvolveBuildConst"
L1_1 = L1_1(L2_1)
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.EvolveBuildModule
L3_1 = G
L3_1 = L3_1.Utils
L3_1 = L3_1.create_lua_table_from_cs_list
L4_1 = G
L4_1 = L4_1.Utils
L4_1 = L4_1.create_lua_table_from_cs_array
L5_1 = G
L5_1 = L5_1.Class
L6_1 = "EvolveBuildStagePage"
L7_1 = G
L7_1 = L7_1.UIController
L5_1 = L5_1(L6_1, L7_1)
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.EvolveBuildStagePageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  A0_2._pause_game = true
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_BelowBlack
  A0_2._transition_style = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L5_1.ctor = L6_1
function L6_1(A0_2, A1_2)
  A0_2._stage = A1_2
  A0_2.is_avatar_select_panel_open = false
end
L5_1.init = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.close_btn
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.avatar_select_panel_close_btn
  L4_2 = A0_2.close_avatar_select_panel
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.avatar_select_panel_open_btn
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_3._helper
    L2_3 = L1_3
    L1_3 = L1_3.on_click_team_member
    L3_3 = nil
    L1_3(L2_3, L3_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.avatar_detail_btn
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3._helper
    L2_3 = L1_3
    L1_3 = L1_3.open_avatar_main_page
    L1_3(L2_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.enter_battle_btn
  L4_2 = A0_2._enter_battle
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.weapon_select_btn
  L4_2 = A0_2._open_weapon_select_page
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.rerandom_btn
  L4_2 = A0_2._request_rerandom
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.mix_page_btn
  L4_2 = A0_2._open_mix_page
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.monster_preview_btn
  L4_2 = A0_2._open_monster_preview_page
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIEvolveBuildStageReRandom
  L4_2 = A0_2._on_rerandom
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = A0_2._setup_monster_preview_panel
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = L3_1
  L2_2 = A0_2._stage
  L3_2 = L2_2
  L2_2 = L2_2.GetTrialAvatars
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L2_2 = L3_1
  L3_2 = A0_2._stage
  L4_2 = L3_2
  L3_2 = L3_2.GetTeamSave
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = G
  L3_2 = L3_2.new
  L4_2 = G
  L4_2 = L4_2.EvolveBuildAvatarSelectHelper
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.avatar_select_panel
  L7_2 = A0_2._binder
  L7_2 = L7_2.team_members
  L8_2 = L1_2
  L9_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  A0_2._helper = L3_2
end
L5_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._helper
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.stage_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._stage
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.stage_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._stage
  L3_2 = L3_2.Desc
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.weapon_select_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._stage
  L3_2 = L3_2.IsWeaponSelectable
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.gear_recommend_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._stage
  L3_2 = L3_2.IsWeaponSelectable
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.weapon_unselectable_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.endless_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._stage
  L3_2 = L3_2.ID
  L4_2 = L1_1.EndlessStageID
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.IsSkillShopAvailable
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.enter_battle_txt
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_EvolveBuild_Stage_Next"
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.enter_battle_txt
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_TeamEdit_Challenge_Btn"
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_team_bonus
  L3_2 = A0_2._stage
  L3_2 = L3_2.TeamBonusMazeBuff
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_weapon_panel
  L3_2 = A0_2._stage
  L3_2 = L3_2.SelectedWeapon
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_rerandom_bonus
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_progress_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_monster_preview_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_difficulty_panel
  L3_2 = A0_2._stage
  L3_2 = L3_2.Difficulty
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_gear_recommend_panel
  L3_2 = A0_2._stage
  L3_2 = L3_2.RecommendGears
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_top_bar
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.close_avatar_select_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._trigger_tutorial
  L3_2 = A0_2._stage
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_move_left
  L1_2.ActionEnabled = false
end
L5_1._setup_view = L6_1
function L6_1(A0_2)
  local L1_2
end
L5_1._on_dispose = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_weapon_panel
  L3_2 = A0_2._stage
  L3_2 = L3_2.SelectedWeapon
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_rerandom_bonus
  L1_2(L2_2)
end
L5_1._on_return_to_top = L6_1
function L6_1(A0_2, A1_2)
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
L5_1._on_enter_zoom = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.key_map_info_left_stick
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.key_map_info_right_stick
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.avatar_select_panel_open_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L5_1._on_enter_special_zoom = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.key_map_info_left_stick
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.key_map_info_right_stick
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.avatar_select_panel_open_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._close_gear_detail_panel
  L1_2(L2_2)
end
L5_1._on_leave_special_zoom = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.is_can_to_special_zoom
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_in_special_zoom
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = CS
      L2_2 = L2_2.InControl
      L2_2 = L2_2.InputControlType
      L2_2 = L2_2.RightStickButton
      L2_2 = #L2_2
      if A1_2 == L2_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.rule_tip_btn
        L2_2 = L2_2.gameObject
        L4_2 = A0_2
        L3_2 = A0_2.set_special_zoom_navigation_target
        L5_2 = L2_2
        L3_2(L4_2, L5_2)
      else
        L2_2 = CS
        L2_2 = L2_2.InControl
        L2_2 = L2_2.InputControlType
        L2_2 = L2_2.LeftStickButton
        L2_2 = #L2_2
        if A1_2 == L2_2 then
          L2_2 = A0_2.is_avatar_select_panel_open
          if not L2_2 then
            L2_2 = A0_2._binder
            L2_2 = L2_2.gear_recommend_list
            L3_2 = L2_2
            L2_2 = L2_2.GetFirstItem
            L2_2 = L2_2(L3_2)
            if L2_2 then
              L4_2 = A0_2
              L3_2 = A0_2.set_special_zoom_navigation_target
              L5_2 = L2_2.gameObject
              L3_2(L4_2, L5_2)
            end
          end
        end
      end
    end
  end
end
L5_1._on_in_control_click = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.LeftTrigger
  L3_2 = #L3_2
  if A1_2 == L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.mono_move_left
    L3_2.ActionEnabled = true
    L3_2 = A0_2._binder
    L3_2 = L3_2.mono_move_right
    L3_2.ActionEnabled = false
  end
end
L5_1._on_in_control_press = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.LeftTrigger
  L3_2 = #L3_2
  if A1_2 == L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.mono_move_left
    L3_2.ActionEnabled = false
    L3_2 = A0_2._binder
    L3_2 = L3_2.mono_move_right
    L3_2.ActionEnabled = true
  end
end
L5_1._on_in_control_released = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.move_left_key_map_info
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = CS
  L4_2 = L4_2.InControl
  L4_2 = L4_2.InputDeviceClass
  L4_2 = L4_2.Controller
  L4_2 = #L4_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.move_left_scroll_rect
  L5_2 = L4_2
  L4_2 = L4_2.CanScroll
  L4_2 = A1_2 == L4_2 and L4_2
  L2_2(L3_2, L4_2)
end
L5_1._on_in_control_input_switch = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_navigation
  L3_2 = {}
  L4_2 = A0_2._binder
  L4_2 = L4_2.rule_tip_btn
  L5_2 = A0_2._binder
  L5_2 = L5_2.mix_page_btn
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = NavigationType
  L4_2 = L4_2.Horizontal
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.rule_tip_btn
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.rule_tip_btn
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mix_page_btn
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.mix_page_btn
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L5_1._setup_top_bar = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.team_bonus_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.BuffDesc
  L5_2 = G
  L5_2 = L5_2.UITextUtils
  L5_2 = L5_2.GetSkillParams
  L6_2 = A1_2.ParamList
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L5_1._setup_team_bonus = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.avatar_select_panel_container
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.team_member_key_map_zoom
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  A0_2.is_avatar_select_panel_open = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.close_btn
  L1_2.interactable = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.rerandom_btn
  L1_2.interactable = false
end
L5_1.open_avatar_select_panel = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.avatar_select_panel_container
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.team_member_key_map_zoom
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  A0_2.is_avatar_select_panel_open = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.close_btn
  L1_2.interactable = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.rerandom_btn
  L1_2.interactable = true
end
L5_1.close_avatar_select_panel = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 == nil then
    return
  end
  L2_2 = pairs
  L3_2 = L1_1.StagePageTutorialIDs
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A1_2.ID
    if L7_2 == L5_2 then
      L7_2 = G
      L7_2 = L7_2.NotifyManager
      L7_2 = L7_2.notify
      L8_2 = G
      L8_2 = L8_2.CS
      L8_2 = L8_2.NotifyType
      L8_2 = L8_2.TutorialTaskUnlock
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
end
L5_1._trigger_tutorial = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.weapon_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2 ~= nil
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.weapon_empty_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2 == nil
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.weapon_empty_red_dot
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2 == nil
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.enter_battle_btn
  L3_2 = A1_2 ~= nil
  L2_2.interactable = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.enter_battle_btn_weapon_empty_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2 == nil
  L2_2(L3_2, L4_2)
  if A1_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.weapon_icon
  L5_2 = A1_2.IconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.weapon_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.Name
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.weapon_level_text
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_1.WeaponLevelTextID
  L5_2 = L2_1
  L6_2 = L5_2
  L5_2 = L5_2.GetWeaponInitialLevel
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.EvolveBuildUtils
  L2_2 = L2_2.SetMazeBuffDesc
  L3_2 = A0_2._binder
  L3_2 = L3_2.weapon_desc
  L4_2 = A1_2.MazeBuff
  L5_2 = false
  L6_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.CoroutineUtils
  L2_2 = L2_2.InvokeNextFrame
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = CS
    L0_3 = L0_3.UnityEngine
    L0_3 = L0_3.UI
    L0_3 = L0_3.LayoutRebuilder
    L0_3 = L0_3.ForceRebuildLayoutImmediate
    L1_3 = A0_2._binder
    L1_3 = L1_3.move_left_layout
    L0_3(L1_3)
    L0_3 = A0_2._binder
    L0_3 = L0_3.move_left_key_map_info
    L1_3 = L0_3
    L0_3 = L0_3.SafeSetActive
    L2_3 = G
    L2_3 = L2_3.Utils
    L2_3 = L2_3.is_gamepad_input
    L2_3 = L2_3()
    if L2_3 then
      L2_3 = A0_2._binder
      L2_3 = L2_3.move_left_scroll_rect
      L3_3 = L2_3
      L2_3 = L2_3.CanScroll
      L2_3 = L2_3(L3_3)
    end
    L0_3(L1_3, L2_3)
  end
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.weapon_tag_list
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L4_1
  L5_2 = A1_2.TagIDs
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = L4_1
  L3_2 = A1_2.Elements
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.weapon_element_list
  L4_2 = L3_2
  L3_2 = L3_2.safe_set_active
  L5_2 = L2_2 ~= nil
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.weapon_element_list
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.random_element_tip
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L0_1.is_random_damage_gear
  L6_2 = A1_2.ID
  L5_2, L6_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2)
end
L5_1._refresh_weapon_panel = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.rerandom_btn_container
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._stage
  L3_2 = L3_2.HasRandomPeriod
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.no_rerandom_bonus_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._stage
  L3_2 = L3_2.HasNoRandomBonus
  if L3_2 then
    L3_2 = A0_2._stage
    L3_2 = L3_2.SelectedWeapon
    L3_2 = L3_2 ~= nil
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.no_rerandom_bonus_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = L1_1.NoRandomBonusNum
  L1_2(L2_2, L3_2)
end
L5_1._refresh_rerandom_bonus = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._stage
  L2_2 = L1_2
  L1_2 = L1_2.GetMonsters
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = G
  L3_2 = L3_2.EvolveBuildMonsterDataProvider
  L2_2 = L2_2(L3_2)
  A0_2._monster_data_provider = L2_2
  L2_2 = A0_2._monster_data_provider
  L3_2 = L2_2
  L2_2 = L2_2.init
  L4_2 = L3_1
  L5_2 = L1_2
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.monster_preview_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view_by_provider
  L4_2 = A0_2._monster_data_provider
  L2_2(L3_2, L4_2)
end
L5_1._setup_monster_preview_panel = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.difficulty_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.difficulty_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = 0 < A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.difficulty_bg1
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2 == 1
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.difficulty_bg2
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2 == 2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.difficulty_bg3
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2 == 3
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.difficulty_text
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_1.DifficultyText
  L4_2 = L4_2[A1_2]
  L2_2(L3_2, L4_2)
end
L5_1._setup_difficulty_panel = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.gear_recommend_list
  L3_2 = L2_2
  L2_2 = L2_2.init
  L4_2 = A0_2
  L5_2 = A1_2.Count
  function L6_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L4_3 = A1_3
    L3_3 = A1_3.NewListViewItem
    L3_3 = L3_3(L4_3)
    L4_3 = L3_3.UserObjectData
    if L4_3 == nil then
      L6_3 = A0_3
      L5_3 = A0_3.create_panel
      L7_3 = G
      L7_3 = L7_3.BattleEvolveBuildSelectGearPropPanel
      L8_3 = G
      L8_3 = L8_3.BattleEvolveBuildSelectGearPropPanelBinder
      L5_3 = L5_3(L6_3, L7_3, L8_3)
      L4_3 = L5_3
      L6_3 = L4_3
      L5_3 = L4_3.bind
      L7_3 = L3_3.transform
      L5_3(L6_3, L7_3)
      L3_3.UserObjectData = L4_3
    end
    L5_3 = A1_2[A2_3]
    L7_3 = L4_3
    L6_3 = L4_3.setup_view
    if L5_3 then
      L8_3 = L5_3.ID
      if L8_3 then
        goto lbl_25
      end
    end
    L8_3 = 0
    ::lbl_25::
    L6_3(L7_3, L8_3)
    L7_3 = L4_3
    L6_3 = L4_3.on_click
    L8_3 = A0_3._open_gear_detail_panel
    L9_3 = A0_3
    L10_3 = L5_3
    L6_3(L7_3, L8_3, L9_3, L10_3)
    L7_3 = L4_3
    L6_3 = L4_3.on_select
    L8_3 = A0_3._open_gear_detail_panel
    L9_3 = A0_3
    L10_3 = L5_3
    L6_3(L7_3, L8_3, L9_3, L10_3)
    return L3_3
  end
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.gear_recommend_list
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A1_2.Count
  L2_2(L3_2, L4_2)
end
L5_1._setup_gear_recommend_panel = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.gear_recommend_detail_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.gear_recommend_detail_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = {}
  L5_2 = A1_2.ID
  L4_2.GearID = L5_2
  L4_2.Level = 1
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.gear_recommend_detail_panel
  L3_2 = L2_2
  L2_2 = L2_2.register_on_btn_root_callback
  L4_2 = A0_2._close_gear_detail_panel
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._clear_gear_recommend_checked
  L2_2(L3_2)
end
L5_1._open_gear_detail_panel = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._clear_gear_recommend_checked
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.gear_recommend_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L5_1._close_gear_detail_panel = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 0
  L2_2 = A0_2._binder
  L2_2 = L2_2.gear_recommend_list
  L2_2 = L2_2.ItemCount
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.gear_recommend_list
    L6_2 = L5_2
    L5_2 = L5_2.GetShownItemByItemIndex
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = L5_2.UserObjectData
    L8_2 = L6_2
    L7_2 = L6_2.set_checked
    L9_2 = false
    L7_2(L8_2, L9_2)
  end
end
L5_1._clear_gear_recommend_checked = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_rerandom_bonus
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.rerandom_anim
  L2_2 = L1_2
  L1_2 = L1_2.Stop
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.rerandom_anim
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "UI_EvolveBuildDetailPage_BossRefresh"
  L1_2(L2_2, L3_2)
end
L5_1._on_rerandom = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.progress_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = L3_1
  L4_2 = A0_2._stage
  L4_2 = L4_2.Periods
  L3_2 = L3_2(L4_2)
  L4_2 = 1
  L5_2 = 0
  L6_2 = G
  L6_2 = L6_2.ActivityEvolveBuildUtils
  L6_2 = L6_2.ProgressState
  L6_2 = L6_2.PreShow
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L5_1._setup_progress_panel = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = G
  L2_2 = L2_2.EvolveBuildWeaponChangePage
  L3_2 = A0_2._stage
  L1_2(L2_2, L3_2)
end
L5_1._open_weapon_select_page = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._stage
  L1_2 = L1_2.HasNoRandomBonus
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.ConfirmDialogUtil
    L1_2 = L1_2.ShowOkCancelHint
    L2_2 = "UIText_EvolveBuild_StageReRandomConfirm"
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.TextID
    L3_2 = L3_2.empty
    function L4_2(A0_3)
      local L1_3, L2_3, L3_3
      if A0_3 then
        L1_3 = L2_1
        L2_3 = L1_3
        L1_3 = L1_3.RequestStageReRandom
        L3_3 = A0_2._stage
        L3_3 = L3_3.ID
        L1_3(L2_3, L3_3)
      end
    end
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = L2_1
    L2_2 = L1_2
    L1_2 = L1_2.RequestStageReRandom
    L3_2 = A0_2._stage
    L3_2 = L3_2.ID
    L1_2(L2_2, L3_2)
  end
end
L5_1._request_rerandom = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._helper
  L1_2 = L1_2.selected_avatars
  L2_2 = L1_2
  L1_2 = L1_2.is_empty
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "UIText_TreasureDungeon_Stage_NoAvatarInTeam"
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._stage
  L1_2 = L1_2.SelectedWeapon
  if L1_2 ~= nil then
    L2_2 = L1_2.ID
    if L2_2 then
      goto lbl_25
    end
  end
  L2_2 = 0
  ::lbl_25::
  if L2_2 == 0 then
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UIPileToastMessageTextID
    L5_2 = "UIText_EvolveBuild_Stage_NoWeaponSelected"
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = L2_1
  L4_2 = L3_2
  L3_2 = L3_2.IsSkillShopAvailable
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = G
    L3_2 = L3_2.UIManager
    L3_2 = L3_2.load_and_async_show
    L4_2 = "Ui.Activity.EvolveBuild.EvolveBuildShopPage"
    L5_2 = A0_2._stage
    L6_2 = L1_2
    function L7_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
      L0_3 = L2_1
      L1_3 = L0_3
      L0_3 = L0_3.StartLevel
      L2_3 = A0_2._stage
      L2_3 = L2_3.ID
      L3_3 = L2_2
      L4_3 = L2_1
      L5_3 = L4_3
      L4_3 = L4_3.GetWeaponInitialLevel
      L4_3 = L4_3(L5_3)
      L5_3 = A0_2._helper
      L5_3 = L5_3.selected_avatars
      L6_3 = L5_3
      L5_3 = L5_3.to_raw_table
      L5_3, L6_3 = L5_3(L6_3)
      L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3)
    end
    L3_2(L4_2, L5_2, L6_2, L7_2)
  else
    L3_2 = L2_1
    L4_2 = L3_2
    L3_2 = L3_2.StartLevel
    L5_2 = A0_2._stage
    L5_2 = L5_2.ID
    L6_2 = L2_2
    L7_2 = L2_1
    L8_2 = L7_2
    L7_2 = L7_2.GetWeaponInitialLevel
    L7_2 = L7_2(L8_2)
    L8_2 = A0_2._helper
    L8_2 = L8_2.selected_avatars
    L9_2 = L8_2
    L8_2 = L8_2.to_raw_table
    L8_2, L9_2 = L8_2(L9_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  end
end
L5_1._enter_battle = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Battle.ActivityEvolveBuild.Mix.BattleEvolveBuildMixPage"
  L1_2(L2_2)
end
L5_1._open_mix_page = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.monster_preview_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2.set_special_zoom_navigation_target
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L5_1._focus_to_monster_preview_panel = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._monster_data_provider
  L2_2 = L1_2
  L1_2 = L1_2.get_default_monster_data
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.monster_preview_panel
  L3_2 = L2_2
  L2_2 = L2_2.show_monster_tips_dialog
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L5_1._open_monster_preview_page = L6_1
return L5_1
