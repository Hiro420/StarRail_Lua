local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = require
L1_1 = "Ui.WeakPoint.WeakPointListView"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "NpcMonsterInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.TextExtensions
L2_1 = G
L2_1 = L2_1.ComponentExtensions
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.TeamModule
L4_1 = "#FF5165"
L5_1 = "#FFFFFF"
L6_1 = CS
L6_1 = L6_1.System
L6_1 = L6_1.Convert
L6_1 = L6_1.ToUInt32
L7_1 = CS
L7_1 = L7_1.RPG
L7_1 = L7_1.GameCore
L7_1 = L7_1.MonsterRank
L7_1 = L7_1.Elite
L6_1 = L6_1(L7_1)
L7_1 = "BattleUI_Ani_BuffIcon_Twinkle"
L8_1 = "BattleUI_Ani_BuffIcon_FadeIn"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MazeRefreshBuff
  L4_2 = A0_2._refresh_buff
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RefreshAdventurePlayerList
  L4_2 = A0_2._refresh_weak_point
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIWorldLevelUpgrade
  L4_2 = A0_2._on_world_level_update
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.CombatPowerChange
  L4_2 = A0_2._on_player_combat_power_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RefreshAdventurePlayerList
  L4_2 = A0_2._on_player_combat_power_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AdventureOnBuffCreate
  L4_2 = A0_2._on_buff_create
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_weak_point_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Ui.Buff.BuffIconListNode"
  L6_2 = "Ui.Buff.BuffIconNodeBinder"
  L7_2 = true
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2._buff_list = L1_2
  L1_2 = A0_2._buff_list
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_buff
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._buff_list
  L2_2 = L1_2
  L1_2 = L1_2.init_node
  L3_2 = 3
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._show_monster_dialog
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.AdventureModule
  L1_2 = L1_2.MapDef
  L1_2 = L1_2.CurrentGameMode
  A0_2._game_mode = L1_2
end
L0_1._on_load = L9_1
function L9_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.GameCoreConfigManager
  L1_2 = L1_2.MazeConfig
  L1_2 = L1_2.WeakPointDisplayCount
  A0_2._display_weakpoint_count = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.weak_point_list
  A0_2._weak_point_list = L1_2
end
L0_1._setup_weak_point_panel = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._show_monster_info_callback
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.invoke_callback
    L2_2 = A0_2._show_monster_info_callback
    L3_2 = A0_2._show_monster_info_callback_self
    L4_2 = A0_2.cacheGameEntity
    L1_2(L2_2, L3_2, L4_2)
    return
  end
  L1_2 = A0_2.cacheGameEntity
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.New
    L2_2 = "Ui.Monster.MonsterTipsDialog"
    L1_2 = L1_2(L2_2)
    L3_2 = L1_2
    L2_2 = L1_2.init_by_entity
    L4_2 = A0_2.cacheGameEntity
    L2_2(L3_2, L4_2)
    L3_2 = L1_2
    L2_2 = L1_2.async_show
    L2_2(L3_2)
  end
