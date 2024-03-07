local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.BattleTeamInfoPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.BattleMemberListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.BattleMemberListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.MonsterResistVisitor"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.BattleAvatarPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.BattleAvatarPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.BattleMonsterPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.BattleMonsterPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.AetherDivide.BattleAetherDivideAvatarPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.AetherDivide.BattleAetherDivideAvatarPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.AetherDivide.BattleAetherDivideMonsterPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.AetherDivide.BattleAetherDivideMonsterPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleTeamInfoPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "BattleUIText_BattleViewModePage_PageInfo_Title_Avatar"
L2_1 = "\tBattleUIText_BattleViewModePage_PageInfo_Title_Monster"
L3_1 = 0.3
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.BattleTeamInfoPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._light_team_mode = true
  L1_2 = CS
  L1_2 = L1_2.InControl
  L1_2 = L1_2.InputControlType
  L1_2 = L1_2.LeftStickDown
  A0_2._to_next_zoom_left_stick_type = L1_2
  L1_2 = CS
  L1_2 = L1_2.InControl
  L1_2 = L1_2.InputControlType
  L1_2 = L1_2.DPadDown
  A0_2._to_next_zoom_dpad_type = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2.listen_zooms = L1_2
  A0_2._lockui = false
  A0_2._block_uid = nil
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveBlack
  A0_2._transition_style = L1_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.MonsterResistVisitor
  L1_2 = L1_2(L2_2)
  A0_2._monster_resist_visitor = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.BattleDataViewUIEnterDone
  L4_2 = L0_1._on_enter_perform_done
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A1_2.EntityType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.EntityType
  L4_2 = L4_2.BattleEvent
  if L3_2 == L4_2 then
    L4_2 = A1_2
    L3_2 = A1_2.GetComponent
    L5_2 = typeof
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.GameCore
    L6_2 = L6_2.CharacterBattleEventComponent
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = L3_2.Caster
    if L3_2 ~= nil then
      L5_2 = L3_2
      L4_2 = L3_2.IsInvalid
      L4_2 = L4_2(L5_2)
      if not L4_2 then
        L4_2 = L3_2.EntityType
        L5_2 = CS
        L5_2 = L5_2.RPG
        L5_2 = L5_2.GameCore
        L5_2 = L5_2.EntityType
        L5_2 = L5_2.Avatar
        if L4_2 ~= L5_2 then
          L4_2 = L3_2.EntityType
          L5_2 = CS
          L5_2 = L5_2.RPG
          L5_2 = L5_2.GameCore
          L5_2 = L5_2.EntityType
          L5_2 = L5_2.Monster
          if L4_2 ~= L5_2 then
            goto lbl_42
          end
        end
        A1_2 = L3_2
    end
    ::lbl_42::
    else
      L4_2 = nil
      L5_2 = A1_2.Team
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.GameCore
      L6_2 = L6_2.TeamType
      L6_2 = L6_2.TeamLight
      if L5_2 == L6_2 then
        L5_2 = A1_2.OwnerWorldRef
        L5_2 = L5_2.EntityManagerRef
        L6_2 = L5_2
        L5_2 = L5_2.QueryCharactersOnStage
        L7_2 = CS
        L7_2 = L7_2.RPG
        L7_2 = L7_2.GameCore
        L7_2 = L7_2.TeamTypeMask
        L7_2 = L7_2.TeamLight
        L5_2 = L5_2(L6_2, L7_2)
        L4_2 = L5_2
      else
        L5_2 = A1_2.Team
        L6_2 = CS
        L6_2 = L6_2.RPG
        L6_2 = L6_2.GameCore
        L6_2 = L6_2.TeamType
        L6_2 = L6_2.TeamDark
        if L5_2 == L6_2 then
          L5_2 = A1_2.OwnerWorldRef
          L5_2 = L5_2.EntityManagerRef
          L6_2 = L5_2
          L5_2 = L5_2.QueryCharactersOnStage
          L7_2 = CS
          L7_2 = L7_2.RPG
          L7_2 = L7_2.GameCore
          L7_2 = L7_2.TeamTypeMask
          L7_2 = L7_2.TeamDark
          L5_2 = L5_2(L6_2, L7_2)
          L4_2 = L5_2
        end
      end
      if L4_2 ~= nil then
        L5_2 = L4_2.Count
        if 0 < L5_2 then
          A1_2 = L4_2[0]
      end
      else
        L5_2 = A1_2.OwnerWorldRef
        L5_2 = L5_2.EntityManagerRef
        L6_2 = L5_2
        L5_2 = L5_2.QueryCharactersOnStage
        L7_2 = CS
        L7_2 = L7_2.RPG
        L7_2 = L7_2.GameCore
        L7_2 = L7_2.TeamTypeMask
        L7_2 = L7_2.TeamLight
        L5_2 = L5_2(L6_2, L7_2)
        L4_2 = L5_2
        A1_2 = L4_2[0]
      end
    end
  end
  A0_2._entity = A1_2
  A0_2._block_uid = A2_2
