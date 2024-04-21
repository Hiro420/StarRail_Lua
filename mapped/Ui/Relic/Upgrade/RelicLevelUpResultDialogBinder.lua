local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.StatusDetailInfoCompare"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.StatusDetailInfoCompareSkillBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicMainStatusDetailInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicMainStatusDetailInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicLockPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicLockPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicLevelUpResultDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Avatar/Relic/RelicLevelUpResultDialog.prefab"
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
  A0_2.btn_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/Root/LevelPanel/LevelPre/Level"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_pre_level = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/Root/LevelPanel/LevelNext/Level"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_next_level = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Contents/Root/StatusPanel"
  L6_2 = G
  L6_2 = L6_2.StatusDetailInfoCompare
  L7_2 = G
  L7_2 = L7_2.StatusDetailInfoCompareSkillBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.status_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RelicMainStatusDetailInfoPanel
  L4_2 = G
  L4_2 = L4_2.RelicMainStatusDetailInfoPanelBinder
  L5_2 = "Contents/Root/StatusPanel/RelicMainStatusDetailInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.main_statu_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Contents/IconLevelUp/ItemPanel/ItemIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_item_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RelicLockPanel
  L4_2 = G
  L4_2 = L4_2.RelicLockPanelBinder
  L5_2 = "Contents/IconLevelUp/ItemPanel/LockBtnPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_relic_lock = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/Frame/HintPanel/KeyMapHIntInfoLock"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_key_map_hint_lock = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlTip
  L4_2 = "Contents/Frame/HintPanel/KeyMapHIntInfoLock/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.in_control_tip_lock = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/Frame/HintPanel/KeyMapHIntInfoLock/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_tip_lock = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/Frame/HintPanel/KeyMapHIntInfoDiscard"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_key_map_hint_discard = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlTip
  L4_2 = "Contents/Frame/HintPanel/KeyMapHIntInfoDiscard/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.in_control_tip_discard = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/Frame/HintPanel/KeyMapHIntInfoDiscard/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_tip_discard = L1_2
end
L0_1._on_bind = L1_1
return L0_1
