local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.CommonRewardListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.CommonRewardListPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusChallengeRewardInfoRowBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
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
  L3_2 = L3_2.PrefabLoadMeta
  L4_2 = "Root/Contents/DescPanel/OtherTypePanel"
  L5_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.info_prefab = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/DescPanel/DescText"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_text_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/DescPanel/OtherTypePanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_prefab = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/DescPanel/DescText"
  L5_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.text_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/KeyMapZoom"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_key_map_zoom = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlButton
  L4_2 = "Root/Contents/KeyMapZoom/CopyLayout/KeyMapInfo/GamepadBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.mono_btn_detail = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlButton
  L4_2 = "Root/Contents/BtnPanel/BtnGet"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.mono_btn_get = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlTip
  L4_2 = "Root/Contents/BtnPanel/BtnGet/TextPanel/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.mono_tip_get = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Contents/KeyMapZoom/CopyLayout/KeyMapInfo/GamepadBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_detail = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.CommonRewardListPanel
  L4_2 = G
  L4_2 = L4_2.CommonRewardListPanelBinder
  L5_2 = "Root/Contents"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_reward = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/BtnPanel/InProgressPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_progress = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/BtnPanel/InProgressPanelCount"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_progress_count = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/BtnPanel/InProgressPanelCount/TextPanel/CurNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_progress_cur = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/BtnPanel/InProgressPanelCount/TextPanel/TotalNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_progress_total = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/BtnPanel/BtnGet"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_get = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Contents/BtnPanel/BtnGet"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_get = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/BtnPanel/GotPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_got = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/BtnPanel/UnOpen"
  L4_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_lock = L1_2
  L1_2 = A0_2.node_lock
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._safe_find
    L3_2 = "Root/Contents/BtnPanel/LockPanel"
    L4_2 = false
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2.node_lock = L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/RareBg"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_rare = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/DarkCover"
  L4_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_dark_cover = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/DescPanel/OtherTypePanel/CommonRewardInfoTypeStar/BoxStar/TextNum"
  L5_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.text_star_target = L1_2
end
L0_1.after_prefab_bind = L1_1
return L0_1
