local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.CommonRewardListPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "EvolveBuildLevelRewardListRowBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = require
L2_1 = "Generate.EvolveLvRewardListRowIndex"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/EvolveBuild/Widget/EvolveLvRewardListRow.prefab"
  return L1_2
end
L0_1.get_prefab_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.auto_bind
  L3_2 = L1_1
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogError
    L2_2 = G
    L2_2 = L2_2.LogTag
    L2_2 = L2_2.UI
    L3_2 = "[EvolveBuild] EvolveBuildLevelRewardListRowBinder: auto_bind Failed."
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.CommonRewardListPanel
  L4_2 = G
  L4_2 = L4_2.CommonRewardListPanelBinder
  L5_2 = A0_2.reward_list
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.reward_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/NormalBg"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_normal = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/RareBg"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_rare = L1_2
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
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlButton
  L4_2 = "Root/Contents/KeyMapZoom/CopyLayout/KeyMapInfo/GamepadBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.mono_btn_detail = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/KeyMapZoom"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_key_map_zoom = L1_2
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
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "Root/FlowEff"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim = L1_2
end
L0_1._on_bind = L2_1
return L0_1
