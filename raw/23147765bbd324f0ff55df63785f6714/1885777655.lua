local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.EvolveBuildWeaponChangeDetailItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.ActivityEvolveBuildUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.ActivityEvolveBuildUtils"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Ui.Activity.EvolveBuild.EvolveBuildConst"
L1_1 = L1_1(L2_1)
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.EvolveBuildModule
L3_1 = G
L3_1 = L3_1.Utils
L3_1 = L3_1.create_lua_table_from_cs_array
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "EvolveBuildWeaponChangeDetailItem"
L6_1 = G
L6_1 = L6_1.BasePanel
L4_1 = L4_1(L5_1, L6_1)
function L5_1(A0_2)
  local L1_2
end
L4_1._on_load = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._weapon = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.Name
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.level
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_1.WeaponLevelTextID
  L5_2 = L2_1
  L6_2 = L5_2
  L5_2 = L5_2.GetWeaponInitialLevel
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.icon
  L5_2 = A1_2.IconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.tag_list
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L3_1
  L5_2 = A0_2._weapon
  L5_2 = L5_2.TagIDs
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_elements
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_desc
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._invoke_action
    L0_3(L1_3)
  end
  L2_2.onSelectTrigger = L3_2
end
L4_1.setup_view = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.equipped_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L4_1.set_equipped_tip = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L4_1.set_checked = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._actor = A1_2
  A0_2._action = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._bind_btn_callback
  L5_2 = A0_2._binder
  L5_2 = L5_2.btn
  L6_2 = A0_2._invoke_action
  L3_2(L4_2, L5_2, L6_2)
end
L4_1.on_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._action
  L2_2 = A0_2._actor
  L3_2 = A0_2._weapon
  L1_2(L2_2, L3_2)
end
L4_1._invoke_action = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L3_1
  L2_2 = A0_2._weapon
  L2_2 = L2_2.Elements
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.element_list
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = L1_2 ~= nil
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.element_list
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.random_element_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L0_1.is_random_damage_gear
  L5_2 = A0_2._weapon
  L5_2 = L5_2.ID
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
end
L4_1._setup_elements = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MazeBuffExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._weapon
  L2_2 = L2_2.ID
  L3_2 = 1
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = true
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.EvolveBuildUtils
  L3_2 = L3_2.SetMazeBuffDesc
  L4_2 = A0_2._binder
  L4_2 = L4_2.desc
  L5_2 = L1_2
  L6_2 = L2_2
  L7_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L4_1._setup_desc = L5_1
