local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritUtilities.AetherTeamUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherChallengeInfiniteTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.MonsterRank
L1_1 = L1_1.Elite
L1_1 = #L1_1
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.AetherDivideModule
L3_1 = "AetherDivideBossChallengeItem_Refresh"
L4_1 = "AetherChallengeRefresh"
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.AetherDivideModule
  L1_2 = L1_2.ChallengeData
  A0_2._challenge_data = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.AetherDivideModule
  L1_2 = L1_2.TrainerData
  L2_2 = L1_2
  L1_2 = L1_2.GetRewardData
  L1_2 = L1_2(L2_2)
  A0_2._reward_data = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_challenge
  L4_2 = A0_2._on_btn_challenge
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.DFPJGLAKIPK
  L4_2 = A0_2._on_mission_taken
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.MLBHANCPIGJ
  L4_2 = A0_2._on_challenge_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = A0_2._on_anim_notify
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.monster_list
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_monster_item_changed
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "AetherDivide_EndlessModeRefreshCD"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.IntValue
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_refresh_btn
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2
  L5_2 = A0_2._on_btn_refresh
  L6_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L5_1
function L5_1(A0_2, A1_2)
  A0_2._row = A1_2
end
L0_1.setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L4_2 = A0_2
  L3_2 = A0_2.is_unlocked
  L3_2 = L3_2(L4_2)
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._row
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._async_load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.icon_normal
    L4_2 = A0_2._row
    L4_2 = L4_2.IconPath
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_AetherDivide_Challenge_EndlessMode"
    L1_2(L2_2, L3_2)
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.bind_reddot
    L3_2 = "AetherDivideChallengeRankNew"
    L4_2 = A0_2._row
    L4_2 = L4_2.ChallengeRank
    L5_2 = A0_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_reddot
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1._on_added = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._challenge_data
  L2_2 = L1_2
  L1_2 = L1_2.IsRankUnlock
  L3_2 = A0_2._row
  return L1_2(L2_2, L3_2)
end
L0_1.is_unlocked = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = L2_1.IsAllMissionClear
  if L1_2 then
    L1_2 = "UIText_AetherDivide_Challenge_NeedFinishFormerChallenge"
    return L1_2
  end
  L1_2 = A0_2._row
  L1_2 = L1_2.UnlockText
  return L1_2
end
L0_1.get_unlock_hint = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = true
  return L1_2
end
L0_1.has_unfinished_or_reward_challenge = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._row
  return L1_2
end
L0_1.get_rank_row = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._row
  L1_2 = L2_1.ChallengeData
  L2_2 = L1_2
  L1_2 = L1_2.IsRankNew
  L3_2 = A0_2._row
  L1_2 = L1_2 ~= nil and L1_2
  return L1_2
