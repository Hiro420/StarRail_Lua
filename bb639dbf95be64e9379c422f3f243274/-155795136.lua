local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ChallengeModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.HandbookModule
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "HandbookChallengeMemoryStatisticRecordPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2
end
L2_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ChallengeGroupStatisticUpdate
  L4_2 = A0_2._on_challenge_group_statistic_update
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._stt_data = nil
end
L2_1._on_dispose = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._challenge_group_data = A1_2
  L2_2 = A0_2._challenge_group_data
  L3_2 = L2_2
  L2_2 = L2_2.GetMaxFinishLevel
  L2_2 = L2_2(L3_2)
  L3_2 = 0 < L2_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_empty
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_record
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  if not L3_2 then
    L5_2 = A0_2
    L4_2 = A0_2._setup_img_empty_theme
    L4_2(L5_2)
    return
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_cur_level
  L5_2 = L4_2
  L4_2 = L4_2.SetCustomizedText
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_all_level
  L5_2 = L4_2
  L4_2 = L4_2.SetCustomizedText
  L6_2 = A0_2._challenge_group_data
  L6_2 = L6_2.ChallengeDatas
  L6_2 = L6_2.Count
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_cur_star
  L5_2 = L4_2
  L4_2 = L4_2.SetCustomizedText
  L6_2 = A0_2._challenge_group_data
  L6_2 = L6_2.CurrentStarCount
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_all_star
  L5_2 = L4_2
  L4_2 = L4_2.SetCustomizedText
  L6_2 = A0_2._challenge_group_data
  L6_2 = L6_2.TotalStarCount
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._challenge_group_data
  L4_2 = L4_2.ChallengeDatas
  L5_2 = L2_2 - 1
  L4_2 = L4_2[L5_2]
  L6_2 = A0_2
  L5_2 = A0_2._setup_max_level_star_count
  L7_2 = L4_2.Stars
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_max_level_title
  L7_2 = L4_2.Name
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_wait_packet
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.GlobalVars
  L5_2 = L5_2.s_NetworkManager
  L6_2 = L5_2
  L5_2 = L5_2.FFINMEOLHDD
  L7_2 = A1_2.ID
  L5_2(L6_2, L7_2)
end
L2_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetGuideChallengeDataConfigByChallengeID
  L3_2 = A0_2._challenge_group_data
  L3_2 = L3_2.ID
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_empty_theme
    L5_2 = L1_2.IconPath
    L2_2(L3_2, L4_2, L5_2)
  end
end
L2_1._setup_img_empty_theme = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_wait_packet
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  A0_2._stt_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_group_info
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_max_level_turn_cost
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_max_level_lineup
  L2_2(L3_2)
end
L2_1._on_challenge_group_statistic_update = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_battle_count
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = A0_2._stt_data
  L3_2 = L3_2.ChallengeTimes
  L1_2(L2_2, L3_2)
end
L2_1._setup_group_info = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_highest_challenge_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L2_1._setup_max_level_title = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_star_1_active
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = 1 <= A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_star_1_inactive
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2 < 1
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_star_2_active
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = 2 <= A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_star_2_inactive
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2 < 2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_star_3_active
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = 3 <= A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_star_3_inactive
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2 < 3
  L2_2(L3_2, L4_2)
end
L2_1._setup_max_level_star_count = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._challenge_group_data
  L1_2 = L1_2.Type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ChallengeGroupType
  L2_2 = L2_2.Memory
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_highest_challenge_turn_cost
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_GameplayGuide_TurnNum"
    L4_2 = A0_2._stt_data
    L4_2 = L4_2.Rounds
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = A0_2._challenge_group_data
    L1_2 = L1_2.Type
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.ChallengeGroupType
    L2_2 = L2_2.Story
    if L1_2 == L2_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.text_highest_challenge_turn_cost
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = "UIText_GameplayGuide_ScoreNum"
      L4_2 = A0_2._stt_data
      L4_2 = L4_2.Score
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L2_1._setup_max_level_turn_cost = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._stt_data
  L1_2 = L1_2.Lineups
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._stt_data
  L1_2 = L1_2.Lineups
  L1_2 = L1_2.Length
  if 0 < L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_team_avatar_list_1
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L4_2 = A0_2
    L3_2 = A0_2._create_lineup_avatar_data_table
    L5_2 = A0_2._stt_data
    L5_2 = L5_2.Lineups
    L5_2 = L5_2[0]
    L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
  L1_2 = A0_2._stt_data
  L1_2 = L1_2.Lineups
  L1_2 = L1_2.Length
  if 1 < L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_team_avatar_list_2
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L4_2 = A0_2
    L3_2 = A0_2._create_lineup_avatar_data_table
    L5_2 = A0_2._stt_data
    L5_2 = L5_2.Lineups
    L5_2 = L5_2[1]
    L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L2_1._setup_max_level_lineup = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = {}
  L3_2 = 0
  L4_2 = A1_2.AvatarIDs
  L4_2 = L4_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = {}
    L8_2 = A1_2.AvatarIDs
    L8_2 = L8_2[L6_2]
    L7_2.avatar_id = L8_2
    L8_2 = A1_2.AvatarLevels
    L8_2 = L8_2[L6_2]
    L7_2.avatar_level = L8_2
    L8_2 = L7_2.avatar_id
    L8_2 = L8_2 == 0
    L7_2.is_empty = L8_2
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L2_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  return L2_2
end
L2_1._create_lineup_avatar_data_table = L3_1
return L2_1
