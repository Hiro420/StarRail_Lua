local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "UI3DTransition"
L2_1 = nil
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if A1_2 == A2_2 or A2_2 == nil then
    L5_2 = G
    L5_2 = L5_2.ImportCsToLua
    L5_2 = L5_2.RPG_Client_Promise
    L5_2 = L5_2.Resolved
    return L5_2()
  end
  L5_2 = A2_2.config
  L5_2 = L5_2.use_screen_transfer
  if L5_2 then
    L6_2 = A0_2
    L5_2 = A0_2._play_transfer_fade_out
    L7_2 = A3_2
    L8_2 = A4_2
    L5_2(L6_2, L7_2, L8_2)
  end
  L6_2 = A4_2
  L5_2 = A4_2.view_set_promise
  L5_2 = L5_2(L6_2)
  L7_2 = A2_2
  L6_2 = A2_2.view_load_promise
  L6_2 = L6_2(L7_2)
  L7_2 = G
  L7_2 = L7_2.ImportCsToLua
  L7_2 = L7_2.RPG_Client_Promise
  L7_2 = L7_2.All
  L8_2 = L5_2
  L9_2 = L6_2
  L7_2 = L7_2(L8_2, L9_2)
  L9_2 = L7_2
  L8_2 = L7_2.ThenLuaAction
  function L10_2()
    local L0_3, L1_3, L2_3
    L0_3 = A2_2
    L1_3 = L0_3
    L0_3 = L0_3.set_active
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L8_2(L9_2, L10_2)
  L8_2 = false
  L10_2 = L6_2
  L9_2 = L6_2.ThenLuaAction
  function L11_2()
    local L0_3, L1_3, L2_3
    L0_3 = L8_2
    if not L0_3 then
      L0_3 = A2_2
      L1_3 = L0_3
      L0_3 = L0_3.set_active
      L2_3 = false
      L0_3(L1_3, L2_3)
    end
  end
  L9_2(L10_2, L11_2)
  L10_2 = L5_2
  L9_2 = L5_2.ThenLuaAction
  function L11_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = true
    L8_2 = L0_3
    L0_3 = A1_2
    if L0_3 ~= nil then
      L0_3 = A1_2
      L1_3 = L0_3
      L0_3 = L0_3.set_active
      L2_3 = false
      L0_3(L1_3, L2_3)
    end
    L0_3 = A2_2.config
    L0_3 = L0_3.use_screen_transfer
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._play_transfer_fade_in
      L2_3 = A4_2
      L3_3 = A3_2
      L0_3(L1_3, L2_3, L3_3)
    end
  end
  L9_2(L10_2, L11_2)
  return L7_2
end
L0_1.execute_show = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  if A1_2 == A2_2 or A1_2 == nil then
    L5_2 = G
    L5_2 = L5_2.ImportCsToLua
    L5_2 = L5_2.RPG_Client_Promise
    L5_2 = L5_2.Resolved
    return L5_2()
  end
  L5_2 = A1_2.config
  L5_2 = L5_2.use_screen_transfer
  if L5_2 then
    L6_2 = A0_2
    L5_2 = A0_2._play_transfer_fade_out
    L7_2 = A3_2
    L8_2 = A4_2
    L5_2(L6_2, L7_2, L8_2)
  end
  L6_2 = A3_2
  L5_2 = A3_2.exit_promise
  L5_2 = L5_2(L6_2)
  L7_2 = L5_2
  L6_2 = L5_2.ThenLuaAction
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A1_2.config
    L0_3 = L0_3.use_screen_transfer
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._play_transfer_fade_in
      L2_3 = A4_2
      L3_3 = A3_2
      L0_3(L1_3, L2_3, L3_3)
    end
    L0_3 = A2_2
    if L0_3 ~= nil then
      L0_3 = A2_2
      L1_3 = L0_3
      L0_3 = L0_3.set_active
      L2_3 = true
      L0_3(L1_3, L2_3)
    end
  end
  L6_2(L7_2, L8_2)
  return L5_2
end
L0_1.execute_exit = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = 0.25
  if A1_2 ~= nil and A2_2 ~= nil then
    L5_2 = A1_2
    L4_2 = A1_2.fade_out_duration
    L6_2 = A2_2.Name
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L4_2
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_UIManager
  L5_2 = L4_2
  L4_2 = L4_2.SwitchOutAboveTransfer
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1._play_transfer_fade_out = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = 0.25
  if A1_2 ~= nil and A2_2 ~= nil then
    L5_2 = A1_2
    L4_2 = A1_2.fade_in_duration
    L6_2 = A2_2.Name
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L4_2
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_UIManager
  L5_2 = L4_2
  L4_2 = L4_2.SwitchInAboveTransfer
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1._play_transfer_fade_in = L1_1
return L0_1
