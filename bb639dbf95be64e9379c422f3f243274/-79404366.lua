local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FindTrotterRecordItemPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "TitleName/Name"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "RecordDirection"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_direction = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RecordResult"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_result = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "RecordResult"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_result = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Finish"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_finished = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RecordPreconditions"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_wait_pre = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RecordRemainTime"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_wait_time = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoRemainTimer
  L4_2 = "RecordRemainTime/RemainTime"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.remain_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "RecordPreconditions"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_Activity_FindTrotter_Next_UnlockByMission"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "RecordRemainTime/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_Activity_FindTrotter_Next_UnlockByTime"
  L1_2(L2_2, L3_2)
end
L0_1._on_bind = L1_1
return L0_1