end
L0_1.init = L4_1
function L4_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._light_team_mode
  if L2_2 then
    L2_2 = A0_2.avatar_panel
    L3_2 = L2_2
    L2_2 = L2_2._is_can_to_zoom
    L4_2 = A1_2
    return L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2.monster_panel
    L3_2 = L2_2
    L2_2 = L2_2._is_can_to_zoom
    L4_2 = A1_2
    return L2_2(L3_2, L4_2)
  end
end
L0_1._is_can_to_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._light_team_mode
  if L1_2 then
    L1_2 = A0_2.avatar_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_first_selected_object
    return L1_2(L2_2)
  else
    L1_2 = A0_2.monster_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_first_selected_object
    return L1_2(L2_2)
  end
end
L0_1.get_first_selected_object = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._lockui
  if L2_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.LeftBumper
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_bumper_click
    L2_2(L3_2)
  else
    L2_2 = CS
    L2_2 = L2_2.InControl
    L2_2 = L2_2.InputControlType
    L2_2 = L2_2.RightBumper
    L2_2 = #L2_2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._on_right_bumper_click
      L2_2(L3_2)
    else
      L2_2 = CS
      L2_2 = L2_2.InControl
      L2_2 = L2_2.InputControlType
      L2_2 = L2_2.LeftTrigger
      L2_2 = #L2_2
      if A1_2 == L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2._on_left_trigger_click
        L2_2(L3_2)
      else
        L2_2 = CS
        L2_2 = L2_2.InControl
        L2_2 = L2_2.InputControlType
        L2_2 = L2_2.RightTrigger
        L2_2 = #L2_2
        if A1_2 == L2_2 then
          L3_2 = A0_2
          L2_2 = A0_2._on_right_trigger_click
          L2_2(L3_2)
        end
      end
    end
  end
end
L0_1._on_in_control_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_in_special_zoom
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = A0_2._button_mutex
      L2_2 = L1_2
      L1_2 = L1_2.Check
      function L3_2()
        local L0_3, L1_3
        L0_3 = A0_2._member_list_panel
        L1_3 = L0_3
        L0_3 = L0_3.select_prev
        L0_3(L1_3)
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3.force_set_first_navigation_target
        L0_3(L1_3)
      end
      L4_2 = L3_1
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L0_1._on_left_bumper_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_in_special_zoom
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = A0_2._button_mutex
      L2_2 = L1_2
      L1_2 = L1_2.Check
      function L3_2()
        local L0_3, L1_3
        L0_3 = A0_2._member_list_panel
        L1_3 = L0_3
        L0_3 = L0_3.select_next
        L0_3(L1_3)
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3.force_set_first_navigation_target
        L0_3(L1_3)
      end
      L4_2 = L3_1
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L0_1._on_right_bumper_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_in_special_zoom
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = A0_2._button_mutex
      L2_2 = L1_2
      L1_2 = L1_2.Check
      function L3_2()
        local L0_3, L1_3
        L0_3 = A0_2._light_team_mode
        if L0_3 then
          L0_3 = A0_2.avatar_panel
          L1_3 = L0_3
          L0_3 = L0_3.select_prev
          L0_3(L1_3)
        else
          L0_3 = A0_2.monster_panel
          L1_3 = L0_3
          L0_3 = L0_3.select_prev
          L0_3(L1_3)
        end
      end
      L4_2 = L3_1
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L0_1._on_left_trigger_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_in_special_zoom
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = A0_2._button_mutex
      L2_2 = L1_2
      L1_2 = L1_2.Check
      function L3_2()
        local L0_3, L1_3
        L0_3 = A0_2._light_team_mode
        if L0_3 then
          L0_3 = A0_2.avatar_panel
          L1_3 = L0_3
          L0_3 = L0_3.select_next
          L0_3(L1_3)
        else
          L0_3 = A0_2.monster_panel
          L1_3 = L0_3
          L0_3 = L0_3.select_next
          L0_3(L1_3)
        end
      end
      L4_2 = L3_1
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L0_1._on_right_trigger_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_close_click
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panels_by_stage_type
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.BattleMemberListPanel
  L4_2 = G
  L4_2 = L4_2.BattleMemberListPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._member_list_panel = L1_2
  L1_2 = A0_2._member_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_click_callback
  L3_2 = A0_2._on_member_click
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._member_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.sync_loadto
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_member_list
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.BattleUIUtils
  L1_2 = L1_2.GetCurStageType
  L1_2 = L1_2()
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.StageType
  L2_2 = L2_2.AetherDivide
  if L1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.create_panel
    L4_2 = G
    L4_2 = L4_2.BattleAetherDivideAvatarPanel
    L5_2 = G
    L5_2 = L5_2.BattleAetherDivideAvatarPanelBinder
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2.avatar_panel = L2_2
    L3_2 = A0_2
    L2_2 = A0_2.create_panel
    L4_2 = G
    L4_2 = L4_2.BattleAetherDivideMonsterPanel
    L5_2 = G
    L5_2 = L5_2.BattleAetherDivideMonsterPanelBinder
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2.monster_panel = L2_2
  else
    L3_2 = A0_2
    L2_2 = A0_2.create_panel
    L4_2 = G
    L4_2 = L4_2.BattleAvatarPanel
    L5_2 = G
    L5_2 = L5_2.BattleAvatarPanelBinder
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2.avatar_panel = L2_2
    L3_2 = A0_2
    L2_2 = A0_2.create_panel
    L4_2 = G
    L4_2 = L4_2.BattleMonsterPanel
    L5_2 = G
    L5_2 = L5_2.BattleMonsterPanelBinder
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2.monster_panel = L2_2
  end
  L2_2 = A0_2.avatar_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_avatar
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.monster_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_monster
  L2_2(L3_2, L4_2)
