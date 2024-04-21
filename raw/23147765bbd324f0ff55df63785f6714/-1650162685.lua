local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.BattlePass.Common.BattlePassLevelPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.BattlePassModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ScheduleModule
L2_1 = "BattlePass_ProgressHint"
L3_1 = 0.3
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "BattlePassLevelPanel"
L6_1 = G
L6_1 = L6_1.BasePanel
L4_1 = L4_1(L5_1, L6_1)
function L5_1(A0_2)
  local L1_2
  A0_2._bp_data = nil
end
L4_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_buy_level
  L4_2 = L4_1._on_btn_buy_level
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_view
  L1_2(L2_2)
end
L4_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_level_exp_max
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = L0_1.LevelMaxExp
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_week_exp_max
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = L0_1.WeekMaxExp
  L1_2(L2_2, L3_2)
end
L4_1._init_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1.BattlePassData
  A0_2._bp_data = L1_2
  L1_2 = A0_2._bp_data
  L1_2 = L1_2.CurrentLevel
  L2_2 = L0_1.MaxLevel
  L1_2 = L1_2 == L2_2
  A0_2._is_max = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_level_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_remain_time_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_to_buy_btn_view
  L1_2(L2_2)
end
L4_1.setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_add
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
end
L4_1.play_level_up_anim = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 ~= nil then
    L2_2 = A0_2._bp_data
    L2_2 = L2_2.LevelGainedExp
    if not (A1_2 >= L2_2) then
      L3_2 = A0_2
      L2_2 = A0_2.is_active_in_hierarchy
      L2_2 = L2_2(L3_2)
      if L2_2 then
        goto lbl_14
      end
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_exp_bar
  L2_2(L3_2)
  do return end
  ::lbl_14::
  L2_2 = A0_2._is_max
  if L2_2 then
    L2_2 = 1
    if L2_2 then
      goto lbl_22
    end
  end
  L2_2 = L0_1.LevelMaxExp
  L2_2 = A1_2 / L2_2
  ::lbl_22::
  L3_2 = A0_2._binder
  L3_2 = L3_2.bar_exp
  L3_2 = L3_2.fillAmount
  L3_2 = L3_2 - L2_2
  A0_2._added_bar_amount = L3_2
  A0_2._added_tick_time = 0
  L3_2 = A0_2._added_bar_amount
  if L3_2 <= 0 then
    L4_2 = A0_2
    L3_2 = A0_2._refresh_exp_bar
    L3_2(L4_2)
    return
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.bar_exp
  L3_2.fillAmount = L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.mono_tick
  L4_2 = L3_2
  L3_2 = L3_2.SetTickCallback
  L5_2 = A0_2._tick_exp_bar
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
end
L4_1.play_exp_up_anim = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.bar_exp
  L3_2 = A0_2._binder
  L3_2 = L3_2.bar_exp
  L3_2 = L3_2.fillAmount
  L4_2 = A0_2._added_bar_amount
  L4_2 = L4_2 * A1_2
  L5_2 = L3_1
  L4_2 = L4_2 / L5_2
  L3_2 = L3_2 + L4_2
  L2_2.fillAmount = L3_2
  L2_2 = A0_2._added_tick_time
  L2_2 = L2_2 + A1_2
  A0_2._added_tick_time = L2_2
  L2_2 = A0_2._added_tick_time
  L3_2 = L3_1
  if L2_2 >= L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.mono_tick
    L3_2 = L2_2
    L2_2 = L2_2.ClearTickCallback
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._refresh_exp_bar
    L2_2(L3_2)
  end
end
L4_1._tick_exp_bar = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._bp_data
  L3_2 = L3_2.CurrentLevel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_level_exp
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._is_max
  if L3_2 then
    L3_2 = L0_1.LevelMaxExp
    if L3_2 then
      goto lbl_18
    end
  end
  L3_2 = A0_2._bp_data
  L3_2 = L3_2.LevelGainedExp
  ::lbl_18::
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_week_exp
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._bp_data
  L3_2 = L3_2.WeekGainedExp
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_exp_bar
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_week_exp
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_max
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = CS
    L0_3 = L0_3.UnityEngine
    L0_3 = L0_3.UI
    L0_3 = L0_3.LayoutRebuilder
    L0_3 = L0_3.ForceRebuildLayoutImmediate
    L1_3 = A0_2._binder
    L1_3 = L1_3.layout_level_exp
    L0_3(L1_3)
    L0_3 = CS
    L0_3 = L0_3.UnityEngine
    L0_3 = L0_3.UI
    L0_3 = L0_3.LayoutRebuilder
    L0_3 = L0_3.ForceRebuildLayoutImmediate
    L1_3 = A0_2._binder
    L1_3 = L1_3.layout_week_exp
    L0_3(L1_3)
  end
  L1_2(L2_2)
end
L4_1._setup_level_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.bar_exp
  L2_2 = A0_2._is_max
  if L2_2 then
    L2_2 = 1
    if L2_2 then
      goto lbl_13
    end
  end
  L2_2 = A0_2._bp_data
  L2_2 = L2_2.LevelGainedExp
  L3_2 = L0_1.LevelMaxExp
  L2_2 = L2_2 / L3_2
  ::lbl_13::
  L1_2.fillAmount = L2_2
end
L4_1._refresh_exp_bar = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetScheduleDataByID
  L3_2 = A0_2._bp_data
  L3_2 = L3_2.Row
  L3_2 = L3_2.ScheduleDataID
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.remain_timer
  L3_2 = L2_2
  L2_2 = L2_2.SetTargetTime
  L4_2 = L1_2.EndTimeDate
  L5_2 = A0_2._end_callback
  L6_2 = A0_2._end_handler
  L7_2 = 3
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L4_1._setup_remain_time_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_buy_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_max
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_max
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_max
  L1_2(L2_2, L3_2)
end
L4_1._setup_to_buy_btn_view = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._end_callback = A1_2
  A0_2._end_handler = A2_2
end
L4_1.register_bp_end_callback = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.BattlePass.BattlePassBuyLevelDialog"
  L1_2(L2_2)
end
L4_1._on_btn_buy_level = L5_1
return L4_1