end
L0_1._show_monster_dialog = L9_1
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = {}
  A0_2.buff_can_show_anim = L3_2
  L3_2 = false
  if A2_2 ~= nil then
    L4_2 = A0_2.cacheGameEntity
    L5_2 = null
    if L4_2 ~= L5_2 then
      L3_2 = true
    end
  end
  A0_2.cacheGameEntity = A2_2
  if A1_2 == nil then
    L5_2 = A0_2
    L4_2 = A0_2.set_light_weight_active
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = G
    L4_2 = L4_2.NotifyManager
    L4_2 = L4_2.notify
    L5_2 = G
    L5_2 = L5_2.CS
    L5_2 = L5_2.NotifyType
    L5_2 = L5_2.UIEnableCameraReset
    L6_2 = true
    L4_2(L5_2, L6_2)
    return
  end
  L4_2 = G
  L4_2 = L4_2.NotifyManager
  L4_2 = L4_2.notify
  L5_2 = G
  L5_2 = L5_2.CS
  L5_2 = L5_2.NotifyType
  L5_2 = L5_2.UIEnableCameraReset
  L6_2 = false
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.is_active
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2.set_light_weight_active
    L6_2 = true
    L4_2(L5_2, L6_2)
  else
    L5_2 = A0_2
    L4_2 = A0_2.safe_set_active
    L6_2 = true
    L4_2(L5_2, L6_2)
  end
  L4_2 = nil
  if A2_2 ~= nil then
    L6_2 = A2_2
    L5_2 = A2_2.GetComponent
    L7_2 = typeof
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.NPCComponent
    L7_2, L8_2 = L7_2(L8_2)
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
  end
  L6_2 = A0_2
  L5_2 = A0_2._setup_name
  L7_2 = A1_2
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_level
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_high_level_warning
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = A1_2.NPCIconPath
  if L5_2 ~= nil then
    L6_2 = A0_2
    L5_2 = A0_2._async_load_sprite_to
    L7_2 = A0_2._binder
    L7_2 = L7_2.img_icon
    L8_2 = A1_2.NPCIconPath
    L5_2(L6_2, L7_2, L8_2)
  end
  L6_2 = A0_2
  L5_2 = A0_2._setup_wave
  L7_2 = A2_2
  L8_2 = A1_2.Rank
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_rank
  L7_2 = A1_2
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_buff
  L7_2 = A2_2
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_weak_point
  L7_2 = A2_2
  L5_2(L6_2, L7_2)
  if L3_2 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.animation
    if L5_2 ~= nil then
      L5_2 = A0_2._binder
      L5_2 = L5_2.animation
      L6_2 = L5_2
      L5_2 = L5_2.Play
      L7_2 = "BattleUI_MonsterInfoSwitchOut"
      L5_2(L6_2, L7_2)
    end
  end
end
L0_1.setup_view = L9_1
function L9_1(A0_2, A1_2, A2_2)
  A0_2._show_monster_info_callback = A1_2
  A0_2._show_monster_info_callback_self = A2_2
end
L0_1.register_show_monster_info_callback = L9_1
function L9_1(A0_2, A1_2, A2_2)
  A0_2._get_weak_point_dict_callback = A1_2
  A0_2._get_weak_point_dict_callback_self = A2_2
end
L0_1.set_weak_point_dict_provider = L9_1
function L9_1(A0_2, A1_2, A2_2)
  A0_2._show_high_level_warning_callback = A1_2
  A0_2._show_high_level_warning_callback_self = A2_2
