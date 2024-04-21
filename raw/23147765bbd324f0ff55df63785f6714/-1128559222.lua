local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1
L0_1 = require
L1_1 = "Utilities.ConstValueUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.DrinkMakerBartendUI3DPage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Entrance.Components.DrinkMakerBartendProcessHandler"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.DrinkMakerBartendEnum"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.Components.DrinkMakerBartendTargetPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.Components.DrinkMakerBartendProcedurePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.DrinkMakerBartendMainPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.DrinkMakerBartendUI3DPage"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerBartendMainPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.DrinkMakerModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.MissionModule
L3_1 = "UIText_DrinkMaker_MaterialFullHint"
L4_1 = "UIText_DrinkMaker_MixConditionHint"
L5_1 = "UIText_DrinkMaker_AnimationLockHint"
L6_1 = G
L6_1 = L6_1.ConstValueUtils
L6_1 = L6_1.get_uint_array
L7_1 = "DrinkMaker_Tutorial_SubMissionIDList"
L6_1 = L6_1(L7_1)
L7_1 = {}
L8_1 = CS
L8_1 = L8_1.RPG
L8_1 = L8_1.Client
L8_1 = L8_1.DrinkMakerBartendProcedure
L8_1 = L8_1.Cup
L8_1 = #L8_1
L7_1[L8_1] = "UIText_DrinkMaker_GamePlayPage_StepName1"
L8_1 = CS
L8_1 = L8_1.RPG
L8_1 = L8_1.Client
L8_1 = L8_1.DrinkMakerBartendProcedure
L8_1 = L8_1.Ice
L8_1 = #L8_1
L7_1[L8_1] = "UIText_DrinkMaker_GamePlayPage_StepName2"
L8_1 = CS
L8_1 = L8_1.RPG
L8_1 = L8_1.Client
L8_1 = L8_1.DrinkMakerBartendProcedure
L8_1 = L8_1.Ingredient
L8_1 = #L8_1
L7_1[L8_1] = "UIText_DrinkMaker_GamePlayPage_StepName3"
L8_1 = CS
L8_1 = L8_1.RPG
L8_1 = L8_1.Client
L8_1 = L8_1.DrinkMakerBartendProcedure
L8_1 = L8_1.Deco
L8_1 = #L8_1
L7_1[L8_1] = "UIText_DrinkMaker_GamePlayPage_StepName4"
L8_1 = CS
L8_1 = L8_1.RPG
L8_1 = L8_1.GameCore
L8_1 = L8_1.ConstValueClientExcelTable
L8_1 = L8_1.GetData
L9_1 = "DrinkMaker_ChallengeModeHintWaitTime"
L8_1 = L8_1(L9_1)
L8_1 = L8_1.Value
L8_1 = L8_1.UintValue
L9_1 = "DrinkMakerBtnHint_FadeIn"
L10_1 = "DrinkMakerBtnHint_Repeat"
L11_1 = "OnPageFadeInAnimKeyFrame"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.DrinkMakerBartendMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L3_2 = G
  L3_2 = L3_2.DrinkMakerBartendUI3DPage
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._bartend_ui3d = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveBlack
  A0_2._transition_style = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._pause_game = true
  A0_2._action_enabled = true
  A0_2._btn_reset_all_click_times = 0
  A0_2._btn_reset_ingredient_click_times = 0
  L1_2 = {}
  L2_2 = DrinkMakerBartendCommandType
  L2_2 = L2_2.CupSelect
  L3_2 = L0_1._on_cup_select_operation
  L1_2[L2_2] = L3_2
  L2_2 = DrinkMakerBartendCommandType
  L2_2 = L2_2.IceSelect
  L3_2 = L0_1._on_ice_select_operation
  L1_2[L2_2] = L3_2
  L2_2 = DrinkMakerBartendCommandType
  L2_2 = L2_2.IngredientSelect
  L3_2 = L0_1._on_ingredient_select_operation
  L1_2[L2_2] = L3_2
  L2_2 = DrinkMakerBartendCommandType
  L2_2 = L2_2.DecoSelect
  L3_2 = L0_1._on_deco_select_operation
  L1_2[L2_2] = L3_2
  L2_2 = DrinkMakerBartendCommandType
  L2_2 = L2_2.Mix
  L3_2 = L0_1._on_mix_operation
  L1_2[L2_2] = L3_2
  L2_2 = DrinkMakerBartendCommandType
  L2_2 = L2_2.ClearIngredients
  L3_2 = L0_1._on_ingredients_clear_operation
  L1_2[L2_2] = L3_2
  L2_2 = DrinkMakerBartendCommandType
  L2_2 = L2_2.Reset
  L3_2 = L0_1._on_reset_operation
  L1_2[L2_2] = L3_2
  L2_2 = DrinkMakerBartendCommandType
  L2_2 = L2_2.MoveNext
  L3_2 = L0_1._on_move_next_operation
  L1_2[L2_2] = L3_2
  L2_2 = DrinkMakerBartendCommandType
  L2_2 = L2_2.FinishDrink
  L3_2 = L0_1._on_finish_drink_operation
  L1_2[L2_2] = L3_2
  L0_1._command_callbacks = L1_2
