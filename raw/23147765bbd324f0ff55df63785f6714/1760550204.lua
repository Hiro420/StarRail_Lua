local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Battle.BattleUIUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.BuffUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeAvatarDialogBuffRow"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.AvatarDialogBuffRowBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MonsterTipsDetailTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.weak_point_list
  L2_2 = L1_2
  L1_2 = L1_2.register_panel_setup_callback
  L3_2 = A0_2._setup_weak_point_panel
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.buff_list
  L2_2 = L1_2
  L1_2 = L1_2.reset_node_panel_class
  L3_2 = G
  L3_2 = L3_2.MazeAvatarDialogBuffRow
  L4_2 = G
  L4_2 = L4_2.AvatarDialogBuffRowBinder
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._config = A1_2
  A0_2._level = A2_2
  L4_2 = A0_2
  L3_2 = A0_2.is_loaded
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_loaded
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.buff_list
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  else
    A0_2._need_hide_buff_list = true
  end
end
L0_1.hide_buff_list = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = A0_2
  L2_2 = A0_2.is_loaded
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    A0_2._need_refresh_buff = true
    A0_2._buff_list = A1_2
    return
  end
  L2_2 = A1_2 ~= nil
  if not L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.buff_list
    L4_2 = L3_2
    L3_2 = L3_2.setup_view
    L5_2 = nil
    L6_2 = nil
    L7_2 = nil
    L3_2(L4_2, L5_2, L6_2, L7_2)
    return
  end
  L3_2 = nil
  L4_2 = nil
  L5_2 = nil
  L6_2 = ipairs
  L7_2 = A1_2
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  for L9_2, L10_2 in L6_2, L7_2, L8_2 do
    if L10_2 ~= nil then
      L11_2 = G
      L11_2 = L11_2.BuffUtils
      L11_2 = L11_2.GetMazeBuffData
      L12_2 = L10_2.BuffID
      L13_2 = L10_2.Level
      L11_2 = L11_2(L12_2, L13_2)
      if L11_2 then
        L12_2 = L11_2.MazeBuffIconType
        L13_2 = CS
        L13_2 = L13_2.RPG
        L13_2 = L13_2.GameCore
        L13_2 = L13_2.EnumStatusType
        L13_2 = L13_2.Buff
        if L12_2 == L13_2 then
          if L3_2 == nil then
            L12_2 = {}
            L3_2 = L12_2
          end
          L12_2 = #L3_2
          L12_2 = L12_2 + 1
          L3_2[L12_2] = L10_2
        else
          L12_2 = L11_2.MazeBuffIconType
          L13_2 = CS
          L13_2 = L13_2.RPG
          L13_2 = L13_2.GameCore
          L13_2 = L13_2.EnumStatusType
          L13_2 = L13_2.Debuff
          if L12_2 == L13_2 then
            if L4_2 == nil then
              L12_2 = {}
              L4_2 = L12_2
            end
            L12_2 = #L4_2
            L12_2 = L12_2 + 1
            L4_2[L12_2] = L10_2
          else
            if L5_2 == nil then
              L12_2 = {}
              L5_2 = L12_2
            end
            L12_2 = #L5_2
            L12_2 = L12_2 + 1
            L5_2[L12_2] = L10_2
          end
        end
      end
    end
  end
  L6_2 = A0_2._binder
  L6_2 = L6_2.buff_list
  L7_2 = L6_2
  L6_2 = L6_2.setup_view
  L8_2 = L3_2
  L9_2 = L4_2
  L10_2 = L5_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
