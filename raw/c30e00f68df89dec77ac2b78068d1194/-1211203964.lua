local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Activity.TreasureDungeon.TreasureDungeonStartFightPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BoxingClub.BoxingClubUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.TreasureDungeon.TreasureDungeonTeamInfoProvider"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.CommonBossIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.CommonBossIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UIUtils.UITextUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.TreasureDungeonModule
L0_1 = L0_1.Instance
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "TreasureDungeonStartFightPage"
L3_1 = G
L3_1 = L3_1.UIController
L1_1 = L1_1(L2_1, L3_1)
L2_1 = "UIText_TreasureDungeon_Stage_EnemyBuff_AuraNum"
L3_1 = {}
L3_1.Red = "#C84A32"
L3_1.Normal = "#FFFFFF"
L4_1 = "UIText_TreasureDungeon_Stage_EnemyGrid_CountDown"
L5_1 = 4
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.TreasureDungeonStartFightPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_EnterWithFastForward
  A0_2._transition_style = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L1_1.ctor = L6_1
function L6_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  A0_2._data = A1_2
  A0_2._grid_id = A2_2
  A0_2._grid_data = A3_2
  L5_2 = A0_2
  L4_2 = A0_2._init_monster_data_list
  L4_2(L5_2)
end
L1_1.init = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._grid_data
  L1_2 = L1_2.MonsterStageRow
  L2_2 = A0_2._data
  L3_2 = L2_2
  L2_2 = L2_2.GetMonsterLevel
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L3_2 = L3_2.BoxingClubUtils
  L3_2 = L3_2.get_display_enemies_by_monster_array
  L4_2 = L1_2.MonsterList
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._monster_data_list = L3_2
end
L1_1._init_monster_data_list = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_detail
  L4_2 = A0_2._on_btn_detail
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_enter
  L4_2 = A0_2._on_btn_enter
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_panel_select
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L1_1._on_return_to_top = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_main_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._data
  L3_2 = L3_2.IsHard
  if L3_2 then
    L3_2 = "UIText_TreasureDungeon_Challenge_Hard"
    if L3_2 then
      goto lbl_12
    end
  end
  L3_2 = "UIText_TreasureDungeon_Challenge_Normal"
  ::lbl_12::
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_sub_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._data
  L3_2 = L3_2.GroupRow
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.create_short_cut_hint_panel
    L2_3 = 63
    L3_3 = A0_2._binder
    L3_3 = L3_3.scroll_rect
    L0_3(L1_3, L2_3, L3_3)
  end
  L1_2(L2_2)
end
L1_1._setup_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._grid_data
  L3_2 = L3_2.Row
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_panel_select
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_buff
  L1_2(L2_2)
end
L1_1._refresh = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = A0_2._data
  L2_2 = L2_2.TeamData
  L3_2 = L2_2
  L2_2 = L2_2.GetAllMemberDatas
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = A0_2._data
  L3_2 = L3_2.TeamData
  L4_2 = L3_2
  L3_2 = L3_2.GetDefaultSelectedMembers
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_avatar_select
  L4_2 = L3_2
  L3_2 = L3_2.setup_view_by_members
  L5_2 = L1_2
  L6_2 = L2_2
  L7_2 = L5_1
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L1_1._refresh_panel_select = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_monster_list
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._monster_data_list
  L1_2(L2_2, L3_2)
end
L1_1._refresh_list = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_effect
  L3_2 = G
  L3_2 = L3_2.TreasureDungeonUtils
  L3_2 = L3_2.get_grid_effect_buff
  L4_2 = A0_2._grid_data
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_enhance
  L3_2 = G
  L3_2 = L3_2.TreasureDungeonUtils
  L3_2 = L3_2.get_grid_enhance_buff
  L4_2 = A0_2._grid_data
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_aura
  L3_2 = G
  L3_2 = L3_2.TreasureDungeonUtils
  L3_2 = L3_2.get_grid_aura_enhance_buff
  L4_2 = A0_2._grid_data
  L5_2 = A0_2._data
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_item
  L3_2 = L0_1
  L4_2 = L3_2
  L3_2 = L3_2.GetTreasureDungeonLevelInstance
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.CurrentFloorBuff
  L1_2(L2_2, L3_2)
