local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.SymbolDetail.RewardCollection.MapRewardCollectionDetailItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLiteBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.QuestModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "MapRewardCollectionDetailItemPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2.quest_id
  A0_2._quest_id = L2_2
  L2_2 = A1_2.last_quest_id
  A0_2._last_quest_id = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.QuestDataExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._quest_id
  L2_2 = L2_2(L3_2)
  A0_2._quest_row = L2_2
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.TryGetQuestData
  L4_2 = A0_2._quest_id
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._quest_data = L2_2
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.TryGetQuestData
  L4_2 = A0_2._last_quest_id
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._last_quest_data = L2_2
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.CreateRewardItemTableSorted
  L3_2 = A0_2._quest_row
  L3_2 = L3_2.RewardID
  L2_2 = L2_2(L3_2)
  A0_2._reward_list = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.reward_list_view
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._reward_list
  L4_2 = #L4_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.reward_list_view
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.FinishWayExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._quest_row
  L3_2 = L3_2.FinishWayID
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_progress_title
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = "UIText_Origamibird_MapinfoTargetMin"
  L6_2 = L2_2.Progress
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._last_quest_data
  L3_2 = L3_2.Progress
  L4_2 = "/"
  L5_2 = L2_2.Progress
  L3_2 = L3_2 .. L4_2 .. L5_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_progress_detail
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_list_view
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_reward_list_view_changed
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
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
  L5_2 = A0_2._reward_list
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2.ItemID
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_count
  L8_2 = L5_2.Count
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_attachment_getted
  L8_2 = A0_2._quest_data
  L8_2 = L8_2.Status
  L9_2 = CS
  L9_2 = L9_2.LEOGBBOPKKO
  L9_2 = L9_2.CMOFEAFMGAK
  L8_2 = L8_2 == L9_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L1_1._on_reward_list_view_changed = L2_1
return L1_1
