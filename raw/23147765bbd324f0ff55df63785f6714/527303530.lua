local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Battle.BattleBrokenDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleBrokenDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.BattleBrokenDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.TeamModule
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentTeam
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.GetLeaderDamageType
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.DamageTypeExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  A0_2._damage_type_data = L2_2
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = G
  L3_2 = L3_2.TickBox
  L2_2 = L2_2(L3_2)
  A0_2._tick_box = L2_2
  A0_2._is_focusable = false
  A0_2._is_resp_esc = false
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_icon
  L1_2(L2_2)
  L1_2 = A0_2._tick_box
  L2_2 = L1_2
  L1_2 = L1_2.add_tick
  L3_2 = A0_2._binder
  L3_2 = L3_2.anim
  L3_2 = L3_2.clip
  L3_2 = L3_2.length
  function L4_2()
    local L0_3, L1_3
    L0_3 = G
    L0_3 = L0_3.NotifyManager
    L0_3 = L0_3.notify
    L1_3 = G
    L1_3 = L1_3.CS
    L1_3 = L1_3.NotifyType
    L1_3 = L1_3.BattleBattleBrokenDialogClose
    L0_3(L1_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.exit
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._tick_box
  L3_2 = L2_2
  L2_2 = L2_2.tick
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_tick = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_icon
  L4_2 = A0_2._damage_type_data
  L4_2 = L4_2.IconNatureForWeakActive
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_icon = L1_1
return L0_1
