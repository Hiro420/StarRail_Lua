local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Base.DataStruct.Dictionary"
L0_1(L1_1)
L0_1 = require
L1_1 = "Base.CsLua.LuaToCs"
L0_1(L1_1)
L0_1 = class
L1_1 = "UIManager"
L2_1 = nil
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = G
  L0_2 = L0_2.new
  L1_2 = G
  L1_2 = L1_2.List
  L0_2 = L0_2(L1_2)
  L0_1._TickList = L0_2
  L0_1._EnableDebugMemory = false
  L0_1._pause_count = 0
  L0_1._block_input_count = 0
end
L0_1.init = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = L0_1._TickList
  L1_2 = L0_2
  L0_2 = L0_2.Dispose
  L0_2(L1_2)
  L0_2 = G
  L0_2 = L0_2.delete
  L1_2 = L0_1._TickList
  L0_2(L1_2)
  L0_1._TickList = nil
  L0_1._pause_count = nil
end
L0_1.dispose = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L0_1._EnableDebugMemory
  if L2_2 then
  end
  L2_2 = A0_2._pause_game
  if L2_2 then
    L2_2 = L0_1._add_pause_count
    L2_2()
  end
  L2_2 = A0_2._block_input
  if L2_2 then
    L2_2 = L0_1._add_block_input_count
    L2_2()
  end
  L2_2 = ""
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_UIManager
  if L3_2 ~= nil then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_UIManager
    L4_2 = L3_2
    L3_2 = L3_2.TopPageDialogName
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
  end
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.Guid
  L3_2 = L3_2.NewGuid
  L3_2 = L3_2()
  A0_2.guid = L3_2
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Time
  L3_2 = L3_2.time
  A0_2.init_time_stamp = L3_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.SDKLuaReportAdapter
  L3_2 = L3_2.ReportUIOpen
  L4_2 = A0_2.__name
  L5_2 = L2_2
  L6_2 = A0_2.guid
  L3_2(L4_2, L5_2, L6_2)
  if nil ~= A0_2 then
    L3_2 = G
    L3_2 = L3_2.ImportCsToLua
    L3_2 = L3_2.RPG_Client_LuaUIController
    L4_2 = A0_2
    L6_2 = A0_2
    L5_2 = A0_2.get_ui_layer
    L5_2 = L5_2(L6_2)
    L6_2 = nil
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L5_2 = A0_2
    L4_2 = A0_2.set_native
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
    L4_2 = G
    L4_2 = L4_2.UI3DManager
    L4_2 = L4_2.handle_show_ui2d
    L5_2 = A0_2
    L4_2(L5_2)
    if A1_2 then
      L5_2 = L3_2
      L4_2 = L3_2.AsyncShow
      L4_2(L5_2)
    else
      L5_2 = L3_2
      L4_2 = L3_2.Show
      L4_2(L5_2)
    end
  else
    L3_2 = G
    L3_2 = L3_2.SuperDebug
    L3_2 = L3_2.LogFormatWithTag
    L4_2 = G
    L4_2 = L4_2.LogTag
    L4_2 = L4_2.UI
    L5_2 = "UIManager::show controller is null"
    L3_2(L4_2, L5_2)
  end
  L3_2 = L0_1._EnableDebugMemory
  if L3_2 then
  end
end
L0_1.show = L1_1
function L1_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1._EnableDebugMemory
  if L1_2 then
  end
  L1_2 = new
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.init
  L4_2 = ...
  L2_2(L3_2, L4_2)
  L2_2 = L0_1.show
  L3_2 = L1_2
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = L0_1._EnableDebugMemory
  if L2_2 then
  end
  return L1_2
end
L0_1.load_and_show = L1_1
function L1_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1._EnableDebugMemory
  if L1_2 then
  end
  L1_2 = new
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.init
  L4_2 = ...
  L2_2(L3_2, L4_2)
  L2_2 = L0_1.show
  L3_2 = L1_2
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = L0_1._EnableDebugMemory
  if L2_2 then
  end
  L3_2 = L1_2
  L2_2 = L1_2.get_native
  return L2_2(L3_2)
end
L0_1.load_and_async_show = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1._EnableDebugMemory
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.UtilEngineWrap
    L1_2 = L1_2.GcCollect
    L1_2()
    L1_2 = G
    L1_2 = L1_2.UtilEngineWrap
    L1_2 = L1_2.GetMemorySize
    L1_2 = L1_2()
    L2_2 = print
    L3_2 = "Close Start memory size is "
    L4_2 = tostring
    L5_2 = L1_2
    L4_2 = L4_2(L5_2)
    L3_2 = L3_2 .. L4_2
    L2_2(L3_2)
  end
  if A0_2 then
    L1_2 = A0_2.__name
    if L1_2 then
      L1_2 = A0_2.init_time_stamp
      if L1_2 then
        L1_2 = A0_2.guid
        if L1_2 then
          L1_2 = CS
          L1_2 = L1_2.UnityEngine
          L1_2 = L1_2.Time
          L1_2 = L1_2.time
          L2_2 = CS
          L2_2 = L2_2.RPG
          L2_2 = L2_2.Client
          L2_2 = L2_2.SDKLuaReportAdapter
          L2_2 = L2_2.ReportUIClose
          L3_2 = A0_2.__name
          L4_2 = A0_2.init_time_stamp
          L4_2 = L1_2 - L4_2
          L5_2 = A0_2.guid
          L2_2(L3_2, L4_2, L5_2)
        end
      end
    end
  end
