local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.QuestModule
L1_1 = "MonopolyRewardPoint_Active"
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "ActivityMonopolyContributionPointPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2, A1_2, A2_2)
end
L2_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.GetClip
  L3_2 = L1_1
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.length
  L3_2 = A0_2
  L2_2 = A0_2._add_count_down_timer
  L4_2 = A0_2._on_active_finish
  L5_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._active_timer = L2_2
end
L2_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._cur_progress = A1_2
  L3_2 = A2_2 or L3_2
  if A2_2 == nil or not A2_2 then
    L3_2 = 0
  end
  A0_2._last_progress = L3_2
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyUtils
  L3_2 = L3_2.set_text_value_in_thousands
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_num
  L5_2 = A0_2._cur_progress
  L3_2(L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyUtils
  L3_2 = L3_2.set_text_value_in_thousands
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_active_num
  L5_2 = A0_2._cur_progress
  L3_2(L4_2, L5_2)
end
L2_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider_cur_fill
  L1_2.value = 0
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayToEnd
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_active
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  A0_2._is_fill_all = false
end
L2_1.reset_slider_value = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._cur_progress
  if A1_2 >= L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.slider_cur_fill
    L2_2.value = 1
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_active
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._last_progress
    L2_2 = A1_2 - L2_2
    L3_2 = A0_2._cur_progress
    L4_2 = A0_2._last_progress
    L3_2 = L3_2 - L4_2
    L2_2 = L2_2 / L3_2
    L3_2 = G
    L3_2 = L3_2.MathUtils
    L3_2 = L3_2.get_clamp
    L4_2 = L2_2
    L5_2 = 0
    L6_2 = 1
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2 = L3_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.slider_cur_fill
    L3_2.value = L2_2
  end
end
L2_1.set_cur_slider_fill = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = nil
  L4_2 = A0_2._cur_progress
  if A1_2 >= L4_2 then
    L3_2 = 1
    A0_2._is_fill_all = true
    L4_2 = A0_2._binder
    L4_2 = L4_2.fill_anim
    function L5_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._on_fill_end
      L0_3(L1_3)
    end
    L4_2.FillEndCallback = L5_2
  else
    L4_2 = A0_2._last_progress
    L4_2 = A1_2 - L4_2
    L5_2 = A0_2._cur_progress
    L6_2 = A0_2._last_progress
    L5_2 = L5_2 - L6_2
    L3_2 = L4_2 / L5_2
    L4_2 = G
    L4_2 = L4_2.MathUtils
    L4_2 = L4_2.get_clamp
    L5_2 = L3_2
    L6_2 = 0
    L7_2 = 1
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2 = L4_2
    A0_2._is_fill_all = false
    L4_2 = A0_2._binder
    L4_2 = L4_2.fill_anim
    L4_2.FillEndCallback = nil
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.fill_anim
  L5_2 = L4_2
  L4_2 = L4_2.Play
  L6_2 = 0
  L7_2 = L3_2
  L8_2 = A2_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L2_1.play_cur_slider_fill_anim = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.fill_anim
  L1_2.FillEndCallback = nil
  L1_2 = A0_2._is_fill_all
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.PlayFromBegin
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_root
    L3_2 = L1_1
    L1_2(L2_2, L3_2)
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._callback
  L3_2 = A0_2._handler
  L1_2(L2_2, L3_2)
end
L2_1._on_fill_end = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._active_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._callback
  L3_2 = A0_2._handler
  L1_2(L2_2, L3_2)
end
L2_1._on_active_finish = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._handler = A2_2
end
L2_1.register_fill_end_callback = L3_1
return L2_1
