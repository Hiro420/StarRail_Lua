local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.PopulationPhase.Fan.HeliobusPopulationPhaseFanProgressPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.PopulationPhase.Fan.HeliobusPopulationPhaseFanProgressPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Common.HeliobusCommonSelectTriggerPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Common.HeliobusCommonSelectTriggerPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.HeliobusUtilities.HeliobusSNSUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusPopulationPhaseFanPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.HeliobusModule
L1_1 = L1_1.HeliobusSNSData
L2_1 = {}
L2_1.Fans = 1
L2_1.Income = 2
L2_1.Likes = 3
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1.PopPhase
  A0_2._pop_phase = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HeliobusPopulationPhaseFanProgressPanel
  L4_2 = G
  L4_2 = L4_2.HeliobusPopulationPhaseFanProgressPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._fan_progress_panel = L1_2
  L1_2 = A0_2._fan_progress_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_click_pop_phase_callback
  L3_2 = A0_2._on_click_pop_phase_btn
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._fan_progress_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_fan_progress_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HeliobusCommonSelectTriggerPanel
  L4_2 = G
  L4_2 = L4_2.HeliobusCommonSelectTriggerPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._fans_tip_panel = L1_2
  L1_2 = A0_2._fans_tip_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_select_callback
  L3_2 = A0_2._on_select_tip
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._fans_tip_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_deselect_callback
  L3_2 = A0_2._on_deselect_tip
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._fans_tip_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_fans_btn_tip_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HeliobusCommonSelectTriggerPanel
  L4_2 = G
  L4_2 = L4_2.HeliobusCommonSelectTriggerPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._income_tip_panel = L1_2
  L1_2 = A0_2._income_tip_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_select_callback
  L3_2 = A0_2._on_select_tip
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._income_tip_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_deselect_callback
  L3_2 = A0_2._on_deselect_tip
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._income_tip_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_income_btn_tip_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HeliobusCommonSelectTriggerPanel
  L4_2 = G
  L4_2 = L4_2.HeliobusCommonSelectTriggerPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._likes_tip_panel = L1_2
  L1_2 = A0_2._likes_tip_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_select_callback
  L3_2 = A0_2._on_select_tip
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._likes_tip_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_deselect_callback
  L3_2 = A0_2._on_deselect_tip
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._likes_tip_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_likes_btn_tip_panel
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._fans_tip_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_btn
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_refresh
  L1_2(L2_2)
  L1_2 = A0_2._fans_tip_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = L2_1.Fans
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._income_tip_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = L2_1.Income
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._likes_tip_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = L2_1.Likes
  L1_2(L2_2, L3_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_cur_pop_phase_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_pop_info
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeAfterFrames
  L2_2 = 1
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2._fan_progress_panel
      L1_3 = L0_3
      L0_3 = L0_3.setup_view
      L2_3 = A0_2._pop_phase
      L0_3(L1_3, L2_3)
    end
  end
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.HeliobusSNSNewPopulationPhaseIsSeenChange
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.ResetBeforeFansData
  L1_2(L2_2)
end
L0_1._on_refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.HeliobusPhaseExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._pop_phase
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogErrorFormat
    L3_2 = "HeliobusPopulationPhaseFanPanel _setup_pop_phase_info() : \228\184\141\229\173\152\229\156\168\231\172\172("
    L4_2 = A0_2._pop_phase
    L5_2 = ")\233\152\182\230\174\181\231\154\132\228\186\186\230\176\148"
    L3_2 = L3_2 .. L4_2 .. L5_2
    L2_2(L3_2)
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_pop_phase_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.PhaseTextID
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_pop_phase
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.PhaseTextID
  L2_2(L3_2, L4_2)
end
L0_1._setup_cur_pop_phase_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_cur_fans
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = L1_1.Fans
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.HeliobusPhaseExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._pop_phase
  L2_2 = L2_2 + 1
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_next_phase_fans
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2 ~= nil
  L2_2(L3_2, L4_2)
  if L1_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_next_phase_fans
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_Heliobus_NextPhase_NeedFans"
    L5_2 = L1_2.PhaseFans
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_incomes
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L5_2 = A0_2
  L4_2 = A0_2._calc_got_all_incomes
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_likes
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = G
  L4_2 = L4_2.HeliobusSNSUtils
  L4_2 = L4_2.get_all_likes_by_user_id
  L4_2, L5_2 = L4_2()
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_pop_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = 0
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.HeliobusRewardExcelTable
  L2_2 = L2_2.GetEnumerator
  L2_2 = L2_2()
  while true do
    L4_2 = L2_2
    L3_2 = L2_2.MoveNext
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      break
    end
    L3_2 = L2_2.Current
    L4_2 = L1_1.IncomeLevel
    L5_2 = L3_2.Level
    if L4_2 >= L5_2 then
      L4_2 = L3_2.IncomeTarget
      L1_2 = L1_2 + L4_2
    else
      break
    end
  end
  L3_2 = L1_1.Incomes
  L1_2 = L1_2 + L3_2
  return L1_2
end
L0_1._calc_got_all_incomes = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._pop_phase = A1_2
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.Heliobus.SNS.PopulationPhase.FanPhaseDetail.HeliobusPopulationPhaseDetailDialog"
  L4_2 = A0_2._pop_phase
  L2_2(L3_2, L4_2)
end
L0_1._on_click_pop_phase_btn = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L2_1.Fans
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_fans_tip
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
  else
    L2_2 = L2_1.Income
    if A1_2 == L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_income_tip
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
    else
      L2_2 = L2_1.Likes
      if A1_2 == L2_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.node_likes_tip
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetActive
        L4_2 = true
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L0_1._on_select_tip = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L2_1.Fans
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_fans_tip
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  else
    L2_2 = L2_1.Income
    if A1_2 == L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_income_tip
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
    else
      L2_2 = L2_1.Likes
      if A1_2 == L2_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.node_likes_tip
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetActive
        L4_2 = false
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L0_1._on_deselect_tip = L3_1
return L0_1
