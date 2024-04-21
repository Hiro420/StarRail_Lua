local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleSelectBuffDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Battle/BattleSelectBuffDialog.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/BuffContent"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_buff_content = L1_2
  L1_2 = {}
  A0_2.panels_buff_row = L1_2
  L1_2 = {}
  A0_2.panels_buff_text_title = L1_2
  L1_2 = {}
  A0_2.panels_buff_text_desc = L1_2
  L1_2 = {}
  A0_2.panels_buff_button = L1_2
  L1_2 = 1
  L2_2 = 3
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = "Root/Contents/BuffContent/Buff"
    L6_2 = tostring
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    L5_2 = L5_2 .. L6_2
    L7_2 = A0_2
    L6_2 = A0_2._safe_find
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2.panels_buff_row
    L9_2 = A0_2.panels_buff_row
    L9_2 = #L9_2
    L9_2 = L9_2 + 1
    L10_2 = L6_2
    L7_2(L8_2, L9_2, L10_2)
    L8_2 = A0_2
    L7_2 = A0_2._safe_get_cmpt
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.Client
    L9_2 = L9_2.CustomButton
    L10_2 = L5_2
    L11_2 = "/Root"
    L10_2 = L10_2 .. L11_2
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2.panels_buff_button
    L10_2 = A0_2.panels_buff_button
    L10_2 = #L10_2
    L10_2 = L10_2 + 1
    L11_2 = L7_2
    L8_2(L9_2, L10_2, L11_2)
    L9_2 = A0_2
    L8_2 = A0_2._safe_get_cmpt
    L10_2 = CS
    L10_2 = L10_2.RPG
    L10_2 = L10_2.Client
    L10_2 = L10_2.LocalizedText
    L11_2 = L5_2
    L12_2 = "/Root/Contents/TextTitle/TextTitle"
    L11_2 = L11_2 .. L12_2
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = A0_2.panels_buff_text_title
    L11_2 = A0_2.panels_buff_text_title
    L11_2 = #L11_2
    L11_2 = L11_2 + 1
    L12_2 = L8_2
    L9_2(L10_2, L11_2, L12_2)
    L10_2 = A0_2
    L9_2 = A0_2._safe_get_cmpt
    L11_2 = CS
    L11_2 = L11_2.RPG
    L11_2 = L11_2.Client
    L11_2 = L11_2.LocalizedText
    L12_2 = L5_2
    L13_2 = "/Root/Contents/Content/TextDesc"
    L12_2 = L12_2 .. L13_2
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = A0_2.panels_buff_text_desc
    L12_2 = A0_2.panels_buff_text_desc
    L12_2 = #L12_2
    L12_2 = L12_2 + 1
    L13_2 = L9_2
    L10_2(L11_2, L12_2, L13_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Contents/DialogBtnPanel/BtnConfirm"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_confirm = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlButton
  L4_2 = "Root/Contents/DialogBtnPanel/BtnConfirm"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.confirm_in_control_button = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/DialogBtnPanel/BtnConfirm/TextPanel/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.confirm_in_control_tip = L1_2
end
L0_1._on_bind = L1_1
return L0_1
