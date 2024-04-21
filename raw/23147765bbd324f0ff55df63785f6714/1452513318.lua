local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.StoryLine.StoryLineSwitchPageBinder"
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
L1_1 = L1_1.MissionModule
L2_1 = 0.3
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "StoryLineSwitchItemPanel"
L5_1 = G
L5_1 = L5_1.BasePanel
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.line_btn
  L4_2 = A0_2._on_switch_line
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.line_btn
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.line_btn
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_switch_line
    L0_3(L1_3)
    L0_3 = A0_2._select_callback_func
    if L0_3 then
      L0_3 = A0_2._select_callback_func
      L1_3 = A0_2._select_callback_obj
      L0_3(L1_3)
    end
  end
  L1_2.onSelectTrigger = L2_2
end
L3_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._click_callback
  L2_2 = A0_2._click_callback_listener
  L3_2 = A0_2._story_line_data
  L1_2(L2_2, L3_2)
end
L3_1._on_switch_line = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.line_btn
  L1_2 = L1_2.gameObject
  return L1_2
end
L3_1.get_first_selected_object = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.line_btn
  return L1_2
end
L3_1.get_first_selected_btn = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._select_callback_obj = A1_2
  A0_2._select_callback_func = A2_2
end
L3_1.setup_select_trigger_call_back = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._story_line_data = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.current_tag
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L0_1.CurrentLine
  L4_2 = A1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.name_txt
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.Name
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.portrait_image
  L5_2 = A1_2.PortraitPath
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_figure
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_mission_type
  L2_2(L3_2)
end
L3_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.figure_image
  L4_2 = A0_2._story_line_data
  L4_2 = L4_2.FigurePath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.UIColorUtils
  L1_2 = L1_2.GetColor
  L2_2 = A0_2._story_line_data
  L2_2 = L2_2.Color
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.figure_image
  L2_2.color = L1_2
  L2_2 = L2_1
  L1_2.a = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.figure_around_image
  L2_2.color = L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.figure_outline_image
  L2_2.color = L1_2
end
L3_1._setup_figure = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._find_mission_by_type
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.MainMissionType
  L3_2 = L3_2.Main
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2._find_mission_by_type
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.MainMissionType
    L4_2 = L4_2.Gap
    L2_2 = L2_2(L3_2, L4_2)
    L1_2 = L2_2
  end
  if L1_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.mission_type_icon_root
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.mission_type_icon
    L5_2 = L1_2.MissionTypeIconMini
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.mission_type_icon_bg
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetColor
    L4_2 = L1_2.MissionTypeColor
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.mission_type_icon_root
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L3_1._setup_mission_type = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.FindMainMission
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.StoryLineID
    L2_3 = A0_2._story_line_data
    L2_3 = L2_3.ID
    if L1_3 == L2_3 then
      L1_3 = A0_3.MainMissionType
      L2_3 = A1_2
      if L1_3 == L2_3 then
        L1_3 = true
        return L1_3
      end
    end
    L1_3 = false
    return L1_3
  end
  L2_2 = L2_2(L3_2, L4_2)
  return L2_2
end
L3_1._find_mission_by_type = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._click_callback = A1_2
  A0_2._click_callback_listener = A2_2
end
L3_1.set_click_callback = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.line_btn
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L3_1.set_selected = L4_1
return L3_1
