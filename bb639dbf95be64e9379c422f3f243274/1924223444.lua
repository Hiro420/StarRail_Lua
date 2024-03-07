local L0_1, L1_1, L2_1, L3_1
L0_1 = 15
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "MazeHudFuncEntrancePanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.SystemOpenModule
function L3_1(A0_2)
  local L1_2
  A0_2._farm_func_entrance_index = 0
  L1_2 = {}
  A0_2._block_hud_go_to_types = L1_2
end
L1_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIRefreshFuncEntrance
  L4_2 = L1_1._on_ui_refresh_func_entrance
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UINewSystemHintEnd
  L4_2 = L1_1._on_new_system_hint_end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIShowTutorialPage
  L4_2 = A0_2._on_show_tutorial_page
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FarmPropUnlocked
  L4_2 = L1_1._on_farm_prop_unlocked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UnLockFuncHandbook
  L4_2 = L1_1._on_unlock_func_handbook
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_hud_func_entrances
  L1_2(L2_2)
end
L1_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_hud_func_entrances
  L1_2(L2_2)
end
L1_1.setup_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 ~= nil then
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = A0_2._block_hud_go_to_types
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L1_1.set_block_hud_go_to_type = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.HudType
  L3_2 = L3_2.Guide
  if A2_2 == L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.left_hud_func_entrance_panel
    L4_2 = L3_2
    L3_2 = L3_2.safe_set_active
    L5_2 = not A1_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.HudType
    L3_2 = L3_2.QuickEntrance
    if A2_2 == L3_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.right_hud_func_entrance_panel
      L4_2 = L3_2
      L3_2 = L3_2.safe_set_active
      L5_2 = not A1_2
      L3_2(L4_2, L5_2)
    end
  end
end
L1_1.set_hud_template = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_hud_func_entrances
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_guide_entrances
  L1_2(L2_2)
end
L1_1._refresh_hud_func_entrances = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.GetLeftHudFuncEntranceList
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.left_hud_func_entrance_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L1_1._setup_guide_entrances = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.GetHudFuncEntranceList
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._filter_block_hud_func_entrance
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L2_2 = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._update_func_entrance_data
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.right_hud_func_entrance_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L1_1._setup_hud_func_entrances = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = A0_2._block_hud_go_to_types
  if L2_2 ~= nil then
    L2_2 = A0_2._block_hud_go_to_types
    L2_2 = #L2_2
    if L2_2 ~= 0 then
      goto lbl_9
    end
  end
  do return A1_2 end
  ::lbl_9::
  L2_2 = #A1_2
  L3_2 = 1
  L4_2 = -1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.GameCore
    L6_2 = L6_2.GotoConfigExcelTable
    L6_2 = L6_2.GetData
    L7_2 = A1_2[L5_2]
    L7_2 = L7_2.GotoID
    L6_2 = L6_2(L7_2)
    if L6_2 ~= nil then
      L7_2 = ipairs
      L8_2 = A0_2._block_hud_go_to_types
      L7_2, L8_2, L9_2 = L7_2(L8_2)
      for L10_2, L11_2 in L7_2, L8_2, L9_2 do
        L12_2 = L6_2.GotoType
        if L12_2 == L11_2 then
          L12_2 = table
          L12_2 = L12_2.remove
          L13_2 = A1_2
          L14_2 = L5_2
          L12_2(L13_2, L14_2)
          break
        end
      end
    end
  end
  return A1_2
end
L1_1._filter_block_hud_func_entrance = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = ipairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.ID
    L8_2 = L0_1
    if L7_2 == L8_2 then
      A0_2._farm_func_entrance_index = L5_2
    end
  end
end
L1_1._update_func_entrance_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_hud_func_entrances
  L1_2(L2_2)
end
L1_1._on_new_system_hint_end = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_hud_func_entrances
  L1_2(L2_2)
end
L1_1._on_ui_refresh_func_entrance = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.GotoManager
  L1_2 = L1_2.GotoByType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GotoType
  L2_2 = L2_2.Wikipedia
  L2_2 = #L2_2
  L1_2(L2_2)
end
L1_1._on_show_tutorial_page = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = pairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.ID
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.GotoType
    L8_2 = L8_2.Wikipedia
    L8_2 = #L8_2
    if L7_2 == L8_2 then
      L7_2 = G
      L7_2 = L7_2.TutorialModule
      L7_2 = L7_2.Instance
      L8_2 = L7_2
      L7_2 = L7_2.has_not_viewed_guide
      L7_2 = L7_2(L8_2)
      if not L7_2 then
        L7_2 = table
        L7_2 = L7_2.remove
        L8_2 = A1_2
        L9_2 = L5_2
        L7_2(L8_2, L9_2)
      end
    end
  end
end
L1_1._handle_custom_hud = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = nil
  L3_2 = A0_2._farm_func_entrance_index
  if L3_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.right_hud_func_entrance_panel
    L4_2 = L3_2
    L3_2 = L3_2.get_panel_by_index
    L5_2 = A0_2._farm_func_entrance_index
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 ~= nil then
      L5_2 = L3_2
      L4_2 = L3_2.get_root_transform
      L4_2 = L4_2(L5_2)
      L2_2 = L4_2
    end
  end
  L3_2 = G
  L3_2 = L3_2.ToastModule
  L3_2 = L3_2.Instance
  L4_2 = L3_2
  L3_2 = L3_2.try_show_farm_prop_unlocked
  L5_2 = A1_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L1_1._on_farm_prop_unlocked = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = nil
  L3_2 = A0_2._farm_func_entrance_index
  if L3_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.right_hud_func_entrance_panel
    L4_2 = L3_2
    L3_2 = L3_2.get_panel_by_index
    L5_2 = A0_2._farm_func_entrance_index
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 ~= nil then
      L5_2 = L3_2
      L4_2 = L3_2.get_root_transform
      L4_2 = L4_2(L5_2)
      L2_2 = L4_2
    end
  end
  L3_2 = G
  L3_2 = L3_2.ToastModule
  L3_2 = L3_2.Instance
  L4_2 = L3_2
  L3_2 = L3_2._try_to_inqueue_top
  L5_2 = false
  L6_2 = 3
  L7_2 = "Ui.Adventure.FuncUnlockToast.HandbookFuncUnlockToastDialog"
  L8_2 = "Ui.Adventure.FuncUnlockToast.HandbookFuncUnlockToastDialogBinder"
  L9_2 = A1_2
  L10_2 = L2_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L1_1._on_unlock_func_handbook = L3_1
return L1_1
