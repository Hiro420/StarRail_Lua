local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FantasticStoryBuffSlotPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/FantasticStory/FantasticStoryBuffAssemblePage.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/Content/BuffPanel/Content/FantasticStoryBuffIcon1"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[1] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/Content/BuffPanel/Content/FantasticStoryBuffIcon2"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[2] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/Content/BuffPanel/Content/FantasticStoryBuffIcon3"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[3] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/Content/BuffPanel/Content/FantasticStoryBuffIcon4"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[4] = L2_2
  A0_2.node_buff_slot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Content/LockStatusTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_lock = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Content/LockStatusTip/Title/TipText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_lock_tips = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Content/BuffPanel/Environmental/Title/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_environment_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Content/BuffPanel/Environmental/ScrollView/Viewport/Content/TextInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_paragraph_buff = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Content/ListPanel/EquipTips"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_to_equip_tips = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Content/ListPanel/ParticularsTips"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_cant_equip_tips = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Content/BuffPanel/Environmental"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_to_equip_node = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Content/ListPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_buff_list = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Button
  L5_2 = "Root/Content/BuffPanel/Content/FantasticStoryBuffIcon1/Root"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2[1] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Button
  L5_2 = "Root/Content/BuffPanel/Content/FantasticStoryBuffIcon2/Root"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2[2] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Button
  L5_2 = "Root/Content/BuffPanel/Content/FantasticStoryBuffIcon3/Root"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2[3] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Button
  L5_2 = "Root/Content/BuffPanel/Content/FantasticStoryBuffIcon4/Root"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2[4] = L2_2
  A0_2.btn_buff_slot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "Root/Content/ListPanel/Content"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.buff_scroll_view = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/BtnBack"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_exit = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Content/ListPanel/BtnReplace"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_replace = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Content/ListPanel/BtnReplace/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_btn_replace = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.CanvasGroup
  L4_2 = "Root/Content/BuffPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.canvas_group_zoom_1 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlTip
  L4_2 = "Root/Content/ListPanel/BtnReplace/TextPanel/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.mono_btn_replace_tips = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Content/BuffPanel/Environmental/KeymapHintPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_scroll_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlTip
  L4_2 = "Root/Content/BuffPanel/Environmental/KeymapHintPanel/KeyMapInfo/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.mono_in_control_tip_scroll = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.ScrollRect
  L4_2 = "Root/Content/BuffPanel/Environmental/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_rect_paragraph_buff = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlMove
  L4_2 = "Root/Content/BuffPanel/Environmental/ScrollView/Viewport/Content"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.mono_in_control_move_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Content/BuffPanel/TrialAvatarInfoPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_trial_panel = L1_2
end
L0_1._on_bind = L1_1
return L0_1
