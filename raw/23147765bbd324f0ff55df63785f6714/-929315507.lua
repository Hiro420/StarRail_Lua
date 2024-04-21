local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MonopolyModule
L1_1 = 100
L2_1 = 0.3
L3_1 = 0.4
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "ActivityMonopolyHistoryBtnPanel"
L6_1 = G
L6_1 = L6_1.BasePanel
L4_1 = L4_1(L5_1, L6_1)
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn
  L4_2 = A0_2._on_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyMBTISynced
  L4_2 = A0_2._on_report_synced
  L1_2(L2_2, L3_2, L4_2)
end
L4_1._on_load = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 then
    L2_2 = L0_1
    L3_2 = L2_2
    L2_2 = L2_2.SendGetMbtiReportCsReq
    L2_2(L3_2)
  end
end
L4_1._on_owner_active_change = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._lock_info_provider_ref = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_bar
  L2_2(L3_2)
end
L4_1.setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L0_1.HistoryInfo
  L1_2 = L1_2.MBTIProgress
  L2_2 = L1_1
  L2_2 = L1_2 / L2_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_partial_bar
  L5_2 = A0_2._binder
  L5_2 = L5_2.bar1
  L6_2 = L2_2
  L7_2 = 0
  L8_2 = L2_1
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_partial_bar
  L5_2 = A0_2._binder
  L5_2 = L5_2.bar2
  L6_2 = L2_2
  L7_2 = L2_1
  L8_2 = L2_1
  L9_2 = L3_1
  L8_2 = L8_2 + L9_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_partial_bar
  L5_2 = A0_2._binder
  L5_2 = L5_2.bar3
  L6_2 = L2_2
  L7_2 = L2_1
  L8_2 = L3_1
  L7_2 = L7_2 + L8_2
  L8_2 = 1
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L4_1._refresh_bar = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_in_control_btn
  L2_2.enabled = A1_2
end
L4_1.switch_gamepad_btn = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  L5_2 = G
  L5_2 = L5_2.MathUtils
  L5_2 = L5_2.get_clamp
  L6_2 = A2_2
  L7_2 = A3_2
  L8_2 = A4_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = L5_2 - A3_2
  L7_2 = A4_2 - A3_2
  L6_2 = L6_2 / L7_2
  A1_2.fillAmount = L6_2
end
L4_1._setup_partial_bar = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._lock_info_provider_ref
  if L1_2 then
    L1_2 = A0_2._lock_info_provider_ref
    L2_2 = L1_2
    L1_2 = L1_2.is_locked
    L1_2 = L1_2(L2_2)
    if L1_2 then
      return
    end
  end
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.on_main_page_btn_clicked
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.ActivityMonopoly.History.ActivityMonopolyHistoryMainDialog"
  L1_2(L2_2)
end
L4_1._on_btn_clicked = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_bar
  L1_2(L2_2)
end
L4_1._on_report_synced = L5_1
return L4_1
