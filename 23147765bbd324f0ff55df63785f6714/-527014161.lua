local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.MazeBuffDetail.MazeBuffDetailInfoRowV2Binder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeBuffDetailInfoRowV2Panel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = G
  L2_2 = L2_2.BuffUtils
  L2_2 = L2_2.GetMazeBuffData
  L3_2 = A1_2.BuffID
  L4_2 = A1_2.Level
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._binder
  if L3_2 == nil then
    return
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_buff_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.BuffName
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_buff_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.BuffDesc
  L6_2 = G
  L6_2 = L6_2.UITextUtils
  L6_2 = L6_2.GetSkillParams
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.AdventureStatic
  L7_2 = L7_2.EvaluateMazeBuffDescParam
  L8_2 = A1_2
  L7_2, L8_2 = L7_2(L8_2)
  L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_buff
  L6_2 = L2_2.BuffIcon
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.setup_view = L1_1
return L0_1
