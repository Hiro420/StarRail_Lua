local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Monster.MonsterMazeDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.CommonBossIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.CommonBossIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.MonsterWavePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.MonsterWavePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeAvatarDialogBuffRow"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.AvatarDialogBuffRowBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLiteBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.MonsterTipsDialog"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MonsterMazeDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MonsterMazeDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  A0_2._monster_waves = L1_2
  A0_2._current_wave = 1
  A0_2._is_monster_wave_show = false
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.init = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_monster
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.button
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.LeftBumper
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_bumper_click
    L2_2(L3_2)
  else
    L2_2 = CS
    L2_2 = L2_2.InControl
    L2_2 = L2_2.InputControlType
    L2_2 = L2_2.RightBumper
    L2_2 = #L2_2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._on_right_bumper_click
      L2_2(L3_2)
    end
  end
end
L0_1._on_in_control_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._monster_waves
    L1_2 = #L1_2
    if 1 < L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.scroll_wave
      L2_2 = L1_2
      L1_2 = L1_2.SelectPreview
      L1_2(L2_2)
      L2_2 = A0_2
      L1_2 = A0_2.force_set_first_navigation_target
      L1_2(L2_2)
    end
  end
end
L0_1._on_left_bumper_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._monster_waves
    L1_2 = #L1_2
    if 1 < L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.scroll_wave
      L2_2 = L1_2
      L1_2 = L1_2.SelectNext
      L1_2(L2_2)
      L2_2 = A0_2
      L1_2 = A0_2.force_set_first_navigation_target
      L1_2(L2_2)
    end
  end
end
L0_1._on_right_bumper_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_cross_navigation
    L0_3(L1_3)
  end
  L1_2(L2_2)
end
L0_1._init_ui_navigation = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2.exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2.exit
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_wave
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_scroll_wave_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_monster
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_scroll_monster_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_reward
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_scroll_reward_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._entity = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_entity_list
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_data
  L2_2(L3_2)
end
L0_1._refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L2_2 = A0_2._entity
  L1_2[1] = L2_2
  A0_2._entity_list = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AdventureStatic
  L1_2 = L1_2.GetBattleAssistMonsterList
  L2_2 = A0_2._entity
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = 0
    L3_2 = L1_2.Count
    L3_2 = L3_2 - 1
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = A0_2._entity_list
      L7_2 = A0_2._entity_list
      L7_2 = #L7_2
      L7_2 = L7_2 + 1
      L8_2 = L1_2[L5_2]
      L6_2[L7_2] = L8_2
    end
  end
