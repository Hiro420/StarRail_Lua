local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AchievementListInfoPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
function L2_1()
  local L0_2, L1_2
  L0_2 = "UI/Achievement/Widget/AchievementListInfoRowTemplate.prefab"
  return L0_2
end
L0_1.get_prefab_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlButton
  L4_2 = "Contents/BtnGet"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.reward_in_control_button = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlTip
  L4_2 = "Contents/BtnGet/TextPanel/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.reward_in_control_tip = L1_2
  L1_2 = L1_1.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.root
  L4_2 = "Contents/QuestDetail2/Title"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.title_text = L1_2
  L1_2 = L1_1.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.root
  L4_2 = "Contents/QuestDetail2/TextLimit/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.desc_text = L1_2
  L1_2 = L1_1.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.LayoutElement
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.root
  L4_2 = "Contents/QuestDetail2/TextLimit"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.desc_element = L1_2
  L1_2 = L1_1.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.root
  L4_2 = "Contents/ArrowIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.desc_resize_btn = L1_2
  L1_2 = A0_2.desc_resize_btn
  L1_2 = L1_2.transform
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = L1_1.SafeFind
  L2_2 = A0_2.root
  L3_2 = "Contents/Reward"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.tab_control_root = L1_2
  L1_2 = L1_1.SafeFind
  L2_2 = A0_2.root
  L3_2 = "Contents/Reward/CommonItemIcon1"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.item1 = L1_2
  L1_2 = L1_1.SafeFind
  L2_2 = A0_2.root
  L3_2 = "Contents/Reward/CommonItemIcon2"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.item2 = L1_2
  L1_2 = L1_1.SafeFind
  L2_2 = A0_2.root
  L3_2 = "Contents/Completed"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.status_root = L1_2
  L1_2 = L1_1.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.root
  L4_2 = "Contents/Completed/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.status = L1_2
  L1_2 = L1_1.SafeFind
  L2_2 = A0_2.root
  L3_2 = "Contents/Completed/TextTitle"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.status_title_root = L1_2
  L1_2 = L1_1.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.root
  L4_2 = "Contents/Completed/TextTitle/CurrentNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.num1 = L1_2
  L1_2 = L1_1.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.root
  L4_2 = "Contents/Completed/TextTitle/Image"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.bg_img = L1_2
  L1_2 = L1_1.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.root
  L4_2 = "Contents/BtnGet"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.reward_btn = L1_2
  L1_2 = L1_1.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.root
  L4_2 = "Contents/BtnGet/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.reward_text = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/Completed/Progress"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.progress_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/Completed/Progress/CurrentNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.cur_progress_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/Completed/Progress/TotalNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.ttl_progress_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/Completed/Progress2"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.long_range_progress_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/Completed/Progress2/CurrentNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.long_range_cur_progress_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/Completed/Progress2/TotalPanel/TotalNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.long_range_ttl_progress_num = L1_2
  L1_2 = L1_1.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.root
  L4_2 = "Contents/Bg/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.rarity_icon = L1_2
  L1_2 = L1_1.SafeFind
  L2_2 = A0_2.root
  L3_2 = "Contents/Completed/PanelMask"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.complete_icon = L1_2
  L1_2 = L1_1.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlTip
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.root
  L4_2 = "Contents/ArrowIcon/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.localized_tip = L1_2
  L1_2 = L1_1.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.root
  L4_2 = "Contents/ArrowIcon/Img"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.localized_img = L1_2
  L1_2 = A0_2.localized_tip
  L1_2 = L1_2.transform
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = L1_1.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.root
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.animation_cmpt = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/QuestDetail2/TextLimit/Total"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.record_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/QuestDetail2/TextLimit/Total/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.record_text = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/QuestDetail2/TextLimit/Total/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.record_value = L1_2
end
L0_1._on_bind = L2_1
return L0_1
