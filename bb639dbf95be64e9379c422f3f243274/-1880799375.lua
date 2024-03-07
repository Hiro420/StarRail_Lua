local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = require
L1_1 = "Ui.WinAndLosePage.BattleResultLosePageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.BattleUIUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ChallengeModule
L1_1 = "#FFFFFF"
L2_1 = "#DD5244"
L3_1 = "#12121270"
L4_1 = "#AB000070"
L5_1 = 4
L6_1 = CS
L6_1 = L6_1.RPG
L6_1 = L6_1.GameCore
L6_1 = L6_1.ConstValueClientExcelTable
L6_1 = L6_1.GetData
L7_1 = "BattleFailureTips_Max_AvatarLevel"
L6_1 = L6_1(L7_1)
L6_1 = L6_1.Value
L6_1 = L6_1.UintValue
L7_1 = G
L7_1 = L7_1.Class
L8_1 = "BattleResultLosePage"
L9_1 = G
L9_1 = L9_1.UIController
L7_1 = L7_1(L8_1, L9_1)
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.BattleResultLosePageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_resp_esc = false
  A0_2._animation_fade_out = "BattleResultLosePageFadeOut"
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.GameCoreConfigManager
  L1_2 = L1_2.MazeConfig
  L1_2 = L1_2.WeakPointDisplayCount
  A0_2._display_weakpoint_count = L1_2
end
L7_1.ctor = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_GamePhaseManager
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentPhase
  L2_2 = L2_2(L3_2)
  A0_2._battle_game_phase = L2_2
  L2_2 = A0_2._battle_game_phase
  if L2_2 ~= nil then
    L2_2 = A0_2._battle_game_phase
    L2_2 = L2_2.BattleInstanceRef
    L2_2 = L2_2.BattleLineupDataRef
    L2_2 = L2_2.Context
    L2_2 = L2_2.Type
    A0_2._mode = L2_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.StageExcelTable
    L2_2 = L2_2.GetData
    L3_2 = A0_2._battle_game_phase
    L3_2 = L3_2.BattleInstanceRef
    L3_2 = L3_2.TurnBasedGameModeRef
    L3_2 = L3_2.CurrentWaveStageID
    L2_2 = L2_2(L3_2)
    A0_2._stage_row = L2_2
  end
  L2_2 = A1_2 or L2_2
  if not A1_2 or not A1_2 then
    L2_2 = false
  end
  A0_2._disable_tips = L2_2
