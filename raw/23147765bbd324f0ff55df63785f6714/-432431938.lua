local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.PeriodCard.BattleEvolveBuildPeriodCardPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleEvolveBuildPeriodCardPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_btn_root
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._on_btn_root_callback = A1_2
  A0_2._on_btn_root_callback_self = A2_2
end
L0_1.register_on_btn_root_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2.index = A1_2
  A0_2.card_id = A2_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ActivityEvolveBuildCardExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2.card_id
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.ID
  A0_2.mazebuff_id = L4_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.MazeBuffExcelTable
  L4_2 = L4_2.GetData
  L5_2 = A0_2.mazebuff_id
  L6_2 = 1
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.txt_card_name
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = L4_2.BuffName
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.txt_card_desc
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = L4_2.BuffDesc
  L8_2 = G
  L8_2 = L8_2.UITextUtils
  L8_2 = L8_2.GetSkillParams
  L9_2 = L4_2.ParamList
  L8_2, L9_2 = L8_2(L9_2)
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = A0_2
  L5_2 = A0_2._async_load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.img_card_icon
  L8_2 = L3_2.ItemIcon
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = L3_2.Type
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.EvolveBuildCardType
  L6_2 = L6_2.BuffLight
  if L5_2 == L6_2 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_card_icon_bg
    L6_2 = G
    L6_2 = L6_2.UIColorUtils
    L6_2 = L6_2.GetColor
    L7_2 = "#5EDB65"
    L6_2 = L6_2(L7_2)
    L5_2.color = L6_2
  else
    L5_2 = L3_2.Type
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.GameCore
    L6_2 = L6_2.EvolveBuildCardType
    L6_2 = L6_2.BuffDark
    if L5_2 == L6_2 then
      L5_2 = A0_2._binder
      L5_2 = L5_2.img_card_icon_bg
      L6_2 = G
      L6_2 = L6_2.UIColorUtils
      L6_2 = L6_2.GetColor
      L7_2 = "#D95252"
      L6_2 = L6_2(L7_2)
      L5_2.color = L6_2
    else
      L5_2 = L3_2.Type
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.GameCore
      L6_2 = L6_2.EvolveBuildCardType
      L6_2 = L6_2.Neutrality
      if L5_2 == L6_2 then
        L5_2 = A0_2._binder
        L5_2 = L5_2.img_card_icon_bg
        L6_2 = G
        L6_2 = L6_2.UIColorUtils
        L6_2 = L6_2.GetColor
        L7_2 = "#46BBD5"
        L6_2 = L6_2(L7_2)
        L5_2.color = L6_2
      end
    end
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_checked = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  return L1_2
end
L0_1.get_navigation_btn = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._on_btn_root_callback
  L3_2 = A0_2._on_btn_root_callback_self
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_root = L1_1
return L0_1
