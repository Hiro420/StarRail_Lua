local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Battle.BattleUIUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleAetherDivideMonsterDetailTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_BattleAvatarDialogDetails_Info"
L2_1 = 572
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.AetherDivideModule
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.UINumberUtils
function L5_1(A0_2, A1_2, A2_2, A3_2)
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
L0_1.setup_view = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = false
    return L2_2
  end
end
L0_1._is_can_to_zoom = L5_1
function L5_1(A0_2, A1_2)
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
L0_1.set_left_border = L5_1
function L5_1(A0_2, A1_2)
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
L0_1.set_right_border = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
end
L0_1._on_added = L5_1
function L5_1(A0_2)
  local L1_2
end
L0_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_monster_base_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_hp
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_resist_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_buff_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_sprite_type
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_sp_view
  L1_2(L2_2)
end
L0_1._refresh = L5_1
function L5_1(A0_2)
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
L0_1._setup_buff_list = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
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
  L4_2 = L3_1
  L5_2 = L4_2
  L4_2 = L4_2.GetDisplayMonsterLevel
  L6_2 = L1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._characterData
  L5_2 = L4_2
  L4_2 = L4_2.GetCharacterNameID
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._setup_monster_base_info = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.BattleAetherDivideUtils
  L1_2 = L1_2.GetAetherMonsterTypeConfig
  L2_2 = A0_2._entity
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.StrExt
  L2_2 = L2_2.IsNullOrEmpty
  L3_2 = L1_2.IconPath
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_sprte_type
  L5_2 = L1_2.IconPath
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_sprite_type = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L4_1.CurrentHPPercent
  L2_2 = A0_2._entity
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.BattleUIUtils
  L2_2 = L2_2.get_hp_bar_min_clamped_value
  L3_2 = L2_1
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L1_2 = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.hp_bar
  L2_2.fillAmount = L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.hp_bar
  L2_2.bgAmount = L1_2
end
L0_1._setup_hp = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.sp_container_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._entity
  L1_2(L2_2, L3_2)
end
L0_1._setup_sp_view = L5_1
function L5_1(A0_2)
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
L0_1._setup_resist_view = L5_1
function L5_1(A0_2)
  local L1_2
  A0_2._ability = nil
  A0_2._config = nil
end
L0_1._on_dispose = L5_1
return L0_1