end
L0_1.ctor = L12_1
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._open_mode = A1_2
  A0_2._request = A2_2
  L3_2 = A0_2._request
  L3_2 = L3_2.RequestType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.DrinkMakerRequestSourceType
  L4_2 = L4_2.FromGuideMission
  L3_2 = L3_2 == L4_2
  A0_2._is_open_by_mission = L3_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.DrinkMakerBartendDrinkData
  L3_2 = L3_2()
  A0_2._drink_data = L3_2
  L4_2 = A0_2
  L3_2 = A0_2.get_blackboard
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2
  L3_2 = L3_2.update
  L5_2 = "RequestData"
  L6_2 = A0_2._request
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2.get_blackboard
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2
  L3_2 = L3_2.update
  L5_2 = "DrinkData"
  L6_2 = A0_2._drink_data
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.init = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_hint
  L4_2 = A0_2._on_btn_hint_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_restart
  L4_2 = A0_2._on_btn_restart_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_next
  L4_2 = A0_2._fire_empty_command
  L5_2 = DrinkMakerBartendCommandType
  L5_2 = L5_2.MoveNext
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_finish
  L4_2 = A0_2._fire_empty_command
  L5_2 = DrinkMakerBartendCommandType
  L5_2 = L5_2.FinishDrink
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_mix
  L4_2 = A0_2._fire_empty_command
  L5_2 = DrinkMakerBartendCommandType
  L5_2 = L5_2.Mix
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_clear
  L4_2 = A0_2._fire_empty_command
  L5_2 = DrinkMakerBartendCommandType
  L5_2 = L5_2.ClearIngredients
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = A0_2._on_page_anim_key_frame
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.DrinkMakerAddIngredientFinish
  L4_2 = A0_2._on_add_ingredient_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.DrinkMakerMixFinish
  L4_2 = A0_2._on_mix_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.DrinkMakerBartendTargetPanel
  L4_2 = G
  L4_2 = L4_2.DrinkMakerBartendTargetPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._panel_target = L1_2
  L1_2 = A0_2._panel_target
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_target_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.DrinkMakerBartendProcedurePanel
  L4_2 = G
  L4_2 = L4_2.DrinkMakerBartendProcedurePanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._panel_procedure = L1_2
  L1_2 = A0_2._panel_procedure
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_procedure_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._request
  L1_2 = L1_2.RequestType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.DrinkMakerRequestSourceType
  L2_2 = L2_2.FromGuideMission
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2.create_panel_without_binder
    L3_2 = G
    L3_2 = L3_2.DrinkMakerBartendProcessHandler
    L1_2 = L1_2(L2_2, L3_2)
    A0_2._panel_handler = L1_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._open_mode
  L4_2 = DrinkMakerBartendMode
  L4_2 = L4_2.ChallengeMode
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_restart
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._open_mode
  L4_2 = DrinkMakerBartendMode
  L4_2 = L4_2.ChallengeMode
  L3_2 = L3_2 ~= L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_bg_normal
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._open_mode
  L4_2 = DrinkMakerBartendMode
  L4_2 = L4_2.ChallengeMode
  L3_2 = L3_2 ~= L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_bg_challenge
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._open_mode
  L4_2 = DrinkMakerBartendMode
  L4_2 = L4_2.ChallengeMode
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  A0_2._is_restart_disabled = false
  L1_2 = ipairs
  L2_2 = L6_1
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L2_1
    L7_2 = L6_2
    L6_2 = L6_2.GetSubMissionData
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 ~= nil then
      L7_2 = L6_2.IsStart
      if L7_2 then
        A0_2._is_restart_disabled = true
        L7_2 = A0_2._binder
        L7_2 = L7_2.btn_restart
        L8_2 = L7_2
        L7_2 = L7_2.SafeSetActive
        L9_2 = false
        L7_2(L8_2, L9_2)
        break
      end
    end
  end
