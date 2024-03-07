local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Maze.Wheel.ShortCutWheelItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ShortCutWheelItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._callbackObject = A1_2
  A0_2._callbackFunc = A2_2
end
L0_1.setup_btn_root_click_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._row_data = A1_2
  A0_2._order = A2_2
  L3_2 = A0_2._row_data
  if L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_add_panel
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_icon_panel
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2._async_load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_icon
    L6_2 = A0_2._row_data
    L6_2 = L6_2.IconPath
    L3_2(L4_2, L5_2, L6_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_add_panel
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_icon_panel
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
end
L0_1.setup_view_by_setting = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  A0_2._row_data = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.ClearAnimationState
  L2_2(L3_2)
  L2_2 = A0_2._row_data
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_add_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_icon_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_ModuleManager
    L2_2 = L2_2.TutorialSupportModule
    L3_2 = L2_2
    L2_2 = L2_2.SetNodeDynamicKey
    L4_2 = A0_2._binder
    L4_2 = L4_2.root
    L4_2 = L4_2.gameObject
    L5_2 = A0_2._row_data
    L5_2 = L5_2.IndexID
    L2_2(L3_2, L4_2, L5_2)
    L3_2 = A0_2
    L2_2 = A0_2._get_goto_id
    L4_2 = A0_2._row_data
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = L2_2 or L3_2
    if L2_2 then
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.GotoConfigExcelTable
      L3_2 = L3_2.GetData
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
    end
    L4_2 = L3_2 or L4_2
    if L3_2 then
      L4_2 = L3_2.UnlockID
    end
    if L4_2 then
      L5_2 = G
      L5_2 = L5_2.Utils
      L5_2 = L5_2.is_unlock
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      if L5_2 and L2_2 then
        L6_2 = A0_2
        L5_2 = A0_2._async_load_sprite_to
        L7_2 = A0_2._binder
        L7_2 = L7_2.img_icon
        L8_2 = A0_2._row_data
        L8_2 = L8_2.IconPath
        L5_2(L6_2, L7_2, L8_2)
        L6_2 = A0_2
        L5_2 = A0_2._get_red_dot_key
        L7_2 = L2_2
        L5_2 = L5_2(L6_2, L7_2)
        if L5_2 then
          L6_2 = G
          L6_2 = L6_2.RedDotModule
          L6_2 = L6_2.Instance
          L7_2 = L6_2
          L6_2 = L6_2.bind_reddot
          L8_2 = L5_2
          L9_2 = nil
          L10_2 = A0_2
          L11_2 = A0_2._binder
          L11_2 = L11_2.red_dot
          L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
        end
      end
    end
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_checked = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AdventureStatic
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentGameModeType
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.GameModeType
  L3_2 = L3_2.Town
  if L2_2 ~= L3_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.GameModeType
    L3_2 = L3_2.Maze
    if L2_2 ~= L3_2 then
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.GameModeType
      L3_2 = L3_2.Train
      if L2_2 ~= L3_2 then
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.GameCore
        L3_2 = L3_2.GameModeType
        L3_2 = L3_2.TownRoom
        if L2_2 ~= L3_2 then
          goto lbl_40
        end
      end
    end
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.GameModeType
  L2_2 = L3_2.Train
  ::lbl_40::
  L3_2 = 0
  L4_2 = A1_2.GameModeList
  L4_2 = L4_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A1_2.GameModeList
    L7_2 = L7_2[L6_2]
    L8_2 = #L2_2
    if L7_2 == L8_2 then
      L8_2 = A1_2.FuncGotoIDList
      L8_2 = L8_2.Length
      if L6_2 < L8_2 then
        L8_2 = A1_2.FuncGotoIDList
        L8_2 = L8_2[L6_2]
        return L8_2
      else
        L8_2 = A1_2.FuncGotoIDList
        L8_2 = L8_2[0]
        return L8_2
      end
    end
  end
  L3_2 = nil
  return L3_2
end
L0_1._get_goto_id = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.FuncEntranceConfigExcelTable
  L2_2 = L2_2.dataDict
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.GotoID
    if L8_2 then
      L8_2 = L7_2.GotoID
      if L8_2 == A1_2 then
        L8_2 = L7_2.RedDot
        return L8_2
      end
    end
  end
  L3_2 = nil
  return L3_2
end
L0_1._get_red_dot_key = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._callbackFunc
  if L1_2 then
    L1_2 = A0_2._callbackFunc
    L2_2 = A0_2._callbackObject
    L3_2 = A0_2._order
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_root_click = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2.event_trigger_listener = nil
end
L0_1._on_dispose = L1_1
return L0_1
