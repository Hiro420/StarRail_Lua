local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueEndless.Maze.Entrance.RogueEndlessEntrancePageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueEndless.RogueEndlessUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.RogueModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "RogueEndlessEntrancePage"
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
  L3_2 = L3_2.RogueEndlessEntrancePageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._should_start_rogue_endless = false
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._area_data = nil
end
L1_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_enter
  L4_2 = A0_2._on_btn_enter
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_environment
  L4_2 = A0_2._on_btn_environment
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_monster_info
  L4_2 = A0_2._on_btn_monster_info
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 33
  L1_2(L2_2, L3_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1.EndlessProgressInfo
  if L1_2 == nil then
    return
  end
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.RogueEndlessGetAreaData
  L4_2 = L1_2.CurAreaID
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._area_data = L2_2
  L2_2 = A0_2._area_data
  if L2_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._setup_history_record
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._setup_environment_desc
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._setup_target
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._setup_monster_preview
    L2_2(L3_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_shortcut_hint
  L2_2(L3_2)
end
L1_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._area_data
  L1_2 = L1_2.HasEnteredEndless
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_record
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_highest_score
    L3_2 = L2_2
    L2_2 = L2_2.SetCustomizedText
    L4_2 = A0_2._area_data
    L4_2 = L4_2.EndlessAchievedScore
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_highest_layer
    L3_2 = L2_2
    L2_2 = L2_2.SetCustomizedText
    L4_2 = A0_2._area_data
    L4_2 = L4_2.EndlessAchievedProgress
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._area_data
    L2_2 = L2_2.EndlessAchievedRank
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.ActivityRankIconExcelTable
    L3_2 = L3_2.GetData
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 == nil then
      return
    end
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_highest_rank
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = L3_2.Text
    L4_2(L5_2, L6_2)
    L5_2 = A0_2
    L4_2 = A0_2.async_load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.img_rank_bg
    L7_2 = L3_2.CommonRankIconPath
    L4_2(L5_2, L6_2, L7_2)
  end
end
L1_1._setup_history_record = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_environment_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._area_data
  L3_2 = L3_2.ActivityAreaRow
  L3_2 = L3_2.Endless_GamePlay
  L1_2(L2_2, L3_2)
end
L1_1._setup_environment_desc = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.RogueDLC.RogueEndless.CommonComponents.RogueEndlessEnvironmentInfoDialog"
  L3_2 = A0_2._area_data
  L1_2(L2_2, L3_2)
end
L1_1._on_btn_environment = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.RogueDLC.RogueEndless.Monster.RogueEndlessMonsterPreviewDialog"
  L3_2 = A0_2._area_data
  L1_2(L2_2, L3_2)
end
L1_1._on_btn_monster_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_target
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._area_data
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._setup_target = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_monster_preview
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._area_data
  L1_2(L2_2, L3_2)
end
L1_1._setup_monster_preview = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._should_start_rogue_endless
  if L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2._area_data
  L2_2 = L2_2.AreaRow
  L2_2 = L2_2.RecommendNature
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = "Ui.Team.LocalTeamEditPage"
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.init
  L5_2 = LocalTeamSourceType
  L5_2 = L5_2.Rogue
  function L6_2()
    local L0_3, L1_3
    A0_2._should_start_rogue_endless = true
  end
  L7_2 = A0_2
  L8_2 = nil
  L9_2 = true
  L10_2 = nil
  L11_2 = L1_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L4_2 = L2_2
  L3_2 = L2_2.show
  L3_2(L4_2)
end
L1_1._on_btn_enter = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._should_start_rogue_endless
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._try_trigger_battle
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.set_view_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  A0_2._should_start_rogue_endless = false
end
L1_1._on_return_to_top = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.EnterBattle
    L3_2 = L2_2
    L2_2 = L2_2.TriggerBattleByRogueEndless
    L4_2 = A0_2._area_data
    L4_2 = L4_2.ActivityAreaRow
    L4_2 = L4_2.EventID
    L5_2 = A0_2._area_data
    L5_2 = L5_2.ActivityAreaRow
    L5_2 = L5_2.PlaneID
    L6_2 = A0_2._area_data
    L6_2 = L6_2.ActivityAreaRow
    L6_2 = L6_2.FloorID
    L7_2 = A0_2._area_data
    L7_2 = L7_2.ActivityAreaRow
    L7_2 = L7_2.BattleAreaGroupID
    L8_2 = A0_2._area_data
    L8_2 = L8_2.ActivityAreaRow
    L8_2 = L8_2.BattleAreaID
    L9_2 = A0_2._area_data
    L9_2 = L9_2.AreaID
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  end
end
L1_1._try_trigger_battle = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2._binder
    L0_3 = L0_3.scroll_rect
    L1_3 = L0_3
    L0_3 = L0_3.CanScroll
    L0_3 = L0_3(L1_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3.setup_short_cut_hint_panel
    if L0_3 then
      L3_3 = 33
      if L3_3 then
        goto lbl_17
      end
    end
    L3_3 = 1
    ::lbl_17::
    L1_3(L2_3, L3_3)
  end
  L1_2(L2_2)
end
L1_1._refresh_shortcut_hint = L2_1
return L1_1
