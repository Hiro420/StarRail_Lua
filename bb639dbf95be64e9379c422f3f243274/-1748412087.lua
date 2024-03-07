local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Maze.MazeHudFuncEntrancePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeMechanismBarPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._setup
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MechanismBarStateChanged
  L4_2 = L0_1._on_mechanism_bar_state_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MechanismBarVisibilityChanged
  L4_2 = L0_1._on_mechanism_bar_visibility_changed
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.AdventureModule
  L1_2 = L1_2.MechanismBarSys
  if L1_2 ~= nil then
    L2_2 = L1_2.IsVisible
    if L2_2 then
      goto lbl_17
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = false
  L2_2(L3_2, L4_2)
  do return end
  ::lbl_17::
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_progress
  L3_2 = L1_2.CurrentValue
  L4_2 = L1_2.MaxValue
  L3_2 = L3_2 / L4_2
  L2_2.fillAmount = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_progress
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = ""
  L5_2 = L1_2.CurrentValue
  L6_2 = "/"
  L7_2 = L1_2.MaxValue
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_icon
  L5_2 = L1_2.CurrentConfig
  L5_2 = L5_2.IconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.CurrentConfig
  L4_2 = L4_2.Name
  L2_2(L3_2, L4_2)
end
L0_1._setup = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._setup
  L2_2(L3_2)
end
L0_1._on_mechanism_bar_state_changed = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._setup
  L2_2(L3_2)
end
L0_1._on_mechanism_bar_visibility_changed = L1_1
return L0_1