end
L0_1._refresh_entity_list = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._monster_waves = L1_2
  L1_2 = {}
  A0_2._boss_wave_indexs = L1_2
  L1_2 = {}
  A0_2._entity_wave_indexs = L1_2
  L1_2 = {}
  A0_2._buff_entity_map = L1_2
  L1_2 = {}
  A0_2._reward_entity_map = L1_2
  A0_2._current_wave = 1
  L1_2 = ipairs
  L2_2 = A0_2._entity_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2._refresh_data_by_entity
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._refresh_data = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L3_2 = A1_2
  L2_2 = A1_2.GetComponent
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.NPCComponent
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  L4_2 = L2_2
  L3_2 = L2_2.GetStageID
  L3_2 = L3_2(L4_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.StageExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 == nil then
    L5_2 = G
    L5_2 = L5_2.SuperDebug
    L5_2 = L5_2.LogErrorFormatWithTag
    L6_2 = G
    L6_2 = L6_2.LogTag
    L6_2 = L6_2.UI
    L7_2 = "Maze monster info error, monster stage id: %s"
    L8_2 = tostring
    L9_2 = L3_2
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L8_2(L9_2)
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
    return
  end
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.AdventureStatic
  L5_2 = L5_2.GetNPCMonsterHardConfig
  L6_2 = L4_2
  L5_2, L6_2 = L5_2(L6_2)
  L7_2 = nil
  L8_2 = 0
  L9_2 = L4_2.MonsterList
  L9_2 = L9_2.Length
  L9_2 = L9_2 - 1
  L10_2 = 1
  for L11_2 = L8_2, L9_2, L10_2 do
    L12_2 = L4_2.MonsterList
    L12_2 = L12_2[L11_2]
    L13_2 = L12_2
    L12_2 = L12_2.ToList
    L12_2 = L12_2(L13_2)
    L13_2 = {}
    L14_2 = 0
    L15_2 = L12_2.Count
    L15_2 = L15_2 - 1
    L16_2 = 1
    for L17_2 = L14_2, L15_2, L16_2 do
      L18_2 = L12_2[L17_2]
      L20_2 = A0_2
      L19_2 = A0_2._has_monster
      L21_2 = L13_2
      L22_2 = L18_2
      L19_2 = L19_2(L20_2, L21_2, L22_2)
      if not L19_2 then
        L19_2 = CS
        L19_2 = L19_2.RPG
        L19_2 = L19_2.Client
        L19_2 = L19_2.MonsterData
        L20_2 = L18_2
        L21_2 = L6_2
        L19_2 = L19_2(L20_2, L21_2)
        L20_2 = table
        L20_2 = L20_2.insert
        L21_2 = L13_2
        L22_2 = L19_2
        L20_2(L21_2, L22_2)
        L20_2 = L19_2.TemplateRow
        L21_2 = L20_2.Rank
        L22_2 = CS
        L22_2 = L22_2.RPG
        L22_2 = L22_2.GameCore
        L22_2 = L22_2.MonsterRank
        L22_2 = L22_2.LittleBoss
        L21_2 = L21_2 == L22_2
        if L21_2 then
          L22_2 = A0_2._boss_wave_indexs
          L23_2 = A0_2._monster_waves
          L23_2 = #L23_2
          L23_2 = L23_2 + 1
          L22_2[L23_2] = true
        end
        L22_2 = A0_2._entity_wave_indexs
        L23_2 = A0_2._monster_waves
        L23_2 = #L23_2
        L23_2 = L23_2 + 1
        L22_2[L23_2] = A1_2
      end
    end
    L14_2 = table
    L14_2 = L14_2.sort
    L15_2 = L13_2
    function L16_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3, L6_3
      L2_3 = A0_3.TemplateRow
      L3_3 = A1_3.TemplateRow
      L4_3 = CS
      L4_3 = L4_3.System
      L4_3 = L4_3.Convert
      L4_3 = L4_3.ToUInt32
      L5_3 = L2_3.Rank
      L4_3 = L4_3(L5_3)
      L5_3 = CS
      L5_3 = L5_3.System
      L5_3 = L5_3.Convert
      L5_3 = L5_3.ToUInt32
      L6_3 = L3_3.Rank
      L5_3 = L5_3(L6_3)
      L4_3 = L4_3 > L5_3
      return L4_3
    end
    L14_2(L15_2, L16_2)
    L14_2 = table
    L14_2 = L14_2.insert
    L15_2 = A0_2._monster_waves
    L16_2 = L13_2
    L14_2(L15_2, L16_2)
    if L7_2 == nil then
      L7_2 = L13_2
    end
  end
  L8_2 = A0_2._buff_entity_map
  L10_2 = A0_2
  L9_2 = A0_2._get_buff_list
  L11_2 = A1_2
  L9_2 = L9_2(L10_2, L11_2)
  L8_2[A1_2] = L9_2
  L8_2 = A0_2._reward_entity_map
  L10_2 = A0_2
  L9_2 = A0_2._get_reward_list
  L11_2 = L2_2
  L12_2 = L7_2
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L8_2[A1_2] = L9_2
end
L0_1._refresh_data_by_entity = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = {}
  L4_2 = A1_2
  L3_2 = A1_2.GetComponent
  L5_2 = typeof
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.AdventureAbilityComponent
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  if L3_2 ~= nil then
    L4_2 = L3_2.ModifierCount
    L5_2 = 0
    L6_2 = L4_2 - 1
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L10_2 = L3_2
      L9_2 = L3_2.GetModifierByIndex
      L11_2 = L8_2
      L9_2 = L9_2(L10_2, L11_2)
      L10_2 = L9_2.State
      L11_2 = CS
      L11_2 = L11_2.RPG
      L11_2 = L11_2.GameCore
      L11_2 = L11_2.ModifierState
      L11_2 = L11_2.Alive
      if L10_2 == L11_2 then
        L10_2 = L9_2.BuffID
        if L10_2 ~= 0 then
          L10_2 = G
          L10_2 = L10_2.BuffUtils
          L10_2 = L10_2.GetMazeBuffData
          L11_2 = L9_2.BuffID
          L12_2 = L9_2.Level
          L10_2 = L10_2(L11_2, L12_2)
          if L10_2 ~= nil then
            L11_2 = L10_2.IsDisplay
            if L11_2 then
              L11_2 = table
              L11_2 = L11_2.insert
              L12_2 = L2_2
              L13_2 = L9_2
              L11_2(L12_2, L13_2)
            end
          end
        end
      end
    end
  end
  return L2_2
end
L0_1._get_buff_list = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L3_2 = {}
  L4_2 = A1_2.MapNpcDef
  L4_2 = L4_2.EventID
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.PlaneEventExcelTable
  L5_2 = L5_2.GetData
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = L5_2.DisplayItemList
  L6_2 = L6_2.Length
  if L6_2 ~= 0 then
    L6_2 = 0
    L7_2 = L5_2.DisplayItemList
    L7_2 = L7_2.Length
    L7_2 = L7_2 - 1
    L8_2 = 1
    for L9_2 = L6_2, L7_2, L8_2 do
      L11_2 = A0_2
      L10_2 = A0_2._add_drop
      L12_2 = L5_2.DisplayItemList
      L12_2 = L12_2[L9_2]
      L13_2 = L3_2
      L10_2(L11_2, L12_2, L13_2)
    end
  end
  L6_2 = L5_2.IsUseMonsterDrop
  if L6_2 and A2_2 ~= nil then
    L6_2 = ipairs
    L7_2 = A2_2
    L6_2, L7_2, L8_2 = L6_2(L7_2)
    for L9_2, L10_2 in L6_2, L7_2, L8_2 do
      L11_2 = L10_2.Row
      L12_2 = CS
      L12_2 = L12_2.RPG
      L12_2 = L12_2.GameCore
      L12_2 = L12_2.MonsterDropExcelTable
      L12_2 = L12_2.GetData
      L13_2 = L11_2.MonsterTemplateID
      L12_2 = L12_2(L13_2)
      if L12_2 then
        L13_2 = L12_2.DisplayItemList
        L13_2 = L13_2.Length
        if L13_2 ~= 0 then
          L13_2 = 0
          L14_2 = L12_2.DisplayItemList
          L14_2 = L14_2.Length
          L14_2 = L14_2 - 1
          L15_2 = 1
          for L16_2 = L13_2, L14_2, L15_2 do
            L18_2 = A0_2
            L17_2 = A0_2._add_drop
            L19_2 = L12_2.DisplayItemList
            L19_2 = L19_2[L16_2]
            L20_2 = L3_2
            L17_2(L18_2, L19_2, L20_2)
          end
        end
      end
    end
  end
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.RogueStatic
  L6_2 = L6_2.GetRogueMonsterExtraDrop
  L7_2 = A1_2
  L6_2 = L6_2(L7_2)
  if L6_2 ~= nil then
    L7_2 = L6_2.Length
    if L7_2 ~= 0 then
      L7_2 = 0
      L8_2 = L6_2.Length
      L8_2 = L8_2 - 1
      L9_2 = 1
      for L10_2 = L7_2, L8_2, L9_2 do
        L12_2 = A0_2
        L11_2 = A0_2._add_drop
        L13_2 = L6_2[L10_2]
        L14_2 = L3_2
        L11_2(L12_2, L13_2, L14_2)
      end
    end
  end
  L7_2 = G
  L7_2 = L7_2.RewardUtils
  L7_2 = L7_2.sort_reward_item
  L8_2 = L3_2
  L7_2(L8_2)
  return L3_2
end
L0_1._get_reward_list = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._entity_wave_indexs
  L2_2 = A0_2._current_wave
  L1_2 = L1_2[L2_2]
  A0_2._cur_entity = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_wave_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_monster_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_buff_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_drop_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._monster_waves
  L1_2 = #L1_2
  L1_2 = 1 < L1_2
  A0_2._is_monster_wave_show = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_wave
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._monster_waves
  L3_2 = #L3_2
  L3_2 = 1 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_wave
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._monster_waves
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_wave
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._setup_wave_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._cur_entity
  L2_2 = L1_2
  L1_2 = L1_2.GetComponent
  L3_2 = typeof
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.NPCComponent
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2(L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = L1_2
  L2_2 = L1_2.GetStageID
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.StageExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.AdventureStatic
  L4_2 = L4_2.GetNPCMonsterHardConfig
  L5_2 = L3_2
  L4_2, L5_2 = L4_2(L5_2)
  A0_2._stage_level = L5_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.scroll_monster
  L7_2 = L6_2
  L6_2 = L6_2.SetListItemCount
  L9_2 = A0_2
  L8_2 = A0_2._get_current_monsters
  L8_2 = L8_2(L9_2)
  L8_2 = #L8_2
  L9_2 = true
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.scroll_monster
  L7_2 = L6_2
  L6_2 = L6_2.RefreshAllShownItem
  L6_2(L7_2)
end
L0_1._setup_monster_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._monster_waves
  L2_2 = A0_2._current_wave
  L1_2 = L1_2[L2_2]
  if not L1_2 then
    L1_2 = {}
  end
  return L1_2
end
L0_1._get_current_monsters = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._buff_entity_map
  L2_2 = A0_2._cur_entity
  L1_2 = L1_2[L2_2]
  A0_2._buff_list = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_no_buff
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._buff_list
  L3_2 = #L3_2
  L3_2 = L3_2 == 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.buff_list
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._buff_list
  L1_2(L2_2, L3_2)
end
L0_1._setup_buff_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._reward_entity_map
  L2_2 = A0_2._cur_entity
  L1_2 = L1_2[L2_2]
  A0_2._drops = L1_2
  L1_2 = A0_2._drops
  L1_2 = #L1_2
  L1_2 = 0 < L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_no_reward
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_reward
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_reward
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._drops
  L4_2 = #L4_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_reward
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
end
L0_1._setup_drop_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.MonsterWavePanel
    L8_2 = G
    L8_2 = L8_2.MonsterWavePanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
    L6_2 = L4_2
    L5_2 = L4_2.set_btn_callback
    L7_2 = A0_2._on_wave_click
    L8_2 = A0_2
    L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = A2_2 + 1
  L6_2 = A0_2._boss_wave_indexs
  L6_2 = L6_2[L5_2]
  if L6_2 ~= nil then
    L6_2 = A0_2._boss_wave_indexs
    L6_2 = L6_2[L5_2]
    if L6_2 then
      goto lbl_32
    end
  end
  L6_2 = false
  ::lbl_32::
  L8_2 = L4_2
  L7_2 = L4_2.setup_view
  L9_2 = L5_2
  L10_2 = L6_2
  L11_2 = "UIText_BattleViewModePage_Wave"
  L12_2 = L5_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L8_2 = L4_2
  L7_2 = L4_2.set_selected
  L9_2 = A0_2._current_wave
  L9_2 = L5_2 == L9_2
  L7_2(L8_2, L9_2)
  return L3_2
end
L0_1._on_scroll_wave_change = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.CommonBossIconPanel
    L8_2 = G
    L8_2 = L8_2.CommonBossIconPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
    L6_2 = L4_2
    L5_2 = L4_2.bind_click
    L7_2 = A0_2
    L8_2 = A0_2._on_monster_clicked
    L9_2 = A2_2 + 1
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
  L6_2 = A0_2
  L5_2 = A0_2._get_current_monsters
  L5_2 = L5_2(L6_2)
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L6_2 = L5_2.MonsterID
  L7_2 = L5_2.TemplateRow
  L8_2 = L7_2.Rank
  L9_2 = CS
  L9_2 = L9_2.RPG
  L9_2 = L9_2.GameCore
  L9_2 = L9_2.MonsterRank
  L9_2 = L9_2.BigBoss
  L8_2 = L8_2 == L9_2
  L10_2 = L4_2
  L9_2 = L4_2.setup_view
  L11_2 = L6_2
  L12_2 = A0_2._stage_level
  L13_2 = L8_2
  L9_2(L10_2, L11_2, L12_2, L13_2)
  return L3_2
end
L0_1._on_scroll_monster_change = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = G
  L3_2 = L3_2.new
  L4_2 = G
  L4_2 = L4_2.MonsterTipsDialog
  L3_2 = L3_2(L4_2)
  L5_2 = L3_2
  L4_2 = L3_2.set_wave_monsters
  L6_2 = A0_2._monster_waves
  L7_2 = A0_2._current_wave
  L8_2 = A2_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = L3_2
  L4_2 = L3_2.async_show
  L4_2(L5_2)
end
L0_1._on_monster_clicked = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.RewardItemIconLite
    L8_2 = G
    L8_2 = L8_2.RewardItemIconLiteBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L6_2 = L4_2
    L5_2 = L4_2.bind_click
    L7_2 = A0_2
    L8_2 = A0_2._on_item_click
    L9_2 = nil
    L5_2(L6_2, L7_2, L8_2, L9_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._drops
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2.ItemID
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_count_display
  L8_2 = L5_2.ItemNum
  L8_2 = 0 < L8_2
  L6_2(L7_2, L8_2)
  L6_2 = L5_2.ItemNum
  if L6_2 ~= 0 then
    L7_2 = L4_2
    L6_2 = L4_2.set_count
    L8_2 = L5_2.ItemNum
    L6_2(L7_2, L8_2)
  end
  return L3_2
end
L0_1._on_scroll_reward_change = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_gamepad_input
  L2_2 = L2_2()
  if L2_2 then
    L2_2 = {}
    L3_2 = ipairs
    L4_2 = A0_2._drops
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = #L2_2
      L8_2 = L8_2 + 1
      L9_2 = L7_2.ItemID
      L2_2[L8_2] = L9_2
    end
    L3_2 = G
    L3_2 = L3_2.Utils
    L3_2 = L3_2.index_of_item
    L4_2 = L2_2
    L5_2 = A1_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = {}
    L4_2.items = L2_2
    L4_2.init_index = L3_2
    L4_2.hide_lock = true
    L5_2 = G
    L5_2 = L5_2.InventoryUtils
    L5_2 = L5_2.show_item_detail_display_dialog_for_gamepad
    L6_2 = L4_2
    L5_2(L6_2)
  else
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_show
    L3_2 = "Ui.Common.ItemDetailDialog"
    L2_2 = L2_2(L3_2)
    L4_2 = L2_2
    L3_2 = L2_2.setup_view
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_item_click = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._current_wave = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_view
  L2_2(L3_2)
end
L0_1._on_wave_click = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = ipairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.MonsterID
    if L8_2 == A2_2 then
      L8_2 = true
      return L8_2
    end
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.MonsterExcelTable
    L8_2 = L8_2.GetData
    L9_2 = A2_2
    L8_2 = L8_2(L9_2)
    L9_2 = L7_2.Row
    L9_2 = L9_2.MonsterTemplateID
    L10_2 = L8_2.MonsterTemplateID
    if L9_2 == L10_2 then
      L9_2 = true
      return L9_2
    end
  end
  L3_2 = false
  return L3_2
end
L0_1._has_monster = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = ipairs
  L4_2 = A2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.ItemID
    L9_2 = A1_2.ItemID
    if L8_2 == L9_2 then
      L8_2 = L7_2.ItemNum
      L9_2 = A1_2.ItemNum
      L8_2 = L8_2 + L9_2
      L7_2.ItemNum = L8_2
      return
    end
  end
  L3_2 = #A2_2
  L3_2 = L3_2 + 1
  L4_2 = {}
  L5_2 = A1_2.ItemID
  L4_2.ItemID = L5_2
  L5_2 = A1_2.ItemNum
  L4_2.ItemNum = L5_2
  A2_2[L3_2] = L4_2
end
L0_1._add_drop = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A2_2 == nil then
    L3_2 = true
    return L3_2
  end
  L3_2 = ipairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    if L7_2 == A2_2 then
      L8_2 = true
      return L8_2
    end
  end
  L3_2 = false
  return L3_2
end
L0_1._has = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._get_shown_item_btns
  L4_2 = A0_2._binder
  L4_2 = L4_2.scroll_monster
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._get_shown_item_btns
  L5_2 = A0_2._binder
  L5_2 = L5_2.scroll_reward
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = #L3_2
  if L4_2 ~= 0 then
    L4_2 = #L2_2
    if L4_2 ~= 0 then
      goto lbl_17
    end
  end
  do return end
  ::lbl_17::
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = L1_2
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = L1_2
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = G
  L4_2 = L4_2.UIUtils
  L4_2 = L4_2.setup_multi_line_navigation
  L5_2 = L1_2
  L4_2(L5_2)
end
L0_1._setup_cross_navigation = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = {}
  L3_2 = A1_2.ItemList
  L4_2 = 0
  L5_2 = L3_2.Count
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L3_2[L7_2]
    L9_2 = L8_2.UserObjectData
    if L9_2 ~= nil then
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = L2_2
      L13_2 = L9_2
      L12_2 = L9_2.get_navi_btn
      L12_2, L13_2 = L12_2(L13_2)
      L10_2(L11_2, L12_2, L13_2)
    end
  end
  return L2_2
end
L0_1._get_shown_item_btns = L1_1
return L0_1