end
L7_1.init = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._mode
  L2_2 = CS
  L2_2 = L2_2.NNHMNDEADHC
  L2_2 = L2_2.BOAMFLLMJIN
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_challenge_panel
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_hint_click
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2._bind_btn_callback
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_exit_challenge
    L4_2 = A0_2._on_btn_exit_challenge
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2
    L1_2 = A0_2._bind_btn_callback
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_restart_challenge
    L4_2 = A0_2._on_btn_restart_challenge
    L1_2(L2_2, L3_2, L4_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._bind_btn_callback
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_mask
    L4_2 = A0_2._on_btn_mask
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_weakness
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_recommend_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.BattleCloseFrameCapturePage
  L4_2 = L7_1._on_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.BattleToMazeTransitFadeInEnd
  L4_2 = L7_1._on_transit_fade_in_end
  L1_2(L2_2, L3_2, L4_2)
end
L7_1._on_load = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._show_screen_shot_bg
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_tip
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_recommend_level
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_weakness
  L1_2(L2_2)
end
L7_1._setup_view = L8_1
function L8_1(A0_2)
  local L1_2
  A0_2._animation_fade_out = nil
  A0_2._battle_game_phase = nil
end
L7_1._on_dispose = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._fade_out_exit
  L1_2(L2_2)
end
L7_1._on_btn_mask = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.BattleUIUtils
  L1_2 = L1_2.set_screen_shot_bg
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_raw
  L3_2 = {}
  L3_2.OuterState = 1
  L1_2(L2_2, L3_2)
end
L7_1._show_screen_shot_bg = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L7_1._on_transit_fade_in_end = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._fade_out_exit
  L2_2(L3_2)
end
L7_1._on_exit = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = true
  L2_2 = false
  L3_2 = false
  L4_2 = L0_1.CurrentChallengeInstance
  L4_2 = L4_2.ChallengeDataRef
  L4_2 = L4_2.GroupID
  L5_2 = L0_1
  L6_2 = L5_2
  L5_2 = L5_2.SetContinueChallengeData
  L7_2 = L1_2
  L8_2 = L2_2
  L9_2 = L3_2
  L10_2 = L4_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = A0_2
  L5_2 = A0_2._fade_out_exit
  L5_2(L6_2)
end
L7_1._on_btn_exit_challenge = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = true
  L2_2 = true
  L3_2 = true
  L4_2 = L0_1.CurrentChallengeInstance
  L4_2 = L4_2.ChallengeDataRef
  L5_2 = L4_2.GroupID
  L6_2 = L4_2.ID
  L7_2 = L0_1
  L8_2 = L7_2
  L7_2 = L7_2.SetContinueChallengeData
  L9_2 = L1_2
  L10_2 = L2_2
  L11_2 = L3_2
  L12_2 = L5_2
  L13_2 = L6_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L8_2 = A0_2
  L7_2 = A0_2._fade_out_exit
  L7_2(L8_2)
end
L7_1._on_btn_restart_challenge = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_exiting
  if L1_2 then
    return
  end
  A0_2._is_exiting = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = A0_2._animation_fade_out
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2._battle_game_phase
    if L0_3 ~= nil then
      L0_3 = A0_2._battle_game_phase
      L0_3 = L0_3.FromPhaseType
      L1_3 = CS
      L1_3 = L1_3.RPG
      L1_3 = L1_3.Client
      L1_3 = L1_3.GamePhaseType
      L1_3 = L1_3.Adventure
      if L0_3 == L1_3 then
        L0_3 = G
        L0_3 = L0_3.NotifyManager
        L0_3 = L0_3.notify
        L1_3 = G
        L1_3 = L1_3.CS
        L1_3 = L1_3.NotifyType
        L1_3 = L1_3.BattleToMazeTransit
        L0_3(L1_3)
    end
    else
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.exit
      L0_3(L1_3)
    end
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.page_animation
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = A0_2._animation_fade_out
  L1_2(L2_2, L3_2)
end
L7_1._fade_out_exit = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.BattleTipUtils
  L1_2 = L1_2.GetOneFailureTip
  L1_2 = L1_2()
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  if L1_2 ~= nil then
    L2_2 = A0_2._disable_tips
    if not L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_tip
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.txt_tip
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = L1_2.TipContent
      L2_2(L3_2, L4_2)
    end
  end
end
L7_1._setup_tip = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._get_recommend_level
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._is_meet_recommend_level
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_recommend_level
    L3_2 = G
    L3_2 = L3_2.UIColorUtils
    L3_2 = L3_2.GetColor
    L4_2 = L1_1
    L3_2 = L3_2(L4_2)
    L2_2.color = L3_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.outline_recommend_level
    L3_2 = G
    L3_2 = L3_2.UIColorUtils
    L3_2 = L3_2.GetColor
    L4_2 = L3_1
    L3_2 = L3_2(L4_2)
    L2_2.effectColor = L3_2
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_recommend_level
    L3_2 = G
    L3_2 = L3_2.UIColorUtils
    L3_2 = L3_2.GetColor
    L4_2 = L2_1
    L3_2 = L3_2(L4_2)
    L2_2.color = L3_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.outline_recommend_level
    L3_2 = G
    L3_2 = L3_2.UIColorUtils
    L3_2 = L3_2.GetColor
    L4_2 = L4_1
    L3_2 = L3_2(L4_2)
    L2_2.effectColor = L3_2
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_recommend_level
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L7_1._setup_recommend_level = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = 0
  L3_2 = A0_2._battle_game_phase
  L3_2 = L3_2.BattleInstanceRef
  L3_2 = L3_2.GameWorldRef
  L3_2 = L3_2.EntityManagerRef
  L5_2 = L3_2
  L4_2 = L3_2.QueryEntities
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.TeamTypeMask
  L6_2 = L6_2.TeamLight
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.EntityTypeMask
  L7_2 = L7_2.Avatar
  L8_2 = CS
  L8_2 = L8_2.RPG
  L8_2 = L8_2.GameCore
  L8_2 = L8_2.EntityTypeMask
  L8_2 = L8_2.Monster
  L7_2 = L7_2 | L8_2
  L8_2 = CS
  L8_2 = L8_2.RPG
  L8_2 = L8_2.GameCore
  L8_2 = L8_2.AliveStateMask
  L8_2 = L8_2.Mask_NotDestroyed
  L9_2 = CS
  L9_2 = L9_2.RPG
  L9_2 = L9_2.GameCore
  L9_2 = L9_2.AliveStateMask
  L9_2 = L9_2.Bit_OnStage
  L8_2 = L8_2 | L9_2
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = 0
  L6_2 = L4_2.Count
  L6_2 = L6_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = L4_2[L8_2]
    L11_2 = L9_2
    L10_2 = L9_2.GetComponent
    L12_2 = typeof
    L13_2 = CS
    L13_2 = L13_2.RPG
    L13_2 = L13_2.GameCore
    L13_2 = L13_2.AvatarDataComponent
    L12_2, L13_2 = L12_2(L13_2)
    L10_2 = L10_2(L11_2, L12_2, L13_2)
    if L10_2 ~= nil then
      L11_2 = L10_2.RowData
      L11_2 = L11_2.AvatarData
      L11_2 = L11_2.Level
      L2_2 = L2_2 + L11_2
    end
  end
  L5_2 = L5_1
  L5_2 = A1_2 * L5_2
  L5_2 = L2_2 >= L5_2
  return L5_2
end
L7_1._is_meet_recommend_level = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._stage_row
  L1_2 = L1_2.Level
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AdventureStatic
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentGameModeType
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.GameModeType
  L3_2 = L3_2.RogueExplore
  if L2_2 ~= L3_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.GameModeType
    L3_2 = L3_2.RogueChallenge
    if L2_2 ~= L3_2 then
      goto lbl_68
    end
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.RogueModule
  L4_2 = L3_2
  L3_2 = L3_2.GetRogueData
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.RogueMapExcelTable
    L4_2 = L4_2.GetData
    L5_2 = L3_2.MapData
    L5_2 = L5_2.MapID
    L6_2 = L3_2.MapData
    L6_2 = L6_2.CurSiteID
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 ~= nil then
      L5_2 = L4_2.LevelList
      L5_2 = L5_2.Length
      if 0 < L5_2 then
        L5_2 = CS
        L5_2 = L5_2.RPG
        L5_2 = L5_2.Client
        L5_2 = L5_2.GlobalVars
        L5_2 = L5_2.s_ModuleManager
        L5_2 = L5_2.PlayerModule
        L5_2 = L5_2.PlayerData
        L5_2 = L5_2.WorldLevel
        L6_2 = L4_2.LevelList
        L6_2 = L6_2.Length
        if L5_2 < L6_2 then
          L7_2 = L4_2.LevelList
          L1_2 = L7_2[L5_2]
        else
          L7_2 = L4_2.LevelList
          L8_2 = L6_2 - 1
          L1_2 = L7_2[L8_2]
          goto lbl_94
          ::lbl_68::
          L3_2 = CS
          L3_2 = L3_2.RPG
          L3_2 = L3_2.GameCore
          L3_2 = L3_2.GameModeType
          L3_2 = L3_2.ChessRogue
          if L2_2 == L3_2 then
            L3_2 = CS
            L3_2 = L3_2.RPG
            L3_2 = L3_2.Client
            L3_2 = L3_2.GlobalVars
            L3_2 = L3_2.s_ModuleManager
            L3_2 = L3_2.ChessRogueModule
            L3_2 = L3_2.ChessRogueData
            if L3_2 ~= nil then
              L4_2 = L3_2.AreaInfo
              if L4_2 ~= nil then
                L4_2 = L3_2.AreaInfo
                L4_2 = L4_2.CurAreaDataItem
                if L4_2 ~= nil then
                  L4_2 = L3_2.AreaInfo
                  L4_2 = L4_2.CurAreaDataItem
                  L1_2 = L4_2.RecommendLevel
                end
              end
            end
          end
        end
      end
    end
  end
  ::lbl_94::
  L3_2 = math
  L3_2 = L3_2.min
  L4_2 = L1_2
  L5_2 = L6_1
  return L3_2(L4_2, L5_2)
end
L7_1._get_recommend_level = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = A0_2._stage_row
  if L1_2 ~= nil then
    L2_2 = L1_2.MonsterList
    L2_2 = L2_2.Length
    if not (L2_2 <= 0) then
      goto lbl_19
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.weakness_list
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_empty_weakness
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  do return end
  ::lbl_19::
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GamePlayStatic
  L2_2 = L2_2.GetDisplayAttackDamageTypeStatisticsInfoByWave
  L3_2 = L1_2.MonsterList
  L3_2 = L3_2[0]
  L2_2 = L2_2(L3_2)
  L3_2 = {}
  if L2_2 then
    L5_2 = L2_2
    L4_2 = L2_2.GetEnumerator
    L4_2 = L4_2(L5_2)
    while true do
      L6_2 = L4_2
      L5_2 = L4_2.MoveNext
      L5_2 = L5_2(L6_2)
      if not L5_2 then
        break
      end
      L5_2 = {}
      L6_2 = L4_2.Current
      L6_2 = L6_2.Key
      L5_2.attack_damage_type = L6_2
      L6_2 = L4_2.Current
      L6_2 = L6_2.Value
      L5_2.count = L6_2
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = L3_2
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
    end
  end
  L4_2 = {}
  L5_2 = #L3_2
  if 0 < L5_2 then
    L5_2 = table
    L5_2 = L5_2.sort
    L6_2 = L3_2
    L7_2 = L7_1._compare_damage_type
    L5_2(L6_2, L7_2)
    L5_2 = 1
    L6_2 = A0_2._display_weakpoint_count
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L9_2 = L3_2[L8_2]
      if L9_2 then
        L9_2 = L3_2[L8_2]
        L9_2 = L9_2.attack_damage_type
        L4_2[L8_2] = L9_2
      end
    end
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.weakness_list
  L6_2 = L5_2
  L5_2 = L5_2.safe_set_active
  L7_2 = #L4_2
  L7_2 = 0 < L7_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_empty_weakness
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = #L4_2
  L7_2 = L7_2 == 0
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.weakness_list
  L6_2 = L5_2
  L5_2 = L5_2.setup_view
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = ipairs
  L6_2 = L4_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = A0_2._binder
    L10_2 = L10_2.weakness_list
    L11_2 = L10_2
    L10_2 = L10_2.get_panel_by_index
    L12_2 = L8_2
    L10_2 = L10_2(L11_2, L12_2)
    L12_2 = L10_2
    L11_2 = L10_2.setup_by_damage_type_icon_path
    L13_2 = L4_2[L8_2]
    L11_2(L12_2, L13_2)
  end
end
L7_1._setup_weakness = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.count
  L3_2 = A1_2.count
  L2_2 = L2_2 > L3_2
  return L2_2
end
L7_1._compare_damage_type = L8_1
return L7_1
