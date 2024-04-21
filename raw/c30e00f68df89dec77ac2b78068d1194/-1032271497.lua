local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.BoxingClub.Components.BoxingClubResonancePlayerPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Team.LocalTeamEditPage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BoxingClub.Components.BoxingClubResonanceAvatarPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BoxingClubResonancePlayerPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 4
L2_1 = 8001
L3_1 = 8002
L4_1 = {}
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.Client
L5_1 = L5_1.BoxingClubResonanceUIStageEnum
L5_1 = L5_1.SelectResonanceBuff
L5_1 = #L5_1
L4_1.SelectResonanceBuff = L5_1
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.Client
L5_1 = L5_1.BoxingClubResonanceUIStageEnum
L5_1 = L5_1.EditTeamMode
L5_1 = #L5_1
L4_1.EditTeamMode = L5_1
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.Client
L5_1 = L5_1.BoxingClubResonanceUIStageEnum
L5_1 = L5_1.SelectOptionalBuff
L5_1 = #L5_1
L4_1.SelectOptionalBuff = L5_1
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.Client
L5_1 = L5_1.BoxingClubResonanceUIStageEnum
L5_1 = L5_1.WaitingBattle
L5_1 = #L5_1
L4_1.WaitingBattle = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._selected_avatar_ids = L1_2
  L1_2 = {}
  A0_2._avatar_panels = L1_2
end
L0_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn
  L4_2 = A0_2._on_edit_team_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.buff_btn
  L4_2 = A0_2._show_current_buff
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.FDMFHDMKKPA
  L4_2 = A0_2._on_cmd_set_boxing_club_resonance_lineup_sc_rsp
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_player_name
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_team_member_panels
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_team_members
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_player_figure
  L1_2(L2_2)
end
L0_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._avatar_panels
  L1_2 = L1_2 ~= nil
  return L1_2
end
L0_1.is_any_avatar_selected = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2._cur_stage
  if L2_2 ~= nil then
    L2_2 = A0_2._cur_stage
    L3_2 = L4_1.EditTeamMode
    if not (L2_2 < L3_2) then
      L2_2 = A0_2._is_mute
      if not L2_2 then
        goto lbl_12
      end
    end
  end
  do return end
  ::lbl_12::
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_in_control_option_type
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_any_avatar_selected
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = {}
      L3_2 = ipairs
      L4_2 = A0_2._avatar_panels
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      for L6_2, L7_2 in L3_2, L4_2, L5_2 do
        L8_2 = table
        L8_2 = L8_2.insert
        L9_2 = L2_2
        L10_2 = L7_2._avatar_data
        L8_2(L9_2, L10_2)
      end
      L3_2 = G
      L3_2 = L3_2.new
      L4_2 = "Ui.Avatar.AvatarMainPage"
      L3_2 = L3_2(L4_2)
      L5_2 = L3_2
      L4_2 = L3_2.init
      L6_2 = A0_2._avatar_panels
      L6_2 = L6_2[1]
      L6_2 = L6_2._avatar_id
      L7_2 = nil
      L8_2 = nil
      L9_2 = A0_2._avatar_panels
      L9_2 = L9_2[1]
      L9_2 = L9_2._avatar_data
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
      L5_2 = L3_2
      L4_2 = L3_2.set_avatar_data_list
      L6_2 = L2_2
      L4_2(L5_2, L6_2)
      L5_2 = L3_2
      L4_2 = L3_2.async_show
      L4_2(L5_2)
    end
  end
end
L0_1._on_in_control_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = pairs
  L2_2 = A0_2._avatar_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.set_btn_root_interactable
    L9_2 = L5_2
    L8_2 = L5_2.is_empty
    L8_2 = L8_2(L9_2)
    L8_2 = not L8_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._disable_empty_avatar_panel = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._cur_stage = A1_2
  A0_2._level_instance = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._on_switch_stage
  L3_2(L4_2)
  L3_2 = L4_1.EditTeamMode
  if A1_2 == L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.recover_stage
    L5_2 = A0_2._level_instance
    L5_2 = L5_2.AvatarIDList
    L3_2(L4_2, L5_2)
  else
    L3_2 = L4_1.EditTeamMode
    if A1_2 > L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._disable_empty_avatar_panel
      L3_2(L4_2)
    end
  end
