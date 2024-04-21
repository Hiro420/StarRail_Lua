local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TreasureDungeonResultDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/TreasureDungeon/TreasureDungeonResultDialog.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "BtnPanel/BtnLeft"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_confirm = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/TitlePanel/GlowBg/RoundNumPanel/RoundNumTitle/RoundTitle"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_progress = L1_2
  L1_2 = {}
  A0_2.info_text_list = L1_2
  L1_2 = 1
  L2_2 = 7
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2._add_info_text
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._add_info_text
  L3_2 = 9
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_info_text
  L3_2 = 10
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_info_text
  L3_2 = 11
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/ScrollView/Viewport/Content/QuestChallengeInfoItem10/TxtTitle"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_atk_ex_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Contents/ScrollView/Viewport/Content/QuestChallengeInfoItem10/LeftIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_atk_ex = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = string
  L2_2 = L2_2.format
  L3_2 = "Contents/ScrollView/Viewport/Content/QuestChallengeInfoItem%d/Num"
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2.info_text_list
  L4_2 = A0_2.info_text_list
  L4_2 = #L4_2
  L4_2 = L4_2 + 1
  L6_2 = A0_2
  L5_2 = A0_2._safe_get_cmpt
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.UI
  L7_2 = L7_2.Text
  L8_2 = L2_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L3_2[L4_2] = L5_2
end
L0_1._add_info_text = L1_1
return L0_1
