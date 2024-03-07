local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Dimensions.Components.ChessRogueCabinetItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Dimensions.Components.ChessRogueCabinetPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueCabinetPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ChessRogueModule
L2_1 = "DiceSkillMissionTreeInfo_In"
L3_1 = "DiceSkillMissionTreeInfo_Out"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._init_datas
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_panels
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.cabinet_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestGetReward
  L4_2 = A0_2._on_quest_get_reward
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1.ChessRogueDimensionData
  L1_2 = L1_2.CabinetInfo
  L2_2 = L1_2
  L1_2 = L1_2.GetNormalCabinetInfo
  L1_2 = L1_2(L2_2)
  A0_2._normal_data = L1_2
  L1_2 = L1_1.ChessRogueDimensionData
  L1_2 = L1_2.CabinetInfo
  L2_2 = L1_2
  L1_2 = L1_2.GetHideCabinetInfo
  L1_2 = L1_2(L2_2)
  A0_2._hide_data = L1_2
end
L0_1._init_datas = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  A0_2._normal_panels = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.normal_panel_roots
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.ChessRogueCabinetItemPanel
    L9_2 = G
    L9_2 = L9_2.ChessRogueCabinetItemPanelBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.register_click_callback
    L9_2 = A0_2._on_panel_clicked
    L10_2 = A0_2
    L7_2(L8_2, L9_2, L10_2)
    L8_2 = L6_2
    L7_2 = L6_2.register_select_callback
    L9_2 = A0_2._on_panel_select
    L10_2 = A0_2
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._normal_panels
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L1_2 = {}
  A0_2._hide_panels = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.hide_panel_roots
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.ChessRogueCabinetItemPanel
    L9_2 = G
    L9_2 = L9_2.ChessRogueCabinetItemPanelBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.register_click_callback
    L9_2 = A0_2._on_panel_clicked
    L10_2 = A0_2
    L7_2(L8_2, L9_2, L10_2)
    L8_2 = L6_2
    L7_2 = L6_2.register_select_callback
    L9_2 = A0_2._on_panel_select
    L10_2 = A0_2
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._hide_panels
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._init_panels = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = ipairs
  L2_2 = A0_2._normal_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L4_2 - 1
    L7_2 = A0_2._normal_data
    L7_2 = L7_2.Count
    if L6_2 >= L7_2 then
      L7_2 = L5_2
      L6_2 = L5_2.safe_set_active
      L8_2 = false
      L6_2(L7_2, L8_2)
    else
      L7_2 = L5_2
      L6_2 = L5_2.safe_set_active
      L8_2 = true
      L6_2(L7_2, L8_2)
      L7_2 = L5_2
      L6_2 = L5_2.setup_view
      L8_2 = A0_2._normal_data
      L9_2 = L4_2 - 1
      L8_2 = L8_2[L9_2]
      L6_2(L7_2, L8_2)
    end
  end
  L1_2 = ipairs
  L2_2 = A0_2._hide_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L4_2 - 1
    L7_2 = A0_2._hide_data
    L7_2 = L7_2.Count
    if L6_2 >= L7_2 then
      L7_2 = L5_2
      L6_2 = L5_2.safe_set_active
      L8_2 = false
      L6_2(L7_2, L8_2)
    else
      L7_2 = L5_2
      L6_2 = L5_2.safe_set_active
      L8_2 = true
      L6_2(L7_2, L8_2)
      L7_2 = L5_2
      L6_2 = L5_2.setup_view
      L8_2 = A0_2._hide_data
      L9_2 = L4_2 - 1
      L8_2 = L8_2[L9_2]
      L9_2 = "SpriteOutput/Rogue/DLC/Dice/MissionTree/IconRogueDlcPathQuestIconScreatLock.png"
      L6_2(L7_2, L8_2, L9_2)
    end
  end
  L1_2 = A0_2._normal_panels
  L1_2 = L1_2[1]
  A0_2._cur_panel = L1_2
end
L0_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.cabinet_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_scroll_rect_ref
  return L1_2(L2_2)
end
L0_1.get_detail_scroll_rect_ref = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Vector2
  L3_2 = 0
  L4_2 = 1
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.normalizedPosition = L2_2
end
L0_1.reset_scroll_rect = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.auto_first_focus_finished
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2.auto_first_focus_doing
    L2_2(L3_2)
  end
