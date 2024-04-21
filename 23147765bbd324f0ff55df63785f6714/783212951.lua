local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Achievement.AchievementHintForBattleDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Achievement.AchievementHintItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Achievement.AchievementHintItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AchievementHintForBattleDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AchievementModule
L2_1 = 3
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_AboveDialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AchievementHintForBattleDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._close_when_phase_changed = false
  A0_2.block_when_async_load = false
  L1_2 = {}
  A0_2._score_id_table = L1_2
  L1_2 = {}
  A0_2._panel_table = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIBattleShowRemainAchievement
  L4_2 = A0_2._on_battle_game_phase_finish
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = ipairs
  L5_2 = A1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = A0_2._score_id_table
    L11_2 = A0_2._score_id_table
    L11_2 = #L11_2
    L11_2 = L11_2 + 1
    L12_2 = L8_2
    L9_2(L10_2, L11_2, L12_2)
    L9_2 = G
    L9_2 = L9_2.ToastModule
    L9_2 = L9_2.Instance
    L10_2 = L9_2
    L9_2 = L9_2.remove_battle_achievement_score_id
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
  L4_2 = A2_2 or L4_2
  if not A2_2 then
    L4_2 = 3
  end
  A0_2.time = L4_2
  A0_2._is_fake = A3_2