end
L0_1.set_show_high_level_warning_callback = L9_1
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A1_2.NPCName
  if A2_2 then
    L4_2 = A2_2.StageID
    if L4_2 then
      L4_2 = A2_2.StageID
      if L4_2 ~= 0 then
        L4_2 = CS
        L4_2 = L4_2.RPG
        L4_2 = L4_2.GameCore
        L4_2 = L4_2.StageExcelTable
        L4_2 = L4_2.GetData
        L5_2 = A2_2.StageID
        L4_2 = L4_2(L5_2)
        L3_2 = L4_2 or L3_2
        if L4_2 then
          L3_2 = L4_2.StageName
        end
      end
    end
  end
  L4_2 = L1_1.SafeSetTextID
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_name
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1._setup_name = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 then
    L3_2 = A1_2
    L2_2 = A1_2.GetStageID
    L2_2 = L2_2(L3_2)
    if L2_2 and L2_2 ~= 0 then
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.StageExcelTable
      L3_2 = L3_2.GetData
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      if nil ~= L3_2 then
        L4_2 = G
        L4_2 = L4_2.ComponentExtensions
        L4_2 = L4_2.SafeSetActive
        L5_2 = A0_2._binder
        L5_2 = L5_2.text_Level_num
        L6_2 = true
        L4_2(L5_2, L6_2)
        L4_2 = L3_2.Level
        L5_2 = CS
        L5_2 = L5_2.RPG
        L5_2 = L5_2.GameCore
        L5_2 = L5_2.AdventureStatic
        L6_2 = L5_2
        L5_2 = L5_2.GetCurrentGameModeType
        L5_2 = L5_2(L6_2)
        L6_2 = CS
        L6_2 = L6_2.RPG
        L6_2 = L6_2.GameCore
        L6_2 = L6_2.GameModeType
        L6_2 = L6_2.RogueExplore
        if L5_2 ~= L6_2 then
          L6_2 = CS
          L6_2 = L6_2.RPG
          L6_2 = L6_2.GameCore
          L6_2 = L6_2.GameModeType
          L6_2 = L6_2.ChessRogue
          if L5_2 ~= L6_2 then
            goto lbl_55
          end
        end
        L6_2 = CS
        L6_2 = L6_2.RPG
        L6_2 = L6_2.Client
        L6_2 = L6_2.RogueStatic
        L6_2 = L6_2.GetRogueMonsterLevel
        L7_2 = L4_2
        L6_2 = L6_2(L7_2)
        L4_2 = L6_2
        goto lbl_72
        ::lbl_55::
        L6_2 = CS
        L6_2 = L6_2.RPG
        L6_2 = L6_2.GameCore
        L6_2 = L6_2.GameModeType
        L6_2 = L6_2.AetherDivide
        if L5_2 == L6_2 then
          L6_2 = CS
          L6_2 = L6_2.RPG
          L6_2 = L6_2.Client
          L6_2 = L6_2.GlobalVars
          L6_2 = L6_2.s_ModuleManager
          L6_2 = L6_2.AetherDivideModule
          L7_2 = L6_2
          L6_2 = L6_2.GetDisplayMonsterLevel
          L8_2 = L4_2
          L6_2 = L6_2(L7_2, L8_2)
          L4_2 = L6_2
        end
        ::lbl_72::
        L6_2 = G
        L6_2 = L6_2.TextExtensions
        L6_2 = L6_2.SafeSetText
        L7_2 = A0_2._binder
        L7_2 = L7_2.text_Level_num
        L8_2 = L4_2
        L6_2(L7_2, L8_2)
        return
      end
    end
  end
  L2_2 = G
  L2_2 = L2_2.ComponentExtensions
  L2_2 = L2_2.SafeSetActive
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_Level_num
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._setup_level = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 == nil then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.StageExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2.StageID
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    return
  end
  L3_2 = nil
  L4_2 = A0_2._show_high_level_warning_callback
  if L4_2 ~= nil then
    L4_2 = A0_2._show_high_level_warning_callback
    L5_2 = A0_2._show_high_level_warning_callback_self
    L6_2 = A1_2
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L4_2
  else
    L5_2 = A0_2
    L4_2 = A0_2._is_show_high_level_warning
    L6_2 = A1_2
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L4_2
  end
  L5_2 = A0_2
  L4_2 = A0_2._setup_text_color
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_waring_light
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1._setup_high_level_warning = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L3_1
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentTeam
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.GetCombatPower
  L2_2 = L2_2(L3_2)
  L4_2 = A1_2
  L3_2 = A1_2.GetNPCMonsterCombatPower
  L3_2 = L3_2(L4_2)
  L5_2 = A1_2
  L4_2 = A1_2.GetNPCMonsterWarningPercentFloat
  L4_2 = L4_2(L5_2)
  if not (L2_2 and L3_2) or not L4_2 then
    L5_2 = false
    return L5_2
  end
  if L2_2 == 0 then
    L5_2 = true
    return L5_2
  end
  L5_2 = L2_2 * 100
  L6_2 = L3_2 * L4_2
  L5_2 = L5_2 < L6_2
  return L5_2