end
L0_1.refresh_buff = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._config
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_text
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._is_aether_mode
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_elite_mark
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_aether_attribute
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_weak_point
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.AetherDivideMonsterExcelTable
    L2_2 = L2_2.GetData
    L3_2 = A0_2._config
    L3_2 = L3_2.MonsterID
    L2_2 = L2_2(L3_2)
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.AetherSpiritTypeExcelTable
    L3_2 = L3_2.GetData
    L4_2 = L2_2.MonsterType
    L4_2 = #L4_2
    L3_2 = L3_2(L4_2)
    L5_2 = A0_2
    L4_2 = A0_2._async_load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.img_aether_attribute
    L7_2 = L3_2.IconPath
    L4_2(L5_2, L6_2, L7_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._refresh_weak_point
    L2_2(L3_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_elite_mark
    L3_2 = L2_2
    L2_2 = L2_2.setup_view_with_normal_mark
    L4_2 = A0_2._config
    L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_resist
  L2_2(L3_2)
end
L0_1._refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._level
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._config
  L3_2 = L3_2.MonsterName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_story
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._config
  L3_2 = L3_2.MonsterIntroduction
  L1_2(L2_2, L3_2)
end
L0_1._refresh_text = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AdventureNpcMonsterWeaknessHelp
  L1_2 = L1_2.GetWeaknessForBattleMonster
  L2_2 = A0_2._config
  L2_2 = L2_2.MonsterID
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  A0_2._weak_point_path_list = L2_2
  L2_2 = 0
  L3_2 = L1_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.GameCore
    L6_2 = L6_2.DamageTypeExcelTable
    L6_2 = L6_2.GetData
    L7_2 = L1_2[L5_2]
    L6_2 = L6_2(L7_2)
    L7_2 = A0_2._weak_point_path_list
    L8_2 = A0_2._weak_point_path_list
    L8_2 = #L8_2
    L8_2 = L8_2 + 1
    L9_2 = L6_2.IconNatureForWeakUnactive
    L7_2[L8_2] = L9_2
  end
  L2_2 = A0_2._weak_point_path_list
  L2_2 = #L2_2
  L2_2 = 0 < L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_weak_point
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.weak_point_list
    L4_2 = L3_2
    L3_2 = L3_2.setup_view
    L5_2 = A0_2._weak_point_path_list
    L3_2(L4_2, L5_2)
  end
end
L0_1._refresh_weak_point = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.BattleUIUtils
  L1_2 = L1_2.get_type_resist_data_table
  L2_2 = A0_2._config
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.BattleUIUtils
  L2_2 = L2_2.get_status_resist_data_table
  L3_2 = A0_2._config
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.table_merge
  L4_2 = L2_2
  L5_2 = L1_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._resist_table = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.resist_list
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A0_2._resist_table
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.resist_list
  L4_2 = L3_2
  L3_2 = L3_2.safe_set_active
  L5_2 = A0_2._resist_table
  L5_2 = #L5_2
  L5_2 = 0 < L5_2
  L3_2(L4_2, L5_2)
end
L0_1._refresh_resist = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._use_aehter_mode
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.get_blackboard
    L1_2 = L1_2(L2_2)
    L3_2 = L1_2
    L2_2 = L1_2.query
    L4_2 = "IsInAetherMode"
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      L2_2 = false
    end
    A0_2._use_aehter_mode = L2_2
  end
  L1_2 = A0_2._use_aehter_mode
  return L1_2
end
L0_1._is_aether_mode = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_BattleAvatarDialogDetails_Info"
  L1_2(L2_2, L3_2)
end
L0_1._on_added = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L1_2 = A0_2._need_refresh_buff
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.refresh_buff
    L3_2 = A0_2._buff_list
    L1_2(L2_2, L3_2)
    A0_2._need_refresh_buff = nil
  end
  L1_2 = A0_2._need_hide_buff_list
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.hide_buff_list
    L1_2(L2_2)
    A0_2._need_hide_buff_list = nil
  end
end
L0_1._on_select = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A1_2
  L3_2 = A1_2.setup_view
  L5_2 = A0_2._weak_point_path_list
  L5_2 = L5_2[A2_2]
  L3_2(L4_2, L5_2)
end
L0_1._setup_weak_point_panel = L1_1
return L0_1
