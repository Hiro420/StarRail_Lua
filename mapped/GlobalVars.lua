local L0_1, L1_1
L0_1 = {}
GlobalVars = L0_1
L0_1 = GlobalVars
function L1_1()
  local L0_2, L1_2
  L0_2 = L0_1._debug_init
  L0_2()
  L0_2 = G
  L0_2 = L0_2.new
  L1_2 = G
  L1_2 = L1_2.TimerMgr
  L0_2 = L0_2(L1_2)
  L0_1.s_TimerMgr = L0_2
  L0_2 = G
  L0_2 = L0_2.TimerMgr
  L1_2 = L0_1.s_TimerMgr
  L0_2.Ins = L1_2
end
L0_1.ctor = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = G
  L0_2 = L0_2.ImportCsToLua
  L0_2 = L0_2.init
  L0_2()
  L0_2 = G
  L0_2 = L0_2.NotifyManager
  L0_2 = L0_2.init
  L0_2()
  L0_2 = G
  L0_2 = L0_2.UIEasyTouchManager
  L0_2 = L0_2.init
  L0_2()
  L0_2 = G
  L0_2 = L0_2.NetworkManager
  L0_2 = L0_2.init
  L0_2()
  L0_2 = G
  L0_2 = L0_2.UI3DManager
  L0_2 = L0_2.init
  L0_2()
  L0_2 = G
  L0_2 = L0_2.UIManager
  L0_2 = L0_2.init
  L0_2()
  L0_2 = G
  L0_2 = L0_2.BillboardManager
  L0_2 = L0_2.init
  L0_2()
  L0_2 = L0_1.s_TimerMgr
  L1_2 = L0_2
  L0_2 = L0_2.init
  L0_2(L1_2)
  L0_2 = G
  L0_2 = L0_2.GotoManager
  L1_2 = L0_2
  L0_2 = L0_2.Init
  L0_2(L1_2)
  L0_2 = G
  L0_2 = L0_2.TutorialManager
  L1_2 = L0_2
  L0_2 = L0_2.init
  L0_2(L1_2)
  L0_2 = G
  L0_2 = L0_2.PopupQueueManager
  L1_2 = L0_2
  L0_2 = L0_2.init
  L0_2(L1_2)
  L0_2 = G
  L0_2 = L0_2.SettingModule
  L1_2 = L0_2
  L0_2 = L0_2.init
  L0_2(L1_2)
end
L0_1.init = L1_1
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = G
  L0_2 = L0_2.ModuleManager
  L0_2 = L0_2.Init
  L0_2()
  L0_2 = G
  L1_2 = {}
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L1_2[1] = L2_2
  L0_2.reload_modules = L1_2
end
L0_1.run_game = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = G
  L0_2 = L0_2.ModuleManager
  L0_2 = L0_2.Reconnect
  L0_2()
end
L0_1.reconnect = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = G
  L0_2 = L0_2.ModuleManager
  if L0_2 == nil then
    L0_2 = false
    return L0_2
  end
  L0_2 = G
  L0_2 = L0_2.ModuleManager
  L0_2 = L0_2.IsInited
  return L0_2()
end
L0_1.IsInited = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = G
  L0_2 = L0_2.ModuleManager
  L0_2 = L0_2.SendModuleInitRequest
  L0_2()
end
L0_1.login_complete_context = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1.s_TimerMgr
  if nil ~= L1_2 then
    L1_2 = L0_1.s_TimerMgr
    L2_2 = L1_2
    L1_2 = L1_2.advance
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.tick
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.BillboardManager
  L1_2 = L1_2.tick
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.ModuleManager
  L1_2 = L1_2.tick
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.PopupQueueManager
  L2_2 = L1_2
  L1_2 = L1_2.tick
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.MCoroutineMgr
  L2_2 = L1_2
  L1_2 = L1_2.Tick
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1.update = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.BillboardManager
  L1_2 = L1_2.late_tick
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1.late_update = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = L0_1.s_TimerMgr
  if nil ~= L0_2 then
    L0_2 = L0_1.s_TimerMgr
    L1_2 = L0_2
    L0_2 = L0_2.dispose
    L0_2(L1_2)
    L0_2 = G
    L0_2 = L0_2.delete
    L1_2 = L0_1.s_TimerMgr
    L0_2(L1_2)
    L0_1.s_TimerMgr = nil
  end
  L0_2 = G
  L0_2 = L0_2.UIManager
  L0_2 = L0_2.dispose
  L0_2()
  L0_2 = G
  L0_2.UIManager = nil
  L0_2 = G
  L0_2 = L0_2.UI3DManager
  L0_2 = L0_2.dispose
  L0_2()
  L0_2 = G
  L0_2.UI3DManager = nil
  L0_2 = G
  L0_2 = L0_2.BillboardManager
  L0_2 = L0_2.dispose
  L0_2()
  L0_2 = G
  L0_2.BillboardManager = nil
  L0_2 = G
  L0_2 = L0_2.TutorialManager
  L1_2 = L0_2
  L0_2 = L0_2.dispose
  L0_2(L1_2)
  L0_2 = G
  L0_2.TutorialManager = nil
  L0_2 = G
  L0_2 = L0_2.ModuleManager
  L0_2 = L0_2.Dispose
  L0_2()
  L0_2 = G
  L0_2.ModuleManager = nil
  L0_2 = G
  L0_2 = L0_2.NotifyManager
  L0_2 = L0_2.dispose
  L0_2()
  L0_2 = G
  L0_2.NotifyManager = nil
  L0_2 = G
  L0_2 = L0_2.UIEasyTouchManager
  L0_2 = L0_2.dispose
  L0_2()
  L0_2 = G
  L0_2.UIEasyTouchManager = nil
  L0_2 = G
  L0_2 = L0_2.NetworkManager
  L0_2 = L0_2.dispose
  L0_2()
  L0_2 = G
  L0_2.NetworkManager = nil
  L0_2 = L0_1._debug_dispose
  L0_2()
  L0_2 = G
  L0_2 = L0_2.PopupQueueManager
  L1_2 = L0_2
  L0_2 = L0_2.dispose
  L0_2(L1_2)
  L0_2 = G
  L0_2.PopupQueueManager = nil
  L0_2 = G
  L0_2 = L0_2.MCoroutineMgr
  L1_2 = L0_2
  L0_2 = L0_2.dispose
  L0_2(L1_2)
end
L0_1.dispose = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = UNITY_EDITOR
  if L0_2 then
    L0_2 = G
    L0_2 = L0_2.MemoryTracker
    L0_2 = L0_2.Init
    L0_2()
  end
end
L0_1._debug_init = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = UNITY_EDITOR
  if L0_2 then
    L0_2 = G
    L0_2 = L0_2.MemoryTracker
    L0_2 = L0_2.Dispose
    L0_2()
    L0_2 = G
    L0_2.MemoryTracker = nil
  end
end
L0_1._debug_dispose = L1_1
return L0_1
