local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CreateNickNamePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.PlayerModule
function L2_1(A0_2)
  local L1_2, L2_2
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
  L1_2 = L1_1.PlayerData
  L1_2 = L1_2.NickName
  A0_2._name = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.set_nickname_created_callback = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._name
  if not L1_2 then
    L1_2 = ""
  end
  return L1_2
end
L0_1.get_nickname = L2_1
function L2_1(A0_2, A1_2)
  A0_2._is_create_player = A1_2
end
L0_1.set_is_create_player = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.input_name
  L3_2.text = A1_2
  A0_2._twice_check = A2_2
  L3_2 = A0_2._twice_check
  if L3_2 == nil then
    A0_2._twice_check = true
  end
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if nil ~= A1_2 and "" ~= A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._show_tips
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._on_nickname_created
  L2_2(L3_2)
end
L0_1.on_player_set_nick_name = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_tips
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_confirm
  L1_2.interactable = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.input_name
  L1_2.text = ""
  L1_2 = A0_2._binder
  L1_2 = L1_2.input_name
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.SafeAddListener
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2._binder
    if L1_3 == nil then
      return
    end
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._on_input_changed
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._max_length = nil
end
L0_1._on_dispose = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2._check_name
  L4_2 = A1_2
  L2_2, L3_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L5_2 = A0_2
    L4_2 = A0_2._show_tips
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  else
    L5_2 = A0_2
    L4_2 = A0_2._close_tips
    L4_2(L5_2)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_confirm
  L4_2.interactable = L2_2
end
L0_1._on_input_changed = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.input_name
  L1_2 = L1_2.text
  A0_2._name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._check_name
  L3_2 = A0_2._name
  L1_2, L2_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L4_2 = A0_2
    L3_2 = A0_2._show_tips
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._close_tips
  L3_2(L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.UIStringUtil
  L3_2 = L3_2.GetValidInputContent
  L4_2 = A0_2._name
  L3_2 = L3_2(L4_2)
  A0_2._name = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._filter_invalid_char
  L5_2 = A0_2._name
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._name = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.input_name
  L4_2 = A0_2._name
  L3_2.text = L4_2
  L3_2 = A0_2._twice_check
  if L3_2 then
    L3_2 = A0_2._is_create_player
    if L3_2 then
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.NetworkManager
      L3_2 = L3_2.OOGONDGGKMI
      L4_2 = L3_2
      L3_2 = L3_2.ALGPAIJLLEK
      L5_2 = CS
      L5_2 = L5_2.INHNBHPPBBM
      L5_2 = L5_2.EOMHNMFOPCP
      L6_2 = A0_2._name
      L7_2 = false
      L3_2(L4_2, L5_2, L6_2, L7_2)
    else
      L3_2 = L1_1
      L4_2 = L3_2
      L3_2 = L3_2.SetNickName
      L5_2 = A0_2._name
      L6_2 = false
      L3_2(L4_2, L5_2, L6_2)
    end
  else
    L4_2 = A0_2
    L3_2 = A0_2._on_nickname_created
    L3_2(L4_2)
  end
end
L0_1._on_btn_confirm = L2_1
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
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.check_name_length_valid
  L3_2 = A1_2
  L4_2 = A0_2._max_length
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = false
    L3_2 = "UIText_ChangeName_Max"
    return L2_2, L3_2
  end
  L2_2 = true
  return L2_2
end
L0_1._check_name = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = string
  L2_2 = L2_2.gsub
  L3_2 = A1_2
  L4_2 = " "
  L5_2 = ""
  return L2_2(L3_2, L4_2, L5_2)
end
L0_1._filter_invalid_char = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._callback
  if L1_2 then
    L1_2 = A0_2._callback_self
    if L1_2 then
      L1_2 = A0_2._callback
      L2_2 = A0_2._callback_self
      L1_2(L2_2)
    end
  end
end
L0_1._on_nickname_created = L2_1
return L0_1
