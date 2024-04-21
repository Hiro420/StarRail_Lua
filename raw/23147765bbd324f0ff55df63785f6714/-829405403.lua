local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Maze.AvatarStatusPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.AvatarDialogAvatarInfo"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.AvatarDialogAvatarInfoBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarStatusPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Ui.Battle.AvatarDialogAvatarInfo"
  L6_2 = "Ui.Battle.AvatarDialogAvatarInfoBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2._status_panel = L1_2
  L1_2 = A0_2._status_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_status
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    return
  end
  L2_2 = {}
  A0_2._status_data = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_hp
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_shield
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_sp
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._status_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._status_data
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2.Shield
  if L2_2 then
    L2_2 = A1_2.Shield
    L3_2 = A1_2.MaxShield
    L2_2 = L2_2 + L3_2
    if L2_2 ~= 0 then
      L2_2 = {}
      L3_2 = A1_2.MaxShield
      L2_2.MaxNum = L3_2
      L3_2 = A1_2.Shield
      if L3_2 == 0 then
        L2_2.CurrentNum = 1
      else
        L3_2 = A1_2.Shield
        L2_2.CurrentNum = L3_2
      end
      L2_2.Type = 1
      L3_2 = table
      L3_2 = L3_2.insert
      L4_2 = A0_2._status_data
      L5_2 = A0_2._status_data
      L5_2 = #L5_2
      L5_2 = L5_2 + 1
      L6_2 = L2_2
      L3_2(L4_2, L5_2, L6_2)
    end
  end
end
L0_1._setup_shield = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2.CurrentHP
  if L2_2 then
    L2_2 = {}
    L3_2 = A1_2.MaxHP
    L2_2.MaxNum = L3_2
    L3_2 = A1_2.CurrentHP
    L2_2.CurrentNum = L3_2
    L2_2.Type = 2
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = A0_2._status_data
    L5_2 = A0_2._status_data
    L5_2 = #L5_2
    L5_2 = L5_2 + 1
    L6_2 = L2_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._setup_hp = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2.CurrentSP
  if L2_2 then
    L2_2 = {}
    L3_2 = A1_2.MaxSP
    L2_2.MaxNum = L3_2
    L3_2 = A1_2.CurrentSP
    L2_2.CurrentNum = L3_2
    L2_2.Type = 3
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = A0_2._status_data
    L5_2 = A0_2._status_data
    L5_2 = #L5_2
    L5_2 = L5_2 + 1
    L6_2 = L2_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._setup_sp = L1_1
return L0_1