end
L0_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  A0_2.current_time = 0
  L2_2 = A0_2
  L1_2 = A0_2.add_tick
  L1_2(L2_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIShowPageContext
  L4_2 = A0_2._on_show_ui_page
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AdventurePhaseEnd
  L4_2 = A0_2._on_adventure_phase_end
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 1
  L2_2 = L2_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_table
    L5_2 = L5_2[L4_2]
    if L5_2 ~= nil then
      L6_2 = A0_2._is_fake
      if not L6_2 then
        L7_2 = A0_2
        L6_2 = A0_2._setup_item
        L8_2 = L5_2
        L9_2 = L4_2
        L6_2(L7_2, L8_2, L9_2)
      else
        L7_2 = A0_2
        L6_2 = A0_2._setup_item_by_fake_in_battle_achievement
        L8_2 = L5_2
        L9_2 = L4_2
        L6_2(L7_2, L8_2, L9_2)
      end
    end
  end
end
L0_1._setup_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = nil
  L4_2 = A0_2._score_id_table
  L4_2 = L4_2[A2_2]
  if L4_2 ~= nil then
    L5_2 = L1_1
    L6_2 = L5_2
    L5_2 = L5_2.GetAchievementDataByScoringID
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    L3_2 = L5_2
  end
  L6_2 = A1_2
  L5_2 = A1_2.SafeSetActive
  L7_2 = L3_2 ~= nil
  L5_2(L6_2, L7_2)
  if L3_2 == nil then
    return
  end
  L5_2 = L3_2.Row
  L5_2 = L5_2.Rarity
  L6_2 = L3_2.Row
  L6_2 = L6_2.AchievementTitle
  L8_2 = A0_2
  L7_2 = A0_2._get_icon_path
  L9_2 = L3_2.SeriesID
  L10_2 = L5_2
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = A0_2._panel_table
  L8_2 = L8_2[A2_2]
  if L8_2 ~= nil then
    L8_2 = A1_2.childCount
    if L8_2 ~= 0 then
      goto lbl_56
    end
  end
  L9_2 = A0_2
  L8_2 = A0_2._get_prefab_index
  L10_2 = L5_2
  L8_2 = L8_2(L9_2, L10_2)
  L10_2 = A0_2
  L9_2 = A0_2.instantiate_object
  L11_2 = A0_2._binder
  L11_2 = L11_2.prefab_loader
  L11_2 = L11_2.MultiPrefabList
  L11_2 = L11_2[L8_2]
  L12_2 = A1_2
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L11_2 = A0_2
  L10_2 = A0_2.create_panel
  L12_2 = G
  L12_2 = L12_2.AchievementHintItemPanel
  L13_2 = G
  L13_2 = L13_2.AchievementHintItemPanelBinder
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L12_2 = L10_2
  L11_2 = L10_2.bind
  L13_2 = L9_2
  L11_2(L12_2, L13_2)
  L11_2 = A0_2._panel_table
  L11_2[A2_2] = L10_2
  ::lbl_56::
  L8_2 = A0_2._panel_table
  L8_2 = L8_2[A2_2]
  L10_2 = L8_2
  L9_2 = L8_2.setup_view
  L11_2 = L6_2
  L12_2 = L7_2
  L9_2(L10_2, L11_2, L12_2)
end
L0_1._setup_item = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = nil
  L4_2 = A0_2._score_id_table
  L4_2 = L4_2[A2_2]
  if L4_2 ~= nil then
    L5_2 = L1_1
    L6_2 = L5_2
    L5_2 = L5_2.GetData
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    L3_2 = L5_2
  end
  L6_2 = A1_2
  L5_2 = A1_2.SafeSetActive
  L7_2 = L3_2 ~= nil
  L5_2(L6_2, L7_2)
  if L3_2 == nil then
    return
  end
  L5_2 = L3_2.Row
  L5_2 = L5_2.Rarity
  L6_2 = L3_2.Row
  L6_2 = L6_2.AchievementTitle
  L8_2 = A0_2
  L7_2 = A0_2._get_icon_path
  L9_2 = L3_2.SeriesID
  L10_2 = L5_2
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = A0_2._panel_table
  L8_2 = L8_2[A2_2]
  if L8_2 ~= nil then
    L8_2 = A1_2.childCount
    if L8_2 ~= 0 then
      goto lbl_56
    end
  end
  L9_2 = A0_2
  L8_2 = A0_2._get_prefab_index
  L10_2 = L5_2
  L8_2 = L8_2(L9_2, L10_2)
  L10_2 = A0_2
  L9_2 = A0_2.instantiate_object
  L11_2 = A0_2._binder
  L11_2 = L11_2.prefab_loader
  L11_2 = L11_2.MultiPrefabList
  L11_2 = L11_2[L8_2]
  L12_2 = A1_2
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L11_2 = A0_2
  L10_2 = A0_2.create_panel
  L12_2 = G
  L12_2 = L12_2.AchievementHintItemPanel
  L13_2 = G
  L13_2 = L13_2.AchievementHintItemPanelBinder
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L12_2 = L10_2
  L11_2 = L10_2.bind
  L13_2 = L9_2
  L11_2(L12_2, L13_2)
  L11_2 = A0_2._panel_table
  L11_2[A2_2] = L10_2
  ::lbl_56::
  L8_2 = A0_2._panel_table
  L8_2 = L8_2[A2_2]
  L10_2 = L8_2
  L9_2 = L8_2.setup_view
  L11_2 = L6_2
  L12_2 = L7_2
  L9_2(L10_2, L11_2, L12_2)
end
L0_1._setup_item_by_fake_in_battle_achievement = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  if A1_2 == "Low" then
    L2_2 = 0
    return L2_2
  elseif A1_2 == "Mid" then
    L2_2 = 1
    return L2_2
  elseif A1_2 == "High" then
    L2_2 = 2
    return L2_2
  end
  L2_2 = 0
  return L2_2
end
L0_1._get_prefab_index = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AchievementSeriesExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = ""
  if A2_2 == "Low" then
    L4_2 = L3_2.CopperIconPath
  elseif A2_2 == "Mid" then
    L4_2 = L3_2.SilverIconPath
  elseif A2_2 == "High" then
    L4_2 = L3_2.GoldIconPath
  end
  return L4_2
end
L0_1._get_icon_path = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.current_time
  L2_2 = L2_2 + A1_2
  A0_2.current_time = L2_2
  L2_2 = A0_2.current_time
  L3_2 = A0_2.time
  if L2_2 > L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2.remove_tick
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2.exit
    L2_2(L3_2)
  end
end
L0_1._on_tick = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_show_ui_page = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_adventure_phase_end = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._show_remain_battle_achievement
  L1_2(L2_2)
end
L0_1._on_battle_game_phase_finish = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = G
  L1_2 = L1_2.ToastModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.get_remain_battle_achievement_score_id
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = #L1_2
    if 0 < L2_2 then
      L2_2 = ipairs
      L3_2 = L1_2
      L2_2, L3_2, L4_2 = L2_2(L3_2)
      for L5_2, L6_2 in L2_2, L3_2, L4_2 do
        L7_2 = A0_2._score_id_table
        L7_2 = #L7_2
        L8_2 = L2_1
        if L7_2 >= L8_2 then
          break
        end
        L7_2 = table
        L7_2 = L7_2.insert
        L8_2 = A0_2._score_id_table
        L9_2 = A0_2._score_id_table
        L9_2 = #L9_2
        L9_2 = L9_2 + 1
        L10_2 = L6_2
        L7_2(L8_2, L9_2, L10_2)
      end
      L3_2 = A0_2
      L2_2 = A0_2._is_loaded
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2._setup_view
        L2_2(L3_2)
        A0_2.current_time = 0
      end
    end
  end
end
L0_1._show_remain_battle_achievement = L3_1
return L0_1
