local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CommonActivityRewardQuestStatusPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_take_reward
  L4_2 = A0_2._on_btn_take_reward_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._quest_data = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._clear_status
  L3_2(L4_2)
  if A1_2 == nil then
    return
  end
  L3_2 = CS
  L3_2 = L3_2.BLHLCHNAJKK
  L4_2 = A1_2.Status
  L5_2 = L3_2.BILIHDBLNBB
  if L4_2 == L5_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_locked
    if L4_2 ~= nil then
      L4_2 = A0_2._binder
      L4_2 = L4_2.node_locked
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetActive
      L6_2 = true
      L4_2(L5_2, L6_2)
    end
  else
    L4_2 = A1_2.Status
    L5_2 = L3_2.BMEAGBEFNFK
    if L4_2 == L5_2 then
      if not A2_2 then
        L4_2 = A1_2.TotalProgress
        if 1 < L4_2 then
          L4_2 = A0_2._binder
          L4_2 = L4_2.node_progress_num
          if L4_2 ~= nil then
            L4_2 = A0_2._binder
            L4_2 = L4_2.node_progress_num
            L5_2 = L4_2
            L4_2 = L4_2.SafeSetActive
            L6_2 = true
            L4_2(L5_2, L6_2)
            L4_2 = A0_2._binder
            L4_2 = L4_2.txt_cur_progress
            L5_2 = L4_2
            L4_2 = L4_2.SafeSetText
            L6_2 = A1_2.Progress
            L4_2(L5_2, L6_2)
            L4_2 = A0_2._binder
            L4_2 = L4_2.txt_max_progress
            L5_2 = L4_2
            L4_2 = L4_2.SafeSetText
            L6_2 = A1_2.TotalProgress
            L4_2(L5_2, L6_2)
        end
      end
      else
        L4_2 = A0_2._binder
        L4_2 = L4_2.node_progress_txt
        if L4_2 ~= nil then
          L4_2 = A0_2._binder
          L4_2 = L4_2.node_progress_txt
          L5_2 = L4_2
          L4_2 = L4_2.SafeSetActive
          L6_2 = true
          L4_2(L5_2, L6_2)
        end
      end
    else
      L4_2 = A1_2.Status
      L5_2 = L3_2.CDJHHIHBNMN
      if L4_2 == L5_2 then
        L4_2 = A0_2._binder
        L4_2 = L4_2.node_take_reward
        L5_2 = L4_2
        L4_2 = L4_2.SafeSetActive
        L6_2 = true
        L4_2(L5_2, L6_2)
      else
        L4_2 = A1_2.Status
        L5_2 = L3_2.FMLBEGJJHMJ
        if L4_2 == L5_2 then
          L4_2 = A0_2._binder
          L4_2 = L4_2.node_finished
          L5_2 = L4_2
          L4_2 = L4_2.SafeSetActive
          L6_2 = true
          L4_2(L5_2, L6_2)
          L4_2 = A0_2._binder
          L4_2 = L4_2.node_finished_mask
          L5_2 = L4_2
          L4_2 = L4_2.SafeSetActive
          L6_2 = true
          L4_2(L5_2, L6_2)
        end
      end
    end
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._take_reward_click_cbk = A1_2
  A0_2._take_reward_click_cbk_self = A2_2
end
L0_1.register_take_reward_click_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._quest_data
  if L1_2 == nil then
    return
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._take_reward_click_cbk
  L3_2 = A0_2._take_reward_click_cbk_self
  L4_2 = A0_2._quest_data
  L4_2 = L4_2.ID
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_take_reward_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_locked
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_locked
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_progress_num
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_progress_num
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_progress_txt
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_progress_txt
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_take_reward
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_finished
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_finished_mask
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._clear_status = L1_1
return L0_1
