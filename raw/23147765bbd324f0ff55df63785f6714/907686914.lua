local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Puzzle.MovieRacing.MovieRacingChallengeTargetInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MovieRacingChallengeTargetInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.QuestModule
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.TryGetQuestData
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = G
  L3_2 = L3_2.RewardUtils
  L3_2 = L3_2.CreateRewardItemTableSorted
  L4_2 = L2_2.RewardID
  L3_2 = L3_2(L4_2)
  L4_2 = {}
  A0_2._reward_item_data_list = L4_2
  L4_2 = {}
  A0_2._reward_item_set = L4_2
  L4_2 = ipairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = A0_2._reward_item_data_list
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
    L9_2 = A0_2._reward_item_set
    L10_2 = L8_2.ItemID
    L9_2[L10_2] = A1_2
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.animator_challenge_target
  L5_2 = L4_2
  L4_2 = L4_2.ResetTrigger
  L6_2 = "Succeed"
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.animator_challenge_target
  L5_2 = L4_2
  L4_2 = L4_2.ResetTrigger
  L6_2 = "Pending"
  L4_2(L5_2, L6_2)
  L4_2 = L2_2.Status
  L5_2 = CS
  L5_2 = L5_2.LEOGBBOPKKO
  L5_2 = L5_2.CMOFEAFMGAK
  if L4_2 == L5_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.animator_challenge_target
    L5_2 = L4_2
    L4_2 = L4_2.SetTrigger
    L6_2 = "Succeed"
    L4_2(L5_2, L6_2)
  else
    L4_2 = A0_2._binder
    L4_2 = L4_2.animator_challenge_target
    L5_2 = L4_2
    L4_2 = L4_2.SetTrigger
    L6_2 = "Pending"
    L4_2(L5_2, L6_2)
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.QuestDataExcelTable
  L4_2 = L4_2.GetData
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.FinishWayExcelTable
  L5_2 = L5_2.GetData
  L6_2 = L4_2.FinishWayID
  L5_2 = L5_2(L6_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.text_title
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetTextID
  L8_2 = "MazeText_Maze_GamePlay_Movie_RewardTarget"
  L9_2 = L5_2.ParamInt1
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.challenge_goods_list_view
  L7_2 = L6_2
  L6_2 = L6_2.SetListItemCount
  L8_2 = A0_2._reward_item_data_list
  L8_2 = #L8_2
  L9_2 = true
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.challenge_goods_list_view
  L7_2 = L6_2
  L6_2 = L6_2.RefreshAllShownItem
  L6_2(L7_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.challenge_goods_list_view
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_goods_item_changed
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.RewardItemIconLite
    L8_2 = G
    L8_2 = L8_2.RewardItemIconLiteBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._reward_item_data_list
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2.ItemID
  L6_2 = A0_2._reward_item_data_list
  L7_2 = A2_2 + 1
  L6_2 = L6_2[L7_2]
  L6_2 = L6_2.Count
  L8_2 = L4_2
  L7_2 = L4_2.setup_view
  L9_2 = L5_2
  L7_2(L8_2, L9_2)
  L8_2 = L4_2
  L7_2 = L4_2.set_count
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L8_2 = L4_2
  L7_2 = L4_2.set_count_display
  L9_2 = true
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._reward_item_set
  L7_2 = L7_2[L5_2]
  L8_2 = L1_1
  L9_2 = L8_2
  L8_2 = L8_2.TryGetQuestData
  L10_2 = L7_2
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = L8_2.Status
  L10_2 = CS
  L10_2 = L10_2.LEOGBBOPKKO
  L10_2 = L10_2.CMOFEAFMGAK
  if L9_2 == L10_2 then
    L10_2 = L4_2
    L9_2 = L4_2.set_attachment_getted
    L11_2 = true
    L9_2(L10_2, L11_2)
  else
    L10_2 = L4_2
    L9_2 = L4_2.set_attachment_getted
    L11_2 = false
    L9_2(L10_2, L11_2)
  end
  return L3_2
end
L0_1._on_goods_item_changed = L2_1
return L0_1
