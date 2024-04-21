local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Heliobus.HeliobusUtilities.HeliobusSNSUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusPopulationPhaseFanProgressPhaseItem"
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
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_click_btn
  L1_2(L2_2, L3_2, L4_2)
  A0_2._row = nil
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_click_pop_phase_callback = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_selected = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_anim_first_achieve
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if A1_2 == false then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_targer_point_unlock_hint
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1.set_first_achieve_anim_active = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._pop_phase = A1_2
  L2_2 = A0_2._row
  if L2_2 == nil then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.HeliobusPhaseExcelTable
    L2_2 = L2_2.GetData
    L3_2 = A0_2._pop_phase
    L2_2 = L2_2(L3_2)
    A0_2._row = L2_2
    L2_2 = A0_2._row
    if L2_2 == nil then
      L2_2 = G
      L2_2 = L2_2.SuperDebug
      L2_2 = L2_2.LogErrorFormat
      L3_2 = "HeliobusPopulationPhaseFanProgressPhaseItem _setup_cur_pop_phase_info() : \228\184\141\229\173\152\229\156\168\231\172\172("
      L4_2 = A0_2._pop_phase
      L5_2 = ")\233\152\182\230\174\181\231\154\132\228\186\186\230\176\148"
      L3_2 = L3_2 .. L4_2 .. L5_2
      L2_2(L3_2)
      return
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_cur_pop_phase_info
  L2_2(L3_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_pop_phase_fan_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = G
  L3_2 = L3_2.HeliobusSNSUtils
  L3_2 = L3_2.get_abbreviation_num_text
  L4_2 = A0_2._row
  L4_2 = L4_2.PhaseFans
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_pop_phase_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._row
  L3_2 = L3_2.PhaseTextID
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_actived
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = L1_1.PopPhase
  L4_2 = A0_2._pop_phase
  L3_2 = L3_2 >= L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_unactived
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = L1_1.PopPhase
  L4_2 = A0_2._pop_phase
  L3_2 = L3_2 < L4_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_cur_pop_phase_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._callback
  if L1_2 then
    L1_2 = A0_2._callback_self
    if L1_2 then
      L1_2 = A0_2._callback
      L2_2 = A0_2._callback_self
      L3_2 = A0_2._pop_phase
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_click_btn = L2_1
return L0_1