end
L0_1.auto_focus = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = nil
  L3_2 = A0_2
  L2_2 = A0_2._try_get_first_quest_panel_by_status
  L4_2 = CS
  L4_2 = L4_2.BLHLCHNAJKK
  L4_2 = L4_2.CDJHHIHBNMN
  L5_2 = true
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2 = L2_2
  if L1_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._move_content_to_panel
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._try_get_first_quest_panel_by_status
  L4_2 = CS
  L4_2 = L4_2.BLHLCHNAJKK
  L4_2 = L4_2.BMEAGBEFNFK
  L5_2 = false
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2 = L2_2
  if L1_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._move_content_to_panel
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._try_get_first_quest_panel_by_status
  L4_2 = nil
  L5_2 = false
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2 = L2_2
  if L1_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._move_content_to_panel
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = A0_2._normal_panels
  L2_2 = #L2_2
  L3_2 = 1
  L4_2 = -1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._normal_panels
    L6_2 = L6_2[L5_2]
    L8_2 = L6_2
    L7_2 = L6_2.is_active_in_hierarchy
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L1_2 = L6_2
    end
  end
  if L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._move_content_to_panel
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.auto_move = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = nil
  L3_2 = A0_2
  L2_2 = A0_2._try_get_first_quest_panel_by_status
  L4_2 = CS
  L4_2 = L4_2.BLHLCHNAJKK
  L4_2 = L4_2.CDJHHIHBNMN
  L5_2 = true
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2 = L2_2
  if L1_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._move_content_to_panel
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._focus_content_to
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._try_get_first_quest_panel_by_status
  L4_2 = CS
  L4_2 = L4_2.BLHLCHNAJKK
  L4_2 = L4_2.BMEAGBEFNFK
  L5_2 = false
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2 = L2_2
  if L1_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._move_content_to_panel
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._focus_content_to
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._try_get_first_quest_panel_by_status
  L4_2 = nil
  L5_2 = false
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2 = L2_2
  if L1_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._move_content_to_panel
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._focus_content_to
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = A0_2._normal_panels
  L2_2 = #L2_2
  L3_2 = 1
  L4_2 = -1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._normal_panels
    L6_2 = L6_2[L5_2]
    L8_2 = L6_2
    L7_2 = L6_2.is_active_in_hierarchy
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L1_2 = L6_2
    end
  end
  if L1_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._move_content_to_panel
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._focus_content_to
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    return
  end
end
L0_1.auto_first_focus_finished = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = nil
  L3_2 = A0_2
  L2_2 = A0_2._try_get_first_quest_panel_by_status
  L4_2 = CS
  L4_2 = L4_2.BLHLCHNAJKK
  L4_2 = L4_2.BMEAGBEFNFK
  L5_2 = false
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2 = L2_2
  if L1_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._move_content_to_panel
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._focus_content_to
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._try_get_first_quest_panel_by_status
  L4_2 = CS
  L4_2 = L4_2.BLHLCHNAJKK
  L4_2 = L4_2.CDJHHIHBNMN
  L5_2 = true
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2 = L2_2
  if L1_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._move_content_to_panel
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._focus_content_to
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._try_get_first_quest_panel_by_status
  L4_2 = nil
  L5_2 = false
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2 = L2_2
  if L1_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._move_content_to_panel
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._focus_content_to
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = A0_2._normal_panels
  L2_2 = #L2_2
  L3_2 = 1
  L4_2 = -1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._normal_panels
    L6_2 = L6_2[L5_2]
    L8_2 = L6_2
    L7_2 = L6_2.is_active_in_hierarchy
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L1_2 = L6_2
    end
  end
  if L1_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._move_content_to_panel
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._focus_content_to
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    return
  end
