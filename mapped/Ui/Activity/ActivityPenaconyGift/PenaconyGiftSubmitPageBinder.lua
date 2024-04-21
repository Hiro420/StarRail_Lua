local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PenaconyGiftSubmitPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/PenaconyGift/PenaconyGiftSubmitPage.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/PanelContent/RightPanelBlurRoot/SubmitPanel/PenaconyGiftSubmitPanel/NamePanel/NameText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/PanelContent/RightPanelBlurRoot/SubmitPanel/PenaconyGiftSubmitPanel/DescribePanel/TextMask/ScrollView/Viewport/Content/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "Root/PanelContent/RightPanelBlurRoot/SubmitPanel/PenaconyGiftSubmitPanel/RewardPanel/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_reward = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/PanelContent/RightPanelBlurRoot/SubmitPanel/GiftList/BtnPanel/BtnSubmit"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_submit = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/BtnClose/Btn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/PanelContent/BtnGiftBook"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_gift_book = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/PanelContent/RightPanelBlurRoot/SubmitPanel/PenaconyGiftSubmitPanel/DescribePanel/TextMask/AvatarPhoto/Avatar/Img"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_gift = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/PanelContent/RightPanelBlurRoot/SubmitPanel/GiftList/Reward"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_material = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PrefabLoadMeta
  L4_2 = "Root/PanelContent/RightPanelBlurRoot/SubmitPanel/GiftList/Reward"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.prefab_load = L1_2
end
L0_1._on_bind = L1_1
return L0_1