end
L0_1._is_show_high_level_warning = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_Level_num
    L3_2 = G
    L3_2 = L3_2.UIColorUtils
    L3_2 = L3_2.GetColor
    L4_2 = L4_1
    L3_2 = L3_2(L4_2)
    L2_2.color = L3_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_level
    L3_2 = G
    L3_2 = L3_2.UIColorUtils
    L3_2 = L3_2.GetColor
    L4_2 = L4_1
    L3_2 = L3_2(L4_2)
    L2_2.color = L3_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_name
    L3_2 = G
    L3_2 = L3_2.UIColorUtils
    L3_2 = L3_2.GetColor
    L4_2 = L4_1
    L3_2 = L3_2(L4_2)
    L2_2.color = L3_2
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_Level_num
    L3_2 = G
    L3_2 = L3_2.UIColorUtils
    L3_2 = L3_2.GetColor
    L4_2 = L5_1
    L3_2 = L3_2(L4_2)
    L2_2.color = L3_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_level
    L3_2 = G
    L3_2 = L3_2.UIColorUtils
    L3_2 = L3_2.GetColor
    L4_2 = L5_1
    L3_2 = L3_2(L4_2)
    L2_2.color = L3_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_name
    L3_2 = G
    L3_2 = L3_2.UIColorUtils
    L3_2 = L3_2.GetColor
    L4_2 = L5_1
    L3_2 = L3_2(L4_2)
    L2_2.color = L3_2
  end
end
L0_1._setup_text_color = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_danger_light
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_danger_light
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_danger_light_elite01
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_danger_light_elite02
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_danger_light_elite03
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_waring_light = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_elite_types
  if L2_2 == nil then
    return
  end
  L2_2 = L2_1.SafeSetActive
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_elite_types
  L3_2 = L3_2[1]
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = L2_1.SafeSetActive
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_elite_types
  L3_2 = L3_2[2]
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = L2_1.SafeSetActive
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_elite_types
  L3_2 = L3_2[3]
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = L2_1.SafeSetActive
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_hint_elite_01
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = L2_1.SafeSetActive
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_hint_elite_02
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = L2_1.SafeSetActive
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_hint_elite_03
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.Rank
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.MonsterRank
  L3_2 = L3_2.Elite
  if L2_2 == L3_2 then
    L2_2 = L2_1.SafeSetActive
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_elite_types
    L3_2 = L3_2[1]
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = L2_1.SafeSetActive
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_hint_elite_01
    L4_2 = true
    L2_2(L3_2, L4_2)
  else
    L2_2 = A1_2.Rank
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.MonsterRank
    L3_2 = L3_2.LittleBoss
    if L2_2 == L3_2 then
      L2_2 = L2_1.SafeSetActive
      L3_2 = A0_2._binder
      L3_2 = L3_2.node_elite_types
      L3_2 = L3_2[2]
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = L2_1.SafeSetActive
      L3_2 = A0_2._binder
      L3_2 = L3_2.node_hint_elite_02
      L4_2 = true
      L2_2(L3_2, L4_2)
    else
      L2_2 = A1_2.Rank
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.MonsterRank
      L3_2 = L3_2.BigBoss
      if L2_2 == L3_2 then
        L2_2 = L2_1.SafeSetActive
        L3_2 = A0_2._binder
        L3_2 = L3_2.node_elite_types
        L3_2 = L3_2[3]
        L4_2 = true
        L2_2(L3_2, L4_2)
        L2_2 = L2_1.SafeSetActive
        L3_2 = A0_2._binder
        L3_2 = L3_2.node_hint_elite_03
        L4_2 = true
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L0_1._setup_rank = L9_1
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.GetComponent
  L5_2 = typeof
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.NPCComponent
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.StageExcelTable
  L4_2 = L4_2.GetData
  L6_2 = L3_2
  L5_2 = L3_2.GetStageID
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L5_2 = L4_2.MonsterList
  L5_2 = L5_2.Length
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_multi_wave
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = 1 < L5_2
  L6_2(L7_2, L8_2)
