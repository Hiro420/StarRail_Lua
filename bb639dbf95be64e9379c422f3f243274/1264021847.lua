local L0_1, L1_1, L2_1, L3_1
L0_1 = "UIText_RogueDLC_TimeLimited_Reward_Page%d"
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ChessRogueRewardLeftTabPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._index = A1_2
  A0_2._group_id = A2_2
  A0_2._reward_datas = A3_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_title
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = string
  L6_2 = L6_2.format
  L7_2 = L0_1
  L8_2 = A0_2._group_id
  L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_num_finished
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = A0_2._get_finished_reward_num
  L7_2 = A0_2._reward_datas
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_num_total
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = A0_2._reward_datas
  L6_2 = #L6_2
  L4_2(L5_2, L6_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._btn_callback_owner = A1_2
  A0_2._btn_callback = A2_2
end
L1_1.register_btn_click_callback = L2_1
function L2_1(A0_2, A1_2, A2_2)
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
  L8_2 = L8_2.node_reddot
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L1_1.bind_reddot = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.save_navigation_target
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_root
  L4_2 = L4_2.gameObject
  L2_2(L3_2, L4_2)
end
L1_1.set_checked = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._btn_callback
  if L1_2 then
    L1_2 = A0_2._btn_callback_owner
    if L1_2 then
      L1_2 = A0_2._btn_callback
      L2_2 = A0_2._btn_callback_owner
      L3_2 = A0_2._index
      L4_2 = A0_2._group_id
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L1_1._on_btn_root = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.Status
    L8_2 = CS
    L8_2 = L8_2.BLHLCHNAJKK
    L8_2 = L8_2.CDJHHIHBNMN
    if L7_2 ~= L8_2 then
      L7_2 = L6_2.Status
      L8_2 = CS
      L8_2 = L8_2.BLHLCHNAJKK
      L8_2 = L8_2.FMLBEGJJHMJ
      if L7_2 ~= L8_2 then
        goto lbl_19
      end
    end
    L1_2 = L1_2 + 1
    ::lbl_19::
  end
  return L1_2
end
L1_1._get_finished_reward_num = L2_1
return L1_1
