local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.TreasureDungeon.TreasureDungeonBuffSelectPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.TreasureDungeon.TreasureDungeonBuffSelectPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TreasureDungeonBuffSelectPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/TreasureDungeon/TreasureDungeonBuffSelectPage.prefab"
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
  L3_2 = L3_2.Button
  L4_2 = "Root/BtnPanel/BtnMiddle"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_confirm = L1_2
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
  L1_2 = A0_2._safe_find
  L3_2 = "Root/TextPanel/DescPanel/TitlePanel1"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/BtnPanel/BtnMiddle/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.TreasureDungeonBuffSelectPanel
  L4_2 = G
  L4_2 = L4_2.TreasureDungeonBuffSelectPanelBinder
  L5_2 = "Root/PanelContent/TreasureDungeonBuff"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.new_buff_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.TreasureDungeonBuffSelectPanel
  L4_2 = G
  L4_2 = L4_2.TreasureDungeonBuffSelectPanelBinder
  L5_2 = "Root/PanelContent/TreasureDungeonBuffNow"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.now_buff_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/PanelContent/ArrowPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_arrow = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/PanelContent/TreasureDungeonBuffNow/Root/Contents/TextPanel/TextUsedPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_cur_mark = L1_2
end
L0_1._on_bind = L1_1
return L0_1
