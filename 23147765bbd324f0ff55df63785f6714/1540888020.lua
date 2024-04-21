local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Entrance.AlleyFundDigit"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Entrance.AlleyFundPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AlleyFundPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AlleyModule
L0_1._fund_digits_count = 6
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.num_scroll_controller
  L2_2 = L1_2
  L1_2 = L1_2.Init
  L3_2 = L0_1._fund_digits_count
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_fund_icon
  L4_2 = L1_1.AlleyConstValue
  L4_2 = L4_2.FundItemIconPath
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._former_funds = A1_2
  A0_2._cur_funds = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_target_funds_panel
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_funds
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_save_funds_data
  L3_2(L4_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_bg
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_background_visibility = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.num_scroll_controller
  L2_2 = L1_2
  L1_2 = L1_2.Init
  L3_2 = L0_1._fund_digits_count
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.num_scroll_controller
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = A0_2._former_funds
  L4_2 = A0_2._cur_funds
  function L5_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_anim_end
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._is_target_already_finished
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.num_scroll_controller
    L2_2 = L1_2
    L1_2 = L1_2.RegisterLuaProgressCallback
    L3_2 = A0_2._on_fund_change
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._setup_funds = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetCurStageTargetFunds
  L1_2 = L1_2(L2_2)
  A0_2._target_funds = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_target_funds
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._target_funds
  L1_2(L2_2, L3_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.IsCurStageTargetFinished
  L1_2 = L1_2(L2_2)
  A0_2._is_target_already_finished = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_target_finish
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_target_already_finished
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_target_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_target_already_finished
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._is_final_target
  L3_2 = A0_2._target_funds
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_finished_desc
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_ActivityAlley_MainPage_TargetCompleted2"
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_finished_desc
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_ActivityAlley_MainPage_TargetCompleted"
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._target_funds
  if L1_2 == 0 then
    A0_2._is_target_already_finished = true
  end
  L1_2 = A0_2._is_target_already_finished
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.img_progress_bar
    L1_2.fillAmount = 1.0
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.img_progress_bar
    L2_2 = A0_2._former_funds
    L3_2 = A0_2._target_funds
    L2_2 = L2_2 / L3_2
    L1_2.fillAmount = L2_2
  end
end
L0_1._setup_target_funds_panel = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = 0
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AlleyStageExcelTable
  L3_2 = L3_2.GetEnumerator
  L3_2 = L3_2()
  while true do
    L5_2 = L3_2
    L4_2 = L3_2.MoveNext
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      break
    end
    L4_2 = L3_2.Current
    L5_2 = L4_2.StageTarget
    if L2_2 < L5_2 then
      L2_2 = L4_2.StageTarget
    end
  end
  L4_2 = L2_2 == A1_2
  return L4_2
end
L0_1._is_final_target = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.AlleyFormerFunds
  L2_2 = A0_2._cur_funds
  if L1_2 ~= L2_2 then
    L2_2 = A0_2._cur_funds
    if L2_2 ~= nil then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.Prefs
      L2_2 = L2_2.User
      L3_2 = A0_2._cur_funds
      L2_2.AlleyFormerFunds = L3_2
    end
  end
end
L0_1._try_save_funds_data = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._cur_funds
  L3_2 = A0_2._former_funds
  L2_2 = L2_2 - L3_2
  L3_2 = A0_2._former_funds
  L4_2 = L2_2 * A1_2
  L3_2 = L3_2 + L4_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_progress_bar
  L5_2 = A0_2._target_funds
  L5_2 = L3_2 / L5_2
  L4_2.fillAmount = L5_2
end
L0_1._on_fund_change = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  if A0_2 ~= nil then
    L1_2 = A0_2._binder
    if L1_2 ~= nil then
      goto lbl_7
    end
  end
  do return end
  ::lbl_7::
  L1_2 = A0_2._is_target_already_finished
  if L1_2 then
    return
  end
  L1_2 = A0_2._cur_funds
  L2_2 = A0_2._target_funds
  if L1_2 >= L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.anim_complete
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L1_2(L2_2)
  end
end
L0_1._on_anim_end = L2_1
return L0_1