end
L0_1._on_load = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_close
  L1_2 = L1_2.transform
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_open_by_mission
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._request
  L1_2 = L1_2.RequestType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.DrinkMakerRequestSourceType
  L2_2 = L2_2.FromChallenge
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._init_challenge
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._setup_tips_btn
    L1_2(L2_2)
  end
  L1_2 = A0_2._drink_data
  L1_2 = L1_2.CurProcedure
  L2_2 = A0_2._panel_target
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._open_mode
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._panel_procedure
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._reset_procedure_states
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._reset_mix_display
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.DrinkMakerOnBartendMainPageOpen
  L2_2(L3_2)
  A0_2._play_time = 0
  L3_2 = A0_2
  L2_2 = A0_2.add_tick
  L2_2(L3_2)
end
L0_1._setup_view = L12_1
function L12_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._play_time
  L2_2 = L2_2 + A1_2
  A0_2._play_time = L2_2
end
L0_1._on_tick = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_open_by_mission
  if L1_2 then
    return
  end
  L1_2 = A0_2._action_enabled
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UICenterToastMessageTextID
    L3_2 = L5_1
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._open_mode
  L2_2 = DrinkMakerBartendMode
  L2_2 = L2_2.ChallengeMode
  if L1_2 == L2_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.ConfirmDialogUtil
    L1_2 = L1_2.ShowOkCancelHint
    L2_2 = "UIText_DrinkMaker_Challenge_CloseHint"
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.TextID
    L3_2 = L3_2.empty
    function L4_2(A0_3)
      local L1_3, L2_3
      if A0_3 then
        L1_3 = A0_2
        L2_3 = L1_3
        L1_3 = L1_3._abort_exit
        L1_3(L2_3)
      end
    end
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.ConfirmDialogUtil
    L1_2 = L1_2.ShowOkCancelHint
    L2_2 = "UIText_DrinkMaker_RestartHint"
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.TextID
    L3_2 = L3_2.empty
    function L4_2(A0_3)
      local L1_3, L2_3
      if A0_3 then
        L1_3 = A0_2
        L2_3 = L1_3
        L1_3 = L1_3._abort_exit
        L1_3(L2_3)
      end
    end
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._in_control_exit_click = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._drink_data
  L2_2 = L1_2
  L1_2 = L1_2.ReportGameplayData
  L3_2 = A0_2._request
  L4_2 = false
  L5_2 = A0_2._play_time
  L6_2 = A0_2._btn_reset_all_click_times
  L7_2 = A0_2._btn_reset_ingredient_click_times
  L8_2 = nil
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._abort_exit = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L12_1
function L12_1(A0_2, A1_2)
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
    L3_2 = A0_2
    L2_2 = A0_2._refresh_game_pad_hint_panel
    L2_2(L3_2)
  end
end
L0_1._on_enter_zoom = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.Action3
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_can_to_special_zoom
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._get_first_spe_zoom_selected_object
      L2_2 = L2_2(L3_2)
      L4_2 = A0_2
      L3_2 = A0_2.set_special_zoom_navigation_target
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
      L4_2 = A0_2
      L3_2 = A0_2.setup_short_cut_hint_panel
      L3_2(L4_2)
    end
  end
end
L0_1._on_in_control_click = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._panel_procedure
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._panel_target
  L2_2 = L1_2
  L1_2 = L1_2.is_can_to_special_zoom
  return L1_2(L2_2)
end
L0_1._is_can_to_special_zoom = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._panel_procedure
  L2_2 = L1_2
  L1_2 = L1_2.reset_scroll
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.force_set_first_navigation_target
    L0_3(L1_3)
  end
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_game_pad_hint_panel
  L1_2(L2_2)
end
L0_1._on_leave_special_zoom = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._panel_target
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1._get_first_spe_zoom_selected_object = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._action_enabled
  if not L2_2 then
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIPileToastMessageTextID
    L4_2 = L5_1
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = A0_2._command_callbacks
  L4_2 = A1_2
  L3_2 = A1_2.get_command_type
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2[L3_2]
  L3_2 = A0_2
  L5_2 = A1_2
  L4_2 = A1_2.get_data
  L4_2, L5_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if L2_2 then
    L2_2 = A0_2._bartend_ui3d
    L3_2 = L2_2
    L2_2 = L2_2.receive_command
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._check_if_cur_procedure_complete
    L2_2(L3_2)
  end
end
L0_1.receive_command = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeAfterFrames
  L2_2 = 10
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._refresh_game_pad_hint_panel
      L0_3(L1_3)
    end
  end
  L1_2(L2_2, L3_2)
