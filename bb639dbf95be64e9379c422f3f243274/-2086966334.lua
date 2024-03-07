local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "UltraSkillCutInAutoClosePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  A0_2._close_stamp = A1_2
  A0_2._ntf_close_time = A2_2
  A0_2._has_ntf_close = false
  A0_2._cut_in_GO = A3_2
  L5_2 = A0_2
  L4_2 = A0_2._handle_time_scale
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._add_tick
  L4_2(L5_2)
end
L0_1.setup_timer = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._exit_callback = A1_2
  A0_2._exit_callback_self = A2_2
end
L0_1.set_exit_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIGameEntityUtils
  L2_2 = L2_2.GetBattleTimeScale
  L2_2 = L2_2()
  L4_2 = A0_2
  L3_2 = A0_2.is_active
  L3_2 = L3_2(L4_2)
  L4_2 = 0 < L2_2
  if L3_2 ~= L4_2 then
    L4_2 = A0_2
    L3_2 = A0_2.safe_set_active
    L5_2 = 0 < L2_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._close_stamp
  L3_2 = L3_2 - A1_2
  A0_2._close_stamp = L3_2
  L3_2 = A0_2._battle_time_scale
  if L2_2 ~= L3_2 then
    A0_2._battle_time_scale = L2_2
    L4_2 = A0_2
    L3_2 = A0_2._handle_time_scale
    L3_2(L4_2)
  end
  L3_2 = A0_2._has_ntf_close
  if not L3_2 then
    L3_2 = A0_2._close_stamp
    L4_2 = A0_2._ntf_close_time
    if L3_2 <= L4_2 then
      L3_2 = A0_2._ntf_close_time
      if 0 < L3_2 then
        A0_2._has_ntf_close = true
        L3_2 = G
        L3_2 = L3_2.NotifyManager
        L3_2 = L3_2.notify
        L4_2 = G
        L4_2 = L4_2.CS
        L4_2 = L4_2.NotifyType
        L4_2 = L4_2.BattleCutinUIClose
        L3_2(L4_2)
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.Client
        L3_2 = L3_2.CoroutineUtils
        L3_2 = L3_2.InvokeNextFrame
        function L4_2()
          local L0_3, L1_3, L2_3
          L0_3 = G
          L0_3 = L0_3.Utils
          L0_3 = L0_3.invoke_callback
          L1_3 = A0_2._exit_callback
          L2_3 = A0_2._exit_callback_self
          L0_3(L1_3, L2_3)
          L0_3 = G
          L0_3 = L0_3.NotifyManager
          L0_3 = L0_3.notify
          L1_3 = G
          L1_3 = L1_3.CS
          L1_3 = L1_3.NotifyType
          L1_3 = L1_3.BattleCloseFrameCapturePage
          L0_3(L1_3)
        end
        L3_2(L4_2)
        return
      end
    end
  end
  L3_2 = A0_2._close_stamp
  if L3_2 <= 0 then
    L3_2 = A0_2._ntf_close_time
    if L3_2 <= 0 then
      L3_2 = A0_2._has_ntf_close
      if not L3_2 then
        A0_2._has_ntf_close = true
        L3_2 = G
        L3_2 = L3_2.NotifyManager
        L3_2 = L3_2.notify
        L4_2 = G
        L4_2 = L4_2.CS
        L4_2 = L4_2.NotifyType
        L4_2 = L4_2.BattleCutinUIClose
        L3_2(L4_2)
      end
      L3_2 = G
      L3_2 = L3_2.Utils
      L3_2 = L3_2.invoke_callback
      L4_2 = A0_2._exit_callback
      L5_2 = A0_2._exit_callback_self
      L3_2(L4_2, L5_2)
      L3_2 = G
      L3_2 = L3_2.NotifyManager
      L3_2 = L3_2.notify
      L4_2 = G
      L4_2 = L4_2.CS
      L4_2 = L4_2.NotifyType
      L4_2 = L4_2.BattleCloseFrameCapturePage
      L3_2(L4_2)
      return
    end
  end
end
L0_1._on_tick = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cut_in_GO
  if not L1_2 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIGameEntityUtils
  L1_2 = L1_2.ChangeUltraSkillCutinTimeScaleForLua
  L2_2 = A0_2._cut_in_GO
  L1_2(L2_2)
end
L0_1._handle_time_scale = L1_1
return L0_1
