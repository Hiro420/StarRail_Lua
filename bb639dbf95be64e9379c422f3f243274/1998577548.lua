local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.TreasureDungeon.TreasureDungeonAvatarSelectPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.TreasureDungeon.TreasureDungeonStartFightSelectPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.MonsterListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.MonsterListPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TreasureDungeonStartFightPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/TreasureDungeon/TreasureDungeonFightDetailPage.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/PageInfo/Title/TitleText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_main_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/PageInfo/TitleType/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_sub_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/BtnClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Contents/DialogBtnPanel/BtnAvatarDetail"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_detail = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Contents/DialogBtnPanel/BtnTeam"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_enter = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/RightPanel/BoxTitle/TextTitle"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RightPanel/MonsterDetailPanel/ScrollView/Viewport/Content/TextOject1"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_effect = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RightPanel/MonsterDetailPanel/ScrollView/Viewport/Content/TextOject1/BuffDetail"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_remain = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RightPanel/MonsterDetailPanel/ScrollView/Viewport/Content/TextOject1/BuffDetail/Buff/DescWhite"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_count_down = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RightPanel/MonsterDetailPanel/ScrollView/Viewport/Content/TextOject1/BuffDetail/Buff/DescRed"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_count_down_red = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/RightPanel/MonsterDetailPanel/ScrollView/Viewport/Content/TextOject1/DetailText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_effect = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/RightPanel/MonsterDetailPanel/ScrollView/Viewport/Content/TextOject1/BuffDetail/Buff/DescWhite/Icon/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_count_down = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/RightPanel/MonsterDetailPanel/ScrollView/Viewport/Content/TextOject1/BuffDetail/Buff/DescRed/Icon/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_count_down_red = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/RightPanel/MonsterDetailPanel/ScrollView/Viewport/Content/TextOject1/BuffDetail/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_count_down_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RightPanel/MonsterDetailPanel/ScrollView/Viewport/Content/TextOject2"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_enhance = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/RightPanel/MonsterDetailPanel/ScrollView/Viewport/Content/TextOject2/DetailText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_enhance = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/RightPanel/MonsterDetailPanel/ScrollView/Viewport/Content/TextOject2/DetailText2"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_aura_enhance = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RightPanel/MonsterDetailPanel/ScrollView/Viewport/Content/TextOject0"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_item = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/RightPanel/MonsterDetailPanel/ScrollView/Viewport/Content/TextOject0/BuffDetail/TitleText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_item_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/RightPanel/MonsterDetailPanel/ScrollView/Viewport/Content/TextOject0/BuffDetail/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_item_count = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/RightPanel/MonsterDetailPanel/ScrollView/Viewport/Content/TextOject0/DetailText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_item_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/RightPanel/MonsterDetailPanel/ScrollView/Viewport/Content/TextOject0/CommonChallengeTargetInfoRow/MissionInfoPanel/MissionName"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_item_target = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/RightPanel/MonsterDetailPanel/ScrollView/Viewport/Content/TextOject0/CommonChallengeTargetInfoRow/MissionInfoPanel/Progress/ClaimNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_item_target_count = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/RightPanel/MonsterDetailPanel/ScrollView/Viewport/Content/TextOject0/DetailText3"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_item_reward = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RightPanel/MonsterDetailPanel/ScrollView/Viewport/Content/MonsterPanel/MonsterEliteList/TitlePanel/KeyMapInfoList"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_incontrol = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.ScrollRect
  L4_2 = "Root/Contents/RightPanel/MonsterDetailPanel/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_rect = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.TreasureDungeonAvatarSelectPanel
  L4_2 = G
  L4_2 = L4_2.TreasureDungeonStartFightSelectPanelBinder
  L5_2 = "Root/Contents"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_avatar_select = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MonsterListPanel
  L4_2 = G
  L4_2 = L4_2.MonsterListPanelBinder
  L5_2 = "Root/Contents/RightPanel/MonsterDetailPanel/ScrollView/Viewport/Content/MonsterPanel/MonsterEliteList"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_monster_list = L1_2
end
L0_1._on_bind = L1_1
return L0_1