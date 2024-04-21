local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Challenge.Monster.ChallengeMonsterPreviewDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.Monster.ChallengeMonsterRowListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.Monster.ChallengeMonsterRowListPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeMonsterPreviewDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L0_1._dialog_title_textid = "ChallengeMaze_monster"
L0_1._single_stage_title_textid = "ChallengeMaze_singlebattle"
L1_1 = {}
L1_1[1] = "ChallengeMaze_firstbattle"
L1_1[2] = "ChallengeMaze_secondbattle"
L0_1._multiple_stage_title_textid = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ChallengeMonsterPreviewDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg_exit
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = {}
  A0_2._stage_title_table = L2_2
  L2_2 = {}
  A0_2._stage_monster_data_table = L2_2
  L2_2 = A1_2.StageNum
  if L2_2 == 1 then
    L4_2 = A1_2
    L3_2 = A1_2.GetMonsterDataByStageIndex
    L5_2 = 0
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = A0_2._stage_title_table
    L6_2 = L0_1._single_stage_title_textid
    L4_2(L5_2, L6_2)
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = A0_2._stage_monster_data_table
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
    return
  end
  L3_2 = 0
  L4_2 = L2_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L8_2 = A1_2
    L7_2 = A1_2.GetMonsterDataByStageIndex
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._stage_title_table
    L10_2 = L0_1._multiple_stage_title_textid
    L11_2 = L6_2 + 1
    L10_2 = L10_2[L11_2]
    L8_2(L9_2, L10_2)
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._stage_monster_data_table
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L0_1._dialog_title_textid
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_stages
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = A0_2._stage_title_table
  L3_2 = #L3_2
  L4_2 = A0_2._on_stage_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.ChallengeMonsterRowListPanel
    L8_2 = G
    L8_2 = L8_2.ChallengeMonsterRowListPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._stage_title_table
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L6_2 = A0_2._stage_monster_data_table
  L7_2 = A2_2 + 1
  L6_2 = L6_2[L7_2]
  if L5_2 ~= nil and L6_2 ~= nil then
    L8_2 = L4_2
    L7_2 = L4_2.setup_view
    L9_2 = L5_2
    L10_2 = L6_2
    L7_2(L8_2, L9_2, L10_2)
  end
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.UI
  L7_2 = L7_2.LayoutRebuilder
  L7_2 = L7_2.ForceRebuildLayoutImmediate
  L8_2 = L3_2.transform
  L7_2(L8_2)
  L8_2 = A1_2
  L7_2 = A1_2.OnItemSizeChanged
  L9_2 = A2_2
  L7_2(L8_2, L9_2)
  return L3_2
end
L0_1._on_stage_change = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close = L1_1
return L0_1
