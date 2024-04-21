local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityPunkLord.Result.PunkLordScoreDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPunkLord.PunkLordUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.PunkLordModule
L1_1 = 1.5
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "PunkLordScoreDialog"
L4_1 = G
L4_1 = L4_1.UIController
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.PunkLordScoreDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
end
L2_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._exit
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1.CurPunkLordInstance
  A0_2._punklord_instance = L1_2
  L1_2 = A0_2._punklord_instance
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._punklord_instance
  L1_2 = L1_2.PunkLordDataRef
  A0_2._data = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_name
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_level
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_monster_img
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_rare
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_hp
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_damage
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_score
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "AntiVirusResultPixelKillDone_FadeIn"
  L1_2(L2_2, L3_2)
end
L2_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._data
  L3_2 = L3_2.MonsterRow
  L3_2 = L3_2.MonsterName
  L1_2(L2_2, L3_2)
end
L2_1._setup_name = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_level
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = A0_2._data
  L3_2 = L3_2.Level
  L1_2(L2_2, L3_2)
end
L2_1._setup_level = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_monster
  L4_2 = A0_2._data
  L4_2 = L4_2.PunkLordRow
  L4_2 = L4_2.MonsterPic
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._setup_monster_img = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_rare_star_1
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._data
  L3_2 = L3_2.PunkLordRow
  L3_2 = L3_2.MonsterRare
  L3_2 = #L3_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.PunkLordMonsterRare
  L4_2 = L4_2.B
  L4_2 = #L4_2
  L3_2 = L3_2 >= L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_rare_star_2
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._data
  L3_2 = L3_2.PunkLordRow
  L3_2 = L3_2.MonsterRare
  L3_2 = #L3_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.PunkLordMonsterRare
  L4_2 = L4_2.A
  L4_2 = #L4_2
  L3_2 = L3_2 >= L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_rare_star_3
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._data
  L3_2 = L3_2.PunkLordRow
  L3_2 = L3_2.MonsterRare
  L3_2 = #L3_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.PunkLordMonsterRare
  L4_2 = L4_2.S
  L4_2 = #L4_2
  L3_2 = L3_2 >= L4_2
  L1_2(L2_2, L3_2)
end
L2_1._setup_rare = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._data
  L1_2 = L1_2.CurHP
  L2_2 = A0_2._data
  L2_2 = L2_2.MaxHP
  L1_2 = L1_2 / L2_2
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = L1_2 * 10000
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2 / 100
  L3_2 = A0_2._binder
  L3_2 = L3_2.hp_progress_bar
  L3_2.fillAmount = L1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_cur_hp
  L4_2 = L3_2
  L3_2 = L3_2.SetCustomizedText
  L5_2 = A0_2._data
  L5_2 = L5_2.CurHP
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_max_hp
  L4_2 = L3_2
  L3_2 = L3_2.SetCustomizedText
  L5_2 = A0_2._data
  L5_2 = L5_2.MaxHP
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_hp_percent
  L4_2 = L3_2
  L3_2 = L3_2.SetCustomizedText
  L5_2 = "("
  L6_2 = L2_2
  L7_2 = "%)"
  L5_2 = L5_2 .. L6_2 .. L7_2
  L3_2(L4_2, L5_2)
end
L2_1._setup_hp = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_cur_damage
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._punklord_instance
  L3_2 = L3_2.CurSettledDamage
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_cur_damage_ratio
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = math
  L3_2 = L3_2.floor
  L4_2 = A0_2._punklord_instance
  L4_2 = L4_2.CurSettledDamage
  L5_2 = A0_2._data
  L5_2 = L5_2.MaxHP
  L4_2 = L4_2 / L5_2
  L4_2 = L4_2 * 10000
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2 / 100
  L4_2 = "%"
  L3_2 = L3_2 .. L4_2
  L1_2(L2_2, L3_2)
end
L2_1._setup_damage = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._data
  L1_2 = L1_2.Score
  L1_2 = L1_2.AssistScore
  L2_2 = A0_2._data
  L2_2 = L2_2.Score
  L2_2 = L2_2.DamageScore
  L1_2 = L1_2 + L2_2
  L2_2 = A0_2._data
  L2_2 = L2_2.Score
  L2_2 = L2_2.FinalHitScore
  L1_2 = L1_2 + L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_score
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = {}
  L3_2 = A0_2._data
  L3_2 = L3_2.Score
  L3_2 = L3_2.DamageScore
  if 0 < L3_2 then
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L2_2
    L5_2 = G
    L5_2 = L5_2.PunkLordUtils
    L5_2 = L5_2.create_score_statistic_data
    L6_2 = G
    L6_2 = L6_2.PunkLordUtils
    L6_2 = L6_2.textid_damage_score
    L7_2 = A0_2._data
    L7_2 = L7_2.Score
    L7_2 = L7_2.DamageScore
    L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
  L3_2 = A0_2._data
  L3_2 = L3_2.Score
  L3_2 = L3_2.FinalHitScore
  if 0 < L3_2 then
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L2_2
    L5_2 = G
    L5_2 = L5_2.PunkLordUtils
    L5_2 = L5_2.create_score_statistic_data
    L6_2 = G
    L6_2 = L6_2.PunkLordUtils
    L6_2 = L6_2.textid_finalhit_score
    L7_2 = A0_2._data
    L7_2 = L7_2.Score
    L7_2 = L7_2.FinalHitScore
    L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
  L3_2 = A0_2._data
  L3_2 = L3_2.Score
  L3_2 = L3_2.AssistScore
  if 0 < L3_2 then
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L2_2
    L5_2 = G
    L5_2 = L5_2.PunkLordUtils
    L5_2 = L5_2.create_score_statistic_data
    L6_2 = G
    L6_2 = L6_2.PunkLordUtils
    L6_2 = L6_2.textid_assist_score
    L7_2 = A0_2._data
    L7_2 = L7_2.Score
    L7_2 = L7_2.AssistScore
    L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_score_list
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L2_1._setup_score = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._exit
  L1_2(L2_2)
end
L2_1._in_control_exit_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.RaidModule
  L2_2 = L1_2
  L1_2 = L1_2.LeaveRaid
  L1_2(L2_2)
end
L2_1._exit = L3_1
return L2_1
