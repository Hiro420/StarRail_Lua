local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Team.CreateTeamNameDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CreateTeamNameDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.TeamModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.CreateTeamNameDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  A0_2._block_input = true
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueCommonExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "PlayerName_Max"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.IntValue
  A0_2._max_length = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  A0_2._team_index = A1_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_cancel_click
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_cancel
  L4_2 = A0_2._on_btn_cancel_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._on_btn_cancel_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_cancel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerSetTeamName
  L4_2 = L0_1._on_player_set_team_name
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_TeamEdit_NameDialog"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_Dialog_Team_NameEdit_Desc"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_place_holder
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_TeamEdit_PreInput"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_confirm
  L1_2.interactable = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.input_name
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.SafeAddListener
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = A0_2._binder
    if L1_3 == nil then
      return
    end
    L1_3 = A0_2._binder
    L1_3 = L1_3.btn_confirm
    L2_3 = #A0_3
    L2_3 = 0 < L2_3
    L1_3.interactable = L2_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._check_name
    L3_3 = A0_3
    L1_3, L2_3 = L1_3(L2_3, L3_3)
    if L1_3 then
      L3_3 = A0_2
      L4_3 = L3_3
      L3_3 = L3_3._close_tips
      L3_3(L4_3)
    else
      L3_3 = A0_2
      L4_3 = L3_3
      L3_3 = L3_3._show_tips
      L5_3 = L2_3
      L3_3(L4_3, L5_3)
    end
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.input_name
  L1_2 = L1_2.text
  A0_2._name = L1_2
  L1_2 = A0_2._name
  if L1_2 == "" then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._check_name
  L3_2 = A0_2._name
  L1_2, L2_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L4_2 = A0_2
    L3_2 = A0_2._close_tips
    L3_2(L4_2)
    L3_2 = L1_1
    L4_2 = L3_2
    L3_2 = L3_2.SetTeamName
    L5_2 = A0_2._team_index
    L6_2 = A0_2._name
    L3_2(L4_2, L5_2, L6_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2._show_tips
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_btn_confirm_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_InControlActionsManager
  L1_2 = L1_2.IsInputFiledSelected
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
  end
end
L0_1._on_btn_cancel_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_tips
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_tips
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = ""
  L1_2(L2_2, L3_2)
end
L0_1._close_tips = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_tips
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_tips
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._show_tips = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.get_name_length
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._max_length
  if L2_2 > L3_2 then
    L2_2 = false
    L3_2 = "UIText_ChangeName_Max"
    return L2_2, L3_2
  end
  L2_2 = true
  return L2_2
end
L0_1._check_name = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if nil ~= A1_2 and "" ~= A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._show_tips
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    return
  else
    L3_2 = A0_2
    L2_2 = A0_2.exit
    L2_2(L3_2)
  end
end
L0_1._on_player_set_team_name = L2_1
return L0_1
