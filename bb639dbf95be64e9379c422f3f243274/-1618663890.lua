local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Heliobus.HeliobusGhostFirePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusGhostFirePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_reward
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._quest_data = A1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.FinishWayExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2.DataRow
  L3_2 = L3_2.FinishWayID
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_title
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A1_2.DataRow
  L5_2 = L5_2.QuestTitle
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_progress
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A1_2.DataRow
  L5_2 = L5_2.QuestDisplay
  L6_2 = L2_2.ParamInt1
  L7_2 = L2_2.ParamInt2
  L8_2 = L2_2.ParamInt3
  L9_2 = L2_2.Progress
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = A1_2.Status
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_lock
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = CS
  L6_2 = L6_2.BLHLCHNAJKK
  L6_2 = L6_2.BILIHDBLNBB
  L6_2 = L3_2 == L6_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_progress
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = CS
  L6_2 = L6_2.BLHLCHNAJKK
  L6_2 = L6_2.BMEAGBEFNFK
  L6_2 = L3_2 == L6_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_finish
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = CS
  L6_2 = L6_2.BLHLCHNAJKK
  L6_2 = L6_2.CDJHHIHBNMN
  L6_2 = L3_2 == L6_2
  L4_2(L5_2, L6_2)
  L4_2 = A1_2.Progress
  if L4_2 then
    L4_2 = A1_2.TotalProgress
    if L4_2 then
      L4_2 = A0_2._binder
      L4_2 = L4_2.text_progress_cur
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetText
      L6_2 = A1_2.Progress
      L4_2(L5_2, L6_2)
      L4_2 = A0_2._binder
      L4_2 = L4_2.text_progress_total
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetText
      L6_2 = A1_2.TotalProgress
      L4_2(L5_2, L6_2)
    end
  end
  L4_2 = G
  L4_2 = L4_2.RewardUtils
  L4_2 = L4_2.CreateRewardItemTableSorted
  L5_2 = A1_2.RewardID
  L4_2 = L4_2(L5_2)
  A0_2._reward_data = L4_2
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
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
  L5_2 = A0_2._reward_data
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
  L9_2 = L9_2.BLHLCHNAJKK
  L9_2 = L9_2.FMLBEGJJHMJ
  L8_2 = L8_2 == L9_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L0_1._on_reward_item_list_changed = L1_1
return L0_1
