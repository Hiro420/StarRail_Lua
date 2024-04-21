local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Activity.QuestChallenge.ChallengeActResultDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.QuestChallenge.ChallengeInfoItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.QuestChallenge.ChallengeInfoItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.RaidUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UIUtils.UIColorUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeActResultDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.UIColorUtils
L1_1 = L1_1.GetColor
L2_1 = "#ffffff"
L1_1 = L1_1(L2_1)
L2_1 = G
L2_1 = L2_1.UIColorUtils
L2_1 = L2_1.GetColor
L3_1 = "#fefbdd"
L2_1 = L2_1(L3_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ChallengeActResultDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._data = A1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.ActivityModule
  L3_2 = L2_2
  L2_2 = L2_2.GetChallengeActivityData
  L2_2 = L2_2(L3_2)
  A0_2._challenge_act_data = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._init_score_data
  L2_2(L3_2)
end
L0_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_restart
  L4_2 = A0_2._on_btn_restart
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.score_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_score_item_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_score
  L1_2(L2_2)
  L1_2 = A0_2._fade_animation
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.anim_root
    L2_2 = L1_2
    L1_2 = L1_2.AddAnimationEvent
    L3_2 = "BattleResultV1_FadeIn"
    function L4_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._refresh_new_record
      L0_3(L1_3)
    end
    L1_2(L2_2, L3_2, L4_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._refresh_new_record
    L1_2(L2_2)
  end
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  A0_2._score_data = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ChallengeActivityRaidConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._data
  L2_2 = L2_2.RaidID
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.RaidUtils
  L2_2 = L2_2.get_scoring_id_list
  L3_2 = L1_2.ScoringGroupID
  L2_2 = L2_2(L3_2)
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = {}
    L8_2.ScoreID = L7_2
    L9_2 = A0_2._data
    L9_2 = L9_2.AllScoringItem
    L10_2 = L9_2
    L9_2 = L9_2.ContainsKey
    L11_2 = L8_2.ScoreID
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 then
      L9_2 = A0_2._data
      L9_2 = L9_2.AllScoringItem
      L10_2 = L8_2.ScoreID
      L9_2 = L9_2[L10_2]
      L8_2.Value = L9_2
    else
      L8_2.Value = 0
    end
    L9_2 = A0_2._score_data
    L10_2 = A0_2._score_data
    L10_2 = #L10_2
    L10_2 = L10_2 + 1
    L9_2[L10_2] = L8_2
  end
end
L0_1._init_score_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_score
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._data
  L3_2 = L3_2.TotalScore
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._data
  L1_2 = L1_2.IsNewRecord
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_score
    L2_2 = L2_1
    L1_2.color = L2_2
  end
  L1_2 = A0_2._challenge_act_data
  L2_2 = L1_2
  L1_2 = L1_2.GetChallengeActMarkRowByScore
  L3_2 = A0_2._data
  L3_2 = L3_2.TotalScore
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_mark
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2 ~= nil
  L2_2(L3_2, L4_2)
  if L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_mark
    L5_2 = L1_2.MarkIconPath
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._refresh_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.score_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._score_data
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.score_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._refresh_score = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_new_score
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._data
  L3_2 = L3_2.IsNewRecord
  L1_2(L2_2, L3_2)
end
L0_1._refresh_new_record = L3_1
function L3_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.ChallengeInfoItemPanel
    L8_2 = G
    L8_2 = L8_2.ChallengeInfoItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._score_data
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.set_color
  L8_2 = L1_1
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2.ScoreID
  L9_2 = true
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_score
  L8_2 = L5_2.Value
  L6_2(L7_2, L8_2)
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.UI
  L6_2 = L6_2.LayoutRebuilder
  L6_2 = L6_2.ForceRebuildLayoutImmediate
  L7_2 = L3_2.transform
  L6_2(L7_2)
  return L3_2
end
L0_1._on_score_item_change = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._close_dialog
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.RaidModule
  L2_2 = L1_2
  L1_2 = L1_2.LeaveRaid
  L1_2(L2_2)
end
L0_1._on_btn_exit = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._close_dialog
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.RaidModule
  L2_2 = L1_2
  L1_2 = L1_2.RestartRaid
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ActivityModule
  L2_2 = L1_2
  L1_2 = L1_2.GetChallengeActivityData
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.ClearNewScoreCache
  L1_2(L2_2)
end
L0_1._on_btn_restart = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._close_dialog = L3_1
return L0_1
