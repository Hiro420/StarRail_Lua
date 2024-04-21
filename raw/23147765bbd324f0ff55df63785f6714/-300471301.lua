local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Transport.AlleyNewBuffTipItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AlleyNewBuffTipItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A1_2.GridID
  L3_2 = A1_2.RelatedEventID
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.AlleyEventExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_mission_name
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = L4_2.EventTitle
  L5_2(L6_2, L7_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.AlleyGridExcelTable
  L5_2 = L5_2.GetData
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.text_buff_name
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetTextID
  L8_2 = L5_2.GridTitle
  L6_2(L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2._load_sprite_to
  L8_2 = A0_2._binder
  L8_2 = L8_2.image_buff_icon
  L9_2 = L5_2.GridIcon
  L6_2(L7_2, L8_2, L9_2)
end
L0_1.setup_view = L1_1
return L0_1