end
L0_1.is_new = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_unlocked
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._on_select = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L1_2 = A0_2._state
    L2_2 = A0_2.SelectState
    L2_2 = L2_2.Selected
    if L1_2 == L2_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L1_2 = A0_2._challenge_data
  L1_2 = L1_2.InfiniteChallengeDataItem
  A0_2._challenge_data_item = L1_2
  L1_2 = A0_2._challenge_data_item
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._on_btn_refresh
    L1_2(L2_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  else
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.MissionModule
    L2_2 = L1_2
    L1_2 = L1_2.TryGetMainMissionData
    L3_2 = A0_2._challenge_data_item
    L3_2 = L3_2.MissionID
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 == nil then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.GlobalVars
      L2_2 = L2_2.s_ModuleManager
      L2_2 = L2_2.MissionModule
      L3_2 = L2_2
      L2_2 = L2_2.MainMissionDataPromised
      L4_2 = A0_2._challenge_data_item
      L4_2 = L4_2.MissionID
      L2_2 = L2_2(L3_2, L4_2)
      L3_2 = L2_2
      L2_2 = L2_2.ThenLuaAction
      function L4_2()
        local L0_3, L1_3
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3._refresh
        L0_3(L1_3)
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3.force_set_first_navigation_target
        L0_3(L1_3)
      end
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_root
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
      return
    end
    L2_2 = L1_2.IsFinish
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._on_btn_refresh
      L2_2(L3_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_root
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
      return
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_challenge
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_force
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_monster
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_buff_desc
  L1_2(L2_2)
end
L0_1._refresh = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_avatar
  L4_2 = A0_2._challenge_data_item
  L4_2 = L4_2.Row
  L4_2 = L4_2.OpponentImageIconPath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._challenge_data_item
  L3_2 = L3_2.Row
  L3_2 = L3_2.OpponentName
  L1_2(L2_2, L3_2)
end
L0_1._refresh_challenge = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = A0_2._challenge_data_item
  L3_2 = L2_2
  L2_2 = L2_2.GetDisplayMonsterDatas
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._monster_data_list = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.monster_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._monster_data_list
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._refresh_monster = L5_1
function L5_1(A0_2)
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
L0_1._refresh_buff_desc = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_force
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._challenge_data_item
  L3_2 = L3_2.HardLevel
  L1_2(L2_2, L3_2)
end
L0_1._refresh_force = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._challenge_data
  L1_2 = L1_2.InfiniteChallengeDataItem
  A0_2._challenge_data_item = L1_2
  L1_2 = A0_2._challenge_data_item
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_root
  L1_2 = L1_2.gameObject
  L1_2 = L1_2.activeSelf
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.PlayFromBegin
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_root
    L3_2 = L3_1
    L1_2(L2_2, L3_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._refresh
    L1_2(L2_2)
  end
end
L0_1._on_challenge_changed = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._state
  L3_2 = A0_2.SelectState
  L3_2 = L3_2.Selected
  if L2_2 ~= L3_2 then
    return
  end
  L2_2 = L4_1
  if A1_2 ~= L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._on_anim_notify = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.CommonBossIconPanel
    L8_2 = G
    L8_2 = L8_2.CommonBossIconPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
    L6_2 = L4_2
    L5_2 = L4_2.enable_aether_mode
    L7_2 = true
    L5_2(L6_2, L7_2)
    L6_2 = L4_2
    L5_2 = L4_2.bind_click
    L7_2 = A0_2
    L8_2 = A0_2._on_click_monster
    L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = A0_2._monster_data_list
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L6_2 = L5_2.MonsterID
  L7_2 = L5_2.Level
  L8_2 = L5_2.TemplateRow
  L8_2 = L8_2.Rank
  L8_2 = #L8_2
  L9_2 = L1_1
  L8_2 = L8_2 >= L9_2
  L10_2 = L4_2
  L9_2 = L4_2.setup_view
  L11_2 = L6_2
  L12_2 = L7_2
  L13_2 = L8_2
  L9_2(L10_2, L11_2, L12_2, L13_2)
  L10_2 = L4_2
  L9_2 = L4_2.rebuild_info_layout
  L9_2(L10_2)
  return L3_2
end
L0_1._on_monster_item_changed = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = 1
  L3_2 = ipairs
  L4_2 = A0_2._monster_data_list
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.MonsterID
    if L8_2 == A1_2 then
      L2_2 = L6_2
      break
    end
  end
  L3_2 = G
  L3_2 = L3_2.AetherTeamUtils
  L3_2 = L3_2.show_monster_tips_dialog
  L4_2 = A0_2._monster_data_list
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_click_monster = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._challenge_data_item
  if L1_2 == nil then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.MissionModule
  L2_2 = L1_2
  L1_2 = L1_2.TryGetMainMissionData
  L3_2 = A0_2._challenge_data_item
  L3_2 = L3_2.MissionID
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.IsStart
    if L2_2 then
      goto lbl_35
    end
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.NetworkManager
  L2_2 = L2_2.FFOMLPONIFB
  L3_2 = L2_2
  L2_2 = L2_2.NIMMDFNLOOO
  L4_2 = A0_2._challenge_data_item
  L4_2 = L4_2.MissionID
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.show_full_screen_block_for_packet
  L4_2 = CS
  L4_2 = L4_2.PBIBDHBOIGI
  L4_2 = L4_2.DFPJGLAKIPK
  L2_2(L3_2, L4_2)
  goto lbl_50
  ::lbl_35::
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.MissionModule
  L3_2 = L2_2
  L2_2 = L2_2.SetTrackingMission
  L4_2 = A0_2._challenge_data_item
  L4_2 = L4_2.MissionID
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.MissionUtils
  L2_2 = L2_2.open_map_with_locate_target_main_mission
  L3_2 = L1_2
  L2_2(L3_2)
  ::lbl_50::
end
L0_1._on_btn_challenge = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_challenge
  L1_2(L2_2)
end
L0_1._on_mission_taken = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._challenge_data
  L2_2 = L1_2
  L1_2 = L1_2.RefreshInfiniteChallenge
  L1_2(L2_2)
end
L0_1._on_btn_refresh = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.monster_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L3_2 = L2_2
    L2_2 = L2_2.get_first_selected_object
    return L2_2(L3_2)
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L5_1
return L0_1
