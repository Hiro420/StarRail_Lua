local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RoleTrialActivityInfoPanelBinderB"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "RewardPanel/AvatarPanel/RewardList/ItemList_B/StatusPanel/BtnCommonWhite"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_reward = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "NamePanel_B/AvatarInfo/NamePanel/DamageType/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_damage_type = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "NamePanel_B/ProfessionPanel/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_profession_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "ImgQuestMissionBg/ImgBg_B/BgRatioFitter/AvatarBg"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "ImgQuestMissionBg/ImgBg_B/ImgRatioFitter/AvatarImg/AvatarImg"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_avatar = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "ImgQuestMissionBg/ImgBg_B/ImgRatioFitter/AvatarImg/AvatarImgBack"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_avatar_back = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "ImgQuestMissionBg/ImgBg_B/ImgRatioFitter/AvatarImg/AvatarImgFront"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_avatar_front = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "NamePanel_B/AvatarInfo/NamePanel/RoleNameInfo/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "NamePanel_B/ProfessionPanel/TitlePanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_profession_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopGridView
  L4_2 = "RewardPanel/AvatarPanel/RewardList/ItemList_B/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.reward_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "NamePanel_B/AvatarInfo/NamePanel/MainStarPanel"
  L6_2 = G
  L6_2 = L6_2.RarityStarInfoPanel
  L7_2 = G
  L7_2 = L7_2.RarityStarInfoPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.star_list_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "RewardPanel/AvatarPanel/RewardList/ItemList_B/StatusPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_onging = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RewardPanel/AvatarPanel/RewardList/ItemList_B/StatusPanel/Text"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_ongoing = L1_2
end
L0_1._on_bind = L1_1
return L0_1
