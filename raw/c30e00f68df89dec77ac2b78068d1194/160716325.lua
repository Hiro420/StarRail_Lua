local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeActRewardItemPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_static_text
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Contents/BtnPanel/BtnGet"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_receive = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlButton
  L4_2 = "Root/Contents/BtnPanel/BtnGet"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.receive_in_control_button = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/BtnPanel/BtnGet/TextPanel/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.receive_in_control_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlTip
  L4_2 = "Root/Contents/BtnPanel/BtnGet/TextPanel/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.mono_in_control_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/DescContents/MainPanel/TextPanel/Up/TextNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_count = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopGridView
  L4_2 = "Root/Contents/RewardListInfinited/ScrollViewMask/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.item_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/BtnPanel/InProgressPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_state = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/BtnPanel/GotPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_received = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/DescContents/MainPanel/TextPanel/Up/TextTitle"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_ChallengeActivity_TotalScore"
  L1_2(L2_2, L3_2)
end
L0_1._setup_static_text = L1_1
return L0_1