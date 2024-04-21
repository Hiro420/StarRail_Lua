local L0_1, L1_1, L2_1, L3_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.TimeUtils
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "FriendChatMessageDividerItemPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L0_1.GetTimeStringByTimeStampInSeconds
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt
  L4_2 = L3_2
  L3_2 = L3_2.SetCustomizedText
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.LayoutRebuilder
  L3_2 = L3_2.ForceRebuildLayoutImmediate
  L4_2 = A0_2._binder
  L4_2 = L4_2.root
  L3_2(L4_2)
end
L1_1.setup_view = L2_1
return L1_1
