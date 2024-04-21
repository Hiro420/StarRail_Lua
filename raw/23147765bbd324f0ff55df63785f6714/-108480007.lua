local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Utilities.MuseumUtils"
L0_1(L1_1)
L0_1 = "MuseumActivity_CutsceneSec"
L1_1 = "MuseumActivity_CutsceneAreaSec"
L2_1 = "MuseumProgressInfoRow_Remind"
L3_1 = "Rank_On"
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "MuseumPerformanceAreaBarPanel"
L6_1 = G
L6_1 = L6_1.BasePanel
L4_1 = L4_1(L5_1, L6_1)
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  A0_2.is_enabled = false
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L0_1
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.FloatValue
  A0_2._performance_time = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L1_1
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.FloatValue
  A0_2._fill_animation_time = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.rank_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider_pre_fill
  L1_2.value = 0
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.AssertFormat
  L2_2 = A0_2._performance_time
  L3_2 = A0_2._fill_animation_time
  L2_2 = L2_2 >= L3_2
  L3_2 = "[MuseumPerformanceAreaBarPanel] \230\182\168\230\157\161\230\151\182\233\151\180%f\230\175\148\229\177\149\229\140\186\232\161\168\230\188\148\230\151\182\233\151\180%f\230\155\180\233\149\191\239\188\140\232\175\183\230\163\128\230\159\165\233\133\141\231\189\174\230\152\175\229\144\166\230\173\163\231\161\174"
  L4_2 = A0_2._fill_animation_time
  L5_2 = A0_2._performance_time
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L4_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2
  A0_2._area_data = nil
end
L4_1._on_dispose = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2.is_enabled = true
  A0_2._area_data = A1_2
  L2_2 = A0_2._area_data
  L2_2 = L2_2.AreaRenewPoint
  L2_2 = L2_2.CurNum
  A0_2._cur_value = L2_2
  L2_2 = A0_2._area_data
  L2_2 = L2_2.AreaRenewPoint
  L2_2 = L2_2.MaxNum
  A0_2._max_value = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_basic_info
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_fill
  L2_2(L3_2)
end
L4_1.setup_view = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._area_data
  return L1_2
end
L4_1.get_area_data = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_area_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = "0"
  L4_2 = A0_2._area_data
  L4_2 = L4_2.ID
  L3_2 = L3_2 .. L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_area_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._area_data
  L3_2 = L3_2.Row
  L3_2 = L3_2.MuseumAreaName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_cur_value
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = "0"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.rank_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._area_data
  L1_2(L2_2, L3_2)
end
L4_1._setup_basic_info = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider_fill
  L1_2.value = 0
  L1_2 = A0_2._binder
  L1_2 = L1_2.fill_animation
  L2_2 = A0_2._fill_animation_time
  L1_2.FullFillTime = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.fill_animation
  L2_2 = A0_2._performance_time
  L3_2 = A0_2._fill_animation_time
  L2_2 = L2_2 - L3_2
  L1_2.WaitTime = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.fill_animation
  L1_2.FillMin = 0
  L1_2 = A0_2._binder
  L1_2 = L1_2.fill_animation
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._on_fill_tick
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L1_2.TickCallback = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.fill_animation
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_fill_end
    L0_3(L1_3)
  end
  L1_2.FillEndCallback = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.fill_animation
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_wait_end
    L0_3(L1_3)
  end
  L1_2.WaitEndCallback = L2_2
end
L4_1._setup_fill = L5_1
function L5_1(A0_2, A1_2)
  A0_2._start_callback = A1_2
end
L4_1.set_start_callback = L5_1
function L5_1(A0_2, A1_2)
  A0_2._end_callback = A1_2
end
L4_1.set_end_callback = L5_1
function L5_1(A0_2, A1_2)
  A0_2._fill_end_callback = A1_2
end
L4_1.set_fill_end_callback = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.fill_animation
  L2_2 = A0_2._cur_value
  L3_2 = A0_2._max_value
  L2_2 = L2_2 / L3_2
  L1_2.FillMax = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.fill_animation
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L1_2(L2_2)
  L1_2 = A0_2._start_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._start_callback
    L2_2 = A0_2
    L1_2(L2_2)
  end
end
L4_1.play = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.is_destroyed
  if L2_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.MMathf
  L2_2 = L2_2.RoundToInt
  L3_2 = A0_2._max_value
  L3_2 = A1_2 * L3_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_cur_value
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = tostring
  L6_2 = L2_2
  L5_2, L6_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2)
end
L4_1._on_fill_tick = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.is_destroyed
  if L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.rank_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_cur_value
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = tostring
  L4_2 = A0_2._cur_value
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._fill_end_callback
  L2_2 = A0_2._cur_value
  L3_2 = A0_2._max_value
  L2_2 = L2_2 == L3_2
  L1_2(L2_2)
  L1_2 = A0_2._cur_value
  L2_2 = A0_2._max_value
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.anim_progress_bar
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L3_2 = L2_1
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.rank_panel
    L2_2 = L1_2
    L1_2 = L1_2.play_rank_anim
    L1_2(L2_2)
  end
end
L4_1._on_fill_end = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.is_destroyed
  if L1_2 then
    return
  end
  L1_2 = A0_2._end_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._end_callback
    L2_2 = A0_2
    L1_2(L2_2)
  end
end
L4_1._on_wait_end = L5_1
return L4_1
