local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Battle.Pause.BattleTelevisionCustomPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.Pause.BattleTelevisionCustomPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.Pause.BattleFeverTimeCustomPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.Pause.BattleEvolveBuildCustomPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PauseCustomDetailTab"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_PauseDialog_TitleType_1"
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  A0_2._data = A3_2
  A0_2._selected_object = nil
  L4_2 = {}
  A0_2._env_buff_row_list = L4_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._selected_object
  if L1_2 then
    L1_2 = A0_2._selected_object
    return L1_2
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.init_data
  L1_2(L2_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.BattleUIUtils
  L1_2 = L1_2.get_battle_stage_type
  L1_2 = L1_2()
  A0_2.stage_type = L1_2
end
L0_1.init_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_dialog_title
  L1_2(L2_2)
  L1_2 = A0_2.stage_type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.StageType
  L2_2 = L2_2.TelevisionActivity
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_activity_television_panel
    L1_2(L2_2)
  else
    L1_2 = A0_2.stage_type
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.StageType
    L2_2 = L2_2.FeverTimeActivity
    if L1_2 == L2_2 then
      L2_2 = A0_2
      L1_2 = A0_2._setup_activity_fever_time_panel
      L1_2(L2_2)
    else
      L1_2 = A0_2.stage_type
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.GameCore
      L2_2 = L2_2.StageType
      L2_2 = L2_2.EvolveBuildActivity
      if L1_2 == L2_2 then
        L2_2 = A0_2
        L1_2 = A0_2._setup_activity_evolve_build_panel
        L1_2(L2_2)
      end
    end
  end
end
L0_1._on_select = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.CS
    L1_2 = L1_2.EventSystem
    L1_2 = L1_2.current
    L1_2 = L1_2.currentSelectedGameObject
    A0_2._selected_object = L1_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_unselect = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._data
  L1_2 = L1_2.text_dialog_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
end
L0_1._setup_dialog_title = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.activity_television_panel
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._load_panel
    L3_2 = 0
    L4_2 = G
    L4_2 = L4_2.BattleTelevisionCustomPanel
    L5_2 = G
    L5_2 = L5_2.BattleTelevisionCustomPanelBinder
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    A0_2.activity_television_panel = L1_2
  end
  L1_2 = A0_2.activity_television_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._data
  L1_2(L2_2, L3_2)
end
L0_1._setup_activity_television_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.activity_fever_time_panel
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._load_panel
    L3_2 = 1
    L4_2 = G
    L4_2 = L4_2.BattleFeverTimeCustomPanel
    L5_2 = G
    L5_2 = L5_2.BattleFeverTimeCustomPanelBinder
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    A0_2.activity_fever_time_panel = L1_2
  end
  L1_2 = A0_2.activity_fever_time_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._data
  L1_2(L2_2, L3_2)
end
L0_1._setup_activity_fever_time_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.activity_evolve_build_panel
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._load_panel
    L3_2 = 2
    L4_2 = G
    L4_2 = L4_2.BattleEvolveBuildCustomPanel
    L5_2 = G
    L5_2 = L5_2.BattleEvolveBuildCustomPanelBinder
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    A0_2.activity_evolve_build_panel = L1_2
  end
  L1_2 = A0_2.activity_evolve_build_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.activity_evolve_build_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  L1_2 = L1_2(L2_2)
  A0_2._selected_object = L1_2
end
L0_1._setup_activity_evolve_build_panel = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.prefab_load_meta
  L4_2 = L4_2.MultiPrefabList
  L4_2 = L4_2[A1_2]
  L6_2 = A0_2
  L5_2 = A0_2.instantiate_object
  L7_2 = L4_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_root
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2.create_panel
  L8_2 = A2_2
  L9_2 = A3_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L8_2 = L6_2
  L7_2 = L6_2.bind
  L9_2 = L5_2
  L7_2(L8_2, L9_2)
  return L6_2
end
L0_1._load_panel = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L2_1
return L0_1
