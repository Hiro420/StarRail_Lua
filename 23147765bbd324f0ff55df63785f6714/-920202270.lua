local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.PeriodCard.BattleEvolveBuildPeriodCardDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.PeriodCard.BattleEvolveBuildPeriodCardPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.BattleProgress.BattleEvolveBuildBattleProgressPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.ActivityEvolveBuildUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleEvolveBuildPeriodCardDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "5385"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.BattleEvolveBuildPeriodCardDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._is_resp_esc = false
  L1_2 = G
  L1_2 = L1_2.BattleUIUtils
  L1_2 = L1_2.set_battle_pause
  L2_2 = true
  L1_2(L2_2)
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._card_id_array = L2_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.BattleEvolveBuildBattleProgressPanel
  L4_2 = G
  L4_2 = L4_2.BattleEvolveBuildBattleProgressPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._progress_panel = L1_2
  L1_2 = A0_2._progress_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_progress_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_confirm
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_tips
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_card_view
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.ActivityEvolveBuildUtils
  L1_2 = L1_2.get_cur_period_count
  L1_2 = L1_2()
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.EvolveBuildModule
  L2_2 = L2_2.LevelInstance
  A0_2._evolve_build_level = L2_2
  L2_2 = A0_2._progress_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.create_lua_table_from_cs_list
  L5_2 = A0_2._evolve_build_level
  L5_2 = L5_2.StagePeriodIDList
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._evolve_build_level
  L5_2 = L5_2.StagePeriodType
  L5_2 = #L5_2
  L6_2 = L1_2
  L7_2 = G
  L7_2 = L7_2.ActivityEvolveBuildUtils
  L7_2 = L7_2.ProgressState
  L7_2 = L7_2.Doing
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2
  L2_2 = A0_2._init_ui_navigation
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TutorialTaskUnlock
  L4_2 = L1_1
  L2_2(L3_2, L4_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._card_panels = L1_2
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_cards
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._card_id_array
    L5_2 = #L5_2
    if L4_2 > L5_2 then
      L5_2 = A0_2._binder
      L5_2 = L5_2.node_cards
      L5_2 = L5_2[L4_2]
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetActive
      L7_2 = false
      L5_2(L6_2, L7_2)
    else
      L6_2 = A0_2
      L5_2 = A0_2.create_panel
      L7_2 = G
      L7_2 = L7_2.BattleEvolveBuildPeriodCardPanel
      L8_2 = G
      L8_2 = L8_2.BattleEvolveBuildPeriodCardPanelBinder
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L7_2 = L5_2
      L6_2 = L5_2.bind
      L8_2 = A0_2._binder
      L8_2 = L8_2.node_cards
      L8_2 = L8_2[L4_2]
      L6_2(L7_2, L8_2)
      L7_2 = L5_2
      L6_2 = L5_2.register_on_btn_root_callback
      L8_2 = A0_2._on_card_btn_root
      L9_2 = A0_2
      L6_2(L7_2, L8_2, L9_2)
      L7_2 = L5_2
      L6_2 = L5_2.setup_view
      L8_2 = L4_2 - 1
      L9_2 = A0_2._card_id_array
      L9_2 = L9_2[L4_2]
      L6_2(L7_2, L8_2, L9_2)
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = A0_2._card_panels
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
    end
  end
end
L0_1._setup_card_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._pre_select_panel
  if L2_2 ~= nil then
    L2_2 = A0_2._pre_select_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_checked
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  A0_2._pre_select_panel = A1_2
  L3_2 = A1_2
  L2_2 = A1_2.set_checked
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_confirm
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L0_1._on_card_btn_root = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.BattleInstanceRef
  L1_2 = L1_2.GameWorldRef
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AbilityStatic
  L2_2 = L2_2.DoSelectCardInBattle
  L3_2 = L1_2
  L4_2 = A0_2._pre_select_panel
  L4_2 = L4_2.index
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
end
L0_1._on_btn_confirm = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.BattleUIUtils
  L1_2 = L1_2.set_battle_pause
  L2_2 = false
  L1_2(L2_2)
end
L0_1._on_dispose = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  if A1_2 == L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.set_navigation_target
    L6_2 = A0_2
    L5_2 = A0_2.get_navigation_target
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._card_panels
  L1_2 = L1_2[1]
  L2_2 = L1_2
  L1_2 = L1_2.get_navigation_btn
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = true
    return L2_2
  end
end
L0_1._is_can_to_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L2_1
return L0_1
