local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.EvolveBuildLevelRewardLoopListRowBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.EvolveBuildModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "EvolveBuildLevelRewardLoopListRow"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.get_btn
  L4_2 = A0_2._on_btn_get
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.detail_btn
  L4_2 = A0_2._on_btn_detail
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_in_control_button_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_btn
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_in_control_button_enable
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.root_btn
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_btn
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_in_control_button_enable
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L1_2.onDeselectTrigger = L2_2
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_btn
  L1_2.onSelectTrigger = nil
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_btn
  L1_2.onDeselectTrigger = nil
end
L1_1._on_dispose = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L4_2 = A0_2
  L3_2 = A0_2._find_exp_calc_fame
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.RequiredExp
  L4_2 = A1_2 - L4_2
  L5_2 = L3_2.LevelUpExp
  L6_2 = L0_1.MaxOnceRewardFame
  L6_2 = L6_2.RequiredExp
  L7_2 = A1_2 < L6_2
  L8_2 = L0_1.FameRewards
  L9_2 = L0_1.FameRewards
  L9_2 = L9_2.Count
  L9_2 = L9_2 - 1
  L8_2 = L8_2[L9_2]
  L8_2 = L8_2.Level
  L8_2 = A2_2 >= L8_2
  L9_2 = L4_2 >= L5_2 and L9_2
  L10_2 = L4_2 < L5_2 and L10_2
  L11_2 = A0_2._binder
  L11_2 = L11_2.lock_panel
  L12_2 = L11_2
  L11_2 = L11_2.SafeSetActive
  L13_2 = L7_2
  L11_2(L12_2, L13_2)
  L11_2 = A0_2._binder
  L11_2 = L11_2.finish_panel
  L12_2 = L11_2
  L11_2 = L11_2.SafeSetActive
  L13_2 = L8_2
  L11_2(L12_2, L13_2)
  L11_2 = A0_2._binder
  L11_2 = L11_2.got_panel
  L12_2 = L11_2
  L11_2 = L11_2.SafeSetActive
  L13_2 = L8_2
  L11_2(L12_2, L13_2)
  L11_2 = A0_2._binder
  L11_2 = L11_2.get_btn
  L12_2 = L11_2
  L11_2 = L11_2.SafeSetActive
  L13_2 = L9_2
  L11_2(L12_2, L13_2)
  L11_2 = A0_2._binder
  L11_2 = L11_2.in_progress_panel
  L12_2 = L11_2
  L11_2 = L11_2.SafeSetActive
  L13_2 = L10_2
  L11_2(L12_2, L13_2)
  L11_2 = A0_2._binder
  L11_2 = L11_2.exp_progress_bar_container
  L12_2 = L11_2
  L11_2 = L11_2.SafeSetActive
  L13_2 = L9_2 or L13_2
  if not L9_2 then
    L13_2 = L10_2
  end
  L11_2(L12_2, L13_2)
  L11_2 = A0_2._binder
  L11_2 = L11_2.exp_progress_text
  L12_2 = L11_2
  L11_2 = L11_2.SafeSetActive
  L13_2 = L9_2 or L13_2
  if not L9_2 then
    L13_2 = L10_2
  end
  L11_2(L12_2, L13_2)
  L11_2 = A0_2._binder
  L11_2 = L11_2.exp_progress_text
  L12_2 = L11_2
  L11_2 = L11_2.SafeSetText
  L13_2 = L4_2
  L14_2 = "/"
  L15_2 = L5_2
  L13_2 = L13_2 .. L14_2 .. L15_2
  L11_2(L12_2, L13_2)
  L11_2 = A0_2._binder
  L11_2 = L11_2.exp_progress_bar
  if L5_2 == 0 then
    L12_2 = 1
    if L12_2 then
      goto lbl_90
    end
  end
  L12_2 = L4_2 / L5_2
  ::lbl_90::
  L11_2.fillAmount = L12_2
  L12_2 = A0_2
  L11_2 = A0_2._calc_reward_id
  L13_2 = A2_2
  L11_2 = L11_2(L12_2, L13_2)
  L12_2 = G
  L12_2 = L12_2.RewardUtils
  L12_2 = L12_2.CreateRewardItemTableSorted
  L13_2 = L11_2
  L12_2 = L12_2(L13_2)
  L13_2 = A0_2._binder
  L13_2 = L13_2.reward_list
  L14_2 = L13_2
  L13_2 = L13_2.setup_view
  L15_2 = L12_2
  L13_2(L14_2, L15_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L0_1.MaxOnceRewardFame
  L3_2 = L2_2.Level
  if A1_2 <= L3_2 then
    return L2_2
  else
    L3_2 = L0_1.FameRewards
    L4_2 = A1_2 - 1
    L3_2 = L3_2[L4_2]
    return L3_2
  end
end
L1_1._find_exp_calc_fame = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L0_1.MaxOnceRewardFame
  L3_2 = nil
  L4_2 = L2_2.Level
  if A1_2 <= L4_2 then
    L3_2 = L0_1.MinLongTailRewardFame
  else
    L4_2 = L0_1.FameRewards
    L4_2 = L4_2.Count
    if A1_2 < L4_2 then
      L4_2 = L0_1.FameRewards
      L3_2 = L4_2[A1_2]
    else
      L4_2 = L0_1.FameRewards
      L5_2 = L0_1.FameRewards
      L5_2 = L5_2.Count
      L5_2 = L5_2 - 1
      L3_2 = L4_2[L5_2]
    end
  end
  if L3_2 then
    L4_2 = L3_2.RewardID
    if L4_2 then
      goto lbl_26
    end
  end
  L4_2 = 100
  ::lbl_26::
  return L4_2
end
L1_1._calc_reward_id = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.RequestTakeFameReward
  L1_2(L2_2)
end
L1_1._on_btn_get = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L2_2 = 1
  L3_2 = A0_2._reward_data
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = L1_2
    L8_2 = A0_2._reward_data
    L8_2 = L8_2[L5_2]
    L8_2 = L8_2.ItemID
    L6_2(L7_2, L8_2)
  end
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_show
  L3_2 = "Ui.Common.ItemTip.ItemTipsDialog"
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L1_1._on_btn_detail = L2_1
function L2_1(A0_2, A1_2)
end
L1_1._setup_in_control_button_enable = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_in_control_button_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L1_1._on_leave_special_zoom = L2_1
return L1_1
