local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityStrongChallenge.StrongChallengeMainPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityStrongChallenge.StrongChallengeStageBtn"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityStrongChallenge.StrongChallengeStageBtnBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityStrongChallenge.Reward.StrongChallengeQuestRewardPage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityStrongChallenge.StrongChallengeConst"
L0_1 = L0_1(L1_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ActivityStrongChallengeModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.MissionModule
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "StrongChallengeMainPage"
L5_1 = G
L5_1 = L5_1.UIController
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.StrongChallengeMainPageBinder
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
  A0_2._normal_stage_btns = L1_2
  L1_2 = {}
  A0_2._hard_stage_btns = L1_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.SendGetStrongChallengeActivityDataCsReq
  L1_2(L2_2)
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L3_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ActivityModule
  L2_2 = L1_2
  L1_2 = L1_2.GetActivityStrongChallengeData
  L1_2 = L1_2(L2_2)
  A0_2._activity_data = L1_2
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
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.tab_normal
  L4_2 = A0_2._show_panel_and_refresh_btns
  L5_2 = L0_1.NORMAL
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.tab_hard
  L4_2 = A0_2._show_panel_and_refresh_btns
  L5_2 = L0_1.HARD
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reward
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = G
    L1_3 = L1_3.UIManager
    L1_3 = L1_3.load_and_async_show
    L2_3 = G
    L2_3 = L2_3.StrongChallengeQuestRewardPage
    L3_3 = A0_3._activity_data
    L1_3(L2_3, L3_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._activity_data
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.reward_remain_timer
    L2_2 = L1_2
    L1_2 = L1_2.SetTargetTime
    L3_2 = A0_2._activity_data
    L3_2 = L3_2.EndTimeDate
    function L4_2(A0_3)
      local L1_3, L2_3
      L2_3 = A0_3
      L1_3 = A0_3.exit
      L1_3(L2_3)
    end
    L5_2 = A0_2
    L6_2 = 2
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
end
L3_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.Log
  L2_2 = "[StrongChallenge] MainPage._setup_view() called."
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ActivityStrongChallengeNormalStageTab"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.tab_normal_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ActivityStrongChallengeHardStageTab"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.tab_hard_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ActivityStrongChallengeRewardButton"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.btn_reward_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._create_all_stage_btns
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._show_stage_panel
  L4_2 = A0_2
  L3_2 = A0_2.get_default_panel_difficulty
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_hard_lock_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_every_day_reddot
  L1_2(L2_2)
end
L3_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1.LastEnteredStage
  if L1_2 then
    L2_2 = L1_2.BattleType
    return L2_2
  else
    L2_2 = L1_1.IsHardModeUnlocked
    if L2_2 then
      L2_2 = L0_1.HARD
      return L2_2
    else
      L2_2 = L0_1.NORMAL
      return L2_2
    end
  end
end
L3_1.get_default_panel_difficulty = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.Log
  L2_2 = "[StrongChallenge] MainPage._refresh_all_data() called."
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.hard_lock_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = L1_1.IsHardModeUnlocked
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.GetMainMissionDataWithPromise
  L3_2 = L0_1.HARD_MODE_UNLOCK_MAIN_MISSION_ID
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2
  L1_2 = L1_2.ThenLuaActionOneParam
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    if not A0_3 then
      L1_3 = G
      L1_3 = L1_3.SuperDebug
      L1_3 = L1_3.LogWarning
      L2_3 = "[StrongChallenge] \232\142\183\229\143\150\231\130\188\231\139\177\233\154\190\229\186\166\232\167\163\233\148\129\228\184\187\228\187\187\229\138\161\229\164\177\232\180\165! MainMissionID="
      L3_3 = L0_1.HARD_MODE_UNLOCK_MAIN_MISSION_ID
      L2_3 = L2_3 .. L3_3
      L1_3(L2_3)
    end
    L1_3 = A0_3.IsFinish
    if L1_3 then
      L1_3 = CS
      L1_3 = L1_3.RPG
      L1_3 = L1_3.Client
      L1_3 = L1_3.Prefs
      L1_3 = L1_3.User
      L1_3 = L1_3.StrongChallengeHardModeUnlockEffectSeen
      L1_3 = not L1_3
    end
    L2_3 = G
    L2_3 = L2_3.SuperDebug
    L2_3 = L2_3.Log
    L3_3 = "[StrongChallenge] mainMissionData.IsFinish="
    L4_3 = tostring
    L5_3 = A0_3.IsFinish
    L4_3 = L4_3(L5_3)
    L5_3 = ", Prefs.User.StrongChallengeHardModeUnlockEffectSeen="
    L6_3 = tostring
    L7_3 = CS
    L7_3 = L7_3.RPG
    L7_3 = L7_3.Client
    L7_3 = L7_3.Prefs
    L7_3 = L7_3.User
    L7_3 = L7_3.StrongChallengeHardModeUnlockEffectSeen
    L6_3 = L6_3(L7_3)
    L7_3 = ". Hard mode unlock first time? "
    L8_3 = tostring
    L9_3 = L1_3
    L8_3 = L8_3(L9_3)
    L3_3 = L3_3 .. L4_3 .. L5_3 .. L6_3 .. L7_3 .. L8_3
    L2_3(L3_3)
    if L1_3 then
      L2_3 = ipairs
      L3_3 = A0_2._hard_stage_btns
      L2_3, L3_3, L4_3 = L2_3(L3_3)
      for L5_3, L6_3 in L2_3, L3_3, L4_3 do
        L8_3 = L6_3
        L7_3 = L6_3.set_should_play_unlock_anim
        L9_3 = true
        L7_3(L8_3, L9_3)
      end
      L1_1.IsHardModeUnlocked = true
      L2_3 = CS
      L2_3 = L2_3.RPG
      L2_3 = L2_3.Client
      L2_3 = L2_3.Prefs
      L2_3 = L2_3.User
      L2_3.StrongChallengeHardModeUnlockEffectSeen = true
      L2_3 = A0_2
      L3_3 = L2_3
      L2_3 = L2_3._show_panel_and_refresh_btns
      L4_3 = L0_1.HARD
      L2_3(L3_3, L4_3)
      L2_3 = A0_2._binder
      L2_3 = L2_3.hard_lock_panel
      L3_3 = L2_3
      L2_3 = L2_3.SafeSetActive
      L4_3 = true
      L2_3(L3_3, L4_3)
      L2_3 = A0_2._binder
      L2_3 = L2_3.hard_lock_panel
      L3_3 = L2_3
      L2_3 = L2_3.Play
      L4_3 = "ActivityStrongChallengeMainLocked_Unlock"
      L2_3(L3_3, L4_3)
    else
      L2_3 = A0_3.IsFinish
      L1_1.IsHardModeUnlocked = L2_3
      L2_3 = A0_2._binder
      L2_3 = L2_3.hard_lock_panel
      L3_3 = L2_3
      L2_3 = L2_3.SafeSetActive
      L4_3 = L1_1.IsHardModeUnlocked
      L4_3 = not L4_3
      L2_3(L3_3, L4_3)
    end
  end
  L1_2(L2_2, L3_2)
end
L3_1._refresh_hard_lock_panel = L4_1
function L4_1(A0_2)
  local L1_2
end
L3_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btns
  L3_2 = L0_1.NORMAL
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btns
  L3_2 = L0_1.HARD
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.hard_lock_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = L1_1.IsHardModeUnlocked
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
end
L3_1._on_return_to_top = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = L1_1.NormalStageIDs
  L2_2 = L1_1.HardStageIDs
  L3_2 = L1_1.NormalStages
  L4_2 = L1_1.HardStages
  L5_2 = {}
  L6_2 = {}
  L7_2 = 0
  L8_2 = L1_2.Length
  L8_2 = L8_2 - 1
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = L1_2[L10_2]
    L12_2 = L3_2[L11_2]
    L14_2 = A0_2
    L13_2 = A0_2._create_stage_btn
    L15_2 = L12_2
    L16_2 = A0_2._binder
    L16_2 = L16_2.loadinfo_btn_stage_normal
    L17_2 = L10_2 + 1
    L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
    L14_2 = table
    L14_2 = L14_2.insert
    L15_2 = A0_2._normal_stage_btns
    L16_2 = L13_2
    L14_2(L15_2, L16_2)
    L14_2 = table
    L14_2 = L14_2.insert
    L15_2 = L5_2
    L17_2 = L13_2
    L16_2 = L13_2.get_unity_btn
    L16_2, L17_2 = L16_2(L17_2)
    L14_2(L15_2, L16_2, L17_2)
  end
  L7_2 = 0
  L8_2 = L2_2.Length
  L8_2 = L8_2 - 1
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = L2_2[L10_2]
    L12_2 = L4_2[L11_2]
    L14_2 = A0_2
    L13_2 = A0_2._create_stage_btn
    L15_2 = L12_2
    L16_2 = A0_2._binder
    L16_2 = L16_2.loadinfo_btn_stage_hard
    L17_2 = L10_2 + 1
    L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
    L14_2 = table
    L14_2 = L14_2.insert
    L15_2 = A0_2._hard_stage_btns
    L16_2 = L13_2
    L14_2(L15_2, L16_2)
    L14_2 = table
    L14_2 = L14_2.insert
    L15_2 = L6_2
    L17_2 = L13_2
    L16_2 = L13_2.get_unity_btn
    L16_2, L17_2 = L16_2(L17_2)
    L14_2(L15_2, L16_2, L17_2)
  end
  L8_2 = A0_2
  L7_2 = A0_2.setup_navigation
  L9_2 = L5_2
  L10_2 = NavigationType
  L10_2 = L10_2.Horizontal
  L7_2(L8_2, L9_2, L10_2)
  L8_2 = A0_2
  L7_2 = A0_2.setup_navigation
  L9_2 = L6_2
  L10_2 = NavigationType
  L10_2 = L10_2.Horizontal
  L7_2(L8_2, L9_2, L10_2)
end
L3_1._create_all_stage_btns = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L5_2 = A0_2
  L4_2 = A0_2.instantiate_object
  L6_2 = A2_2.Prefab
  L7_2 = A2_2.transform
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.StrongChallengeStageBtn
  L8_2 = G
  L8_2 = L8_2.StrongChallengeStageBtnBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L7_2 = L5_2
  L6_2 = L5_2.bind
  L8_2 = L4_2
  L6_2(L7_2, L8_2)
  L7_2 = L5_2
  L6_2 = L5_2.set_index
  L8_2 = A3_2
  L6_2(L7_2, L8_2)
  L7_2 = L5_2
  L6_2 = L5_2.set_stage_data
  L8_2 = A1_2
  L6_2(L7_2, L8_2)
  return L5_2
end
L3_1._create_stage_btn = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2
  L2_2 = A0_2.clear_cur_selected_object
  L2_2(L3_2)
  L2_2 = L0_1.NORMAL
  L2_2 = A1_2 == L2_2
  L3_2 = L0_1.HARD
  L3_2 = A1_2 == L3_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.normal_stages_panel
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.tab_normal
  L5_2 = L4_2
  L4_2 = L4_2.SetChecked
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.bg_normal
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.hard_stages_panel
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.tab_hard
  L5_2 = L4_2
  L4_2 = L4_2.SetChecked
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.bg_hard
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  if L2_2 then
    L5_2 = A0_2
    L4_2 = A0_2.set_navigation_target
    L6_2 = A0_2._normal_stage_btns
    L6_2 = L6_2[1]
    L7_2 = L6_2
    L6_2 = L6_2.get_unity_btn
    L6_2 = L6_2(L7_2)
    L6_2 = L6_2.gameObject
    L4_2(L5_2, L6_2)
  end
  if L3_2 then
    L4_2 = L1_1.IsHardModeUnlocked
    if L4_2 then
      L5_2 = A0_2
      L4_2 = A0_2.set_navigation_target
      L6_2 = A0_2._hard_stage_btns
      L6_2 = L6_2[1]
      L7_2 = L6_2
      L6_2 = L6_2.get_unity_btn
      L6_2 = L6_2(L7_2)
      L6_2 = L6_2.gameObject
      L4_2(L5_2, L6_2)
    end
  end
end
L3_1._show_stage_panel = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = nil
  L3_2 = L0_1.HARD
  if A1_2 == L3_2 then
    L2_2 = A0_2._hard_stage_btns
  else
    L2_2 = A0_2._normal_stage_btns
  end
  L3_2 = ipairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.refresh_view
    L8_2(L9_2)
  end
end
L3_1._refresh_btns = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._show_stage_panel
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_btns
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.hard_lock_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_1.IsHardModeUnlocked
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
end
L3_1._show_panel_and_refresh_btns = L4_1
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
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.get_default_panel_difficulty
  L1_2 = L1_2(L2_2)
  L2_2 = L0_1.HARD
  if L1_2 == L2_2 then
    L2_2 = A0_2._hard_stage_btns
    L2_2 = L2_2[1]
    L3_2 = L2_2
    L2_2 = L2_2.get_unity_btn
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2.gameObject
    return L2_2
  else
    L2_2 = A0_2._normal_stage_btns
    L2_2 = L2_2[1]
    L3_2 = L2_2
    L2_2 = L2_2.get_unity_btn
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2.gameObject
    return L2_2
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
  local L1_2
end
L3_1._select_prev = L4_1
function L4_1(A0_2)
  local L1_2
end
L3_1._select_next = L4_1
function L4_1(A0_2)
  local L1_2
end
L3_1._on_enter_special_zoom = L4_1
function L4_1(A0_2)
  local L1_2
end
L3_1._on_leave_special_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.ActivityGoToTimeStamp
  L2_2 = L0_1.ACTIVITY_TYPE
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.TimeManager
  L3_2 = L3_2.Instance
  L3_2 = L3_2.NowTimeStamp
  L1_2[L2_2] = L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.ActivityForceRefreshRedDot
  L1_2(L2_2)
end
L3_1._refresh_every_day_reddot = L4_1
return L3_1
