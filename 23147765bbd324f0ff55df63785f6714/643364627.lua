local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityStrongChallenge.StrongChallengeTeamSetupPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityStrongChallenge.StrongChallengeBuffItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityStrongChallenge.StrongChallengeBuffItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityStrongChallenge.StrongChallengeBuffIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityStrongChallenge.StrongChallengeBuffIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityStrongChallenge.StrongChallengeBossDetailItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityStrongChallenge.StrongChallengeBossDetailItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityStrongChallenge.StrongChallengeTeamInfoProvider"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.Entrance.LineupSlotPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.Entrance.LineupSlotPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarMainPage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityStrongChallenge.StrongChallengeConst"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Ui.Activity.ActivityStrongChallenge.StrongChallengeUtil"
L1_1 = L1_1(L2_1)
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.ActivityStrongChallengeModule
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "StrongChallengeTeamSetupPage"
L5_1 = G
L5_1 = L5_1.UIController
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.StrongChallengeTeamSetupPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
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
  A0_2._left_panel_is_member_list = true
end
L3_1.ctor = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._stage_data = A1_2
  L3_2 = A1_2
  L2_2 = A1_2.GetTrialAvatars
  L2_2 = L2_2(L3_2)
  A0_2._trial_avatars = L2_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = A1_2.LastBattleAvatars
  L2_2 = L2_2(L3_2)
  A0_2._selected_avatars = L2_2
  L2_2 = A0_2._selected_avatars
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    L2_3 = 1
    L3_3 = L0_1.MAX_AVATAR_NUM
    L4_3 = 1
    for L5_3 = L2_3, L3_3, L4_3 do
      L6_3 = A0_3[L5_3]
      if L6_3 == A1_3 then
        L6_3 = true
        return L6_3
      end
    end
    L2_3 = false
    return L2_3
  end
  L2_2.contains = L3_2
  L2_2 = A0_2._selected_avatars
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = {}
    L2_3 = 1
    L3_3 = L0_1.MAX_AVATAR_NUM
    L4_3 = 1
    for L5_3 = L2_3, L3_3, L4_3 do
      L6_3 = A0_3[L5_3]
      if L6_3 then
        L6_3 = table
        L6_3 = L6_3.insert
        L7_3 = L1_3
        L8_3 = A0_3[L5_3]
        L6_3(L7_3, L8_3)
      end
    end
    return L1_3
  end
  L2_2.to_raw_table = L3_2
  L2_2 = A0_2._selected_avatars
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L1_3 = CS
    L1_3 = L1_3.System
    L1_3 = L1_3.Collections
    L1_3 = L1_3.Generic
    L1_3 = L1_3.List
    L2_3 = CS
    L2_3 = L2_3.Proto
    L2_3 = L2_3.StrongChallengeAvatar
    L1_3 = L1_3(L2_3)
    L1_3 = L1_3()
    L2_3 = 1
    L3_3 = L0_1.MAX_AVATAR_NUM
    L4_3 = 1
    for L5_3 = L2_3, L3_3, L4_3 do
      L6_3 = A0_3[L5_3]
      if L6_3 then
        L6_3 = CS
        L6_3 = L6_3.Proto
        L6_3 = L6_3.StrongChallengeAvatar
        L6_3 = L6_3()
        L7_3 = A0_3[L5_3]
        L7_3 = L7_3.AvatarType
        L6_3.AvatarType = L7_3
        L7_3 = A0_3[L5_3]
        L7_3 = L7_3.AvatarType
        L8_3 = CS
        L8_3 = L8_3.FKFMOOPNDPC
        L8_3 = L8_3.CLLJCANHNGL
        if L7_3 == L8_3 then
          L7_3 = A0_3[L5_3]
          L7_3 = L7_3.SpecialAvatarID
          L6_3.AvatarId = L7_3
        else
          L7_3 = A0_3[L5_3]
          L7_3 = L7_3.ID
          L6_3.AvatarId = L7_3
        end
        L8_3 = L1_3
        L7_3 = L1_3.Add
        L9_3 = L6_3
        L7_3(L8_3, L9_3)
      end
    end
    return L1_3
  end
  L2_2.to_proto_list = L3_2
  L2_2 = A0_2._selected_avatars
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = 1
    L2_3 = L0_1.MAX_AVATAR_NUM
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = A0_3[L4_3]
      if L5_3 then
        L5_3 = false
        return L5_3
      end
    end
    L1_3 = true
    return L1_3
  end
  L2_2.is_empty = L3_2
  L2_2 = A0_2._selected_avatars
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = 1
    L2_3 = L0_1.MAX_AVATAR_NUM
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = A0_3[L4_3]
      if L5_3 then
        L5_3 = A0_3[L4_3]
        return L5_3
      end
    end
    L1_3 = nil
    return L1_3
  end
  L2_2.first_avatar = L3_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = A1_2.LastBattleBuffs
  L2_2 = L2_2(L3_2)
  A0_2._selected_buffs = L2_2
  L2_2 = A0_2._selected_buffs
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L2_3 = 1
    L3_3 = L0_1.MAX_BUFF_NUM
    L4_3 = 1
    for L5_3 = L2_3, L3_3, L4_3 do
      L6_3 = A0_3[L5_3]
      if L6_3 then
        L6_3 = A0_3[L5_3]
        L6_3 = L6_3.BuffID
        L7_3 = A1_3.BuffID
        if L6_3 == L7_3 then
          L6_3 = true
          return L6_3
        end
      end
    end
    L2_3 = false
    return L2_3
  end
  L2_2.contains = L3_2
  L2_2 = A0_2._selected_buffs
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L2_3 = 1
    L3_3 = L0_1.MAX_BUFF_NUM
    L4_3 = 1
    for L5_3 = L2_3, L3_3, L4_3 do
      L6_3 = A0_3[L5_3]
      if L6_3 then
        L6_3 = A0_3[L5_3]
        L6_3 = L6_3.BuffID
        L7_3 = A1_3.BuffID
        if L6_3 == L7_3 then
          return L5_3
        end
      end
    end
    L2_3 = 0
    return L2_3
  end
  L2_2.index = L3_2
  L2_2 = A0_2._selected_buffs
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = {}
    L2_3 = 1
    L3_3 = L0_1.MAX_BUFF_NUM
    L4_3 = 1
    for L5_3 = L2_3, L3_3, L4_3 do
      L6_3 = A0_3[L5_3]
      if L6_3 then
        L6_3 = table
        L6_3 = L6_3.insert
        L7_3 = L1_3
        L8_3 = A0_3[L5_3]
        L8_3 = L8_3.BuffID
        L6_3(L7_3, L8_3)
      end
    end
    return L1_3
  end
  L2_2.to_id_list = L3_2
  L2_2 = A0_2._selected_buffs
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = 0
    L2_3 = 1
    L3_3 = L0_1.MAX_BUFF_NUM
    L4_3 = 1
    for L5_3 = L2_3, L3_3, L4_3 do
      L6_3 = A0_3[L5_3]
      if L6_3 then
        L6_3 = A0_3[L5_3]
        L6_3 = L6_3.Cost
        L1_3 = L1_3 + L6_3
      end
    end
    return L1_3
  end
  L2_2.total_cost = L3_2