end
L0_1._setup_wave = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.BuffUtils
  L2_2 = L2_2.GetMazeBuffData
  L3_2 = A1_2
  L4_2 = 1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L3_2 = L2_2.IsDisplay
    if L3_2 then
      L3_2 = table
      L3_2 = L3_2.insert
      L4_2 = A0_2.buff_can_show_anim
      L5_2 = A1_2
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1._on_buff_create = L9_1
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = {}
  L5_2 = A1_2
  L4_2 = A1_2.GetComponent
  L6_2 = typeof
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.AdventureAbilityComponent
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L6_2(L7_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  if L4_2 == nil then
    return
  end
  L5_2 = L4_2.ModifierCount
  L6_2 = 0
  L7_2 = 0
  L8_2 = L5_2 - 1
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L12_2 = L4_2
    L11_2 = L4_2.GetModifierByIndex
    L13_2 = L10_2
    L11_2 = L11_2(L12_2, L13_2)
    L12_2 = G
    L12_2 = L12_2.BuffUtils
    L12_2 = L12_2.GetMazeBuffData
    L13_2 = L11_2.BuffID
    L14_2 = L11_2.Level
    L12_2 = L12_2(L13_2, L14_2)
    L13_2 = L11_2.State
    L14_2 = CS
    L14_2 = L14_2.RPG
    L14_2 = L14_2.GameCore
    L14_2 = L14_2.ModifierState
    L14_2 = L14_2.Alive
    if L13_2 == L14_2 and L12_2 then
      L13_2 = L12_2.IsDisplay
      if L13_2 then
        L6_2 = L6_2 + 1
        L13_2 = table
        L13_2 = L13_2.insert
        L14_2 = L3_2
        L15_2 = {}
        L15_2.data = L11_2
        L15_2.anim_name = nil
        L13_2(L14_2, L15_2)
      end
    end
  end
  if A2_2 then
    L8_2 = A0_2
    L7_2 = A0_2.check_change_and_set_anim_property
    L9_2 = A0_2._buff
    L10_2 = L3_2
    L7_2(L8_2, L9_2, L10_2)
  end
  L7_2 = L6_2 + 1
  L8_2 = A0_2._buff_list
  L9_2 = L8_2
  L8_2 = L8_2.get_panel_by_index
  L10_2 = L7_2
  L8_2 = L8_2(L9_2, L10_2)
  while L8_2 ~= nil do
    L10_2 = L8_2
    L9_2 = L8_2.setup_view
    L11_2 = nil
    L9_2(L10_2, L11_2)
    L7_2 = L7_2 + 1
    L9_2 = A0_2._buff_list
    L10_2 = L9_2
    L9_2 = L9_2.get_panel_by_index
    L11_2 = L7_2
    L9_2 = L9_2(L10_2, L11_2)
    L8_2 = L9_2
  end
  L9_2 = A0_2._buff_list
  L10_2 = L9_2
  L9_2 = L9_2.setup_view
  L11_2 = L3_2
  L9_2(L10_2, L11_2)
  A0_2._buff = L3_2
  L9_2 = A0_2.old_buff_count
  if L9_2 then
    L9_2 = A0_2.old_buff_count
    L10_2 = #L3_2
    if L9_2 ~= L10_2 then
      L9_2 = CS
      L9_2 = L9_2.UnityEngine
      L9_2 = L9_2.UI
      L9_2 = L9_2.LayoutRebuilder
      L9_2 = L9_2.ForceRebuildLayoutImmediate
      L10_2 = A0_2._binder
      L10_2 = L10_2.node_buff
      L9_2(L10_2)
    end
  end
  L9_2 = #L3_2
  A0_2.old_buff_count = L9_2
end
L0_1._setup_buff = L9_1
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = pairs
  L4_2 = A2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = true
    L9_2 = pairs
    L10_2 = A1_2
    L9_2, L10_2, L11_2 = L9_2(L10_2)
    for L12_2, L13_2 in L9_2, L10_2, L11_2 do
      L14_2 = L7_2.data
      L14_2 = L14_2.BuffID
      L15_2 = L13_2.data
      L15_2 = L15_2.BuffID
      if L14_2 == L15_2 then
        L8_2 = false
      end
    end
    if L8_2 then
      L9_2 = A0_2.buff_can_show_anim
      L9_2 = #L9_2
      L10_2 = 1
      L11_2 = -1
      for L12_2 = L9_2, L10_2, L11_2 do
        L13_2 = A0_2.buff_can_show_anim
        L13_2 = L13_2[L12_2]
        L14_2 = L7_2.data
        L14_2 = L14_2.BuffID
        if L13_2 == L14_2 then
          L13_2 = table
          L13_2 = L13_2.remove
          L14_2 = A0_2.buff_can_show_anim
          L15_2 = L12_2
          L13_2(L14_2, L15_2)
          L13_2 = L8_1
          L7_2.anim_name = L13_2
        end
      end
    end
  end
end
L0_1.check_change_and_set_anim_property = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.cacheGameEntity
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_buff
    L3_2 = A0_2.cacheGameEntity
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2
    L1_2 = A0_2._setup_weak_point
    L3_2 = A0_2.cacheGameEntity
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh_buff = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.cacheGameEntity
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_level
    L3_2 = A0_2.cacheGameEntity
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_world_level_update = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.cacheGameEntity
  if L1_2 then
    L1_2 = A0_2.cacheGameEntity
    L2_2 = L1_2
    L1_2 = L1_2.GetComponent
    L3_2 = typeof
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.NPCComponent
    L3_2, L4_2 = L3_2(L4_2)
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._setup_high_level_warning
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_player_combat_power_change = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2
  L2_2 = A0_2._should_display_weak_point
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = A0_2._weak_point_list
    L3_2 = L2_2
    L2_2 = L2_2.safe_set_active
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._weak_point_list
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = nil
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = A1_2.RuntimeID
  L3_2 = nil
  L4_2 = A0_2._get_weak_point_dict_callback
  if L4_2 ~= nil then
    L4_2 = G
    L4_2 = L4_2.Utils
    L4_2 = L4_2.invoke_callback
    L5_2 = A0_2._get_weak_point_dict_callback
    L6_2 = A0_2._get_weak_point_dict_callback_self
    L7_2 = L2_2
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2 = L4_2
  else
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.GamePlayStatic
    L4_2 = L4_2.GetMainAttackDamageTypeDictByNpcMonsterRuntimeID
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    L3_2 = L4_2
  end
  L5_2 = A0_2
  L4_2 = A0_2._get_sorted_damage_type_list
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2 ~= nil
  L6_2 = A0_2._weak_point_list
  L7_2 = L6_2
  L6_2 = L6_2.safe_set_active
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  if L5_2 then
    L6_2 = A0_2._weak_point_list
    L7_2 = L6_2
    L6_2 = L6_2.setup_view
    L8_2 = L4_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._setup_weak_point = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.CurrentPlayingTeamMember
  L3_2 = L2_2.IsFakeAvatar
  L3_2 = not L3_2
  return L3_2
end
L0_1._should_display_weak_point = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = {}
  L4_2 = A1_2
  L3_2 = A1_2.GetEnumerator
  L3_2 = L3_2(L4_2)
  L4_2 = 0
  while true do
    L6_2 = L3_2
    L5_2 = L3_2.MoveNext
    L5_2 = L5_2(L6_2)
    if not L5_2 then
      break
    end
    L5_2 = A0_2._display_weakpoint_count
    if not (L4_2 <= L5_2) then
      break
    end
    L5_2 = #L2_2
    L5_2 = L5_2 + 1
    L6_2 = L3_2.Current
    L6_2 = L6_2.Key
    L2_2[L5_2] = L6_2
    L4_2 = L4_2 + 1
  end
  L5_2 = table
  L5_2 = L5_2.sort
  L6_2 = L2_2
  function L7_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A1_2[A0_3]
    L3_3 = A1_2[A1_3]
    L2_3 = L2_3 > L3_3
    return L2_3
  end
  L5_2(L6_2, L7_2)
  return L2_2
end
L0_1._get_sorted_damage_type_list = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.cacheGameEntity
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_weak_point
    L3_2 = A0_2.cacheGameEntity
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh_weak_point = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2.cacheGameEntity = nil
  A0_2._weak_point_list = nil
  A0_2._buff_list = nil
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_dispose = L9_1
return L0_1