end
L0_1.on_pre_exit_controller = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  if nil ~= A0_2 then
    L1_2 = A0_2._pause_game
    if L1_2 then
      L1_2 = L0_1._reduce_pause_count
      L1_2()
    end
    L1_2 = A0_2._block_input
    if L1_2 then
      L1_2 = L0_1._reduce_block_input_count
      L1_2()
    end
    L1_2 = G
    L1_2 = L1_2.UI3DManager
    L1_2 = L1_2.handle_post_exit_ui2d
    L2_2 = A0_2
    L1_2(L2_2)
    L1_2 = G
    L1_2 = L1_2.delete
    L2_2 = A0_2
    L1_2(L2_2)
    A0_2 = nil
  end
  L1_2 = L0_1._EnableDebugMemory
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.UtilEngineWrap
    L1_2 = L1_2.GcCollect
    L1_2()
    L1_2 = G
    L1_2 = L1_2.UtilEngineWrap
    L1_2 = L1_2.GetMemorySize
    L1_2 = L1_2()
    L2_2 = print
    L3_2 = "Close End memory size is "
    L4_2 = tostring
    L5_2 = L1_2
    L4_2 = L4_2(L5_2)
    L3_2 = L3_2 .. L4_2
    L2_2(L3_2)
  end
end
L0_1.on_post_exit_controller = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  if nil ~= A0_2 then
    L1_2 = G
    L1_2 = L1_2.UI3DManager
    L1_2 = L1_2.handle_exit_ui2d
    L2_2 = A0_2
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.native_exit
    L1_2(L2_2)
  end
end
L0_1.exit_controller = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1._TickList
  L2_2 = L1_2
  L1_2 = L1_2.Contains
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    return
  end
  L1_2 = L0_1._TickList
  L2_2 = L1_2
  L1_2 = L1_2.Add
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1.add_tick = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1._TickList
  L2_2 = L1_2
  L1_2 = L1_2.Remove
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1.remove_tick = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L0_1._TickList
  L2_2 = L1_2
  L1_2 = L1_2.Count
  L1_2 = L1_2(L2_2)
  L2_2 = L0_1._TickList
  L3_2 = L2_2
  L2_2 = L2_2.GetData
  L2_2 = L2_2(L3_2)
  L3_2 = nil
  L4_2 = L1_2
  L5_2 = 1
  L6_2 = -1
  for L7_2 = L4_2, L5_2, L6_2 do
    L3_2 = L2_2[L7_2]
    if nil ~= L3_2 then
      L9_2 = L3_2
      L8_2 = L3_2.tick
      L10_2 = A0_2
      L8_2(L9_2, L10_2)
    end
  end
end
L0_1.tick = L1_1
function L1_1()
  local L0_2, L1_2
  L0_1._is_shield_pause = true
  L0_2 = L0_1._pause_count
  L0_1._on_shield_pause_count = L0_2
  L0_2 = L0_1._set_shield_ui_lock
  L1_2 = true
  L0_2(L1_2)
end
L0_1.shield_pause = L1_1
function L1_1()
  local L0_2, L1_2
  L0_1._is_shield_pause = false
  L0_2 = L0_1._set_shield_ui_lock
  L1_2 = false
  L0_2(L1_2)
end
L0_1.recover_pause = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.GamePlayLockModule
    L2_2 = L1_2
    L1_2 = L1_2.ShieldLockSource
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.LockSource
    L3_2 = L3_2.UI
    L1_2(L2_2, L3_2)
  else
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.GamePlayLockModule
    L2_2 = L1_2
    L1_2 = L1_2.RecoverLockSource
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.LockSource
    L3_2 = L3_2.UI
    L1_2(L2_2, L3_2)
  end
end
L0_1._set_shield_ui_lock = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L0_1._pause_count
  L0_2 = L0_2 + 1
  L0_1._pause_count = L0_2
  L0_2 = L0_1._is_shield_pause
  if L0_2 then
    L0_2 = L0_1._pause_count
    L1_2 = L0_1._on_shield_pause_count
    if L0_2 > L1_2 then
      L0_2 = L0_1._set_shield_ui_lock
      L1_2 = false
      L0_2(L1_2)
    end
  end
  L0_2 = L0_1._pause_count
  L0_2 = L0_2 == 1
  if L0_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.GamePlayLockModule
    L2_2 = L1_2
    L1_2 = L1_2.Lock
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.LockSource
    L3_2 = L3_2.UI
    L1_2(L2_2, L3_2)
  end
end
L0_1._add_pause_count = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L0_1._pause_count
  L0_2 = L0_2 - 1
  L0_1._pause_count = L0_2
  L0_2 = L0_1._is_shield_pause
  if L0_2 then
    L0_2 = L0_1._pause_count
    L1_2 = L0_1._on_shield_pause_count
    if L0_2 <= L1_2 then
      L0_2 = L0_1._set_shield_ui_lock
      L1_2 = true
      L0_2(L1_2)
    end
  end
  L0_2 = L0_1._pause_count
  L0_2 = L0_2 <= 0
  if L0_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.GamePlayLockModule
    L2_2 = L1_2
    L1_2 = L1_2.Unlock
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.LockSource
    L3_2 = L3_2.UI
    L1_2(L2_2, L3_2)
  end
end
L0_1._reduce_pause_count = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L0_1._block_input_count
  L0_2 = L0_2 + 1
  L0_1._block_input_count = L0_2
  L0_2 = L0_1._block_input_count
  L0_2 = L0_2 == 1
  if L0_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.AdventureBlockInput
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
end
L0_1._add_block_input_count = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L0_1._block_input_count
  L0_2 = L0_2 - 1
  L0_1._block_input_count = L0_2
  L0_2 = L0_1._block_input_count
  L0_2 = L0_2 <= 0
  if L0_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.AdventureBlockInput
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._reduce_block_input_count = L1_1
return L0_1