end
L0_1.switch_display_mode = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._team_edit_cbk = A2_2
  A0_2._team_edit_listener = A1_2
end
L0_1.register_team_edit_callback = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2.selected_avatar_id_list = A1_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._selected_avatar_ids = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_team_members
  L2_2(L3_2)
end
L0_1.recover_stage = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.buff_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.chosen_mark
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  A0_2._is_manually_hide = true
end
L0_1.manually_hide_buff_Node = L5_1
function L5_1(A0_2, A1_2)
  A0_2._is_mute = A1_2
end
L0_1.mute_player_detail = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_player_talk
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_nodes_by_stage
  L1_2(L2_2)
end
L0_1._on_switch_stage = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 1
  L2_2 = L1_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.BoxingClubResonanceAvatarPanel
    L8_2 = G
    L8_2 = L8_2.BoxingClubResonanceAvatarPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = A0_2._binder
    L8_2 = L8_2.team_list
    L8_2 = L8_2[L4_2]
    L6_2(L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.register_on_empty_avatar_click_callback
    L8_2 = A0_2._on_edit_team_btn_clicked
    L9_2 = A0_2
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._avatar_panels
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._init_team_member_panels = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = ipairs
  L2_2 = A0_2._avatar_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.setup_view
    L8_2 = A0_2._selected_avatar_ids
    L8_2 = L8_2[L4_2]
    L6_2(L7_2, L8_2)
  end
end
L0_1._refresh_team_members = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.PlayerModule
  L1_2 = L1_2.PlayerData
  L1_2 = L1_2.NickName
  L2_2 = A0_2._binder
  L2_2 = L2_2.player_name
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_player_name = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.PlayerModule
  L1_2 = L1_2.PlayerData
  L1_2 = L1_2.HeroAvatarInfoData
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentHeroGender
  L1_2 = L1_2(L2_2)
  L2_2 = L3_1
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.GenderType
  L3_2 = L3_2.GENDER_MAN
  if L1_2 == L3_2 then
    L2_2 = L2_1
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AvatarExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L5_2 = A0_2
    L4_2 = A0_2._load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.player_img
    L7_2 = L3_2.AvatarCutinImgPath
    L4_2(L5_2, L6_2, L7_2)
    L5_2 = A0_2
    L4_2 = A0_2._load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.player_eff_img
    L7_2 = L3_2.AvatarCutinImgPath
    L4_2(L5_2, L6_2, L7_2)
  end
end
L0_1._setup_player_figure = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_stage
  L2_2 = L4_1.SelectResonanceBuff
  if L1_2 <= L2_2 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.BoxingClubStageConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._level_instance
  L2_2 = L2_2.BattleRecord
  L2_2 = L2_2.CurrentStage
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.player_talk_txt
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.BubbleTalkPlayer
  L2_2(L3_2, L4_2)
end
L0_1._setup_player_talk = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_stage
  L2_2 = L4_1.EditTeamMode
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.chosen_mark
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.buff_btn
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.buff_btn
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_nodes_by_stage = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = {}
  L3_2 = ipairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.Client
    L8_2 = L8_2.GlobalVars
    L8_2 = L8_2.s_ModuleManager
    L8_2 = L8_2.AvatarModule
    L9_2 = L8_2
    L8_2 = L8_2.GetAvatar
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 == nil then
      L9_2 = CS
      L9_2 = L9_2.RPG
      L9_2 = L9_2.Client
      L9_2 = L9_2.GlobalVars
      L9_2 = L9_2.s_ModuleManager
      L9_2 = L9_2.AvatarModule
      L10_2 = L9_2
      L9_2 = L9_2.GetTrialAvatar
      L11_2 = L7_2
      L9_2 = L9_2(L10_2, L11_2)
      L8_2 = L9_2
    end
    if L8_2 ~= nil then
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L2_2
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
    end
  end
  return L2_2
end
L0_1._get_avatar_data_table_from_ids = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = A0_2._owner
  L1_2 = L1_2._can_react_to_input
  if not L1_2 then
    return
  end
  L1_2 = A0_2._owner
  L1_2 = L1_2._binder
  L1_2 = L1_2.need_close_eff
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2._level_instance
  L2_2 = L2_2.DamageType
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = "Ui.Team.LocalTeamEditPage"
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.init
  L5_2 = LocalTeamSourceType
  L5_2 = L5_2.BoxingClub
  L6_2 = A0_2._on_edit_team_finish
  L7_2 = A0_2
  L8_2 = {}
  L9_2 = false
  L10_2 = nil
  L11_2 = L1_2
  L12_2 = nil
  L13_2 = A0_2._level_instance
  L13_2 = L13_2.BoxingClubChallengeID
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.BoxingClubModule
  L4_2 = L3_2
  L3_2 = L3_2.TryGetTrialAvatarsByChallengeID
  L5_2 = A0_2._level_instance
  L5_2 = L5_2.BoxingClubChallengeID
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = G
  L4_2 = L4_2.new
  L5_2 = "Ui.Team.TeamDataProviders.TrialAvatarTeamDataProvider"
  L4_2 = L4_2(L5_2)
  L6_2 = L4_2
  L5_2 = L4_2.init
  L7_2 = G
  L7_2 = L7_2.Utils
  L7_2 = L7_2.create_lua_table_from_cs_list
  L8_2 = L3_2
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L7_2(L8_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L6_2 = L2_2
  L5_2 = L2_2.set_team_data_provider
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L6_2 = L2_2
  L5_2 = L2_2.show
  L5_2(L6_2)
  L6_2 = L2_2
  L5_2 = L2_2.setup_weakness_title
  L7_2 = "UIText_Rogue_Recommend_Attribute"
  L5_2(L6_2, L7_2)
  A0_2._local_team_edit_page = L2_2
end
L0_1._on_edit_team_btn_clicked = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2.selected_avatar_id_list = A1_2
  L2_2 = A0_2._level_instance
  L3_2 = L2_2
  L2_2 = L2_2.StartBoxingClubResonance
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.show_full_screen_block_for_packet
  L4_2 = CS
  L4_2 = L4_2.PBIBDHBOIGI
  L4_2 = L4_2.FDMFHDMKKPA
  L2_2(L3_2, L4_2)
end
L0_1._on_edit_team_finish = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = A0_2.selected_avatar_id_list
  L1_2 = L1_2(L2_2)
  A0_2._selected_avatar_ids = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_team_members
  L1_2(L2_2)
  L1_2 = A0_2._selected_avatar_ids
  L1_2 = #L1_2
  if L1_2 ~= 0 then
    L1_2 = A0_2._team_edit_cbk
    if L1_2 then
      L1_2 = A0_2._team_edit_listener
      if L1_2 then
        L1_2 = A0_2._team_edit_cbk
        L2_2 = A0_2._team_edit_listener
        L3_2 = A0_2.selected_avatar_id_list
        L1_2(L2_2, L3_2)
      end
    end
  end
  L1_2 = A0_2._local_team_edit_page
  L2_2 = L1_2
  L1_2 = L1_2.exit
  L1_2(L2_2)
  A0_2._local_team_edit_page = nil
end
L0_1._on_cmd_set_boxing_club_resonance_lineup_sc_rsp = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._owner
  L1_2 = L1_2._can_react_to_input
  if not L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.BoxingClub.BoxingClubResonanceBuffCheckDialog"
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L4_2 = A0_2._level_instance
  L4_2 = L4_2.BattleRecord
  L4_2 = L4_2.SelectedBuffList
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._show_current_buff = L5_1
return L0_1
