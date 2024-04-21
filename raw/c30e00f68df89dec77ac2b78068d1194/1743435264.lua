local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Entrance.Components.ChessRogueEntranceAeonPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueEntranceAeonPanel"
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
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.root_btn
  L4_2 = A0_2._on_root_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  A0_2._click_handler = A2_2
  A0_2._listener = A3_2
  A0_2._aeon_data = A1_2
  L5_2 = A0_2
  L4_2 = A0_2._setup_title
  L4_2(L5_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_ModuleManager
  L4_2 = L4_2.TutorialSupportModule
  L5_2 = L4_2
  L4_2 = L4_2.SetNodeDynamicKey
  L6_2 = A0_2._binder
  L6_2 = L6_2.root
  L6_2 = L6_2.gameObject
  L7_2 = A0_2._aeon_data
  L7_2 = L7_2.AeonID
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._try_set_tutorial_mode
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.refresh_animator_state
  L4_2(L5_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_btn
  return L1_2
end
L0_1.get_btn = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_navigation_target = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root_btn
  L2_2.enabled = A1_2
end
L0_1.ban_btn = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root_btn
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_selected = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.is_in_guide
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_btn
  L2_2 = A0_2._aeon_data
  L3_2 = L2_2
  L2_2 = L2_2.IsValidInGuide
  L2_2 = L2_2(L3_2)
  L1_2.interactable = L2_2
end
L0_1._try_set_tutorial_mode = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L2_2 = L1_2.SeenRogueDiceUnlockAnim
  L3_2 = L2_2
  L2_2 = L2_2.Contains
  L4_2 = A0_2._aeon_data
  L4_2 = L4_2.AeonID
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.animator
  L4_2 = L3_2
  L3_2 = L3_2.SetBool
  L5_2 = "IsLock"
  L6_2 = A0_2._aeon_data
  L6_2 = L6_2.CanSelectedOnEntrance
  L6_2 = not L2_2 or L6_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._aeon_data
  L3_2 = not L2_2 and L3_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.animator
  L5_2 = L4_2
  L4_2 = L4_2.SetBool
  L6_2 = "IsShow"
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  if L3_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.animator
    L5_2 = L4_2
    L4_2 = L4_2.SetTrigger
    L6_2 = "Unlock_Show"
    L4_2(L5_2, L6_2)
    L4_2 = L1_2.SeenRogueDiceUnlockAnim
    L5_2 = L4_2
    L4_2 = L4_2.Add
    L6_2 = A0_2._aeon_data
    L6_2 = L6_2.AeonID
    L4_2(L5_2, L6_2)
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.Prefs
    L5_2 = L4_2
    L4_2 = L4_2.ForceSave
    L4_2(L5_2)
  end
end
L0_1.refresh_animator_state = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.RogueAeonExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._aeon_data
  L2_2 = L2_2.AeonID
  L3_2 = 1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.RogueStatic
  L2_2 = L2_2.GetRogueAeonDisplayRow
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.title
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.RogueAeonPathName2
  L3_2(L4_2, L5_2)
end
L0_1._setup_title = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1.ChessRogueData
  L1_2 = L1_2.DiceInfo
  L1_2 = L1_2.ChessRogueAeonDiceDataDict
  L2_2 = A0_2._aeon_data
  L2_2 = L2_2.DiceID
  L1_2 = L1_2[L2_2]
  L3_2 = A0_2
  L2_2 = A0_2._load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.icon
  L5_2 = A0_2._aeon_data
  L5_2 = L5_2.AeonDisplayRow
  L5_2 = L5_2.AeonFigure
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.dice_icon
  L5_2 = L1_2.DiceIconPath
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_icon = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._listener
  if L1_2 then
    L1_2 = A0_2._click_handler
    if L1_2 then
      L1_2 = A0_2._click_handler
      L2_2 = A0_2._listener
      L3_2 = A0_2._aeon_data
      L4_2 = A0_2
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L0_1._on_root_btn_clicked = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._aeon_data
  if L1_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._aeon_data
  L1_2 = L1_2.AeonID
  return L1_2
end
L0_1.get_aeon_id = L2_1
return L0_1
