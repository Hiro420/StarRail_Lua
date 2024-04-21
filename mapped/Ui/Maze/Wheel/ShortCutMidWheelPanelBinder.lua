local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ShortCutMidWheelPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 8
L2_1 = 4
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Wheel8Section"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_eight_wheel_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Wheel4Section"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_four_wheel_panel = L1_2
  L1_2 = A0_2.node_eight_wheel_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Prefs
  L3_2 = L3_2.User
  L3_2 = L3_2.IsUseEightWheel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.node_four_wheel_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Prefs
  L3_2 = L3_2.User
  L3_2 = L3_2.IsUseEightWheel
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = {}
  A0_2._wheel_short_cut_item_list = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.IsUseEightWheel
  if L1_2 then
    L1_2 = 1
    while true do
      L2_2 = L1_1
      if not (L1_2 <= L2_2) then
        break
      end
      L3_2 = A0_2
      L2_2 = A0_2._safe_find
      L4_2 = string
      L4_2 = L4_2.format
      L5_2 = "Wheel8Section/AppIconList/ShortCut0%d/ShortCutIconItem"
      L6_2 = L1_2
      L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
      L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
      L3_2 = table
      L3_2 = L3_2.insert
      L4_2 = A0_2._wheel_short_cut_item_list
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
      L1_2 = L1_2 + 1
    end
    L3_2 = A0_2
    L2_2 = A0_2._safe_find
    L4_2 = "Wheel8Section/DetailInfoPanel/KeyMapInfo/ImgKey"
    L2_2 = L2_2(L3_2, L4_2)
    A0_2.node_controller_Info = L2_2
    L3_2 = A0_2
    L2_2 = A0_2._safe_find
    L4_2 = "Wheel8Section/DetailInfoPanel/KeyMapInfo/ImgMouse"
    L2_2 = L2_2(L3_2, L4_2)
    A0_2.node_mouse_Info = L2_2
    L3_2 = A0_2
    L2_2 = A0_2._safe_get_cmpt
    L4_2 = CS
    L4_2 = L4_2.UnityEngine
    L4_2 = L4_2.UI
    L4_2 = L4_2.Text
    L5_2 = "Wheel8Section/DetailInfoPanel/TipPanel/Title"
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2.text_title = L2_2
    L3_2 = A0_2
    L2_2 = A0_2._safe_find
    L4_2 = "Wheel8Section/WheelMark"
    L2_2 = L2_2(L3_2, L4_2)
    A0_2.node_wheel_pointer = L2_2
  else
    L1_2 = 1
    while true do
      L2_2 = L2_1
      if not (L1_2 <= L2_2) then
        break
      end
      L3_2 = A0_2
      L2_2 = A0_2._safe_find
      L4_2 = string
      L4_2 = L4_2.format
      L5_2 = "Wheel4Section/AppIconList/ShortCut0%d/ShortCutIconItem"
      L6_2 = L1_2
      L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
      L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
      L3_2 = table
      L3_2 = L3_2.insert
      L4_2 = A0_2._wheel_short_cut_item_list
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
      L1_2 = L1_2 + 1
    end
    L3_2 = A0_2
    L2_2 = A0_2._safe_find
    L4_2 = "Wheel4Section/DetailInfoPanel/KeyMapInfo/ImgKey"
    L2_2 = L2_2(L3_2, L4_2)
    A0_2.node_controller_Info = L2_2
    L3_2 = A0_2
    L2_2 = A0_2._safe_find
    L4_2 = "Wheel4Section/DetailInfoPanel/KeyMapInfo/ImgMouse"
    L2_2 = L2_2(L3_2, L4_2)
    A0_2.node_mouse_Info = L2_2
    L3_2 = A0_2
    L2_2 = A0_2._safe_get_cmpt
    L4_2 = CS
    L4_2 = L4_2.UnityEngine
    L4_2 = L4_2.UI
    L4_2 = L4_2.Text
    L5_2 = "Wheel4Section/DetailInfoPanel/TipPanel/Title"
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2.text_title = L2_2
    L3_2 = A0_2
    L2_2 = A0_2._safe_find
    L4_2 = "Wheel4Section/WheelMark"
    L2_2 = L2_2(L3_2, L4_2)
    A0_2.node_wheel_pointer = L2_2
  end
end
L0_1._on_bind = L3_1
return L0_1