end
L0_1.report_wait_scroll_update = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L1_2 = A0_2._get_random_comments
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.Collections
  L2_2 = L2_2.Generic
  L2_2 = L2_2.List
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.UInt32
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2()
  L3_2 = ipairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L2_2
    L8_2 = L2_2.Add
    L10_2 = L7_2.CommentID
    L8_2(L9_2, L10_2)
  end
  L3_2 = A0_2._drink_data
  L4_2 = L3_2
  L3_2 = L3_2.ReportGameplayData
  L5_2 = A0_2._request
  L6_2 = true
  L7_2 = A0_2._play_time
  L8_2 = A0_2._btn_reset_all_click_times
  L9_2 = A0_2._btn_reset_ingredient_click_times
  L10_2 = L2_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L3_2 = G
  L3_2 = L3_2.UIManager
  L3_2 = L3_2.load_and_async_show
  L4_2 = "Ui.DrinkMaker.Bartend.DrinkMakerBartendResultDialog"
  L5_2 = A0_2._open_mode
  L6_2 = A0_2._request
  L7_2 = A0_2._drink_data
  L8_2 = L1_2
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2 = L3_2.LuaTable
  L5_2 = L4_2
  L4_2 = L4_2.set_exit_callback
  function L6_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.exit
    L0_3(L1_3)
  end
  L4_2(L5_2, L6_2)
end
L0_1.confirm_making_drink = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._request
  L1_2 = L1_2.TargetDrink
  L2_2 = A0_2._drink_data
  L3_2 = L2_2
  L2_2 = L2_2.SetCup
  L4_2 = L1_2.CupID
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._drink_data
  L3_2 = L2_2
  L2_2 = L2_2.MoveNext
  L2_2(L3_2)
  L2_2 = A0_2._bartend_ui3d
  L3_2 = L2_2
  L2_2 = L2_2.receive_command
  L5_2 = A0_2
  L4_2 = A0_2._make_command
  L6_2 = DrinkMakerBartendCommandType
  L6_2 = L6_2.CupSelect
  L7_2 = L1_2.CupID
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2._drink_data
  L3_2 = L2_2
  L2_2 = L2_2.SetIce
  L4_2 = L1_2.IceID
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._drink_data
  L3_2 = L2_2
  L2_2 = L2_2.MoveNext
  L2_2(L3_2)
  L2_2 = A0_2._bartend_ui3d
  L3_2 = L2_2
  L2_2 = L2_2.receive_command
  L5_2 = A0_2
  L4_2 = A0_2._make_command
  L6_2 = DrinkMakerBartendCommandType
  L6_2 = L6_2.IceSelect
  L7_2 = L1_2.IceID
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._init_challenge = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._show_hint
    L0_3(L1_3)
  end
  L4_2 = L8_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._timer = L1_2
  L1_2 = A0_2._timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L0_1._setup_tips_btn = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  if not L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_hint
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L9_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_hint
  L2_2 = L1_2
  L1_2 = L1_2.GetClip
  L3_2 = L9_1
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.length
  L3_2 = A0_2
  L2_2 = A0_2._add_count_down_timer
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._show_repeat_effect
    L0_3(L1_3)
  end
  L5_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._timer = L2_2
  L2_2 = A0_2._timer
  L3_2 = L2_2
  L2_2 = L2_2.reset
  L2_2(L3_2)
  L2_2 = A0_2._timer
  L3_2 = L2_2
  L2_2 = L2_2.start
  L2_2(L3_2)
