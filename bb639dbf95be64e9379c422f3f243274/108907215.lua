local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.StoryLine.StoryLineSwitchButtonPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.StoryLineModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.SystemOpenModule
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "StoryLineSwitchButtonPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.switch_btn
  L4_2 = A0_2.on_switch_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.StoryLineDataUpdate
  L4_2 = A0_2._setup_visible
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_visible
  L1_2(L2_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.CanSwitchToOtherLine
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._story_line_entrance_open
    L1_2 = L1_2(L2_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._set_visible
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_icon
    L2_2(L3_2)
  end
end
L2_1._setup_visible = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetLeftTopHudFuncEntranceList
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.Contains
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.HudType
  L4_2 = L4_2.StoryLine
  return L2_2(L3_2, L4_2)
end
L2_1._story_line_entrance_open = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L2_1._set_visible = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = L0_1.CurrentLine
  L1_2(L2_2, L3_2)
end
L2_1._setup_icon = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.StoryLine.StoryLineSwitchPage"
  L1_2(L2_2)
end
L2_1.on_switch_btn_click = L3_1
return L2_1
