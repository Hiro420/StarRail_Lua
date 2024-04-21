local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.PlayerInfo.Record.PlayerChallengeRecordDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Friend.PlayerSupportAvatarPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Friend.PlayerSupportAvatarPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PlayerChallengeRecordDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.PlayerChallengeRecordDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._data = A1_2
  A0_2._player_data = A2_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2.exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_buff1
  L4_2 = A0_2._on_btn_buff1
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_buff2
  L4_2 = A0_2._on_btn_buff2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_avatar1
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_get_avatar_in_lineup_1
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_avatar2
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_get_avatar_in_lineup_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_player_photo
  L2_2 = L1_2
  L1_2 = L1_2.set_interactable
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_player_photo
  L2_2 = L1_2
  L1_2 = L1_2.setup_view_by_id
  L3_2 = A0_2._player_data
  L3_2 = L3_2.HeadIconID
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_player_photo
  L2_2 = L1_2
  L1_2 = L1_2.set_level
  L3_2 = A0_2._player_data
  L3_2 = L3_2.PlayerLevel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_player_name
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = A0_2._player_data
  L3_2 = L3_2.NickName
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_stars
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_buffs
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_lineups
  L1_2(L2_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_icon
  L4_2 = A0_2._data
  L4_2 = L4_2.GroupRow
  L4_2 = L4_2.TabPicPath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_progress_current
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._data
  L3_2 = L3_2.CurrentProgressCount
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_progress_max
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._data
  L3_2 = L3_2.TotalProgressCount
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_star_current
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._data
  L3_2 = L3_2.CurrentStarCount
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_star_max
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._data
  L3_2 = L3_2.TotalStarCount
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_count
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._data
  L3_2 = L3_2.BattleCount
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._data
  L1_2 = L1_2.GroupType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ChallengeGroupType
  L2_2 = L2_2.Memory
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_group_name
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_Challenge_Current_Title"
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.TextmapStatic
    L4_2 = L4_2.GetText
    L5_2 = A0_2._data
    L5_2 = L5_2.GroupName
    L4_2, L5_2 = L4_2(L5_2)
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_challenge_name
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._data
    L3_2 = L3_2.ChallengeName
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_turn
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_GameplayGuide_TurnNum"
    L4_2 = A0_2._data
    L4_2 = L4_2.ChallengeTurn
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_group_name
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_GameplayGuide_ChallengeStory_Title"
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.TextmapStatic
    L4_2 = L4_2.GetText
    L5_2 = A0_2._data
    L5_2 = L5_2.GroupName
    L4_2, L5_2 = L4_2(L5_2)
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_challenge_name
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._data
    L3_2 = L3_2.ChallengeName
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_turn
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_GameplayGuide_ScoreNum"
    L4_2 = A0_2._data
    L4_2 = L4_2.ChallengeScore
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._refresh_info = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._data
  L1_2 = L1_2.ChallengeStarCount
  L2_2 = 1
  L3_2 = A0_2._binder
  L3_2 = L3_2.noded_active_star
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L5_2 <= L1_2
    L7_2 = A0_2._binder
    L7_2 = L7_2.noded_active_star
    L7_2 = L7_2[L5_2]
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetActive
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    L7_2 = A0_2._binder
    L7_2 = L7_2.nodes_unactive_star
    L7_2 = L7_2[L5_2]
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetActive
    L9_2 = not L6_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._refresh_stars = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._data
  L1_2 = L1_2.ChallengeBuffID1
  L2_2 = A0_2._data
  L2_2 = L2_2.ChallengeBuffID2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_buff1
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L1_2 ~= 0
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_buff2
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2 ~= 0
  L3_2(L4_2, L5_2)
  if L1_2 ~= 0 then
    L3_2 = G
    L3_2 = L3_2.BuffUtils
    L3_2 = L3_2.GetMazeBuffData
    L4_2 = L1_2
    L5_2 = 1
    L3_2 = L3_2(L4_2, L5_2)
    L5_2 = A0_2
    L4_2 = A0_2.async_load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.img_buff1
    L7_2 = L3_2.BuffIcon
    L4_2(L5_2, L6_2, L7_2)
  end
  if L2_2 ~= 0 then
    L3_2 = G
    L3_2 = L3_2.BuffUtils
    L3_2 = L3_2.GetMazeBuffData
    L4_2 = L2_2
    L5_2 = 1
    L3_2 = L3_2(L4_2, L5_2)
    L5_2 = A0_2
    L4_2 = A0_2.async_load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.img_buff2
    L7_2 = L3_2.BuffIcon
    L4_2(L5_2, L6_2, L7_2)
  end
end
L0_1._refresh_buffs = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.PlayerInfo.RecommendLineupBuffDialog"
  L3_2 = A0_2._data
  L3_2 = L3_2.ChallengeBuffID1
  L4_2 = 1
  L5_2 = A0_2._binder
  L5_2 = L5_2.btn_buff1
  L5_2 = L5_2.transform
  L6_2 = -58
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_btn_buff1 = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.PlayerInfo.RecommendLineupBuffDialog"
  L3_2 = A0_2._data
  L3_2 = L3_2.ChallengeBuffID2
  L4_2 = 1
  L5_2 = A0_2._binder
  L5_2 = L5_2.btn_buff2
  L5_2 = L5_2.transform
  L6_2 = -58
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_btn_buff2 = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_avatar1
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._data
  L3_2 = L3_2.ChallengeMembers1
  L3_2 = L3_2.Count
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._data
  L1_2 = L1_2.ChallengeMembers2
  L1_2 = L1_2.Count
  L1_2 = 1 < L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_team2
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.list_avatar2
    L3_2 = L2_2
    L2_2 = L2_2.SetListItemCount
    L4_2 = A0_2._data
    L4_2 = L4_2.ChallengeMembers2
    L4_2 = L4_2.Count
    L5_2 = false
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._refresh_lineups = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2
  L3_2 = A0_2._on_get_avatar_in_lineup
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = 1
  return L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1._on_get_avatar_in_lineup_1 = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2
  L3_2 = A0_2._on_get_avatar_in_lineup
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = 2
  return L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1._on_get_avatar_in_lineup_2 = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = A1_2
  L4_2 = A1_2.NewListViewItem
  L6_2 = 0
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2.UserObjectData
  if L5_2 == nil then
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.PlayerSupportAvatarPanel
    L9_2 = G
    L9_2 = L9_2.PlayerSupportAvatarPanelBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L5_2 = L6_2
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = L4_2.ItemTransform
    L6_2(L7_2, L8_2)
    L4_2.UserObjectData = L5_2
  end
  if A3_2 == 1 then
    L6_2 = A0_2._data
    L6_2 = L6_2.ChallengeMembers1
    L6_2 = L6_2[A2_2]
    if L6_2 then
      goto lbl_28
    end
  end
  L6_2 = A0_2._data
  L6_2 = L6_2.ChallengeMembers2
  L6_2 = L6_2[A2_2]
  ::lbl_28::
  L8_2 = L5_2
  L7_2 = L5_2.setup_view_by_id
  L9_2 = L6_2.ID
  L10_2 = L6_2.Level
  L7_2(L8_2, L9_2, L10_2)
  L8_2 = L5_2
  L7_2 = L5_2.set_interactable
  L9_2 = false
  L7_2(L8_2, L9_2)
  return L4_2
end
L0_1._on_get_avatar_in_lineup = L1_1
return L0_1
