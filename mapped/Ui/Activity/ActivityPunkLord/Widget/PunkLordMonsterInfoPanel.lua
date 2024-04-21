local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityPunkLord.PunkLordUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PunkLordMonsterInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._data = A1_2
  L2_2 = A0_2._data
  L2_2 = L2_2.CurHP
  L2_2 = L2_2 == 0
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_normal
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_killed
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._setup_killed
    L3_2(L4_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2._setup_normal
    L3_2(L4_2)
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_name
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_level
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_weal_point
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_rare
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_hp
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_remain_time
  L1_2(L2_2)
end
L0_1._setup_normal = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_name_killed
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._data
  L3_2 = L3_2.MonsterRow
  L3_2 = L3_2.MonsterName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_level_killed
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = A0_2._data
  L3_2 = L3_2.Level
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_score
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = A0_2._data
  L3_2 = L3_2.TotalScore
  L1_2(L2_2, L3_2)
end
L0_1._setup_killed = L1_1
function L1_1(A0_2)
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
L0_1._setup_name = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_level
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = A0_2._data
  L3_2 = L3_2.Level
  L1_2(L2_2, L3_2)
end
L0_1._setup_level = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.weak_point_list
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_array
  L4_2 = A0_2._data
  L4_2 = L4_2.MonsterRow
  L4_2 = L4_2.StanceWeakList
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_weal_point = L1_1
function L1_1(A0_2)
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
L0_1._setup_rare = L1_1
function L1_1(A0_2)
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
L0_1._setup_hp = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.remain_timer
  L2_2 = L1_2
  L1_2 = L1_2.SetTargetTime
  L3_2 = A0_2._data
  L3_2 = L3_2.ExpireDateTime
  L4_2 = A0_2._expire_call_back
  L5_2 = A0_2
  L6_2 = 3
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.MonoRemainTimer
  L7_2 = L7_2.TimeMode
  L7_2 = L7_2.ShowHours
  L8_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._setup_remain_time = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.LogWarningFormat
  L2_2 = "PunkLord Expired, serverID: "
  L3_2 = A0_2._data
  L3_2 = L3_2.ServerID
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
end
L0_1._expire_call_back = L1_1
return L0_1