end
L3_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 31
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.member_list_panel_inner
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2._on_get_avatar_item
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.member_list_panel_inner
  L2_2 = L1_2
  L1_2 = L1_2.register_top_avatar_callback
  L3_2 = A0_2._top_avatars
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.available_buff_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = A0_2._stage_data
  L3_2 = L3_2.AvailableBuffs
  L3_2 = #L3_2
  L4_2 = A0_2._get_available_buff_list_item
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.team_list_btn
  L4_2 = A0_2._show_member_list_panel
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.buff_list_btn
  L4_2 = A0_2._show_buff_list_panel
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_fight
  L4_2 = A0_2._enter_battle
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_avatar_detail
  L4_2 = A0_2._open_avatar_main_page
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.team_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = L0_1.MAX_AVATAR_NUM
  L4_2 = A0_2._on_avatar_item_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.selected_buff_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = L0_1.MAX_BUFF_NUM
  L4_2 = A0_2._get_selected_buff_list_item
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L3_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.bg_normal
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._stage_data
  L3_2 = L3_2.BattleType
  L4_2 = L0_1.NORMAL
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.bg_hard
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._stage_data
  L3_2 = L3_2.BattleType
  L4_2 = L0_1.HARD
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._stage_data
  L1_2 = L1_2.BattleType
  L2_2 = L0_1.HARD
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.sub_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_Strong_Challenge_Title_Hard"
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.sub_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_Strong_Challenge_Title_Normal"
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.stage_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._stage_data
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_score_panel
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.recommend_level_text
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._stage_data
  L3_2 = L3_2.RecommendLevel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.recommend_nature_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_array
  L4_2 = A0_2._stage_data
  L4_2 = L4_2.RecommendNature
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_boss_detail_list
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AdventureStatic
  L1_2 = L1_2.GetStageIDByEventID
  L2_2 = A0_2._stage_data
  L2_2 = L2_2.FightEventID
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.monster_info_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._stage_data
  L4_2 = L4_2.MonsterList
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.monster_info_panel
  L3_2 = L2_2
  L2_2 = L2_2.open_special_navigation
  L4_2 = CS
  L4_2 = L4_2.InControl
  L4_2 = L4_2.InputControlType
  L4_2 = L4_2.Menu
  L4_2 = #L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.monster_info_keymap
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.is_gamepad_input
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2()
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L2_2 = G
  L2_2 = L2_2.AvatarUtils
  L2_2 = L2_2.get_all_avatars
  L2_2 = L2_2()
  L3_2 = 0
  L4_2 = A0_2._trial_avatars
  L4_2 = L4_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L2_2
    L9_2 = A0_2._trial_avatars
    L9_2 = L9_2[L6_2]
    L7_2(L8_2, L9_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.member_list_panel_inner
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._show_member_list_panel
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_cost_text
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._init_ui_navigation
  L3_2(L4_2)
end
L3_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.history_high_score
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._stage_data
  L3_2 = L3_2.HistoryHighScore
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._stage_data
  L1_2 = L1_2.HistoryHighScore
  L1_2 = 0 < L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.history_high_score
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.history_high_score_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.unchallenged_tip_text
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.score_panel_unchallenged_bg
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.score_panel_challenged_bg
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.rank_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.rank_text
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_1.rank_text
  L5_2 = A0_2._stage_data
  L5_2 = L5_2.HistoryHighScore
  L6_2 = A0_2._stage_data
  L6_2 = L6_2.ScoreInterval
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2
  L2_2 = A0_2.async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.rank_bg
  L5_2 = L1_1.rank_bg
  L6_2 = A0_2._stage_data
  L6_2 = L6_2.HistoryHighScore
  L7_2 = A0_2._stage_data
  L7_2 = L7_2.ScoreInterval
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L3_1._setup_score_panel = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.boss_detail_loadpoint
  L2_2 = 0
  L3_2 = A0_2._stage_data
  L3_2 = L3_2.BossDetails
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._stage_data
    L6_2 = L6_2.BossDetails
    L6_2 = L6_2[L5_2]
    L8_2 = A0_2
    L7_2 = A0_2.instantiate_object
    L9_2 = L1_2.Prefab
    L10_2 = L1_2.transform
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L9_2 = A0_2
    L8_2 = A0_2.create_panel
    L10_2 = G
    L10_2 = L10_2.StrongChallengeBossDetailItem
    L11_2 = G
    L11_2 = L11_2.StrongChallengeBossDetailItemBinder
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L10_2 = L8_2
    L9_2 = L8_2.bind
    L11_2 = L7_2
    L9_2(L10_2, L11_2)
    L10_2 = L8_2
    L9_2 = L8_2.set_boss_detail
    L11_2 = L6_2
    L9_2(L10_2, L11_2)
  end
end
L3_1._setup_boss_detail_list = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._selected_buffs
  L2_2 = L1_2
  L1_2 = L1_2.total_cost
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.current_cost_text_1
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.current_cost_text_2
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.cost_limit_text_1
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._stage_data
  L4_2 = L4_2.CostLimit
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.cost_limit_text_2
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._stage_data
  L4_2 = L4_2.CostLimit
  L2_2(L3_2, L4_2)
end
L3_1._setup_cost_text = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.member_list_panel_inner
  L2_2 = L1_2
  L1_2 = L1_2.refresh_displayed_avatars
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.team_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.monster_info_keymap
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  L1_2(L2_2, L3_2)
end
L3_1._refresh_view = L4_1
function L4_1(A0_2)
  local L1_2
end
L3_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
end
L3_1._on_return_to_top = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.clear_cur_selected_object
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.member_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.buff_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.team_list_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.buff_list_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.team_list_btn_check_frame
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.buff_list_btn_check_frame
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  A0_2._left_panel_is_member_list = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.member_list_panel_inner
  L2_2 = L1_2
  L1_2 = L1_2.get_displayed_avatars
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2[1]
  L2_2 = A0_2._binder
  L2_2 = L2_2.member_list_panel_inner
  L3_2 = L2_2
  L2_2 = L2_2.move_to_avatar
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.CoroutineUtils
  L2_2 = L2_2.InvokeNextFrame
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.set_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.member_list_panel_inner
    L3_3 = L2_3
    L2_3 = L2_3.get_first_selected_object
    L2_3, L3_3 = L2_3(L3_3)
    L0_3(L1_3, L2_3, L3_3)
  end
  L2_2(L3_2)
end
L3_1._show_member_list_panel = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.clear_cur_selected_object
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.member_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.buff_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.available_buff_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.team_list_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.buff_list_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.team_list_btn_check_frame
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.buff_list_btn_check_frame
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  A0_2._left_panel_is_member_list = false
  L2_2 = A0_2
  L1_2 = A0_2.set_navigation_target
  L4_2 = A0_2
  L3_2 = A0_2.get_selected_buff_game_object
  L5_2 = 1
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L3_1._show_buff_list_panel = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.available_buff_list
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = A1_2 - 1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.UserObjectData
    if L3_2 ~= nil then
      goto lbl_13
    end
  end
  L3_2 = nil
  do return L3_2 end
  ::lbl_13::
  L3_2 = L2_2.UserObjectData
  L4_2 = L3_2
  L3_2 = L3_2.get_first_selected_object
  return L3_2(L4_2)
end
L3_1.get_selected_buff_game_object = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._selected_avatars
  L2_2 = L1_2
  L1_2 = L1_2.to_raw_table
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = A0_2._trial_avatars
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._trial_avatars
    L6_2 = L6_2[L5_2]
    L7_2 = A0_2._selected_avatars
    L8_2 = L7_2
    L7_2 = L7_2.contains
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    if not L7_2 then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = L1_2
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
  return L1_2
end
L3_1._top_avatars = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.AvatarItemIconLitePanel
    L8_2 = G
    L8_2 = L8_2.AvatarItemIconLitePanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
    L6_2 = L4_2
    L5_2 = L4_2.setup_auto_click
    L7_2 = false
    L5_2(L6_2, L7_2)
    L6_2 = L4_2
    L5_2 = L4_2.register_click_callback
    L7_2 = A0_2._on_click_avatar
    L8_2 = A0_2
    L9_2 = A2_2
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.member_list_panel_inner
  L6_2 = L5_2
  L5_2 = L5_2.get_displayed_avatars
  L5_2 = L5_2(L6_2)
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = A0_2
  L6_2 = A0_2._setup_icon_view
  L8_2 = L4_2
  L9_2 = L5_2
  L6_2(L7_2, L8_2, L9_2)
  return L3_2
end
L3_1._on_get_avatar_item = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = A0_2
  L3_2 = A0_2._get_selected_index
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2 ~= nil
  L6_2 = A1_2
  L5_2 = A1_2.setup_view
  L7_2 = A2_2
  L8_2 = false
  L9_2 = L4_2
  L10_2 = nil
  L11_2 = true
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L6_2 = A1_2
  L5_2 = A1_2.setup_order
  L7_2 = L4_2
  L8_2 = L3_2
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = A1_2
  L5_2 = A1_2.set_show_hp
  L7_2 = false
  L5_2(L6_2, L7_2)
end
L3_1._setup_icon_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = 1
  L3_2 = L0_1.MAX_AVATAR_NUM
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._selected_avatars
    L6_2 = L6_2[L5_2]
    L7_2 = G
    L7_2 = L7_2.AvatarUtils
    L7_2 = L7_2.is_same_avatar
    L8_2 = A1_2
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      return L5_2
    end
  end
  L2_2 = nil
  return L2_2
end
L3_1._get_selected_index = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = false
  L3_2 = nil
  L4_2 = 1
  L5_2 = L0_1.MAX_AVATAR_NUM
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2._selected_avatars
    L8_2 = L8_2[L7_2]
    if L8_2 == nil and L3_2 == nil then
      L3_2 = L7_2
    end
    if L8_2 ~= nil then
      L9_2 = L8_2.ID
      L10_2 = A1_2.ID
      if L9_2 == L10_2 then
        L2_2 = true
      end
    end
  end
  L4_2 = L3_2 ~= nil
  if not L4_2 then
    L5_2 = G
    L5_2 = L5_2.NotifyManager
    L5_2 = L5_2.notify
    L6_2 = G
    L6_2 = L6_2.CS
    L6_2 = L6_2.NotifyType
    L6_2 = L6_2.UIPileToastMessageTextID
    L7_2 = "UITextmap_TeamEditPage_Toast_MaxCount"
    L5_2(L6_2, L7_2)
    return
  end
  if L2_2 then
    L5_2 = G
    L5_2 = L5_2.NotifyManager
    L5_2 = L5_2.notify
    L6_2 = G
    L6_2 = L6_2.CS
    L6_2 = L6_2.NotifyType
    L6_2 = L6_2.UIPileToastMessageTextID
    L7_2 = "UITextmap_TeamEditPage_Toast_SameAvatar"
    L5_2(L6_2, L7_2)
    return
  end
  L5_2 = A0_2._selected_avatars
  L5_2[L3_2] = A1_2
end
L3_1._try_select_avatar = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._selected_avatars
  L2_2[A1_2] = nil
end
L3_1._try_unselect_avatar = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L5_2 = A0_2
  L4_2 = A0_2._toggle_selected_avatars
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.member_list_panel_inner
  L5_2 = L4_2
  L4_2 = L4_2.refresh_displayed_avatars
  L4_2(L5_2)
end
L3_1._on_click_avatar = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2._get_selected_index
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2 ~= nil
  if L3_2 then
    L5_2 = A0_2
    L4_2 = A0_2._try_unselect_avatar
    L6_2 = L2_2
    L4_2(L5_2, L6_2)
  else
    L5_2 = A0_2
    L4_2 = A0_2._try_select_avatar
    L6_2 = A1_2
    L4_2(L5_2, L6_2)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.team_list
  L5_2 = L4_2
  L4_2 = L4_2.RefreshAllShownItem
  L4_2(L5_2)
end
L3_1._toggle_selected_avatars = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._get_selected_index
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._try_unselect_avatar
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.member_list_panel_inner
  L4_2 = L3_2
  L3_2 = L3_2.refresh_displayed_avatars
  L3_2(L4_2)
end
L3_1._unselect_avatar_by_out = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_25
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.LineupSlotPanel
  L8_2 = G
  L8_2 = L8_2.LineupSlotPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_click_handler
  L7_2 = A0_2
  L8_2 = A0_2._on_btn_avatar_head
  L5_2(L6_2, L7_2, L8_2)
  L3_2.UserObjectData = L4_2
  ::lbl_25::
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._selected_avatars
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L5_2(L6_2, L7_2)
  return L3_2
end
L3_1._on_avatar_item_change = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A2_2 == nil then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._unselect_avatar_by_out
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.team_list
  L4_2 = L3_2
  L3_2 = L3_2.RefreshAllShownItem
  L3_2(L4_2)
end
L3_1._on_btn_avatar_head = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.Log
  L2_2 = "Enter Battle Button Clicked!"
  L1_2(L2_2)
  L1_2 = A0_2._selected_avatars
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
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._selected_avatars
  L3_2 = L2_2
  L2_2 = L2_2.to_proto_list
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._selected_buffs
  L4_2 = L3_2
  L3_2 = L3_2.to_id_list
  L3_2 = L3_2(L4_2)
  L4_2 = L2_1
  L5_2 = L4_2
  L4_2 = L4_2.SaveTeamConfig
  L6_2 = A0_2._stage_data
  L7_2 = L2_2
  L8_2 = L3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = L1_2.EnterBattle
  L5_2 = L4_2
  L4_2 = L4_2.TriggerBattleByStrongChallengeActivityStage
  L6_2 = A0_2._stage_data
  L6_2 = L6_2.StageID
  L7_2 = L2_2
  L8_2 = L3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L3_1._enter_battle = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = G
  L1_2 = L1_2.AvatarUtils
  L1_2 = L1_2.get_all_avatars
  L1_2 = L1_2()
  L2_2 = A0_2._selected_avatars
  L3_2 = L2_2
  L2_2 = L2_2.first_avatar
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._selected_avatars
  L4_2 = L3_2
  L3_2 = L3_2.to_raw_table
  L3_2 = L3_2(L4_2)
  L4_2 = G
  L4_2 = L4_2.new
  L5_2 = G
  L5_2 = L5_2.StrongChallengeTeamInfoProvider
  L6_2 = A0_2._selected_avatars
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = 0
  L6_2 = A0_2._trial_avatars
  L6_2 = L6_2.Count
  L6_2 = L6_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = A0_2._trial_avatars
    L9_2 = L9_2[L8_2]
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L1_2
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L3_2
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
  end
  L5_2 = G
  L5_2 = L5_2.AvatarUtils
  L5_2 = L5_2.sort_avatars
  L6_2 = L1_2
  L7_2 = AvatarSortType
  L7_2 = L7_2.Level
  L8_2 = false
  L9_2 = L3_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = G
  L5_2 = L5_2.UIManager
  L5_2 = L5_2.load_and_show
  L6_2 = G
  L6_2 = L6_2.AvatarMainPage
  L7_2 = nil
  L8_2 = nil
  L9_2 = L4_2
  L10_2 = L2_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L7_2 = L5_2
  L6_2 = L5_2.set_avatar_data_list
  L8_2 = L1_2
  L6_2(L7_2, L8_2)
end
L3_1._open_avatar_main_page = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_23
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.StrongChallengeBuffItemPanel
  L8_2 = G
  L8_2 = L8_2.StrongChallengeBuffItemPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.on_click
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._toggle_buff
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  ::lbl_23::
  L5_2 = A0_2._stage_data
  L5_2 = L5_2.AvailableBuffs
  L5_2 = L5_2[A2_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_checked_index
  L8_2 = A0_2._selected_buffs
  L9_2 = L8_2
  L8_2 = L8_2.index
  L10_2 = L5_2
  L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
  L6_2(L7_2, L8_2, L9_2, L10_2)
  return L3_2
end
L3_1._get_available_buff_list_item = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_23
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.StrongChallengeBuffIconPanel
  L8_2 = G
  L8_2 = L8_2.StrongChallengeBuffIconPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.on_click
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._unselect_buff
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  ::lbl_23::
  L5_2 = A0_2._selected_buffs
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L3_1._get_selected_buff_list_item = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._selected_buffs
  L3_2 = L2_2
  L2_2 = L2_2.contains
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._unselect_buff
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._select_buff
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L3_1._toggle_buff = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._selected_buffs
  L3_2 = L2_2
  L2_2 = L2_2.total_cost
  L2_2 = L2_2(L3_2)
  L3_2 = A1_2.Cost
  L3_2 = L2_2 + L3_2
  L4_2 = A0_2._stage_data
  L4_2 = L4_2.CostLimit
  if L3_2 > L4_2 then
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UIPileToastMessageTextID
    L5_2 = "UIText_Strong_Challenge_Battle_Skill_Cost_Hint_1"
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = 1
  L4_2 = L0_1.MAX_BUFF_NUM
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._selected_buffs
    L7_2 = L7_2[L6_2]
    if L7_2 == nil then
      L7_2 = A0_2._selected_buffs
      L7_2[L6_2] = A1_2
      L8_2 = A0_2
      L7_2 = A0_2._refresh_selected_buff_list
      L7_2(L8_2)
      return
    end
  end
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.notify
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.UIPileToastMessageTextID
  L5_2 = "UIText_Strong_Challenge_Battle_Skill_Cost_Hint_1"
  L3_2(L4_2, L5_2)
end
L3_1._select_buff = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = 1
  L3_2 = L0_1.MAX_BUFF_NUM
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._selected_buffs
    L6_2 = L6_2[L5_2]
    if L6_2 then
      L6_2 = A0_2._selected_buffs
      L6_2 = L6_2[L5_2]
      L6_2 = L6_2.BuffID
      L7_2 = A1_2.BuffID
      if L6_2 == L7_2 then
        L6_2 = A0_2._selected_buffs
        L6_2[L5_2] = nil
        L7_2 = A0_2
        L6_2 = A0_2._refresh_selected_buff_list
        L6_2(L7_2)
        return
      end
    end
  end
end
L3_1._unselect_buff = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.selected_buff_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.available_buff_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = A0_2._selected_buffs
  L2_2 = L1_2
  L1_2 = L1_2.total_cost
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.current_cost_text_1
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.current_cost_text_2
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L3_1._refresh_selected_buff_list = L4_1
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
L3_1._on_enter_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._left_panel_is_member_list
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.member_list_panel_inner
    L2_2 = L1_2
    L1_2 = L1_2.get_first_selected_object
    return L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2.set_navigation_target
    L4_2 = A0_2
    L3_2 = A0_2.get_selected_buff_game_object
    L5_2 = 1
    L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
    return L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L3_1.get_first_selected_object = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L3_1._init_ui_navigation = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.buff_list_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.team_list_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.team_list_btn_check_frame
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.buff_list_btn_check_frame
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.monster_info_keymap
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L3_1._on_enter_special_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._left_panel_is_member_list
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.buff_list_btn
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.team_list_btn_check_frame
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.team_list_btn
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.buff_list_btn_check_frame
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.monster_info_keymap
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2, L4_2 = L3_2()
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_navigation_target
  L4_2 = A0_2
  L3_2 = A0_2.get_navigation_target
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L3_1._on_leave_special_zoom = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.monster_info_keymap
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.is_gamepad_input
  L4_2 = L4_2()
  L2_2(L3_2, L4_2)
end
L3_1._on_in_control_input_switch = L4_1
return L3_1
