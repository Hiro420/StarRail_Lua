local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.TabItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LightConeBreakTabItemBinder"
L2_1 = G
L2_1 = L2_1.TabItemBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
function L2_1(A0_2)
  local L1_2
  L1_2 = "UI/Avatar/LightCone/Widget/LightConeBreakPanel.prefab"
  return L1_2
end
L0_1.get_prefab_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.LightConeSkillDetailComparePanel
  L4_2 = G
  L4_2 = L4_2.LightConeSkillDetailComparePanelBinder
  L5_2 = "LightConeBreakPanel/Contents/SkillDetailPanel/ScrollViewMask/ScrollView/Viewport/Content"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.skill_compare_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.LightConeBreakComparePanel
  L4_2 = G
  L4_2 = L4_2.LightConeBreakComparePanelBinder
  L5_2 = "LightConeBreakComparePanel/Contents/SkillDetailPanel/ScrollViewMask/ScrollView/Viewport/Content"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.skill_cur_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LightConeBreakComparePanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.skill_cur_node = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "LightConeBreakPanel/Contents/TopBtnPanel/BtnStatusDetail"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_top_compare = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LightConeBreakPanel/Contents/TopBtnPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_top_btn_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "LightConeBreakPanel/Contents/TopBtnPanel/BtnStatusDetail/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_btn_top_compare = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LightConeBreakPanel/Contents/TopBtnPanel/BtnStatusDetail/ArrowPanel/Arrow2"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.arrow_to_hiden = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LightConeBreakPanel/Contents/TopBtnPanel/BtnStatusDetail/ArrowPanel/Arrow1"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.arrow_to_compare = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PrefabLoadMeta
  L4_2 = "ItemListArea"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_item_list_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "ItemListArea/CloseBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_item_list_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LightConeBreakPanel/Contents/MaterialListPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_material_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "LightConeBreakPanel/Contents/MaterialListPanel/BtnPanel/BtnAuto"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_auto_fill = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "LightConeBreakPanel/Contents/MaterialListPanel/BtnPanel/BtnClear"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_auto_clear = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "LightConeBreakPanel/Contents/BtnPanel/BtnBreak"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_break = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LightConeBreakPanel/Contents/MaterialListPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_material_list_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LightConeBreakPanel/Contents/BtnPanel/DisableHintPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_disable_hint_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "LightConeBreakPanel/Contents/BtnPanel/DisableHintPanel/Bg/Glow"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_disable_hint_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "LightConeBreakPanel/Contents/BtnPanel/DisableHintPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_disable_hint_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LightConeBreakPanel/Contents/SkillDetailPanel/ScrollViewMask/ScrollView/Viewport/Content/StoryDesc"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_story_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ItemListArea"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_item_list_area = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlButton
  L4_2 = "LightConeBreakPanel/Contents/MaterialListPanel/BtnPanel/BtnAuto"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.auto_fill_in_control_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LightConeBreakPanel/Contents/MaterialListPanel/BtnPanel/BtnAuto/TextPanel/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.auto_fill_in_control_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlButton
  L4_2 = "LightConeBreakPanel/Contents/MaterialListPanel/BtnPanel/BtnClear"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.auto_clear_in_control_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LightConeBreakPanel/Contents/MaterialListPanel/BtnPanel/BtnClear/TextPanel/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.auto_clear_in_control_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.ScrollRect
  L4_2 = "LightConeBreakPanel/Contents/SkillDetailPanel/ScrollViewMask/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_rect_desc = L1_2
end
L0_1._on_bind = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.tab_btn_root
  L4_2 = "Normal/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_tab_normal = L1_2
  L1_2 = L1_1.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.tab_btn_root
  L4_2 = "Normal/MenuTitle/Title"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_tab_name_normal = L1_2
  L1_2 = L1_1.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.tab_btn_root
  L4_2 = "Selected/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_tab_selected = L1_2
  L1_2 = L1_1.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.tab_btn_root
  L4_2 = "Selected/MenuTitle/Title"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_tab_name_selected = L1_2
  L1_2 = L1_1.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.tab_btn_root
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_root = L1_2
end
L0_1._on_tab_btn_bind = L2_1
return L0_1
