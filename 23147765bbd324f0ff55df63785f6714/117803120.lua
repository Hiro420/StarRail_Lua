local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BoxingClubEnemyInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  A0_2._monster_array = A1_2
  A0_2._stage_row = A2_2
  A0_2._level_instance = A3_2
  L5_2 = A0_2
  L4_2 = A0_2.update_node_status_by_Monster_num
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.update_main_enemy
  L4_2(L5_2)
end
L0_1.setup_enemy = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.main_enemy_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.enemy_1_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.enemy_2_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.enemy_bg
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1.set_enemy_active = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.enemy_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.set_enemy_bg_hide = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.enemy_empty_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.update_empty_root = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.main_enemy_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.enemy_1_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.enemy_2_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.enemy_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.update_node_status_by_Monster_num = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._monster_array
  L1_2 = L1_2.Length
  if L1_2 == 0 then
    return
  end
  L1_2 = A0_2._monster_array
  L2_2 = A0_2._monster_array
  L2_2 = L2_2.Length
  L2_2 = L2_2 - 1
  L1_2 = L1_2[L2_2]
  L2_2 = 0
  L3_2 = A0_2._level_instance
  if L3_2 ~= nil then
    L3_2 = A0_2._level_instance
    L3_2 = L3_2.BattleRecord
    if L3_2 ~= nil then
      goto lbl_20
    end
  end
  do return end
  ::lbl_20::
  L3_2 = A0_2._level_instance
  L3_2 = L3_2.BattleRecord
  L3_2 = L3_2.CurrentStage
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.BoxingClubStageConfigExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 == nil then
    return
  end
  L5_2 = L4_2.MonsterWaveIndex
  if L5_2 == 0 then
    L2_2 = L1_2.Monster0
  else
    L5_2 = L4_2.MonsterWaveIndex
    if L5_2 == 1 then
      L2_2 = L1_2.Monster1
    else
      L5_2 = L4_2.MonsterWaveIndex
      if L5_2 == 2 then
        L2_2 = L1_2.Monster2
      else
        L5_2 = L4_2.MonsterWaveIndex
        if L5_2 == 3 then
          L2_2 = L1_2.Monster3
        else
          L5_2 = L4_2.MonsterWaveIndex
          if L5_2 == 4 then
            L2_2 = L1_2.Monster4
          else
            L5_2 = L4_2.MonsterWaveIndex
            if L5_2 == 5 then
              L2_2 = L1_2.Monster5
            end
          end
        end
      end
    end
  end
  if L2_2 == 0 then
    L5_2 = L1_2.Monster0
    if L5_2 ~= 0 then
      L2_2 = L1_2.Monster0
  end
  elseif L2_2 == 0 then
    return
  end
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.MonsterExcelTable
  L5_2 = L5_2.GetData
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  if L5_2 == nil then
    return
  end
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.MonsterTemplateExcelTable
  L6_2 = L6_2.GetData
  L7_2 = L5_2.MonsterTemplateID
  L6_2 = L6_2(L7_2)
  if L6_2 == nil then
    return
  end
  L8_2 = A0_2
  L7_2 = A0_2._load_sprite_to
  L9_2 = A0_2._binder
  L9_2 = L9_2.main_enemy_img
  L10_2 = L6_2.ImagePath
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.main_enemy_lv_num
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetText
  L9_2 = A0_2._stage_row
  L9_2 = L9_2.Level
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.main_enemy_weakness
  L8_2 = L7_2
  L7_2 = L7_2.setup_view
  L9_2 = G
  L9_2 = L9_2.Utils
  L9_2 = L9_2.create_lua_table_from_cs_array
  L10_2 = L5_2.StanceWeakList
  L9_2, L10_2 = L9_2(L10_2)
  L7_2(L8_2, L9_2, L10_2)
end
L0_1.update_main_enemy = L1_1
return L0_1
