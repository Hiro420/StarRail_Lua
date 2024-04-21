local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Activity.CommonComponents.ActivityStateSwitch.CommonActivityStateTitlePanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.ActivityStateEnum
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ScheduleModule
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "CommonActivityStateTitlePanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._activity_data = nil
end
L2_1._on_dispose = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._bind_btn_callback
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_explain
  L5_2 = A0_2._on_btn_explain
  L2_2(L3_2, L4_2, L5_2)
  A0_2._activity_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_title
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_tips
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_remain_time
  L2_2(L3_2)
end
L2_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.TitleName
  L1_2(L2_2, L3_2)
end
L2_1._setup_title = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_tips
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.TagDesc
  L1_2(L2_2, L3_2)
end
L2_1._setup_tips = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._get_end_time_date
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.remain_timer
    L3_2 = L2_2
    L2_2 = L2_2.SetTargetTime
    L4_2 = L1_2
    L5_2 = A0_2._on_expire
    L6_2 = A0_2
    L7_2 = 2
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
end
L2_1._setup_remain_time = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._activity_data
  L1_2 = L1_2.StateData
  L3_2 = L1_2
  L2_2 = L1_2.GetCurStateEndTime
  return L2_2(L3_2)
end
L2_1._get_end_time_date = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._expire_callback = A1_2
  A0_2._expire_callback_self = A2_2
end
L2_1.register_expire_callback = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._expire_callback
  L3_2 = A0_2._expire_callback_self
  L1_2(L2_2, L3_2)
end
L2_1._on_expire = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.show_introduce
  L2_2 = A0_2._activity_data
  L2_2 = L2_2.TagDesc
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.IntroDesc
  L1_2(L2_2, L3_2)
end
L2_1._on_btn_explain = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.is_active_in_hierarchy
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
end
L2_1._on_in_control_input_switch = L3_1
return L2_1