end
L0_1._create_panels_by_stage_type = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L1_2 = A0_2._lockui
  if L1_2 ~= false then
    A0_2._lockui = true
  end
  L1_2 = A0_2._member_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._entity
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_short_cut_hint
  L3_2 = A0_2._entity
  L1_2(L2_2, L3_2)
end
L0_1._on_all_res_loaded = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.avatar_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.monster_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.Team
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.TeamType
  L3_2 = L3_2.TeamLight
  if L2_2 == L3_2 then
    A0_2._light_team_mode = true
    L2_2 = A0_2.avatar_panel
    L3_2 = L2_2
    L2_2 = L2_2.safe_set_active
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2.avatar_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_subtitle
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L1_1
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.set_can_to_special_zoom
    L4_2 = false
    L2_2(L3_2, L4_2)
  else
    L2_2 = A1_2.Team
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.TeamType
    L3_2 = L3_2.TeamDark
    if L2_2 == L3_2 then
      A0_2._light_team_mode = false
      L2_2 = A0_2.monster_panel
      L3_2 = L2_2
      L2_2 = L2_2.safe_set_active
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = A0_2.monster_panel
      L3_2 = L2_2
      L2_2 = L2_2.setup_view
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.txt_subtitle
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = L2_1
      L2_2(L3_2, L4_2)
      L3_2 = A0_2
      L2_2 = A0_2.set_can_to_special_zoom
      L4_2 = true
      L2_2(L3_2, L4_2)
      L3_2 = A0_2
      L2_2 = A0_2.set_in_special_zoom
      L4_2 = false
      L2_2(L3_2, L4_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_short_cut_hint
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._select_team
  if L2_2 then
    L2_2 = A0_2._select_team
    L3_2 = A1_2.Team
    if L2_2 ~= L3_2 then
      L2_2 = A0_2.avatar_panel
      L3_2 = L2_2
      L2_2 = L2_2.reset_tab
      L2_2(L3_2)
      L2_2 = A0_2.monster_panel
      L3_2 = L2_2
      L2_2 = L2_2.reset_tab
      L2_2(L3_2)
    end
  end
  L2_2 = A1_2.Team
  A0_2._select_team = L2_2
end
L0_1._on_member_click = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = false
  L3_2 = A1_2.Team
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.TeamType
  L4_2 = L4_2.TeamDark
  if L3_2 == L4_2 then
    L4_2 = A0_2
    L3_2 = A0_2._accept_visitor
    L5_2 = A0_2._monster_resist_visitor
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._monster_resist_visitor
    L4_2 = L3_2
    L3_2 = L3_2.have_resist_data
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
  end
  if L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2.setup_short_cut_hint_panel
    L5_2 = 123
    L3_2(L4_2, L5_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2.setup_short_cut_hint_panel
    L5_2 = 1
    L3_2(L4_2, L5_2)
  end
end
L0_1._setup_short_cut_hint = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._lockui
  if L1_2 then
    return
  end
  L1_2 = A0_2._entity
  L1_2 = L1_2.OwnerWorldRef
  L1_2 = L1_2.EntityManagerRef
  L3_2 = L1_2
  L2_2 = L1_2.BattleDataViewExit
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
end
L0_1._on_btn_close_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._block_uid
  if L1_2 ~= nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_UIManager
    L2_2 = L1_2
    L1_2 = L1_2.TryUnblockFixedTime
    L3_2 = A0_2._block_uid
    L1_2(L2_2, L3_2)
  end
  A0_2._block_uid = nil
end
L0_1._unblock_input = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._unblock_input
  L1_2(L2_2)
  A0_2._entity = nil
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.BattleDataViewUIEnterDone
  L4_2 = L0_1._on_enter_perform_done
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_dispose = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._lockui = false
  L3_2 = A0_2
  L2_2 = A0_2._unblock_input
  L2_2(L3_2)
end
L0_1._on_enter_perform_done = L4_1
return L0_1
