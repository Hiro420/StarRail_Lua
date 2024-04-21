local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityStrongChallenge.StrongChallengeBuffItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "StrongChallengeBuffItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._buff_data = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.Name
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.cost
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A1_2.Cost
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.Desc
  L5_2 = G
  L5_2 = L5_2.UITextUtils
  L5_2 = L5_2.GetSkillParams
  L6_2 = A1_2.DescParams
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.icon
  L5_2 = A1_2.Icon
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._bind_btn_callback
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn
  function L5_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_2._buff_data
    L1_3(L2_3)
  end
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.on_click = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if 0 < A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn
    L3_2 = L2_2
    L2_2 = L2_2.SetChecked
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.index
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn
    L3_2 = L2_2
    L2_2 = L2_2.SetChecked
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1.set_checked_index = L1_1
