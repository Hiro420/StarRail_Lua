local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherChallenge.AetherChallengePageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherChallenge.Panels.AetherChallengePlayerPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherChallenge.Panels.AetherChallengePlayerPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherChallenge.Panels.AetherChallengeAvatarIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherChallenge.Panels.AetherChallengeAvatarIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritUtilities.AetherTeamUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.AetherDivideModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "AetherChallengePage"
L3_1 = G
L3_1 = L3_1.UIController
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AetherChallengePageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = tonumber
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._challenge_id = L2_2
  L2_2 = L0_1.ChallengeData
  L3_2 = L2_2
  L2_2 = L2_2.GetChallengeDataByID
  L4_2 = A0_2._challenge_id
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._challenge_data_item = L2_2
  L2_2 = A0_2._challenge_data_item
  L2_2 = L2_2.Row
  L2_2 = L2_2.ChallengeType
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AetherDivideChallengeType
  L3_2 = L3_2.Common
  L3_2 = L2_2 == L3_2
  A0_2._is_resp_esc = L3_2
end
L1_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_change_team
  L4_2 = L1_1._on_btn_change_team
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_enemy_info
  L4_2 = A0_2._on_btn_enemy_info
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_start
  L4_2 = L1_1._on_btn_start
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_relation_info
  L4_2 = A0_2._on_btn_relation_info
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_close
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_resp_esc
  L1_2(L2_2, L3_2)
  L1_2 = L0_1.AetherDivideTeamData
  L1_2 = L1_2.CurSlot
  A0_2._selected_line_up_slot = L1_2
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AetherTeamUpdated
  L4_2 = L1_1._on_team_updated
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._add_handlers = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_resp_esc
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.setup_short_cut_hint_panel
    L3_2 = 1
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_left_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_right_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_center_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_buff_desc
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_start_btn
  L1_2(L2_2)
end
L1_1._setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._is_trial_line_up
  if L2_2 or not A1_2 then
    return
  end
  L2_2 = L0_1.AetherDivideTeamData
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_left_player
  L4_2 = L3_2
  L3_2 = L3_2.setup_team_view
  L5_2 = L2_2.CurLineUpData
  L6_2 = false
  L3_2(L4_2, L5_2, L6_2)
end
L1_1._on_view_active_change = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_start
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L4_2 = A0_2
  L3_2 = A0_2._check_can_start
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._refresh_start_btn = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_left_player
  L2_2 = L1_2
  L1_2 = L1_2.setup_current_hero
  L1_2(L2_2)
  L1_2 = A0_2._challenge_data_item
  L2_2 = L1_2
  L1_2 = L1_2.TryGetTrialLineUpData
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 ~= nil
  A0_2._is_trial_line_up = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_trial_mark
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._is_trial_line_up
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._is_trial_line_up
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_change_team
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_left_player
    L3_2 = L2_2
    L2_2 = L2_2.setup_team_view
    L4_2 = L1_2
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = L0_1.AetherDivideTeamData
    L3_2 = A0_2._binder
    L3_2 = L3_2.panel_left_player
    L4_2 = L3_2
    L3_2 = L3_2.setup_team_view
    L5_2 = L2_2.CurLineUpData
    L6_2 = false
    L3_2(L4_2, L5_2, L6_2)
  end
end
L1_1._setup_left_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_enemy_info
  L2_2 = L1_2
  L1_2 = L1_2.setup_opponent_view
  L3_2 = A0_2._challenge_data_item
  L1_2(L2_2, L3_2)
end
L1_1._setup_right_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._is_boss_challenge
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_logo
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if not L1_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_logo
  L5_2 = A0_2._challenge_data_item
  L5_2 = L5_2.Row
  L5_2 = L5_2.VersusImagePath
  L2_2(L3_2, L4_2, L5_2)
end
L1_1._setup_center_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._challenge_data_item
  L1_2 = L1_2.ChallengeType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AetherDivideChallengeType
  L2_2 = L2_2.GymBoss
  L1_2 = L1_2 == L2_2
  return L1_2
end
L1_1._is_boss_challenge = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._challenge_data_item
  L1_2 = L1_2.MazeBuffID
  if 0 < L1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.MazeBuffExcelTable
    L2_2 = L2_2.GetData
    L3_2 = L1_2
    L4_2 = 1
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      goto lbl_16
    end
  end
  L2_2 = nil
  ::lbl_16::
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_buff_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2 ~= nil
  L3_2(L4_2, L5_2)
  if L2_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_buff_desc
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L2_2.BuffDesc
    L6_2 = G
    L6_2 = L6_2.UITextUtils
    L6_2 = L6_2.GetSkillParams
    L7_2 = L2_2.ParamList
    L6_2, L7_2 = L6_2(L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end
L1_1._setup_buff_desc = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1.AetherDivideTeamData
  L1_2 = L1_2.CurSlot
  A0_2._selected_line_up_slot = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_left_player
  L2_2 = L1_2
  L1_2 = L1_2.is_active
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_left_panel
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._refresh_start_btn
    L1_2(L2_2)
  end
end
L1_1._on_team_updated = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L1_1._on_btn_close = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_trial_line_up
  if L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.AetherDivide.AetherTeam.AetherDivideTeamEditPage"
  L1_2(L2_2)
end
L1_1._on_btn_change_team = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_enemy_info
  L2_2 = L1_2
  L1_2 = L1_2.show_enemy_info_dialog
  L1_2(L2_2)
end
L1_1._on_btn_enemy_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2._check_can_start
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_GamePhaseManager
    L2_2 = L1_2
    L1_2 = L1_2.GetCurrentPhase
    L1_2 = L1_2(L2_2)
    if L1_2 ~= nil then
      L2_2 = A0_2._challenge_data_item
      L2_2 = L2_2.StageID
      L3_2 = A0_2._challenge_data_item
      L3_2 = L3_2.ChallengeID
      L4_2 = L1_2.EnterBattle
      L5_2 = L4_2
      L4_2 = L4_2.TriggerBattleByAetherChallenge
      L6_2 = L2_2
      L7_2 = L3_2
      L8_2 = A0_2._selected_line_up_slot
      L4_2(L5_2, L6_2, L7_2, L8_2)
    end
  end
end
L1_1._on_btn_start = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_trial_line_up
  if L1_2 then
    L1_2 = true
    return L1_2
  end
  L1_2 = A0_2._challenge_data_item
  if L1_2 ~= nil then
    L1_2 = L0_1.AetherDivideTeamData
    L2_2 = L1_2.CurLineUpData
    if L2_2 ~= nil then
      L4_2 = L2_2
      L3_2 = L2_2.IsEmpty
      L3_2 = L3_2(L4_2)
      if not L3_2 then
        L3_2 = true
        return L3_2
      end
    end
  end
  L1_2 = false
  return L1_2
end
L1_1._check_can_start = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritAttributeRestrain.AetherSpiritAttributeRestrainDialog"
  L1_2(L2_2)
end
L1_1._on_btn_relation_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L1_1._init_ui_navigation = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.set_navigation_target
  L5_2 = A0_2
  L4_2 = A0_2.get_navigation_target
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
end
L1_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1.get_first_selected_object = L2_1
return L1_1
