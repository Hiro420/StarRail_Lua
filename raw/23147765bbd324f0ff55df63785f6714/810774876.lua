local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ClockParkRaidBtnPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/ClockPark/Widget/RaidEntranceItem.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/PercentPanel/RaidLevelPagePercentItem/Normal/TextPanel/PercentNumText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_percent = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/PercentPanel/RaidLevelPagePercentItem/Locked/TextPanel/PercentNumText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_percent_lock = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PrefabLoadMeta
  L4_2 = "Root/PercentPanel/RaidLevelPagePercentItem/StarPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_stars = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.RectTransform
  L4_2 = "Root/CenterImg/Item/Root/CenterImg"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_img_unlock = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.RectTransform
  L4_2 = "Root/CenterImg/Item/Root/LockedPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_img_lock = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.RectTransform
  L4_2 = "Root/PercentPanel/RaidLevelPagePercentItem/Normal"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_progress_unlock = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.RectTransform
  L4_2 = "Root/PercentPanel/RaidLevelPagePercentItem/Locked"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_progress_lock = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/PercentPanel/RaidLevelPagePercentItem/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_reddot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/PercentPanel/RaidLevelPagePercentItem/Normal"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_percent_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/BotPanel/TextPanel/RaidLevelName"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_raid_name = L1_2
end
L0_1._on_bind = L1_1
return L0_1
