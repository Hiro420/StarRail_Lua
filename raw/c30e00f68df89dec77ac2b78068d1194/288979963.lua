local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.HeartDial.ClockBoyMoodChangePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.HeartDial.ClockBoyInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ClockBoyInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.HeartDialModule
function L2_1(A0_2)
  local L1_2
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  A0_2._step_type = A1_2
  A0_2._emo_type = A2_2
  A0_2._before_emo_type = A3_2
  L5_2 = A0_2
  L4_2 = A0_2._refresh_view
  L4_2(L5_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._step_type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.HeartDialStepType
  L2_2 = L2_2.Normal
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._refresh_clockboy_change_moode
    L1_2(L2_2)
  end
end
L0_1._refresh_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._clockboy_change_mood_panel
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._get_prefab_index
    L3_2 = A0_2._step_type
    L1_2 = L1_2(L2_2, L3_2)
    L3_2 = A0_2
    L2_2 = A0_2.instantiate_object
    L4_2 = A0_2._binder
    L4_2 = L4_2.prefab_load_meta
    L4_2 = L4_2.MultiPrefabList
    L4_2 = L4_2[L1_2]
    L5_2 = A0_2._binder
    L5_2 = L5_2.root
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2.create_panel
    L5_2 = G
    L5_2 = L5_2.ClockBoyMoodChangePanel
    L6_2 = G
    L6_2 = L6_2.ClockBoyMoodChangePanelBinder
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    A0_2._clockboy_change_mood_panel = L3_2
    L3_2 = A0_2._clockboy_change_mood_panel
    L4_2 = L3_2
    L3_2 = L3_2.bind
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
  L1_2 = A0_2._clockboy_change_mood_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._emo_type
  L4_2 = A0_2._before_emo_type
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._refresh_clockboy_change_moode = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.HeartDialStepType
  L2_2 = L2_2.Normal
  if A1_2 == L2_2 then
    L2_2 = 0
    return L2_2
  end
  L2_2 = 0
  return L2_2
end
L0_1._get_prefab_index = L2_1
return L0_1
