local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Activity.RoleTrial.RoleTrialDetailPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.RoleTrial.RoleTrialSkillItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.RoleTrial.RoleTrialSkillItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.NodeListView"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.NodeListViewBinder"
L0_1(L1_1)
L0_1 = {}
L1_1 = "Skill01"
L2_1 = "Skill02"
L3_1 = "Skill03"
L4_1 = "SkillP01"
L5_1 = "SkillMaze"
L0_1[1] = L1_1
L0_1[2] = L2_1
L0_1[3] = L3_1
L0_1[4] = L4_1
L0_1[5] = L5_1
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "RoleTrialDetailPage"
L3_1 = G
L3_1 = L3_1.UIController
L1_1 = L1_1(L2_1, L3_1)
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.RoleTrialModule
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RoleTrialDetailPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = G
  L1_2 = L1_2.BattleUIUtils
  L1_2 = L1_2.set_battle_pause
  L2_2 = true
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.SetupBattleFullScreenBlock
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L1_1.ctor = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._id = A1_2
  if A1_2 == nil then
    L3_2 = L2_1.StageID
    A0_2._id = L3_2
  end
  L4_2 = A0_2
  L3_2 = A0_2._init_data
  L3_2(L4_2)
  if A2_2 ~= nil then
    A0_2._use_zoom_in_fade_out = A2_2
  else
    A0_2._use_zoom_in_fade_out = true
  end
end
L1_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AvatarDemoConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._id
  L1_2 = L1_2(L2_2)
  A0_2.stage_row = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AvatarExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2.stage_row
  L2_2 = L2_2.AvatarID
  L1_2 = L1_2(L2_2)
  A0_2._avatar_row = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._init_skill_data
  L1_2(L2_2)
end
L1_1._init_data = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A1_2.SkillTriggerKey
  L4_2 = pairs
  L5_2 = A2_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    if L8_2 == L3_2 then
      return L7_2
    end
  end
  L4_2 = 0
  return L4_2
end
L1_1._is_skill_need_to_show = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = A0_2._avatar_row
  L1_2 = L1_2.SkillList
  L1_2 = L1_2.Length
  L2_2 = A0_2._avatar_row
  L2_2 = L2_2.SkillList
  L3_2 = nil
  L4_2 = A0_2.stage_row
  L4_2 = L4_2.OverrideDisplaySkillTriggerKeyList
  L4_2 = L4_2.Length
  if 0 < L4_2 then
    L4_2 = G
    L4_2 = L4_2.Utils
    L4_2 = L4_2.create_lua_table_from_cs_array
    L5_2 = A0_2.stage_row
    L5_2 = L5_2.OverrideDisplaySkillTriggerKeyList
    L4_2 = L4_2(L5_2)
    L3_2 = L4_2
  else
    L3_2 = L0_1
  end
  L4_2 = {}
  A0_2._skill_data = L4_2
  L4_2 = 0
  L5_2 = L1_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L2_2[L7_2]
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.AvatarSkillExcelTable
    L9_2 = L9_2.GetData
    L10_2 = L8_2
    L11_2 = 1
    L9_2 = L9_2(L10_2, L11_2)
    L11_2 = A0_2
    L10_2 = A0_2._is_skill_need_to_show
    L12_2 = L9_2
    L13_2 = L3_2
    L10_2 = L10_2(L11_2, L12_2, L13_2)
    if 0 < L10_2 then
      L11_2 = A0_2._skill_data
      L11_2[L10_2] = L9_2
    end
  end
end
L1_1._init_skill_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 33
  L4_2 = A0_2._binder
  L4_2 = L4_2.scroll_skill
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = G
  L5_2 = L5_2.RoleTrialSkillItemPanel
  L6_2 = G
  L6_2 = L6_2.RoleTrialSkillItemPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2.skill_list = L1_2
  L1_2 = A0_2.skill_list
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_skill_list
  L1_2(L2_2, L3_2)
end
L1_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.SetupBattleFullScreenBlock
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._use_zoom_in_fade_out
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.PlayRoleTrialZoomInFadeOut
    L1_2(L2_2)
  end
  L1_2 = G
  L1_2 = L1_2.BattleUIUtils
  L1_2 = L1_2.set_battle_pause
  L2_2 = false
  L1_2(L2_2)
end
L1_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_name
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_img
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_avatar
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_skill
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.setup_short_cut_hint_panel
    L2_3 = 33
    L3_3 = A0_2._binder
    L3_3 = L3_3.scroll_skill
    L0_3(L1_3, L2_3, L3_3)
  end
  L1_2(L2_2)
end
L1_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._avatar_row
  L3_2 = L3_2.AvatarName
  L1_2(L2_2, L3_2)
end
L1_1._setup_name = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 5
  L2_2 = A0_2._avatar_row
  L2_2 = L2_2.Rarity
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.CombatPowerAvatarRarityType
  L3_2 = L3_2.CombatPowerAvatarRarityType4
  if L2_2 == L3_2 then
    L1_2 = 4
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.promotion_stars_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2
  L5_2 = L1_2
  L6_2 = L1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.DamageTypeExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._avatar_row
  L3_2 = L3_2.DamageType
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2.async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_damage_type
  L6_2 = L2_2.DamageTypeIconPath
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AvatarBaseTypeExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2._avatar_row
  L4_2 = L4_2.AvatarBaseType
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2.async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_profession
  L7_2 = L3_2.BaseTypeIconSmall
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_profession
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L3_2.BaseTypeText
  L4_2(L5_2, L6_2)
end
L1_1._setup_img = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.stage_row
  if L1_2 == nil then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.AssetLoader
  L1_2 = L1_2.SyncLoadAsset
  L2_2 = A0_2.stage_row
  L2_2 = L2_2.AvatarIntroPrefab
  L3_2 = typeof
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.GameObject
  L3_2, L4_2 = L3_2(L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.prefab = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.instantiate_object
  L3_2 = A0_2.prefab
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_avatar
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.avatar_object = L1_2
end
L1_1._setup_avatar = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.skill_list
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._skill_data
  L1_2(L2_2, L3_2)
end
L1_1._setup_skill = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L1_1._on_btn_exit = L3_1
return L1_1
