local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Battle.AvatarDialogWeakPoint"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.BattleWeakPointBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.BattleUIUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.HP.BattleMultiHpInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.BattleMonsterShieldPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleMonsterDetailTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_BattleAvatarDialogDetails_Info"
L2_1 = "SpriteOutput/UI/Nature/IconNatureForWeak/IconNatureWhiteQuestion_1.png"
L3_1 = 572
L4_1 = {}
L4_1.InActive = 1
L4_1.Active = 2
L4_1.Protected = 3
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.Client
L5_1 = L5_1.UINumberUtils
function L6_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  A0_2._ability = A1_2
  L4_2 = A0_2._ability
  L5_2 = L4_2
  L4_2 = L4_2.GetOwnerEntity
  L4_2 = L4_2(L5_2)
  A0_2._entity = L4_2
  A0_2._config = A2_2
  A0_2._characterData = A3_2
  L4_2 = A0_2._ability
  L4_2 = L4_2.Weakness
  L5_2 = L4_2
  L4_2 = L4_2.GetAllWeakness
  L4_2 = L4_2(L5_2)
  A0_2._Weakness = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._refresh
  L4_2(L5_2)
end
L0_1.setup_view = L6_1
function L6_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = false
    return L2_2
  end
end
L0_1._is_can_to_zoom = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_left_round
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_left_normal
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_left_border = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_right_round
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_right_normal
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_right_border = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
end
L0_1._on_added = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._init_weak_point
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.BattleMonsterShieldPanel
  L4_2 = G
  L4_2 = L4_2.BattleMonsterShieldPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._shield_panel = L1_2
  L1_2 = A0_2._shield_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_shield
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_elite_mark
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_monster_base_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_weak_point
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_hp
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_stance
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_resist_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_phase
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_buff_list
  L1_2(L2_2)
  L1_2 = A0_2._shield_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._entity
  L1_2(L2_2, L3_2)
end
L0_1._refresh = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = G
  L1_2 = L1_2.BattleUIUtils
  L1_2 = L1_2.get_sorted_buff_list
  L2_2 = A0_2._ability
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.status_list
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = L1_2
  L7_2 = L2_2
  L8_2 = L3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_buff_num
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = #L1_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_debuff_num
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = #L2_2
  L4_2(L5_2, L6_2)
