local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerBartendTagRequestPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/IconPanel/Normal"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_normal = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/IconPanel/Correct"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_finished = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "Root/IconPanel/Correct"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_finished = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_request_desc = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "MixInfo/Root/StepInfoItem1/NumPanel/Normal"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[1] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "MixInfo/Root/StepInfoItem1/NumPanel/Correct"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[2] = L2_2
  A0_2.node_sub_tag_state = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "MixInfo/Root/StepInfoItem2/NumPanel/Normal"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[1] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "MixInfo/Root/StepInfoItem2/NumPanel/Correct"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[2] = L2_2
  A0_2.node_mix_state = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.LocalizedText
  L5_2 = "MixInfo/Root/StepInfoItem1/NumPanel/Normal/NumText"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2[1] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.LocalizedText
  L5_2 = "MixInfo/Root/StepInfoItem2/NumPanel/Normal/NumText"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2[2] = L2_2
  A0_2.text_order = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Image
  L5_2 = "MixInfo/Root/StepInfoItem1/StepDescTextItem1/Num/Icon"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2[1] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Image
  L5_2 = "MixInfo/Root/StepInfoItem1/StepDescTextItem2/Num/Icon"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2[2] = L2_2
  A0_2.img_tag_icon = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.LocalizedText
  L5_2 = "MixInfo/Root/StepInfoItem1/StepDescTextItem1/Num/Num"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2[1] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.LocalizedText
  L5_2 = "MixInfo/Root/StepInfoItem1/StepDescTextItem2/Num/Num"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2[2] = L2_2
  A0_2.text_tag_value = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.LocalizedText
  L5_2 = "MixInfo/Root/StepInfoItem1/StepDescTextItem1/Text"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2[1] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.LocalizedText
  L5_2 = "MixInfo/Root/StepInfoItem1/StepDescTextItem2/Text"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2[2] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.LocalizedText
  L5_2 = "MixInfo/Root/StepInfoItem2/StepDescText"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2[3] = L2_2
  A0_2.text_tag_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "MixInfo/Root/Bg/CheckBg"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_all_finish = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "MixInfo/Root/Bg/CheckBg"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_sub_steps = L1_2
end
L0_1.on_mix_tag_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Num"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_hint_detail = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/Num/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/Num/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_icon = L1_2
end
L0_1.on_normal_tag_bind = L1_1
return L0_1