end
L0_1._show_hint = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  if not L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_hint
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L10_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
end
L0_1._show_repeat_effect = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._drink_data
  L1_2 = L1_2.CurProcedure
  L1_2 = #L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_next
  L2_2 = L2_2.transform
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.DrinkMakerBartendProcedure
  L4_2 = L4_2.Deco
  L4_2 = #L4_2
  L4_2 = L1_2 < L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_finish
  L2_2 = L2_2.transform
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.DrinkMakerBartendProcedure
  L4_2 = L4_2.Deco
  L4_2 = #L4_2
  L4_2 = L1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_mix
  L2_2 = L2_2.transform
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.DrinkMakerBartendProcedure
  L4_2 = L4_2.Ingredient
  L4_2 = #L4_2
  L4_2 = L1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_clear
  L2_2 = L2_2.transform
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.DrinkMakerBartendProcedure
  L4_2 = L4_2.Ingredient
  L4_2 = #L4_2
  L4_2 = L1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_mix_count
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.DrinkMakerBartendProcedure
  L4_2 = L4_2.Ingredient
  L4_2 = #L4_2
  L4_2 = L1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = 1
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.DrinkMakerBartendProcedure
  L3_2 = L3_2.Deco
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_active_steps
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = L5_2 <= L1_2
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_inactive_steps
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = L5_2 > L1_2
    L6_2(L7_2, L8_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_sub_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L7_1[L1_2]
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_next
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_tip_next
  L2_2.IsShowTip = false
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_finish
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_tip_finish
  L2_2.IsShowTip = false
  L3_2 = A0_2
  L2_2 = A0_2._reset_capacity_display
  L2_2(L3_2)
end
L0_1._reset_procedure_states = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._drink_data
  L1_2 = L1_2.IngredientIDs
  L1_2 = L1_2.Count
  L2_2 = A0_2._drink_data
  L2_2 = L2_2.MaxCapacity
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_slots
  L3_2 = #L3_2
  L4_2 = 1
  L5_2 = L3_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_slots
    L8_2 = L8_2[L7_2]
    L9_2 = L8_2
    L8_2 = L8_2.SafeSetActive
    L10_2 = L7_2 <= L2_2
    L8_2(L9_2, L10_2)
  end
  L4_2 = 1
  L5_2 = L3_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_filled_slots
    L8_2 = L8_2[L7_2]
    L9_2 = L8_2
    L8_2 = L8_2.SafeSetActive
    L10_2 = L7_2 <= L1_2
    L8_2(L9_2, L10_2)
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_unfilled_slots
    L8_2 = L8_2[L7_2]
    L9_2 = L8_2
    L8_2 = L8_2.SafeSetActive
    L10_2 = L7_2 > L1_2
    L8_2(L9_2, L10_2)
  end
  L4_2 = A0_2._drink_data
  L4_2 = L4_2.CurProcedure
  L4_2 = #L4_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_cup_slot
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.DrinkMakerBartendProcedure
  L7_2 = L7_2.Deco
  L7_2 = #L7_2
  L7_2 = L4_2 < L7_2 and 0 < L2_2
  L5_2(L6_2, L7_2)
  if L1_2 == L2_2 and 0 < L2_2 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.anim_cup_slot
    L6_2 = L5_2
    L5_2 = L5_2.Play
    L5_2(L6_2)
  end
end
L0_1._reset_capacity_display = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._drink_data
  L2_2 = L1_2
  L1_2 = L1_2.GetMaxMixCount
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._drink_data
  L2_2 = L2_2.LeftMixCount
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_cur_mix_count
  L4_2 = L3_2
  L3_2 = L3_2.SetCustomizedText
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 == 0 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_cur_mix_count
    L4_2 = G
    L4_2 = L4_2.UIColorUtils
    L4_2 = L4_2.GetColor
    L5_2 = "#EB4D3D"
    L4_2 = L4_2(L5_2)
    L3_2.color = L4_2
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_cur_mix_count
    L4_2 = G
    L4_2 = L4_2.UIColorUtils
    L4_2 = L4_2.GetColor
    L5_2 = "#FFFFFF"
    L4_2 = L4_2(L5_2)
    L3_2.color = L4_2
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_total_mix_count
  L4_2 = L3_2
  L3_2 = L3_2.SetCustomizedText
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_mix
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetInteractable
  L5_2 = 0 < L2_2
  L3_2(L4_2, L5_2)
end
L0_1._reset_mix_display = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._panel_procedure
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._drink_data
  L3_2 = L3_2.CurProcedure
  L1_2(L2_2, L3_2)
end
L0_1._setup_new_procedure_view = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._drink_data
  L1_2 = L1_2.CurProcedure
  L2_2 = A0_2._drink_data
  L3_2 = L2_2
  L2_2 = L2_2.CheckIfCurProcedureComplete
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.DrinkMakerBartendProcedure
  L3_2 = L3_2.Deco
  if L1_2 ~= L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_next
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetInteractable
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.mono_tip_next
    L3_2.IsShowTip = L2_2
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_finish
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetInteractable
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.mono_tip_finish
    L3_2.IsShowTip = L2_2
  end
end
L0_1._check_if_cur_procedure_complete = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._panel_target
  L2_2 = L1_2
  L1_2 = L1_2.get_cur_scroll_rect
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L5_2 = L1_2
    L4_2 = L1_2.CanScroll
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = 61
      if L4_2 then
        goto lbl_15
      end
    end
    L4_2 = 31
    ::lbl_15::
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = 31
    L2_2(L3_2, L4_2)
  end
end
L0_1._refresh_game_pad_hint_panel = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._open_mode
  L2_2 = DrinkMakerBartendMode
  L2_2 = L2_2.ChallengeMode
  if L1_2 == L2_2 then
    L1_2 = {}
    return L1_2
  end
  L1_2 = A0_2._request
  L1_2 = L1_2.RequestType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.DrinkMakerRequestSourceType
  L2_2 = L2_2.FromGuideMission
  if L1_2 == L2_2 then
    L1_2 = {}
    return L1_2
  end
  L1_2 = L1_1.DrinkMakerBar
  L1_2 = L1_2.CurGuestRow
  if L1_2 == nil then
    L2_2 = {}
    return L2_2
  end
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = L1_1.DrinkMakerCommentManager
  L4_2 = L3_2
  L3_2 = L3_2.GetRandomComments
  L5_2 = L1_2.GuestID
  L6_2 = A0_2._request
  L7_2 = A0_2._drink_data
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  return L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._get_random_comments = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._in_control_exit_click
  L1_2(L2_2)
end
L0_1._on_btn_close_clicked = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.DrinkMaker.Challenge.DrinkMakerChallengeHintDialog"
  L3_2 = L1_1.CurChallenge
  L3_2 = L3_2.Drink
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_hint_clicked = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ConfirmDialogUtil
  L1_2 = L1_2.ShowOkCancelHint
  L2_2 = "UIText_DrinkMaker_RestartTip"
  L3_2 = ""
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3._fire_empty_command
      L3_3 = DrinkMakerBartendCommandType
      L3_3 = L3_3.Reset
      L1_3(L2_3, L3_3)
    end
  end
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_restart_clicked = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = G
  L3_2 = L3_2.DrinkMakerBartendCommand
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.set_data
  L5_2 = A1_2
  L6_2 = nil
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2.receive_command
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._fire_empty_command = L12_1
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = G
  L3_2 = L3_2.new
  L4_2 = G
  L4_2 = L4_2.DrinkMakerBartendCommand
  L3_2 = L3_2(L4_2)
  L5_2 = L3_2
  L4_2 = L3_2.set_data
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
  return L3_2
end
L0_1._make_command = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._open_mode
  L3_2 = DrinkMakerBartendMode
  L3_2 = L3_2.FreeMode
  if L2_2 == L3_2 then
    L2_2 = A0_2._request
    L3_2 = L2_2
    L2_2 = L2_2.VerifyTags
    L4_2 = A0_2._drink_data
    L5_2 = L4_2
    L4_2 = L4_2.GetAllTagIDs
    L4_2 = L4_2(L5_2)
    L5_2 = A0_2._drink_data
    L6_2 = L5_2
    L5_2 = L5_2.HasIngredientInDrink
    L5_2, L6_2 = L5_2(L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
  else
    L2_2 = A0_2._request
    L3_2 = L2_2
    L2_2 = L2_2.VerifyStep
    L4_2 = A0_2._drink_data
    L4_2 = L4_2.CurProcedure
    L5_2 = A1_2
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._verify = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2.get_blackboard
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.query
  L4_2 = "CurSingleSelection"
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == A1_2 then
    L3_2 = false
    return L3_2
  end
  L4_2 = A0_2
  L3_2 = A0_2.get_blackboard
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2
  L3_2 = L3_2.update
  L5_2 = "CurSingleSelection"
  L6_2 = A1_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._drink_data
  L4_2 = L3_2
  L3_2 = L3_2.SetCup
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._verify
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._panel_procedure
  L4_2 = L3_2
  L3_2 = L3_2.refresh_view
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._panel_target
  L4_2 = L3_2
  L3_2 = L3_2.refresh_targets
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._reset_capacity_display
  L3_2(L4_2)
  L3_2 = true
  return L3_2
end
L0_1._on_cup_select_operation = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2.get_blackboard
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.query
  L4_2 = "CurSingleSelection"
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == A1_2 then
    L3_2 = false
    return L3_2
  end
  L4_2 = A0_2
  L3_2 = A0_2.get_blackboard
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2
  L3_2 = L3_2.update
  L5_2 = "CurSingleSelection"
  L6_2 = A1_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._drink_data
  L4_2 = L3_2
  L3_2 = L3_2.SetIce
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._verify
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._panel_procedure
  L4_2 = L3_2
  L3_2 = L3_2.refresh_view
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._panel_target
  L4_2 = L3_2
  L3_2 = L3_2.refresh_targets
  L3_2(L4_2)
  L3_2 = true
  return L3_2
end
L0_1._on_ice_select_operation = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._drink_data
  L2_2 = L2_2.IngredientIDs
  L2_2 = L2_2.Count
  L3_2 = A0_2._drink_data
  L3_2 = L3_2.MaxCapacity
  if L2_2 >= L3_2 then
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UICenterToastMessageTextID
    L4_2 = L3_1
    L2_2(L3_2, L4_2)
    L2_2 = false
    return L2_2
  end
  L3_2 = A0_2
  L2_2 = A0_2.get_blackboard
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.query
  L4_2 = "CurMultiSelection"
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L3_2 = {}
    L2_2 = L3_2
  end
  L3_2 = L2_2[A1_2]
  if not L3_2 then
    L3_2 = 0
  end
  L3_2 = L3_2 + 1
  L2_2[A1_2] = L3_2
  L4_2 = A0_2
  L3_2 = A0_2.get_blackboard
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2
  L3_2 = L3_2.update
  L5_2 = "CurMultiSelection"
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._drink_data
  L4_2 = L3_2
  L3_2 = L3_2.AddIngredient
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._verify
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._reset_capacity_display
  L3_2(L4_2)
  L3_2 = A0_2._panel_procedure
  L4_2 = L3_2
  L3_2 = L3_2.refresh_view
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._panel_target
  L4_2 = L3_2
  L3_2 = L3_2.refresh_targets
  L3_2(L4_2)
  L3_2 = A0_2._panel_target
  L4_2 = L3_2
  L3_2 = L3_2.refresh_display_tags
  L5_2 = true
  L3_2(L4_2, L5_2)
  A0_2._action_enabled = false
  A0_2._should_wait_ingredient_anim_finish = true
  L3_2 = true
  return L3_2
end
L0_1._on_ingredient_select_operation = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2.get_blackboard
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.query
  L4_2 = "CurSingleSelection"
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == A1_2 then
    L3_2 = false
    return L3_2
  end
  L4_2 = A0_2
  L3_2 = A0_2.get_blackboard
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2
  L3_2 = L3_2.update
  L5_2 = "CurSingleSelection"
  L6_2 = A1_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._drink_data
  L4_2 = L3_2
  L3_2 = L3_2.SetDecoration
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._verify
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._panel_procedure
  L4_2 = L3_2
  L3_2 = L3_2.refresh_view
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._panel_target
  L4_2 = L3_2
  L3_2 = L3_2.refresh_targets
  L3_2(L4_2)
  L3_2 = true
  return L3_2
end
L0_1._on_deco_select_operation = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._drink_data
  L1_2 = L1_2.IngredientIDs
  L1_2 = L1_2.Count
  if not (L1_2 <= 1) then
    L1_2 = A0_2._drink_data
    L1_2 = L1_2.LayerCount
    if not (L1_2 <= 1) then
      goto lbl_21
    end
  end
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UICenterToastMessageTextID
  L3_2 = L4_1
  L1_2(L2_2, L3_2)
  L1_2 = false
  do return L1_2 end
  ::lbl_21::
  L1_2 = A0_2._drink_data
  L1_2 = L1_2.LeftMixCount
  if L1_2 <= 0 then
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2._drink_data
  L2_2 = L1_2
  L1_2 = L1_2.Mix
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._verify
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._reset_mix_display
  L1_2(L2_2)
  L1_2 = A0_2._panel_target
  L2_2 = L1_2
  L1_2 = L1_2.refresh_display_tags
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._panel_target
  L2_2 = L1_2
  L1_2 = L1_2.refresh_targets
  L1_2(L2_2)
  A0_2._action_enabled = false
  A0_2._should_wait_mix_anim_finish = true
  L1_2 = true
  return L1_2
end
L0_1._on_mix_operation = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.get_blackboard
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.update
  L3_2 = "CurMultiSelection"
  L4_2 = nil
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._drink_data
  L2_2 = L1_2
  L1_2 = L1_2.Clear
  L1_2(L2_2)
  L1_2 = A0_2._request
  L2_2 = L1_2
  L1_2 = L1_2.ClearIngredients
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._reset_capacity_display
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._reset_mix_display
  L1_2(L2_2)
  L1_2 = A0_2._panel_procedure
  L2_2 = L1_2
  L1_2 = L1_2.refresh_view
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._panel_target
  L2_2 = L1_2
  L1_2 = L1_2.refresh_display_tags
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._panel_target
  L2_2 = L1_2
  L1_2 = L1_2.refresh_targets
  L1_2(L2_2)
  L1_2 = A0_2._btn_reset_ingredient_click_times
  L1_2 = L1_2 + 1
  A0_2._btn_reset_ingredient_click_times = L1_2
  L1_2 = true
  return L1_2
end
L0_1._on_ingredients_clear_operation = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.get_blackboard
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.update
  L3_2 = "CurSingleSelection"
  L4_2 = nil
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.get_blackboard
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.update
  L3_2 = "CurMultiSelection"
  L4_2 = nil
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._drink_data
  L2_2 = L1_2
  L1_2 = L1_2.Reset
  L1_2(L2_2)
  L1_2 = A0_2._request
  L2_2 = L1_2
  L1_2 = L1_2.ResetAll
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._reset_capacity_display
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._reset_mix_display
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._reset_procedure_states
  L1_2(L2_2)
  L1_2 = A0_2._panel_procedure
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._drink_data
  L3_2 = L3_2.CurProcedure
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._panel_target
  L2_2 = L1_2
  L1_2 = L1_2.refresh_view
  L3_2 = A0_2._drink_data
  L3_2 = L3_2.CurProcedure
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
  L1_2 = A0_2._btn_reset_all_click_times
  L1_2 = L1_2 + 1
  A0_2._btn_reset_all_click_times = L1_2
  L1_2 = true
  return L1_2
end
L0_1._on_reset_operation = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._panel_procedure
  L2_2 = L1_2
  L1_2 = L1_2.check_if_current_step_finished
  L1_2, L2_2 = L1_2(L2_2)
  if not L1_2 then
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UICenterToastMessageTextID
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L3_2 = false
    return L3_2
  end
  L3_2 = A0_2._panel_target
  L4_2 = L3_2
  L3_2 = L3_2.check_if_current_step_finished
  L3_2, L4_2 = L3_2(L4_2)
  L2_2 = L4_2
  L1_2 = L3_2
  if not L1_2 then
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UICenterToastMessageTextID
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L3_2 = false
    return L3_2
  end
  L4_2 = A0_2
  L3_2 = A0_2.get_blackboard
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2
  L3_2 = L3_2.update
  L5_2 = "CurSingleSelection"
  L6_2 = nil
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2.get_blackboard
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2
  L3_2 = L3_2.update
  L5_2 = "CurMultiSelection"
  L6_2 = nil
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._drink_data
  L4_2 = L3_2
  L3_2 = L3_2.MoveNext
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._reset_procedure_states
  L3_2(L4_2)
  L3_2 = A0_2._panel_procedure
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A0_2._drink_data
  L5_2 = L5_2.CurProcedure
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._panel_target
  L4_2 = L3_2
  L3_2 = L3_2.refresh_view
  L5_2 = A0_2._drink_data
  L5_2 = L5_2.CurProcedure
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CoroutineUtils
  L3_2 = L3_2.InvokeNextFrame
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.force_set_first_navigation_target
    L0_3(L1_3)
  end
  L3_2(L4_2)
  L3_2 = true
  return L3_2
end
L0_1._on_move_next_operation = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._panel_target
  L2_2 = L1_2
  L1_2 = L1_2.check_if_current_step_finished
  L1_2, L2_2 = L1_2(L2_2)
  L3_2 = A0_2._is_restart_disabled
  if not L3_2 and not L1_2 then
    L3_2 = A0_2._open_mode
    L4_2 = DrinkMakerBartendMode
    L4_2 = L4_2.FreeMode
    if L3_2 == L4_2 then
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.ConfirmDialogUtil
      L3_2 = L3_2.ShowOkCancelHint
      L4_2 = L2_2
      L5_2 = ""
      function L6_2(A0_3)
        local L1_3, L2_3
        if A0_3 then
          L1_3 = A0_2
          L2_3 = L1_3
          L1_3 = L1_3._async_finish
          L1_3(L2_3)
        end
      end
      L3_2(L4_2, L5_2, L6_2)
    else
      L3_2 = G
      L3_2 = L3_2.NotifyManager
      L3_2 = L3_2.notify
      L4_2 = G
      L4_2 = L4_2.CS
      L4_2 = L4_2.NotifyType
      L4_2 = L4_2.UICenterToastMessageTextID
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    end
    L3_2 = false
    return L3_2
  end
  L3_2 = A0_2._drink_data
  L4_2 = L3_2
  L3_2 = L3_2.ConfirmMakingDrink
  L5_2 = A0_2._request
  L3_2(L4_2, L5_2)
  L3_2 = true
  return L3_2
end
L0_1._on_finish_drink_operation = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._drink_data
  L2_2 = L1_2
  L1_2 = L1_2.ConfirmMakingDrink
  L3_2 = A0_2._request
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.DrinkMakerBartendCommand
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_data
  L4_2 = DrinkMakerBartendCommandType
  L4_2 = L4_2.FinishDrink
  L5_2 = nil
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._bartend_ui3d
  L3_2 = L2_2
  L2_2 = L2_2.receive_command
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._async_finish = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L11_1
  if A1_2 ~= L2_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.CoroutineUtils
  L2_2 = L2_2.InvokeNextFrame
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._init_ui_navigation
    L0_3(L1_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._refresh_game_pad_hint_panel
    L0_3(L1_3)
  end
  L2_2(L3_2)
end
L0_1._on_page_anim_key_frame = L12_1
function L12_1(A0_2)
  local L1_2
  A0_2._should_wait_ingredient_anim_finish = false
  A0_2._action_enabled = true
end
L0_1._on_add_ingredient_finish = L12_1
function L12_1(A0_2)
  local L1_2
  A0_2._should_wait_mix_anim_finish = false
  A0_2._action_enabled = true
end
L0_1._on_mix_finish = L12_1
return L0_1
