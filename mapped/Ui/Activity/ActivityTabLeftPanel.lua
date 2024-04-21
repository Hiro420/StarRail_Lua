local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityTabLeftPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityTabLeftPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.Log
  L3_2 = "[ActivityTabLeftPanel] PanelID="
  L4_2 = A1_2.PanelID
  L5_2 = " TabName="
  L6_2 = G
  L6_2 = L6_2.TextmapStatic
  L6_2 = L6_2.GetText
  L7_2 = A1_2.TabName
  L6_2 = L6_2(L7_2)
  L7_2 = " ThemeID="
  L8_2 = A1_2.ThemeID
  L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.set_icon
  L4_2 = A1_2.TabIcon
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.set_title
  L4_2 = A1_2.TabName
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.Theme
  if L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2.set_theme_icon
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2.set_resident_tab
    L5_2 = false
    L3_2(L4_2, L5_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2.set_resident_tab
    L5_2 = A1_2.IsActivityHaveResidentPart
    L3_2(L4_2, L5_2)
  end
  L3_2 = A1_2.IsResidentPanel
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.set_resident_finish
    L6_2 = A1_2
    L5_2 = A1_2.IsFinishConditionsCompleted
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.icon_normal
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.icon_selected
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.set_icon = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_name
  L3_2 = L2_2
  L2_2 = L2_2.SetSingleLineEllipsis
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_name_selected
  L3_2 = L2_2
  L2_2 = L2_2.SetSingleLineEllipsis
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_name_selected
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.LayoutRebuilder
  L2_2 = L2_2.ForceRebuildLayoutImmediate
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_name_selected_layout
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.LayoutRebuilder
  L2_2 = L2_2.ForceRebuildLayoutImmediate
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_name_unselected_layout
  L2_2(L3_2)
end
L0_1.set_title = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_theme_icon_unselected
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_theme_icon_selected
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.theme_icon_unselected
  L5_2 = A1_2.CornerIconPath
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.theme_icon_selected
  L5_2 = A1_2.CornerIconPath
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.set_theme_icon = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_resident_selected
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_resident_unselected
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_resident_tab = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_resident_finish_selected
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_resident_finish_unselected
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_resident_finish = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = G
  L3_2 = L3_2.RedDotModule
  L3_2 = L3_2.Instance
  L4_2 = L3_2
  L3_2 = L3_2.bind_reddot
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = A0_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.trans_reddot
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1.bind_reddot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.unbind_reddot
  L3_2 = A0_2._binder
  L3_2 = L3_2.trans_reddot
  L1_2(L2_2, L3_2)
end
L0_1.unbind_reddot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_name_selected_layout
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_name_unselected_layout
  L1_2(L2_2)
end
L0_1.force_rebuild_layout = L1_1
return L0_1