end
L0_1._setup_buff_list = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._characterData
  L1_2 = L1_2.CharacterID
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MonsterExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.rank_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view_with_normal_mark
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._setup_elite_mark = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UINumberUtils
  L1_2 = L1_2.CharacterLevelInt
  L2_2 = A0_2._ability
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_lv
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._characterData
  L5_2 = L4_2
  L4_2 = L4_2.GetCharacterNameID
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_danger
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.AbilityStatic
  L4_2 = L4_2.IsLevelSuppress
  L5_2 = A0_2._entity
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_monster_base_info = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.HPBarType
  L1_2 = L1_2.Normal
  L2_2 = A0_2._entity
  L3_2 = L2_2
  L2_2 = L2_2.GetComponent
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.MonsterDataComponent
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = L2_2.JsonConfig
  L2_2 = L2_2.MonsterConfig
  if L2_2 then
    L1_2 = L2_2.HPBarType
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_normal_hp
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.HPBarType
  L5_2 = L5_2.Normal
  L5_2 = L1_2 == L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_multi_hp
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.HPBarType
  L5_2 = L5_2.Multi
  L5_2 = L1_2 == L5_2
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.HPBarType
  L3_2 = L3_2.Normal
  if L1_2 == L3_2 then
    L3_2 = L5_1.CurrentHPPercent
    L4_2 = A0_2._entity
    L3_2 = L3_2(L4_2)
    L4_2 = G
    L4_2 = L4_2.BattleUIUtils
    L4_2 = L4_2.get_hp_bar_min_clamped_value
    L5_2 = L3_1
    L6_2 = L3_2
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L4_2
    L4_2 = A0_2._binder
    L4_2 = L4_2.hp_bar
    L4_2.fillAmount = L3_2
    L4_2 = A0_2._binder
    L4_2 = L4_2.hp_bar
    L4_2.bgAmount = L3_2
  else
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.HPBarType
    L3_2 = L3_2.Multi
    if L1_2 == L3_2 then
      L3_2 = A0_2._multi_hp_panel
      if L3_2 == nil then
        L4_2 = A0_2
        L3_2 = A0_2.instantiate_object
        L5_2 = A0_2._binder
        L5_2 = L5_2.prefab_loadmeta_multi_hp
        L5_2 = L5_2.Prefab
        L6_2 = A0_2._binder
        L6_2 = L6_2.prefab_loadmeta_multi_hp
        L6_2 = L6_2.transform
        L3_2 = L3_2(L4_2, L5_2, L6_2)
        L5_2 = A0_2
        L4_2 = A0_2.create_panel
        L6_2 = G
        L6_2 = L6_2.BattleMultiHpInfoPanel
        L7_2 = G
        L7_2 = L7_2.BattleMultiHpInfoPanelBinder
        L4_2 = L4_2(L5_2, L6_2, L7_2)
        A0_2._multi_hp_panel = L4_2
        L4_2 = A0_2._multi_hp_panel
        L5_2 = L4_2
        L4_2 = L4_2.bind
        L6_2 = L3_2
        L4_2(L5_2, L6_2)
      end
      L3_2 = A0_2._multi_hp_panel
      L4_2 = L3_2
      L3_2 = L3_2.setup_view
      L5_2 = A0_2._entity
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1._setup_hp = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L5_1.CurrentStancePercent
  L2_2 = A0_2._entity
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_stance_bar
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._ability
  L4_2 = L4_2.CanStanceBreak
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.stance_bar
  L2_2.fillAmount = L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.stance_bar
  L2_2.bgAmount = L1_2
  L2_2 = A0_2._entity
  L3_2 = L2_2
  L2_2 = L2_2.GetComponent
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.TurnBasedAbilityComponent
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  if L2_2 == nil then
    return
  end
  L3_2 = L2_2.SumStanceCount
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_stance_count
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = 1 < L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.stance_bar_back
  L4_2 = L4_2.transform
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = 1 < L3_2
  L4_2(L5_2, L6_2)
  L4_2 = G
  L4_2 = L4_2.UIColorUtils
  L4_2 = L4_2.GetColor
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.GameCoreConfigManager
  L5_2 = L5_2.GameCoreUIConfig
  L5_2 = L5_2.PluralityStanceBarSetting
  L5_2 = L5_2.LeftStanceBarColor1
  L4_2 = L4_2(L5_2)
  L5_2 = G
  L5_2 = L5_2.UIColorUtils
  L5_2 = L5_2.GetColor
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.GameCoreConfigManager
  L6_2 = L6_2.GameCoreUIConfig
  L6_2 = L6_2.PluralityStanceBarSetting
  L6_2 = L6_2.RightStanceBarColor1
  L5_2 = L5_2(L6_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.stance_bar
  L6_2.colorL = L4_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.stance_bar
  L6_2.colorR = L5_2
  if 1 < L3_2 then
    L6_2 = A0_2._binder
    L6_2 = L6_2.text_stance_count
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetText
    L8_2 = L3_2
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.stance_bar_back
    L7_2 = G
    L7_2 = L7_2.UIColorUtils
    L7_2 = L7_2.GetColor
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.GameCoreConfigManager
    L8_2 = L8_2.GameCoreUIConfig
    L8_2 = L8_2.PluralityStanceBarSetting
    L8_2 = L8_2.LeftStanceBarColor2
    L7_2 = L7_2(L8_2)
    L6_2.colorL = L7_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.stance_bar_back
    L7_2 = G
    L7_2 = L7_2.UIColorUtils
    L7_2 = L7_2.GetColor
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.GameCoreConfigManager
    L8_2 = L8_2.GameCoreUIConfig
    L8_2 = L8_2.PluralityStanceBarSetting
    L8_2 = L8_2.RightStanceBarColor2
    L7_2 = L7_2(L8_2)
    L6_2.colorR = L7_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.stance_bar_back
    L6_2.bgAmount = 1
  end
end
L0_1._setup_stance = L6_1
function L6_1(A0_2)
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
L0_1._setup_resist_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.phase_list
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L4_2 = A0_2
  L3_2 = A0_2._get_phase_table
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_phase = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = A0_2._characterData
  L2_2 = L2_2.MonsterRowData
  L2_2 = L2_2.TemplateRow
  L3_2 = L2_2.Rank
  L3_2 = #L3_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.MonsterRank
  L4_2 = L4_2.Elite
  L4_2 = #L4_2
  if L3_2 < L4_2 then
    return L1_2
  end
  L3_2 = A0_2._characterData
  L3_2 = L3_2.JsonConfig
  if not L3_2 then
    return L1_2
  end
  L3_2 = A0_2._characterData
  L3_2 = L3_2.CurrentPhase
  L4_2 = A0_2._characterData
  L4_2 = L4_2.JsonConfig
  L4_2 = L4_2.MaxMonsterPhase
  if L4_2 <= 1 then
    return L1_2
  end
  L5_2 = 1
  L6_2 = L4_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L1_2
    L11_2 = L4_2 - L3_2
    L11_2 = L11_2 + 1
    L11_2 = L8_2 <= L11_2
    L9_2(L10_2, L11_2)
  end
  return L1_2
end
L0_1._get_phase_table = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._weakPointsCaching
  if L1_2 == nil then
    L1_2 = {}
    A0_2._weakPointsCaching = L1_2
    L1_2 = {}
    A0_2._weakPointsUsing = L1_2
    L1_2 = {}
    A0_2._AllDamageType = L1_2
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.DamageTypeExcelTable
    L1_2 = L1_2.dataDict
    L2_2 = pairs
    L3_2 = L1_2
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._AllDamageType
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
      L8_2 = A0_2
      L7_2 = A0_2.instantiate_object
      L9_2 = A0_2._binder
      L9_2 = L9_2.node_weak_point_list
      L9_2 = L9_2.Prefab
      L10_2 = A0_2._binder
      L10_2 = L10_2.node_weak_point_list
      L10_2 = L10_2.transform
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L9_2 = A0_2
      L8_2 = A0_2.create_panel
      L10_2 = G
      L10_2 = L10_2.AvatarDialogWeakPoint
      L11_2 = G
      L11_2 = L11_2.BattleWeakPointBinder
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L10_2 = L8_2
      L9_2 = L8_2.bind
      L11_2 = L7_2
      L9_2(L10_2, L11_2)
      L10_2 = L8_2
      L9_2 = L8_2.show_weakpoint
      L11_2 = false
      L9_2(L10_2, L11_2)
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = A0_2._weakPointsCaching
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
    end
  end
end
L0_1._init_weak_point = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = 1
  L2_2 = A0_2._weakPointsUsing
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = table
    L5_2 = L5_2.remove
    L6_2 = A0_2._weakPointsUsing
    L5_2 = L5_2(L6_2)
    L7_2 = L5_2
    L6_2 = L5_2.show_weakpoint
    L8_2 = false
    L6_2(L7_2, L8_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._weakPointsCaching
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L1_2 = A0_2._AllDamageType
  L1_2 = #L1_2
  L2_2 = 1
  L3_2 = -1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._AllDamageType
    L5_2 = L5_2[L4_2]
    L7_2 = A0_2
    L6_2 = A0_2._get_weakness_status
    L8_2 = L5_2.ID
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = L4_1.InActive
    if L6_2 ~= L7_2 then
      L7_2 = table
      L7_2 = L7_2.remove
      L8_2 = A0_2._weakPointsCaching
      L7_2 = L7_2(L8_2)
      L9_2 = L7_2
      L8_2 = L7_2.show_weakpoint
      L10_2 = true
      L8_2(L9_2, L10_2)
      L9_2 = L7_2
      L8_2 = L7_2.show_protected
      L10_2 = L4_1.Protected
      L10_2 = L6_2 == L10_2
      L8_2(L9_2, L10_2)
      L8_2 = A0_2._ability
      L8_2 = L8_2.Weakness
      L9_2 = L8_2
      L8_2 = L8_2.IsSecret
      L10_2 = L5_2.ID
      L8_2 = L8_2(L9_2, L10_2)
      if L8_2 then
        L9_2 = L7_2
        L8_2 = L7_2.setup_view
        L10_2 = L2_1
        L8_2(L9_2, L10_2)
      else
        L9_2 = L7_2
        L8_2 = L7_2.setup_view
        L10_2 = L5_2.IconNatureForWeakUnactive
        L8_2(L9_2, L10_2)
      end
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = A0_2._weakPointsUsing
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_weak_point
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._weakPointsUsing
  L3_2 = #L3_2
  L3_2 = 0 < L3_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_weak_point = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = 0
  L3_2 = A0_2._Weakness
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._Weakness
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2.Key
    if L7_2 == A1_2 then
      L7_2 = L6_2.Value
      L8_2 = CS
      L8_2 = L8_2.RPG
      L8_2 = L8_2.GameCore
      L8_2 = L8_2.WeaknessState
      L8_2 = L8_2.Protected
      if L7_2 == L8_2 then
        L7_2 = L4_1.Protected
        return L7_2
      end
      L7_2 = L4_1.Active
      return L7_2
    end
  end
  L2_2 = L4_1.InActive
  return L2_2
end
L0_1._get_weakness_status = L6_1
function L6_1(A0_2)
  local L1_2
  A0_2._ability = nil
  A0_2._config = nil
end
L0_1._on_dispose = L6_1
return L0_1