end
L1_1._refresh_buff = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_effect
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2 ~= nil
  L2_2(L3_2, L4_2)
  if A1_2 == nil then
    return
  end
  L2_2 = G
  L2_2 = L2_2.TreasureDungeonUtils
  L2_2 = L2_2.is_countdown_buff
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A1_2.BuffValue
    L2_2 = L2_2 <= 1
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_count_down
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = not L2_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_count_down_red
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_count_down_hint
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L4_1
    L6_2 = A1_2.BuffValue
    L3_2(L4_2, L5_2, L6_2)
    if L2_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.text_count_down_hint
      L4_2 = G
      L4_2 = L4_2.UIColorUtils
      L4_2 = L4_2.GetColor
      L5_2 = L3_1.Red
      L4_2 = L4_2(L5_2)
      L3_2.color = L4_2
      L3_2 = A0_2._binder
      L3_2 = L3_2.text_count_down_red
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetText
      L5_2 = A1_2.BuffValue
      L3_2(L4_2, L5_2)
    else
      L3_2 = A0_2._binder
      L3_2 = L3_2.text_count_down
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetText
      L5_2 = A1_2.BuffValue
      L3_2(L4_2, L5_2)
    end
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_remain
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_effect
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.BuffRow
  L4_2 = L4_2.Desc
  L5_2 = unpack
  L6_2 = G
  L6_2 = L6_2.TreasureDungeonUtils
  L6_2 = L6_2.get_buff_desc_params
  L7_2 = A1_2
  L6_2, L7_2 = L6_2(L7_2)
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L1_1._refresh_effect = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_enhance
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2 ~= nil
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_enhance
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2 ~= nil
  L2_2(L3_2, L4_2)
  if A1_2 == nil then
    return
  end
  L2_2 = G
  L2_2 = L2_2.BuffUtils
  L2_2 = L2_2.GetMazeBuffData
  L3_2 = A1_2.BuffRow
  L3_2 = L3_2.DisplayMazeBuffID
  L4_2 = A1_2.BuffLevel
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_enhance
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L2_2.BuffDesc
    L6_2 = G
    L6_2 = L6_2.UITextUtils
    L6_2 = L6_2.GetSkillParams
    L7_2 = L2_2.ParamList
    L6_2, L7_2 = L6_2(L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end
L1_1._refresh_enhance = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_enhance
  L2_2 = L2_2.gameObject
  L2_2 = L2_2.activeSelf
  if not L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_enhance
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A1_2 ~= nil
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_aura_enhance
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2 ~= nil
  L2_2(L3_2, L4_2)
  if A1_2 == nil then
    return
  end
  L2_2 = G
  L2_2 = L2_2.BuffUtils
  L2_2 = L2_2.GetMazeBuffData
  L3_2 = A1_2.MazeBuffID
  L4_2 = 1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = G
    L3_2 = L3_2.UITextUtils
    L3_2 = L3_2.GetSkillDesc
    L4_2 = L2_2.BuffDesc
    L5_2 = L2_2.ParamList
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_aura_enhance
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = L2_1
    L7_2 = A1_2.Count
    L8_2 = L3_2
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
end
L1_1._refresh_aura = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_item
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2 ~= nil
  L2_2(L3_2, L4_2)
  if A1_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_item_name
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = A1_2.Name
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_item_count
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_TreasureDungeon_Stage_BuffUseTime"
  L5_2 = A1_2.RemainUsedTime
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_item_desc
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = A1_2.Desc
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.BattleTargetConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2.BuffRow
  L3_2 = L3_2.BattleTargetID
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_item_target
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.TargetName
  L6_2 = L2_2.TargetParam
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_item_target_count
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L2_2.TargetParam
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_item_reward
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A1_2.BuffRow
  L5_2 = L5_2.BattleTargetBouns
  L6_2 = A1_2.BuffRow
  L6_2 = L6_2.TargetBounsParam
  L3_2(L4_2, L5_2, L6_2)
end
L1_1._refresh_item = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L1_1._on_btn_exit = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_avatar_select
  L2_2 = L1_2
  L1_2 = L1_2.get_selection
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = G
  L3_2 = L3_2.TreasureDungeonTeamInfoProvider
  L4_2 = L1_2
  L5_2 = L5_1
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_avatar_select
  L4_2 = L3_2
  L3_2 = L3_2.get_show_first_avatar
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_avatar_select
  L5_2 = L4_2
  L4_2 = L4_2.get_all_avatars
  L4_2 = L4_2(L5_2)
  L5_2 = table
  L5_2 = L5_2.sort
  L6_2 = L4_2
  function L7_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L2_3 = L2_2
    L3_3 = L2_3
    L2_3 = L2_3.get_avatar_team_index
    L4_3 = A0_3
    L2_3 = L2_3(L3_3, L4_3)
    L3_3 = L2_2
    L4_3 = L3_3
    L3_3 = L3_3.get_avatar_team_index
    L5_3 = A1_3
    L3_3 = L3_3(L4_3, L5_3)
    if L2_3 ~= L3_3 then
      if L2_3 ~= nil and L3_3 ~= nil then
        L4_3 = L2_3 < L3_3
        return L4_3
      else
        L4_3 = L2_3 ~= nil
        return L4_3
      end
    end
    L4_3 = A0_3.IsAlive
    L5_3 = A1_3.IsAlive
    if L4_3 ~= L5_3 then
      L4_3 = A0_3.IsAlive
      return L4_3
    end
    L4_3 = A0_3.IsTrialPlayer
    L5_3 = A1_3.IsTrialPlayer
    if L4_3 ~= L5_3 then
      L4_3 = A0_3.IsTrialPlayer
      L4_3 = not L4_3
      return L4_3
    end
    L4_3 = A0_3.Level
    L5_3 = A1_3.Level
    if L4_3 ~= L5_3 then
      L6_3 = L4_3 > L5_3
      return L6_3
    end
    L6_3 = A0_3.Row
    L6_3 = L6_3.Rarity
    L6_3 = #L6_3
    L7_3 = A1_3.Row
    L7_3 = L7_3.Rarity
    L7_3 = #L7_3
    if L6_3 ~= L7_3 then
      L8_3 = L6_3 > L7_3
      return L8_3
    end
    L8_3 = A0_3.ID
    L9_3 = A1_3.ID
    L8_3 = L8_3 < L9_3
    return L8_3
  end
  L5_2(L6_2, L7_2)
  if L3_2 == nil then
    L3_2 = L4_2[1]
  end
  L5_2 = G
  L5_2 = L5_2.new
  L6_2 = "Ui.Avatar.AvatarMainPage"
  L5_2 = L5_2(L6_2)
  L7_2 = L5_2
  L6_2 = L5_2.init
  L8_2 = nil
  L9_2 = nil
  L10_2 = L2_2
  L11_2 = L3_2
  L12_2 = true
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L7_2 = L5_2
  L6_2 = L5_2.set_avatar_data_list
  L8_2 = L4_2
  L6_2(L7_2, L8_2)
  L7_2 = L5_2
  L6_2 = L5_2.async_show
  L6_2(L7_2)
end
L1_1._on_btn_detail = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_avatar_select
  L2_2 = L1_2
  L1_2 = L1_2.is_selection_empty
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "UIText_TreasureDungeon_Stage_NoAvatarInTeam"
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.AvatarData
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2()
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_avatar_select
  L3_2 = L2_2
  L2_2 = L2_2.get_selection
  L2_2 = L2_2(L3_2)
  L3_2 = 1
  L4_2 = 4
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2[L6_2]
    if L7_2 ~= nil then
      L9_2 = L1_2
      L8_2 = L1_2.Add
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  L3_2 = A0_2._data
  L4_2 = L3_2
  L3_2 = L3_2.TryFight
  L5_2 = A0_2._grid_id
  L6_2 = L1_2
  L3_2(L4_2, L5_2, L6_2)
end
L1_1._on_btn_enter = L6_1
function L6_1(A0_2, A1_2)
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
L1_1._on_enter_zoom = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_avatar_select
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L1_1.get_first_selected_object = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_incontrol
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L1_1._init_ui_navigation = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_in_control_option_type
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_in_special_zoom
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.panel_monster_list
      L3_2 = L2_2
      L2_2 = L2_2.show_monster_tips_dialog
      L2_2(L3_2)
    end
  end
end
L1_1._on_in_control_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_incontrol
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  L1_2(L2_2, L3_2)
end
L1_1._on_in_control_input_switch = L6_1
return L1_1
