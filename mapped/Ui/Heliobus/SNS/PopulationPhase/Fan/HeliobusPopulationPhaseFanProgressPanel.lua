local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.PopulationPhase.Fan.HeliobusPopulationPhaseFanProgressBarItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.PopulationPhase.Fan.HeliobusPopulationPhaseFanProgressBarItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.PopulationPhase.Fan.HeliobusPopulationPhaseFanProgressPhaseItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.PopulationPhase.Fan.HeliobusPopulationPhaseFanProgressPhaseItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusPopulationPhaseFanProgressPanel"
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
L2_1 = 5
L3_1 = 0.15
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_click_btn
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = {}
  A0_2._pop_phase_item_table = L1_2
  L1_2 = 1
  L2_2 = L2_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.HeliobusPopulationPhaseFanProgressPhaseItem
    L8_2 = G
    L8_2 = L8_2.HeliobusPopulationPhaseFanProgressPhaseItemBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.register_click_pop_phase_callback
    L8_2 = A0_2._on_click_pop_phase_btn
    L9_2 = A0_2
    L6_2(L7_2, L8_2, L9_2)
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = A0_2._binder
    L9_2 = "node_pop_phase_"
    L10_2 = L4_2
    L9_2 = L9_2 .. L10_2
    L8_2 = L8_2[L9_2]
    L6_2(L7_2, L8_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._pop_phase_item_table
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L1_2 = {}
  A0_2._bar_item_table = L1_2
  L1_2 = 1
  L2_2 = L2_1
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.HeliobusPopulationPhaseFanProgressBarItem
    L8_2 = G
    L8_2 = L8_2.HeliobusPopulationPhaseFanProgressBarItemBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = A0_2._binder
    L9_2 = "node_bar_"
    L10_2 = L4_2
    L9_2 = L9_2 .. L10_2
    L8_2 = L8_2[L9_2]
    L6_2(L7_2, L8_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._bar_item_table
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  A0_2._is_setup = false
end
L0_1._on_load = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_click_pop_phase_callback = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._pop_phase = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_fan_progress
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_selected
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._play_first_achieve_phase_anim
  L2_2(L3_2)
  A0_2._is_setup = true
end
L0_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._is_setup
  if L1_2 then
    return
  end
  L1_2 = 1
  L2_2 = A0_2._pop_phase_item_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._pop_phase_item_table
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.setup_view
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  end
  L1_2 = 1
  L2_2 = A0_2._bar_item_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._bar_item_table
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.setup_view
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  end
end
L0_1._setup_fan_progress = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 1
  L2_2 = A0_2._pop_phase_item_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._pop_phase_item_table
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.set_selected
    L7_2 = A0_2._pop_phase
    L7_2 = L4_2 <= L7_2
    L5_2(L6_2, L7_2)
  end
end
L0_1._set_selected = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._is_setup
  if L1_2 then
    L1_2 = 1
    L2_2 = A0_2._pop_phase_item_table
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = A0_2._pop_phase_item_table
      L5_2 = L5_2[L4_2]
      L6_2 = L5_2
      L5_2 = L5_2.set_first_achieve_anim_active
      L7_2 = false
      L5_2(L6_2, L7_2)
    end
    return
  end
  L1_2 = {}
  A0_2._need_play_phase = L1_2
  L1_2 = 1
  L2_2 = A0_2._pop_phase
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.Prefs
    L5_2 = L5_2.User
    L5_2 = L5_2.HeliobusSNSUnseenAchievedPopPhaseList
    L6_2 = L5_2
    L5_2 = L5_2.Contains
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    if not L5_2 then
      L5_2 = table
      L5_2 = L5_2.insert
      L6_2 = A0_2._need_play_phase
      L7_2 = L4_2
      L5_2(L6_2, L7_2)
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.Client
      L5_2 = L5_2.Prefs
      L5_2 = L5_2.User
      L5_2 = L5_2.HeliobusSNSUnseenAchievedPopPhaseList
      L6_2 = L5_2
      L5_2 = L5_2.Add
      L7_2 = L4_2
      L5_2(L6_2, L7_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_first_anim_time_up
  L4_2 = L3_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._count_down_timer = L1_2
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L0_1._play_first_achieve_phase_anim = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._need_play_phase
  L1_2 = #L1_2
  if L1_2 <= 0 then
    return
  end
  L1_2 = table
  L1_2 = L1_2.remove
  L2_2 = A0_2._need_play_phase
  L3_2 = 1
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._pop_phase_item_table
  L2_2 = L2_2[L1_2]
  L3_2 = L2_2
  L2_2 = L2_2.set_first_achieve_anim_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._count_down_timer
  L3_2 = L2_2
  L2_2 = L2_2.reset
  L2_2(L3_2)
  L2_2 = A0_2._count_down_timer
  L3_2 = L2_2
  L2_2 = L2_2.start
  L2_2(L3_2)
end
L0_1._on_first_anim_time_up = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._callback
  if L2_2 then
    L2_2 = A0_2._callback_self
    if L2_2 then
      L2_2 = A0_2._callback
      L3_2 = A0_2._callback_self
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_click_pop_phase_btn = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._callback
  if L1_2 then
    L1_2 = A0_2._callback_self
    if L1_2 then
      L1_2 = A0_2._callback
      L2_2 = A0_2._callback_self
      L3_2 = L1_1.PopPhase
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_click_btn = L4_1
return L0_1
