local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = 0.3
L1_1 = 0.3
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "TreasureDungeonExplorePointPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2
end
L2_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_intro
  L4_2 = A0_2._on_btn_intro
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._data = A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_max_explore_point
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = A0_2._data
  L5_2 = L5_2.MaxExplorePoint
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_value_view
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L2_1.setup_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 then
    L2_2 = A0_2._last_point
    if L2_2 ~= nil then
      L2_2 = A0_2._data
      L2_2 = L2_2.ExplorePoint
      L3_2 = A0_2._last_point
      L2_2 = L2_2 - L3_2
      A0_2._delta_point = L2_2
      A0_2._tick_time = 0
      L2_2 = A0_2._binder
      L2_2 = L2_2.mono_tick
      L3_2 = L2_2
      L2_2 = L2_2.SetTickCallback
      L4_2 = A0_2._tick_value
      L5_2 = A0_2
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = A0_2._delta_point
      if 0 < L2_2 then
        L2_2 = CS
        L2_2 = L2_2.RPG
        L2_2 = L2_2.Client
        L2_2 = L2_2.UIAnimationUtils
        L2_2 = L2_2.PlayFromBegin
        L3_2 = A0_2._binder
        L3_2 = L3_2.anim_explore_point
        L4_2 = "ExploreLevelRes_ChangeHint_Add"
        L2_2(L3_2, L4_2)
      else
        L2_2 = CS
        L2_2 = L2_2.RPG
        L2_2 = L2_2.Client
        L2_2 = L2_2.UIAnimationUtils
        L2_2 = L2_2.PlayFromBegin
        L3_2 = A0_2._binder
        L3_2 = L3_2.anim_explore_point
        L4_2 = "ExploreLevelRes_ChangeHint_Cut"
        L2_2(L3_2, L4_2)
      end
  end
  else
    L3_2 = A0_2
    L2_2 = A0_2._set_value
    L4_2 = A0_2._data
    L4_2 = L4_2.ExplorePoint
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._data
    L2_2 = L2_2.ExplorePoint
    A0_2._last_point = L2_2
  end
end
L2_1._setup_value_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._tick_time
  L2_2 = L2_2 + A1_2
  A0_2._tick_time = L2_2
  L2_2 = A0_2._last_point
  L3_2 = math
  L3_2 = L3_2.floor
  L4_2 = A0_2._delta_point
  L5_2 = A0_2._tick_time
  L4_2 = L4_2 * L5_2
  L5_2 = L0_1
  L4_2 = L4_2 / L5_2
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 + L3_2
  L4_2 = A0_2
  L3_2 = A0_2._set_value
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._tick_time
  L4_2 = L0_1
  if L3_2 >= L4_2 then
    L4_2 = A0_2
    L3_2 = A0_2._set_value
    L5_2 = A0_2._data
    L5_2 = L5_2.ExplorePoint
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._data
    L3_2 = L3_2.ExplorePoint
    A0_2._last_point = L3_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.mono_tick
    L4_2 = L3_2
    L3_2 = L3_2.ClearTickCallback
    L3_2(L4_2)
  end
end
L2_1._tick_value = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._data
  L2_2 = L2_2.MaxExplorePoint
  L3_2 = L1_1
  L2_2 = L2_2 * L3_2
  L2_2 = A1_2 <= L2_2
  L3_2 = A1_2 == 0
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_explore_point
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not L2_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_explore_point
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_explore_point_low
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_explore_point_low
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_empty_bg
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L2_1._set_value = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2._owner
  L2_2 = L2_2.__name
  L3_2 = A0_2.__name
  L4_2 = "TreasureDungeonExploreIntroBtn"
  L5_2 = A0_2._owner
  L5_2 = L5_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L2_1._on_btn_intro = L3_1
return L2_1
