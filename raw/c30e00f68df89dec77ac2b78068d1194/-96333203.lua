local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityPunkLord.Maze.PunkLordAttackInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPunkLord.Maze.PunkLordAttackInfoPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.PunkLordModule
L1_1 = "UIText_ActivityPunkLord_Main_InMemberValue_Label"
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ConstValueCommonExcelTable
L2_1 = L2_1.GetData
L3_1 = "PunkLord_MonsterShare_MaxNum"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.Value
L2_1 = L2_1.IntValue
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "PunkLordMazeInfoPanel"
L5_1 = G
L5_1 = L5_1.BasePanel
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_attack_history
  L4_2 = A0_2._on_btn_attack_history
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_attack_info
  L1_2(L2_2)
end
L3_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2
  A0_2._data = nil
end
L3_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1.CurPunkLordInstance
  if L1_2 == nil then
    return
  end
  L2_2 = L1_2.PunkLordDataRef
  A0_2._data = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_player_num
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_remain_time
  L4_2 = L1_2.EndDateTime
  L2_2(L3_2, L4_2)
end
L3_1.setup_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._attack_info_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._attack_info_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L3_1.show_attack_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._data
  L1_2 = L1_2.IsShared
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_player_num
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L1_1
    L4_2 = A0_2._data
    L4_2 = L4_2.AttackNum
    L5_2 = L2_1
    L1_2(L2_2, L3_2, L4_2, L5_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_player_num
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L1_1
    L4_2 = A0_2._data
    L4_2 = L4_2.AttackNum
    L5_2 = 1
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L3_1._setup_player_num = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.remain_timer
  L3_2 = L2_2
  L2_2 = L2_2.SetTargetTime
  L4_2 = A1_2
  L5_2 = A0_2._expire_call_back
  L6_2 = A0_2
  L7_2 = 3
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L3_1._setup_remain_time = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.instantiate_object
  L3_2 = A0_2._binder
  L3_2 = L3_2.prefab_attack_info
  L3_2 = L3_2.Prefab
  L4_2 = A0_2._binder
  L4_2 = L4_2.prefab_attack_info
  L4_2 = L4_2.transform
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.PunkLordAttackInfoPanel
  L5_2 = G
  L5_2 = L5_2.PunkLordAttackInfoPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._attack_info_panel = L2_2
  L2_2 = A0_2._attack_info_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._attack_info_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L3_1._init_attack_info = L4_1
function L4_1(A0_2)
  local L1_2
end
L3_1._expire_call_back = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Activity.ActivityPunkLord.Maze.PunkLordDamageLogDialog"
  L1_2(L2_2)
end
L3_1._on_btn_attack_history = L4_1
return L3_1
