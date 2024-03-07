local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.AdventureRoom.ChessRogueAdventureRoomSettleRowBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueAdventureRoomSettleRow"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ChessRogueModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ChessRogueAdventureRoomSettleRowBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A2_2 == nil then
    A2_2 = 0
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.set_defeat_num = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  if A1_2 == 1 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.txt_desc
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = A4_2[A1_2]
    L8_2 = A2_2
    L5_2(L6_2, L7_2, L8_2)
  elseif A1_2 == 2 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.txt_desc
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = A4_2[A1_2]
    L8_2 = A2_2
    L5_2(L6_2, L7_2, L8_2)
  end
  if A3_2 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.state_animator
    L6_2 = L5_2
    L5_2 = L5_2.SetTrigger
    L7_2 = "SuccessHint"
    L5_2(L6_2, L7_2)
  else
    L5_2 = A0_2._binder
    L5_2 = L5_2.state_animator
    L6_2 = L5_2
    L5_2 = L5_2.SetTrigger
    L7_2 = "FailHint"
    L5_2(L6_2, L7_2)
  end
end
L0_1.set_target_score = L2_1
return L0_1
