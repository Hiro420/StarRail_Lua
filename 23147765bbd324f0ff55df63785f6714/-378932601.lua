local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.Components.ActivityMonopolyBuffOverviewBtnPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.Components.ActivityMonopolyBuffIconPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonopolyBuffOverviewBtnPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MonopolyModule
L1_1 = L1_1.BuffInfo
function L2_1(A0_2)
  local L1_2
  A0_2._enable_unlock_refresh = true
  A0_2._current_level = 0
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.root_btn
  L4_2 = A0_2._on_root_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyFunctionUnlockSynced
  L4_2 = A0_2._on_function_unlocked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_level_value
  L1_2(L2_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = 0
  L1_2[1] = L2_2
  A0_2._level_values = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "Monopoly_Activity_BuffBG_Level"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.ArrayValue
  if L1_2 ~= nil then
    L2_2 = 0
    L3_2 = L1_2.Length
    L3_2 = L3_2 - 1
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = L1_2[L5_2]
      L6_2 = L6_2.UintValue
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._level_values
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
end
L0_1._init_level_value = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root_btn
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_btn_root_interactable = L2_1
function L2_1(A0_2, A1_2)
  A0_2._enable_unlock_refresh = A1_2
end
L0_1.enable_unlock_refresh = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._lock_info_provider_ref = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.refresh
  L2_2(L3_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.MonopolyModule
  L2_2 = L1_2.SystemInfo
  L3_2 = L2_2
  L2_2 = L2_2.IsBuffUnlocked
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = L1_2.SystemInfo
    L2_2 = L2_2.IsInDream
    L2_2 = not L2_2
  end
  L4_2 = A0_2
  L3_2 = A0_2.safe_set_active
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_buff_num
  if L3_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_buff_num
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.buff_desc_txt
  if L3_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.buff_desc_txt
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_ActivityMonopoly_MainPage_Buff"
    L3_2(L4_2, L5_2)
  end
  L3_2 = L1_1.BuffMultiplier
  L3_2 = 100 + L3_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.buff_num_txt
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = "UIText_ActivityMonopoly_MainPage_Buff_Detail"
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._get_level
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = pairs
  L6_2 = A0_2._binder
  L6_2 = L6_2.nodes_level
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L11_2 = L9_2
    L10_2 = L9_2.SafeSetActive
    L12_2 = L8_2 == L4_2
    L10_2(L11_2, L12_2)
  end
  L5_2 = pairs
  L6_2 = A0_2._binder
  L6_2 = L6_2.nodes_open
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L11_2 = L9_2
    L10_2 = L9_2.SafeSetActive
    L12_2 = L8_2 == L4_2
    L10_2(L11_2, L12_2)
  end
  A0_2._current_level = L4_2
end
L0_1.refresh = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._level_values
  L2_2 = #L2_2
  L3_2 = 1
  L4_2 = -1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._level_values
    L6_2 = L6_2[L5_2]
    if A1_2 >= L6_2 then
      return L5_2
    end
  end
  L2_2 = 1
  return L2_2
end
L0_1._get_level = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._lock_info_provider_ref
  if L1_2 then
    L1_2 = A0_2._lock_info_provider_ref
    L2_2 = L1_2
    L1_2 = L1_2.is_locked
    L1_2 = L1_2(L2_2)
    if L1_2 then
      return
    end
  end
  L1_2 = A0_2._owner
  L1_2 = L1_2.on_main_page_btn_clicked
  if L1_2 ~= nil then
    L1_2 = A0_2._owner
    L2_2 = L1_2
    L1_2 = L1_2.on_main_page_btn_clicked
    L1_2(L2_2)
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.ActivityMonopoly.Buff.ActivityMonopolyBuffDisplayDialog"
  L1_2(L2_2)
end
L0_1._on_root_btn_clicked = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._enable_unlock_refresh
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.refresh
  L1_2(L2_2)
end
L0_1._on_function_unlocked = L2_1
return L0_1
