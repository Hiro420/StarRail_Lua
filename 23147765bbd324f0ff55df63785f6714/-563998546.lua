local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.BoxingClub.BoxingClubLossDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BoxingClubLossDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.BoxingClubModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.BoxingClubLossDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_resp_esc = false
  A0_2._block_input = true
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._challenge_id = A2_2
  A0_2._info = A1_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.exit_btn
  L4_2 = A0_2._on_exit_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.restart_btn
  L4_2 = A0_2._on_restart_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_round
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_level_hint
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_weakness
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_tips
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.cur_round_index
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._info
  L3_2 = L3_2.CurStageIndex
  L3_2 = L3_2 + 1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.total_round_index
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._info
  L3_2 = L3_2.TotalStageIndex
  L1_2(L2_2, L3_2)
end
L0_1._setup_round = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_recommend_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._info
  L3_2 = L3_2.RecommendLevel
  L1_2(L2_2, L3_2)
end
L0_1._setup_level_hint = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2._info
  L2_2 = L2_2.Weakness
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.weakness_list
  L3_2 = L2_2
  L2_2 = L2_2.rebind_child_node
  L4_2 = #L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.weakness_list
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.weakness_list
    L8_2 = L7_2
    L7_2 = L7_2.get_panel_by_index
    L9_2 = L5_2
    L7_2 = L7_2(L8_2, L9_2)
    L9_2 = L7_2
    L8_2 = L7_2.setup_by_damage_type_icon_path
    L10_2 = L1_2[L5_2]
    L8_2(L9_2, L10_2)
  end
end
L0_1._setup_weakness = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.UtilEngineWrap
  L2_2 = L2_2.IsCsType
  L3_2 = L1_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.BattleGamePhase
  L2_2 = L1_2 ~= nil and L2_2
  if L2_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.BattleTipUtils
    L3_2 = L3_2.GetOneFailureTip
    L3_2 = L3_2()
    if L3_2 then
      L4_2 = A0_2._binder
      L4_2 = L4_2.recommendation_txt
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetTextID
      L6_2 = L3_2.TipContent
      L4_2(L5_2, L6_2)
    end
  end
end
L0_1._setup_tips = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit_btn_clicked = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.BoxingClubChallengeSeasonConfigExcelTable
  L1_2 = L1_2.GetChallengeIDType
  L2_2 = A0_2._challenge_id
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.BoxingClubActivityType
  L2_2 = L2_2.First
  if L1_2 == L2_2 then
    L2_2 = L1_1
    L3_2 = L2_2
    L2_2 = L2_2.TryShowChallengeMainPage
    L4_2 = A0_2._challenge_id
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.BoxingClubActivityType
    L2_2 = L2_2.Second
    if L1_2 == L2_2 then
      L2_2 = L1_1
      L3_2 = L2_2
      L2_2 = L2_2.TryShowResonanceChallengeMainPage
      L4_2 = A0_2._challenge_id
      L2_2(L3_2, L4_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
end
L0_1._on_restart_btn_clicked = L2_1
return L0_1
