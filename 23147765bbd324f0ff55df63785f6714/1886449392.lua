local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.HeartDial.HeartDialEventHintDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeartDialEventHintDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UI/Maze/MiniGame/ClockBoy/ClockBoyEventMoodRecoverDialog.prefab"
L2_1 = "UI/Maze/MiniGame/ClockBoy/ClockBoyEventHintDialog.prefab"
L3_1 = "UI/Maze/MiniGame/ClockBoy/ClockBoyEventMoodLockDialog.prefab"
L4_1 = "UIText_HeartDial_titledesc7"
L5_1 = "UIText_HeartDial_titledesc9"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  A0_2._pause_game = true
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.HeartDialEventHintDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L0_1.ctor = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.NpcNameTextID
  A0_2._npc_name_textid = L2_2
  L2_2 = A1_2.CurrentStepType
  A0_2._currentScriptStepType = L2_2
  L2_2 = A0_2._currentScriptStepType
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.HeartDialStepType
  L3_2 = L3_2.Lock
  if L2_2 == L3_2 then
    L2_2 = A0_2._binder
    L3_2 = L3_1
    L2_2.prefab_path = L3_2
  else
    L2_2 = A0_2._currentScriptStepType
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.HeartDialStepType
    L3_2 = L3_2.Full
    if L2_2 == L3_2 then
      L2_2 = A0_2._binder
      L3_2 = L2_1
      L2_2.prefab_path = L3_2
    else
      L2_2 = A0_2._currentScriptStepType
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.HeartDialStepType
      L3_2 = L3_2.Normal
      if L2_2 == L3_2 then
        L2_2 = A0_2._binder
        L3_2 = L1_1
        L2_2.prefab_path = L3_2
      end
    end
  end
end
L0_1.init = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.TextmapStatic
  L1_2 = L1_2.GetText
  L2_2 = A0_2._npc_name_textid
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_hint
  if L2_2 ~= nil then
    L2_2 = A0_2._currentScriptStepType
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.HeartDialStepType
    L3_2 = L3_2.Normal
    if L2_2 == L3_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_hint
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = L4_1
      L5_2 = L1_2
      L2_2(L3_2, L4_2, L5_2)
    else
      L2_2 = A0_2._currentScriptStepType
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.HeartDialStepType
      L3_2 = L3_2.Lock
      if L2_2 == L3_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.text_hint
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetTextID
        L4_2 = L5_1
        L5_2 = L1_2
        L2_2(L3_2, L4_2, L5_2)
      end
    end
  end
end
L0_1._setup_view = L6_1
function L6_1(A0_2, A1_2, A2_2)
  A0_2._exit_callback = A2_2
  A0_2._exit_callback_owner = A1_2
end
L0_1.register_exit_callback = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_exit
  L1_2(L2_2)
end
L0_1._on_btn_close = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._exit_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._exit_callback
    L2_2 = A0_2._exit_callback_owner
    L1_2(L2_2)
  end
  A0_2._exit_callback = nil
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_exit
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L6_1
return L0_1
