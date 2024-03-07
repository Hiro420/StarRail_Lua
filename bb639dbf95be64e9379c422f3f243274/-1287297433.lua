local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityPunkLord.PunkLordUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPunkLord.Record.PunkLordHonorInfoRowsPanel"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.PunkLordModule
L1_1 = "UIText_ActivityPunkLord_Main_InMemberValue_Label"
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "PunkLordKilledPanel"
L4_1 = G
L4_1 = L4_1.TabItem
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._punklord_ui3d = A3_2
end
L2_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.punklord_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L2_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._punk_lord_honor_info_rows_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L2_1.get_first_record_selected_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.PunkLordHonorInfoRowsPanel
  L4_2 = G
  L4_2 = L4_2.PunkLordHonorInfoRowsPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._punk_lord_honor_info_rows_panel = L1_2
  L1_2 = A0_2._punk_lord_honor_info_rows_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_honors_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.punklord_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_click_callback
  L3_2 = A0_2._on_punklord_click
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_point_tips
  L4_2 = A0_2._on_btn_tips
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_gesture
  L3_2 = GestureType
  L3_2 = L3_2.SimpleTap
  L4_2 = A0_2._simple_tap_callback
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
end
L2_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2
end
L2_1._on_added = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._punklord_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.set_monster_visibility
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._hide_all_before_refresh
  L1_2(L2_2)
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.AsyncRefreshSettledPunkLordDataWithPromise
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.ThenLuaActionOneParam
  function L3_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._get_punklord_data
    L1_3(L2_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._set_default_punklord_data
    L1_3(L2_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._refresh
    L1_3(L2_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3.force_set_first_navigation_target
    L1_3(L2_3)
  end
  L1_2(L2_2, L3_2)
end
L2_1._on_select = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_content
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.share_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_points_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L2_1._hide_all_before_refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  A0_2._punklord_datas = L1_2
  L1_2 = L0_1.SettledPunkLordDataList
  L3_2 = L1_2
  L2_2 = L1_2.GetEnumerator
  L2_2 = L2_2(L3_2)
  while true do
    L4_2 = L2_2
    L3_2 = L2_2.MoveNext
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      break
    end
    L3_2 = L2_2.Current
    L4_2 = L3_2.IsTakenScore
    if L4_2 then
      L4_2 = table
      L4_2 = L4_2.insert
      L5_2 = A0_2._punklord_datas
      L6_2 = L3_2
      L4_2(L5_2, L6_2)
    end
  end
  L3_2 = table
  L3_2 = L3_2.sort
  L4_2 = A0_2._punklord_datas
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3._get_summon_priority
    L4_3 = A0_3
    L2_3 = L2_3(L3_3, L4_3)
    L3_3 = A0_2
    L4_3 = L3_3
    L3_3 = L3_3._get_summon_priority
    L5_3 = A1_3
    L3_3 = L3_3(L4_3, L5_3)
    if L2_3 ~= L3_3 then
      L4_3 = L2_3 > L3_3
      return L4_3
    end
  end
  L3_2(L4_2, L5_2)
end
L2_1._get_punklord_data = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2.IsSummonedBySelf
  if L2_2 then
    L2_2 = 1
    return L2_2
  end
  L2_2 = -1
  return L2_2
end
L2_1._get_summon_priority = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._punklord_datas
  if L1_2 ~= nil then
    L1_2 = A0_2._punklord_datas
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = A0_2._punklord_datas
      L1_2 = L1_2[1]
      A0_2._cur_punklord_data = L1_2
    end
  end
end
L2_1._set_default_punklord_data = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._cur_punklord_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L2_1._on_punklord_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_punklord_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_cur_punklord
  L1_2(L2_2)
end
L2_1._refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.punklord_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._punklord_datas
  L4_2 = A0_2._cur_punklord_data
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._setup_punklord_list = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_punklord_data
  if L1_2 == nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_content
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.share_info_panel
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_content
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.share_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_basic_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_share_info
  L1_2(L2_2)
  L1_2 = A0_2._cur_punklord_data
  L1_2 = L1_2.BattleRecordList
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.show_full_screen_block_for_packet
    L3_2 = CS
    L3_2 = L3_2.NIJNBICAPPA
    L3_2 = L3_2.OKLGFGONDCK
    L1_2(L2_2, L3_2)
    L1_2 = L0_1
    L2_2 = L1_2
    L1_2 = L1_2.AsyncRefreshRecordWithPromise
    L3_2 = A0_2._cur_punklord_data
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = L1_2
    L1_2 = L1_2.ThenLuaActionOneParam
    function L3_2(A0_3)
      local L1_3, L2_3
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3._setup_after_fetch_record
      L1_3(L2_3)
    end
    L1_2(L2_2, L3_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._setup_after_fetch_record
    L1_2(L2_2)
  end
end
L2_1._setup_cur_punklord = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_attack_record
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_player_num
  L1_2(L2_2)
  L1_2 = A0_2._punk_lord_honor_info_rows_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_honor
  L3_2 = A0_2._cur_punklord_data
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_point_panel
  L1_2(L2_2)
  L1_2 = A0_2._punk_lord_honor_info_rows_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_btn_list
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.attack_record_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.get_first_btn
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = #L1_2
    if 0 < L3_2 then
      L3_2 = ipairs
      L4_2 = L1_2
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      for L6_2, L7_2 in L3_2, L4_2, L5_2 do
        L8_2 = {}
        L9_2 = table
        L9_2 = L9_2.insert
        L10_2 = L8_2
        L11_2 = L7_2
        L9_2(L10_2, L11_2)
        L9_2 = table
        L9_2 = L9_2.insert
        L10_2 = L8_2
        L11_2 = L2_2
        L9_2(L10_2, L11_2)
        L10_2 = A0_2
        L9_2 = A0_2.setup_navigation
        L11_2 = L8_2
        L12_2 = NavigationType
        L12_2 = L12_2.Vertical
        L13_2 = false
        L14_2 = false
        L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
      end
    end
  end
end
L2_1._setup_after_fetch_record = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.attack_record_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._cur_punklord_data
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._setup_attack_record = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._cur_punklord_data
  L1_2 = L1_2.AttackNum
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_player_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_1
  L5_2 = L1_2
  L6_2 = L1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L2_1._setup_player_num = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.share_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._cur_punklord_data
  L1_2(L2_2, L3_2)
end
L2_1._setup_share_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_name
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_level
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_weak_point
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_rare
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_summon_user_info
  L1_2(L2_2)
end
L2_1._setup_basic_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._cur_punklord_data
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
  L3_2 = A0_2._cur_punklord_data
  L3_2 = L3_2.Level
  L1_2(L2_2, L3_2)
end
L2_1._setup_level = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.weak_point_list
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_array
  L4_2 = A0_2._cur_punklord_data
  L4_2 = L4_2.MonsterRow
  L4_2 = L4_2.StanceWeakList
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._setup_weak_point = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_punklord_data
  L1_2 = L1_2.PunkLordRow
  L1_2 = L1_2.MonsterRare
  L1_2 = #L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_rare_star_1
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.PunkLordMonsterRare
  L4_2 = L4_2.B
  L4_2 = #L4_2
  L4_2 = L1_2 >= L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_rare_star_2
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.PunkLordMonsterRare
  L4_2 = L4_2.A
  L4_2 = #L4_2
  L4_2 = L1_2 >= L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_rare_star_3
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.PunkLordMonsterRare
  L4_2 = L4_2.S
  L4_2 = #L4_2
  L4_2 = L1_2 >= L4_2
  L2_2(L3_2, L4_2)
end
L2_1._setup_rare = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._cur_punklord_data
  L1_2 = L1_2.IsGenBySystem
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.PunkLordUtils
    L1_2 = L1_2.get_gm_nickname_and_head_icon_path
    L1_2, L2_2 = L1_2()
    L4_2 = A0_2
    L3_2 = A0_2._setup_user_name
    L5_2 = L1_2
    L3_2(L4_2, L5_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_user_name
  L3_2 = ""
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.PunkLordUtils
  L1_2 = L1_2.get_user_nickname_and_head_icon_id_promise
  L2_2 = A0_2._cur_punklord_data
  L2_2 = L2_2.SummonPlayerUID
  L3_2 = A0_2._setup_user_name
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._setup_summon_user_info = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_summon_user
    L3_2 = L2_2
    L2_2 = L2_2.SetCustomizedText
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_summon_user
    L3_2 = L2_2
    L2_2 = L2_2.SetCustomizedText
    L4_2 = ""
    L2_2(L3_2, L4_2)
  end
end
L2_1._setup_user_name = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = 0
  L2_2 = 0
  L3_2 = 0
  L4_2 = 0
  L5_2 = 0
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.GlobalVars
  L6_2 = L6_2.s_ModuleManager
  L6_2 = L6_2.PlayerModule
  L6_2 = L6_2.PlayerData
  L6_2 = L6_2.UserID
  L7_2 = A0_2._cur_punklord_data
  L7_2 = L7_2.IsSummonedBySelf
  if L7_2 then
    L7_2 = A0_2._cur_punklord_data
    L7_2 = L7_2.PunkLordRow
    L1_2 = L7_2.SummonPoint
  end
  L7_2 = A0_2._cur_punklord_data
  L7_2 = L7_2.PunkLordRow
  L5_2 = L7_2.KillPoint
  L7_2 = A0_2._cur_punklord_data
  L7_2 = L7_2.BattleRecordList
  if L7_2 ~= nil then
    L8_2 = 0
    L9_2 = L7_2.Count
    L9_2 = L9_2 - 1
    L10_2 = 1
    for L11_2 = L8_2, L9_2, L10_2 do
      L12_2 = L7_2[L11_2]
      L13_2 = L12_2.Uid
      if L13_2 == L6_2 then
        L13_2 = L12_2.AssistScore
        L2_2 = L2_2 + L13_2
        L13_2 = L12_2.DamageScore
        L3_2 = L3_2 + L13_2
        L13_2 = L12_2.FinalHitScore
        L4_2 = L4_2 + L13_2
      end
    end
  end
  L8_2 = A0_2._binder
  L8_2 = L8_2.text_point
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetText
  L10_2 = L1_2 + L3_2
  L10_2 = L10_2 + L4_2
  L10_2 = L10_2 + L2_2
  L10_2 = L10_2 + L5_2
  L8_2(L9_2, L10_2)
  L8_2 = {}
  if 0 < L1_2 then
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L8_2
    L11_2 = G
    L11_2 = L11_2.PunkLordUtils
    L11_2 = L11_2.create_score_statistic_data
    L12_2 = G
    L12_2 = L12_2.PunkLordUtils
    L12_2 = L12_2.textid_summon_score
    L13_2 = L1_2
    L11_2, L12_2, L13_2 = L11_2(L12_2, L13_2)
    L9_2(L10_2, L11_2, L12_2, L13_2)
  end
  if 0 < L3_2 then
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L8_2
    L11_2 = G
    L11_2 = L11_2.PunkLordUtils
    L11_2 = L11_2.create_score_statistic_data
    L12_2 = G
    L12_2 = L12_2.PunkLordUtils
    L12_2 = L12_2.textid_damage_score
    L13_2 = L3_2
    L11_2, L12_2, L13_2 = L11_2(L12_2, L13_2)
    L9_2(L10_2, L11_2, L12_2, L13_2)
  end
  if 0 < L4_2 then
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L8_2
    L11_2 = G
    L11_2 = L11_2.PunkLordUtils
    L11_2 = L11_2.create_score_statistic_data
    L12_2 = G
    L12_2 = L12_2.PunkLordUtils
    L12_2 = L12_2.textid_finalhit_score
    L13_2 = L4_2
    L11_2, L12_2, L13_2 = L11_2(L12_2, L13_2)
    L9_2(L10_2, L11_2, L12_2, L13_2)
  end
  if 0 < L2_2 then
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L8_2
    L11_2 = G
    L11_2 = L11_2.PunkLordUtils
    L11_2 = L11_2.create_score_statistic_data
    L12_2 = G
    L12_2 = L12_2.PunkLordUtils
    L12_2 = L12_2.textid_assist_score
    L13_2 = L2_2
    L11_2, L12_2, L13_2 = L11_2(L12_2, L13_2)
    L9_2(L10_2, L11_2, L12_2, L13_2)
  end
  if 0 < L5_2 then
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L8_2
    L11_2 = G
    L11_2 = L11_2.PunkLordUtils
    L11_2 = L11_2.create_score_statistic_data
    L12_2 = G
    L12_2 = L12_2.PunkLordUtils
    L12_2 = L12_2.textid_kill_score
    L13_2 = L5_2
    L11_2, L12_2, L13_2 = L11_2(L12_2, L13_2)
    L9_2(L10_2, L11_2, L12_2, L13_2)
  end
  L9_2 = A0_2._binder
  L9_2 = L9_2.panel_points
  L10_2 = L9_2
  L9_2 = L9_2.setup_view
  L11_2 = L8_2
  L9_2(L10_2, L11_2)
end
L2_1._setup_point_panel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._state
  L2_2 = L2_1.SelectState
  L2_2 = L2_2.Selected
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._get_punklord_data
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._set_default_punklord_data
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._refresh
    L1_2(L2_2)
  end
end
L2_1._on_punklord_settled_record_update = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._set_points_active
  L3_2 = A0_2._show_points
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
end
L2_1._on_btn_tips = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._show_points = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_point_tips
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L2_1._set_points_active = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._state
  L2_2 = L2_1.SelectState
  L2_2 = L2_2.Selected
  if L1_2 ~= L2_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._set_points_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L2_1._simple_tap_callback = L3_1
return L2_1
