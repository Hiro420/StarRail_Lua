local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PunkLordScoreDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/AntiVirus/AntiVirusResult/AntiVirusResultPixelDialog.prefab"
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
  L4_2 = "Bg"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "KillDonePanel/Contents/LeftPanel/MonsterHeadNode/Mask/MonterHeadIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_monster = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "KillDonePanel/Contents/LeftPanel/InfoPanel/TitleName"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "KillDonePanel/Contents/LeftPanel/InfoPanel/TextPanel/TotalNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_level = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "KillDonePanel/Contents/KillInfoListPanel/KillInfoListItem1/Content/TxtValue"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_cur_damage = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "KillDonePanel/Contents/KillInfoListPanel/KillInfoListItem2/Content/TxtValue"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_cur_damage_ratio = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "KillDonePanel/Contents/BoxScoreDetail/ScorePanel/Root/TotalScoreItem/TxtValue"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_score = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "KillDonePanel/Contents/BoxScoreDetail/BoxValues"
  L6_2 = "Ui.Activity.ActivityPunkLord.Widget.PunkLordScoreInfoRowPanel"
  L7_2 = "Ui.Activity.ActivityPunkLord.Widget.PunkLordScoreInfoRowPanelBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.panel_score_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "KillDonePanel/Contents/KillInfoListPanel/KillInfoListItem3/Content/BoxStars/Star1"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_rare_star_1 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "KillDonePanel/Contents/KillInfoListPanel/KillInfoListItem3/Content/BoxStars/Star2"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_rare_star_2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "KillDonePanel/Contents/KillInfoListPanel/KillInfoListItem3/Content/BoxStars/Star3"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_rare_star_3 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.SmoothMask
  L4_2 = "KillDonePanel/Contents/BoxHpBar/ProgressBar/Bar"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.hp_progress_bar = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "KillDonePanel/Contents/BoxHpBar/ProgressBar/TextPanel/TxtValue"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_cur_hp = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "KillDonePanel/Contents/BoxHpBar/ProgressBar/TextPanel/TxtTotal"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_max_hp = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "KillDonePanel/Contents/BoxHpBar/ProgressBar/TextPanel/TxtExt"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_hp_percent = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "KillDonePanel/AddFriendPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_add_friend_panel = L1_2
  L1_2 = A0_2.node_add_friend_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "KillDonePanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.animation = L1_2
end
L0_1._on_bind = L1_1
return L0_1