end
L0_1.auto_first_focus_doing = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = nil
  L4_2 = nil
  L5_2 = ipairs
  L6_2 = A0_2._normal_panels
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L11_2 = L9_2
    L10_2 = L9_2.get_data_ref
    L10_2 = L10_2(L11_2)
    if A1_2 == nil then
      L11_2 = L10_2.QuestData
      if L11_2 == nil then
        L3_2 = L9_2
        break
      end
    end
    L11_2 = L10_2.QuestData
    if L11_2 then
      L11_2 = L10_2.QuestData
      L11_2 = L11_2.Status
      if L11_2 == A1_2 then
        L3_2 = L9_2
        break
      end
    end
  end
  if A2_2 then
    L5_2 = ipairs
    L6_2 = A0_2._hide_panels
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    for L8_2, L9_2 in L5_2, L6_2, L7_2 do
      L11_2 = L9_2
      L10_2 = L9_2.get_data_ref
      L10_2 = L10_2(L11_2)
      if A1_2 == nil then
        L11_2 = L10_2.QuestData
        if L11_2 == nil then
          L4_2 = L9_2
          break
        end
      end
      L11_2 = L10_2.QuestData
      if L11_2 then
        L11_2 = L10_2.QuestData
        L11_2 = L11_2.Status
        if L11_2 == A1_2 then
          L4_2 = L9_2
          break
        end
      end
    end
  end
  if L4_2 == nil then
    return L3_2
  end
  if L3_2 == nil then
    return L4_2
  end
  L6_2 = A0_2
  L5_2 = A0_2._compare_two_transform_position_y
  L8_2 = L3_2
  L7_2 = L3_2.get_root_ref
  L7_2 = L7_2(L8_2)
  L9_2 = L4_2
  L8_2 = L4_2.get_root_ref
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  if L5_2 then
    return L3_2
  else
    return L4_2
  end
end
L0_1._try_get_first_quest_panel_by_status = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A1_2 == nil then
    L3_2 = false
    return L3_2
  end
  if A2_2 == nil then
    L3_2 = true
    return L3_2
  end
  L4_2 = A1_2
  L3_2 = A1_2.TransformPoint
  L5_2 = A1_2.localPosition
  L3_2 = L3_2(L4_2, L5_2)
  L3_2 = L3_2.y
  L5_2 = A2_2
  L4_2 = A2_2.TransformPoint
  L6_2 = A2_2.localPosition
  L4_2 = L4_2(L5_2, L6_2)
  L4_2 = L4_2.y
  L3_2 = L3_2 <= L4_2
  return L3_2
end
L0_1._compare_two_transform_position_y = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._cur_panel = A1_2
  L2_2 = nil
  L4_2 = A1_2
  L3_2 = A1_2.is_spe
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = A0_2._hide_panels
    L2_2 = L3_2[1]
  else
    L3_2 = A0_2._normal_panels
    L2_2 = L3_2[1]
  end
  L4_2 = A1_2
  L3_2 = A1_2.get_relative_localPosition
  L3_2 = L3_2(L4_2)
  L5_2 = L2_2
  L4_2 = L2_2.get_relative_localPosition
  L4_2 = L4_2(L5_2)
  L3_2 = L3_2 - L4_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.scroll_rect
  L4_2 = L4_2.content
  L5_2 = A0_2._binder
  L5_2 = L5_2.scroll_rect
  L5_2 = L5_2.content
  L5_2 = L5_2.localPosition
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.Vector3
  L7_2 = 0
  L8_2 = L3_2.y
  L9_2 = 0
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L5_2 = L5_2 - L6_2
  L4_2.localPosition = L5_2
end
L0_1._move_content_to_panel = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A1_2
  L2_2 = A1_2.trigger_click
  L2_2(L3_2)
  A0_2._auto_focus_panel = A1_2
end
L0_1._focus_content_to = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cur_panel
  if not L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._cur_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_root_ref
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = A0_2._cur_select_panel
    if not L1_2 then
      L1_2 = A0_2._cur_panel
      if not L1_2 then
        L1_2 = A0_2._normal_panels
        L1_2 = L1_2[1]
      end
    end
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_rect
    L3_2 = L2_2
    L2_2 = L2_2.ScrollToTransform
    L5_2 = L1_2
    L4_2 = L1_2.get_root_ref
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_in_control_input_switch = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.cabinet_detail_panel
  L4_2 = L3_2
  L3_2 = L3_2.safe_set_active
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.cabinet_detail_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._owner
  if L3_2 then
    L3_2 = A0_2._owner
    L4_2 = L3_2
    L3_2 = L3_2.on_cabinet_detail_clicked
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  end
  A0_2._cur_data = A1_2
  A0_2._cur_panel = A2_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.ChessRogueUtils
  L3_2 = L3_2.SetCabinetSeen
  L4_2 = A1_2.ID
  L3_2(L4_2)
end
L0_1._on_panel_clicked = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.show_reward_dialog
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._cur_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._cur_data
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._on_panel_clicked
  L4_2 = A0_2._cur_data
  L5_2 = A0_2._cur_panel
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_quest_get_reward = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._cur_select_panel = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_rect
  L3_2 = L2_2
  L2_2 = L2_2.ScrollToTransform
  L5_2 = A1_2
  L4_2 = A1_2.get_root_ref
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_panel_select = L4_1
return L0_1
