local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.Entrance.Components.DrinkMakerBartendProcessHandlerPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerBartendProcessHandlerPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MissionModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.DrinkMakerModule
function L3_1(A0_2, A1_2, A2_2)
  A0_2._should_wait_server_rsp = true
  A0_2._is_bartend_in_challenge = false
  A0_2._is_bartend_in_mission = false
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.DrinkMakerPreBartendPerformanceEnd
  L4_2 = A0_2._on_pre_bartend_performance_end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.DrinkMakerOnResultDialogClose
  L4_2 = A0_2._on_bartend_result_dialog_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.LODNGPHAKNE
  L4_2 = A0_2._on_get_bartend_drink_rsp
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.LECPOHANEAM
  L4_2 = A0_2._on_get_mission_bartend_drink_rsp
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.DMPIOGKAICF
  L4_2 = A0_2._on_get_challenge_bartend_drink_rsp
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.GEFBPMGFLFJ
  L4_2 = A0_2._on_get_end_sequence_rsp
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  A0_2._is_bartend_in_mission = A1_2
end
L0_1.set_is_in_mission = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L2_1.DrinkMakerBar
  L2_2 = L1_2
  L1_2 = L1_2.IsCurBusinessDayGuestFinish
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.NetworkManager
    L1_2 = L1_2.OOGONDGGKMI
    L2_2 = L1_2
    L1_2 = L1_2.LPJMBLOONFH
    L1_2(L2_2)
    return
  end
  L1_2 = L2_1.DrinkMakerBar
  L1_2 = L1_2.IsFreePhase
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._try_trigger_bartend_gameplay
    L3_2 = true
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "DrinkMaker_TagModeUnlocked_MainMissionID"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.UintValue
  L2_2 = L2_1.DrinkMakerBar
  L3_2 = L2_2
  L2_2 = L2_2.IsCurBusinessDayGuestFinish
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = L1_1
    L3_2 = L2_2
    L2_2 = L2_2.GetMainMissionDataWithPromise
    L4_2 = L1_2
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = L2_2
    L2_2 = L2_2.ThenLuaActionOneParam
    function L4_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3
      L1_3 = A0_2._binder
      if not L1_3 then
        return
      end
      L1_3 = A0_3 ~= nil and L1_3
      L2_3 = A0_2
      L3_3 = L2_3
      L2_3 = L2_3._try_trigger_bartend_gameplay
      L4_3 = L1_3
      L2_3(L3_3, L4_3)
    end
    L2_2(L3_2, L4_2)
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.NetworkManager
    L2_2 = L2_2.OOGONDGGKMI
    L3_2 = L2_2
    L2_2 = L2_2.LPJMBLOONFH
    L2_2(L3_2)
  end
end
L0_1._on_pre_bartend_performance_end = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_bartend_in_challenge
  if L1_2 then
    A0_2._is_bartend_in_challenge = false
    return
  end
  L1_2 = A0_2._is_bartend_in_mission
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._try_trigger_next_bartend_sequence
    L1_2(L2_2)
  else
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.DrinkMakerOnMissionBartendFinish
    L3_2 = A0_2._is_mission_bartend_success
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_bartend_result_dialog_close = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._confirm_making_drink
  L1_2(L2_2)
end
L0_1._on_get_bartend_drink_rsp = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.IsSucc
  A0_2._is_mission_bartend_success = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._confirm_making_drink
  L2_2(L3_2)
end
L0_1._on_get_mission_bartend_drink_rsp = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  A0_2._is_bartend_in_challenge = true
  L2_2 = A0_2
  L1_2 = A0_2._confirm_making_drink
  L1_2(L2_2)
end
L0_1._on_get_challenge_bartend_drink_rsp = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A1_2.Guest
  L2_2 = L2_2.GuestId
  L3_2 = L2_1.DrinkMakerBar
  L4_2 = L3_2.IsTodayFinished
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.DrinkMakerGuestSequenceExcelTable
  L5_2 = L5_2.GetData
  L6_2 = L3_2.LastSequenceID
  L5_2 = L5_2(L6_2)
  if L5_2 ~= nil then
    L6_2 = L5_2.NeedOpenWorkBook
    if L6_2 then
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.Client
      L6_2 = L6_2.GlobalVars
      L6_2 = L6_2.s_UIManager
      L7_2 = L6_2
      L6_2 = L6_2.BeginShowGroup
      L6_2(L7_2)
      L6_2 = G
      L6_2 = L6_2.UIManager
      L6_2 = L6_2.load_and_async_show
      L7_2 = "Ui.DrinkMaker.Bartend.DrinkMakerNormalResultDialog"
      L8_2 = L4_2
      L9_2 = L2_1
      L10_2 = L9_2
      L9_2 = L9_2.GetGuestData
      L11_2 = L2_2
      L9_2 = L9_2(L10_2, L11_2)
      L10_2 = A1_2.Tips
      L6_2(L7_2, L8_2, L9_2, L10_2)
      L6_2 = G
      L6_2 = L6_2.UIManager
      L6_2 = L6_2.load_and_async_show
      L7_2 = "Ui.DrinkMaker.WorkBook.DrinkMakerWorkBookPage"
      L8_2 = L2_2
      L9_2 = true
      L6_2(L7_2, L8_2, L9_2)
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.Client
      L6_2 = L6_2.GlobalVars
      L6_2 = L6_2.s_UIManager
      L7_2 = L6_2
      L6_2 = L6_2.EndShowGroup
      L6_2(L7_2)
  end
  else
    L6_2 = G
    L6_2 = L6_2.UIManager
    L6_2 = L6_2.load_and_async_show
    L7_2 = "Ui.DrinkMaker.Bartend.DrinkMakerNormalResultDialog"
    L8_2 = L4_2
    L9_2 = L2_1
    L10_2 = L9_2
    L9_2 = L9_2.GetGuestData
    L11_2 = L2_2
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = A1_2.Tips
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
end
L0_1._on_get_end_sequence_rsp = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 then
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_async_show
    L3_2 = "Ui.DrinkMaker.Bartend.DrinkMakerMenuSelectPage"
    L2_2(L3_2)
  else
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_async_show
    L3_2 = "Ui.DrinkMaker.Handbook.DrinkMakerDrinkSelectDialog"
    L2_2(L3_2)
  end
end
L0_1._try_trigger_bartend_gameplay = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L2_1.DrinkMakerBar
  L1_2 = L1_2.ChatID
  if L1_2 ~= 0 then
    L1_2 = L2_1.DrinkMakerBar
    L1_2 = L1_2.CurChatRow
    if L1_2 ~= nil then
      L2_2 = G
      L2_2 = L2_2.NotifyManager
      L2_2 = L2_2.notify
      L3_2 = G
      L3_2 = L3_2.CS
      L3_2 = L3_2.NotifyType
      L3_2 = L3_2.DrinkMakerTriggerBartend
      L4_2 = L1_2.PerformanceID
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._try_trigger_next_bartend_sequence = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L2_2 = L1_2
  L1_2 = L1_2.TopPage
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.Name
  if L2_2 == "DrinkMakerBartendMainPage" then
    L2_2 = L1_2.LuaTable
    L4_2 = L2_2
    L3_2 = L2_2.confirm_making_drink
    L3_2(L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._on_bartend_result_dialog_close
    L2_2(L3_2)
  end
end
L0_1._confirm_making_drink = L3_1
return L0_1
