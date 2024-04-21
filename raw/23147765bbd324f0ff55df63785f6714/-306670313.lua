local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.PunkLordModule
L1_1 = 100000
L2_1 = 2.5
L3_1 = 0.05
L4_1 = "5017"
L5_1 = "5019"
L6_1 = G
L6_1 = L6_1.Class
L7_1 = "PunkLordMainPanel"
L8_1 = G
L8_1 = L8_1.TabItem
L6_1 = L6_1(L7_1, L8_1)
function L7_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  A0_2._punklord_ui3d = A3_2
  L4_2 = {}
  A0_2._punklord_datas = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._add_count_down_timer
  L6_2 = A0_2._on_play_dead_finish
  L7_2 = L2_1
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  A0_2._count_down_timer = L4_2
end
L6_1.ctor = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.punklord_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L6_1.get_first_selected_object = L7_1
function L7_1(A0_2)
  local L1_2
  L1_2 = nil
  return L1_2
end
L6_1.get_first_record_selected_object = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_record
  L4_2 = A0_2._on_btn_record
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.punklord_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_click_callback
  L3_2 = A0_2._on_punklord_click
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.punklord_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_expire_callback
  L3_2 = A0_2._on_punklord_expire
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_search_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_search_callback
  L3_2 = A0_2._on_search
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PunkLordMonsterDataRefresh
  L4_2 = A0_2._on_punklord_refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PunkLordSummoned
  L4_2 = A0_2._on_punklord_summoned
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PunkLordDataShared
  L4_2 = A0_2._on_punklord_shared
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PunkLordTakenScore
  L4_2 = A0_2._on_punklord_taken_score
  L1_2(L2_2, L3_2, L4_2)
end
L6_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2
  A0_2._punklord_datas = nil
  A0_2._cur_playing_dead_monster_key = nil
end
L6_1._on_dispose = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._hide_all_before_refresh
  L1_2(L2_2)
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.RefreshMonsterList
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
    L1_3 = L1_3.load_data_and_refresh
    L1_3(L2_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3.force_set_first_navigation_target
    L1_3(L2_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._try_unlock_tutorial
    L1_3(L2_3)
  end
  L1_2(L2_2, L3_2)
end
L6_1._on_select = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.monster_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.share_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.control_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_record
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_killed
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._show_empty
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L6_1._hide_all_before_refresh = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_punklord_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_default_punklord
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L6_1.load_data_and_refresh = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L0_1.PunkLordDatas
  L1_2 = L1_2(L2_2)
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
    if not L4_2 then
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
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
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
    L4_3 = A0_3.CurHP
    L4_3 = L4_3 == 0
    L5_3 = A1_3.CurHP
    L5_3 = L5_3 == 0
    if L4_3 ~= L5_3 then
      return L4_3
    end
    L6_3 = A0_3.IsAttacking
    L7_3 = A1_3.IsAttacking
    if L6_3 ~= L7_3 then
      L6_3 = A0_3.IsAttacking
      return L6_3
    end
    L6_3 = A0_3.PunkLordRow
    L6_3 = L6_3.MonsterRare
    L6_3 = #L6_3
    L7_3 = A1_3.PunkLordRow
    L7_3 = L7_3.MonsterRare
    L7_3 = #L7_3
    if L6_3 ~= L7_3 then
      L8_3 = L6_3 > L7_3
      return L8_3
    end
    L8_3 = A0_3.WorldLv
    L9_3 = A1_3.WorldLv
    if L8_3 ~= L9_3 then
      L8_3 = A0_3.WorldLv
      L9_3 = A1_3.WorldLv
      L8_3 = L8_3 > L9_3
      return L8_3
    end
    L8_3 = A0_3.ServerID
    L9_3 = A1_3.ServerID
    L8_3 = L8_3 < L9_3
    return L8_3
  end
  L3_2(L4_2, L5_2)
end
L6_1._get_punklord_data = L7_1
function L7_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2.IsSummonedBySelf
  if L2_2 then
    L2_2 = 1
    return L2_2
  end
  L2_2 = A1_2.IsGenBySystem
  if L2_2 then
    L2_2 = -2
    return L2_2
  end
  L2_2 = -1
  return L2_2
end
L6_1._get_summon_priority = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = A0_2._punklord_datas
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.CurHP
    if L6_2 == 0 then
      L7_2 = A0_2
      L6_2 = A0_2._is_punklord_first_dead
      L8_2 = L5_2
      L6_2 = L6_2(L7_2, L8_2)
      if L6_2 then
        A0_2._cur_punklord = L5_2
        return
      end
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._check_cur_punklord_data_valid
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = A0_2._punklord_datas
  if L1_2 then
    L1_2 = A0_2._punklord_datas
    L1_2 = L1_2[1]
    A0_2._cur_punklord = L1_2
  end
end
L6_1._set_default_punklord = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._cur_punklord
  if L1_2 == nil then
    L1_2 = false
    return L1_2
  end
  L1_2 = pairs
  L2_2 = A0_2._punklord_datas
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._cur_punklord
    if L5_2 == L6_2 then
      L6_2 = true
      return L6_2
    end
  end
  L1_2 = false
  return L1_2
end
L6_1._check_cur_punklord_data_valid = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_punklord_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_cur_punklord
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_search
  L1_2(L2_2)
end
L6_1._refresh = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_punklord
  if L1_2 == nil then
    return
  end
  L1_2 = G
  L1_2 = L1_2.UtilEngineWrap
  L1_2 = L1_2.IsCsType
  L2_2 = A0_2._cur_punklord
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.SettledPunkLordData
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L2_2 = A0_2._is_playing_monster_dead
    if not L2_2 then
      L2_2 = G
      L2_2 = L2_2.SuperDebug
      L2_2 = L2_2.Log
      L3_2 = "TutorialTaskUnlock REWARD"
      L2_2(L3_2)
      L2_2 = G
      L2_2 = L2_2.NotifyManager
      L2_2 = L2_2.notify
      L3_2 = G
      L3_2 = L3_2.CS
      L3_2 = L3_2.NotifyType
      L3_2 = L3_2.TutorialTaskUnlock
      L4_2 = L5_1
      L2_2(L3_2, L4_2)
      return
    end
  end
  if not L1_2 then
    L2_2 = A0_2._cur_punklord
    L2_2 = L2_2.IsSummonedBySelf
    if L2_2 then
      L2_2 = A0_2._cur_punklord
      L2_2 = L2_2.IsShared
      if not L2_2 then
        L2_2 = A0_2._cur_punklord
        L2_2 = L2_2.CurHP
        if 0 < L2_2 then
          L2_2 = G
          L2_2 = L2_2.SuperDebug
          L2_2 = L2_2.Log
          L3_2 = "TutorialTaskUnlock SHARE"
          L2_2(L3_2)
          L2_2 = G
          L2_2 = L2_2.NotifyManager
          L2_2 = L2_2.notify
          L3_2 = G
          L3_2 = L3_2.CS
          L3_2 = L3_2.NotifyType
          L3_2 = L3_2.TutorialTaskUnlock
          L4_2 = L4_1
          L2_2(L3_2, L4_2)
        end
      end
    end
  end
end
L6_1._try_unlock_tutorial = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.punklord_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._punklord_datas
  L4_2 = A0_2._cur_punklord
  L1_2(L2_2, L3_2, L4_2)
end
L6_1._refresh_punklord_list = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._cur_punklord
  if L1_2 == nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.monster_info_panel
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.share_info_panel
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.control_panel
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_desc
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_record
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_killed
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2._show_empty
    L3_2 = true
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2._refresh_ui3d_punklord_monster
    L1_2(L2_2)
    return
  end
  L1_2 = G
  L1_2 = L1_2.UtilEngineWrap
  L1_2 = L1_2.IsCsType
  L2_2 = A0_2._cur_punklord
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.SettledPunkLordData
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._show_empty
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._cur_punklord
  L2_2 = L2_2.CurHP
  L2_2 = L2_2 == 0
  L3_2 = A0_2._binder
  L3_2 = L3_2.monster_info_panel
  L4_2 = L3_2
  L3_2 = L3_2.safe_set_active
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.share_info_panel
  L4_2 = L3_2
  L3_2 = L3_2.safe_set_active
  L5_2 = A0_2._cur_punklord
  L5_2 = not L1_2 and L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.control_panel
  L4_2 = L3_2
  L3_2 = L3_2.safe_set_active
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._cur_punklord
  L5_2 = L5_2.IsTakenScore
  L5_2 = not L5_2 and L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.monster_info_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A0_2._cur_punklord
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.control_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A0_2._cur_punklord
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.share_info_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A0_2._cur_punklord
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A0_2._cur_punklord
  L5_2 = L5_2.PunkLordRow
  L5_2 = L5_2.MonsterBuff
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_killed
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_record
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_ui3d_punklord_monster
  L3_2(L4_2)
end
L6_1._refresh_cur_punklord = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._punklord_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.is_loaded
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._punklord_ui3d
    L1_2 = L1_2.is_init_finish
    if L1_2 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L1_2 = A0_2._cur_punklord
  if L1_2 == nil then
    L1_2 = A0_2._punklord_ui3d
    L2_2 = L1_2
    L1_2 = L1_2.set_monster_visibility
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._cur_punklord
  L1_2 = L1_2.CurHP
  L1_2 = L1_2 == 0
  if L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._is_punklord_first_dead
    L4_2 = A0_2._cur_punklord
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      L2_2 = A0_2._punklord_ui3d
      L3_2 = L2_2
      L2_2 = L2_2.set_monster_visibility
      L4_2 = false
      L2_2(L3_2, L4_2)
      return
    end
  end
  if L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._is_punklord_first_dead
    L4_2 = A0_2._cur_punklord
    L2_2 = L2_2(L3_2, L4_2)
    L2_2 = not L2_2
    if L2_2 then
      L3_2 = A0_2._punklord_ui3d
      L4_2 = L3_2
      L3_2 = L3_2.set_monster_visibility
      L5_2 = false
      L3_2(L4_2, L5_2)
      return
    end
    L3_2 = A0_2._cur_playing_dead_monster_key
    L3_2 = A0_2._cur_playing_dead_monster_key
    L4_2 = L3_2
    L3_2 = L3_2.Equals
    L5_2 = A0_2._cur_punklord
    L5_2 = L5_2.MonsterKey
    L3_2 = L3_2 ~= nil and L3_2
    L4_2 = A0_2._is_playing_monster_dead
    if L4_2 then
      L4_2 = not L3_2
    end
    if L4_2 then
      A0_2._is_playing_monster_dead = false
      L6_2 = A0_2
      L5_2 = A0_2._record_all_dead
      L5_2(L6_2)
      L5_2 = A0_2._punklord_ui3d
      L6_2 = L5_2
      L5_2 = L5_2.set_monster_visibility
      L7_2 = false
      L5_2(L6_2, L7_2)
      return
    end
  else
    L3_2 = A0_2
    L2_2 = A0_2._record_all_dead
    L2_2(L3_2)
  end
  L2_2 = A0_2._punklord_ui3d
  L3_2 = L2_2
  L2_2 = L2_2.switch_monster
  L4_2 = A0_2._cur_punklord
  L4_2 = L4_2.MonsterRow
  L5_2 = A0_2._cur_punklord
  L5_2 = L5_2.PunkLordRow
  L5_2 = L5_2.ShowMonster
  L6_2 = A0_2._cur_punklord
  L6_2 = L6_2.PunkLordRow
  L6_2 = L6_2.ManikinConfig
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._punklord_ui3d
  L3_2 = L2_2
  L2_2 = L2_2.set_monster_visibility
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._cur_punklord
  L2_2 = L2_2.PunkLordRow
  L2_2 = L2_2.MonsterRare
  L3_2 = L1_2 or L3_2
  if L1_2 then
    L4_2 = A0_2
    L3_2 = A0_2._is_punklord_first_dead
    L5_2 = A0_2._cur_punklord
    L3_2 = L3_2(L4_2, L5_2)
  end
  L5_2 = A0_2
  L4_2 = A0_2._is_punklord_first_appear
  L6_2 = A0_2._cur_punklord
  L4_2 = not L1_2 and L4_2
  L6_2 = A0_2
  L5_2 = A0_2._is_punklord_first_appear
  L7_2 = A0_2._cur_punklord
  L5_2 = L5_2(L6_2, L7_2)
  L5_2 = not L1_2 and L5_2
  if L1_2 then
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_killed
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = false
    L6_2(L7_2, L8_2)
    A0_2._is_playing_monster_dead = true
    L6_2 = A0_2._cur_punklord
    L6_2 = L6_2.MonsterKey
    A0_2._cur_playing_dead_monster_key = L6_2
    L6_2 = A0_2._count_down_timer
    L7_2 = L6_2
    L6_2 = L6_2.reset
    L6_2(L7_2)
    L6_2 = A0_2._count_down_timer
    L7_2 = L6_2
    L6_2 = L6_2.start
    L6_2(L7_2)
  end
  if L4_2 then
    L7_2 = A0_2
    L6_2 = A0_2._record_appear
    L8_2 = A0_2._cur_punklord
    L6_2(L7_2, L8_2)
  end
  L6_2 = A0_2._punklord_ui3d
  L7_2 = L6_2
  L6_2 = L6_2.switch_rare
  L8_2 = A0_2._cur_punklord
  L8_2 = L8_2.PunkLordRow
  L8_2 = L8_2.MonsterRare
  L6_2(L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2._trigger_monster_ani
  L8_2 = L3_2
  L9_2 = L4_2
  L10_2 = L5_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = A0_2._punklord_ui3d
  L7_2 = L6_2
  L6_2 = L6_2.switch_rare
  L8_2 = L2_2
  L6_2(L7_2, L8_2)
end
L6_1._refresh_ui3d_punklord_monster = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_empty
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.motion_empty_hint
    L3_2 = L2_2
    L2_2 = L2_2.ImmediateFinishAllMotions
    L2_2(L3_2)
    L2_2 = L0_1.SummonLeftCount
    if 0 < L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.motion_empty_hint
      L3_2 = L2_2
      L2_2 = L2_2.ShowTextIDWithMotion
      L4_2 = L3_1
      L5_2 = nil
      L6_2 = "UIText_ActivityPunkLord_Main_Monster_Search_Hint"
      L2_2(L3_2, L4_2, L5_2, L6_2)
    else
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_empty_hint
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = "UIText_PunkLord_Daily_Search_RunOut_Tips"
      L2_2(L3_2, L4_2)
    end
  end
end
L6_1._show_empty = L7_1
function L7_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  if A1_2 then
    L4_2 = A0_2._punklord_ui3d
    L5_2 = L4_2
    L4_2 = L4_2.play_die_ani
    L4_2(L5_2)
  elseif A2_2 then
    L4_2 = A0_2._punklord_ui3d
    L5_2 = L4_2
    L4_2 = L4_2.play_appear_ani
    L4_2(L5_2)
  elseif A3_2 then
    L4_2 = A0_2._punklord_ui3d
    L5_2 = L4_2
    L4_2 = L4_2.play_standby_ani
    L4_2(L5_2)
  end
end
L6_1._trigger_monster_ani = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.MonsterKey
  L3_2 = L0_1.AppearedMonsterRecord
  L4_2 = L3_2
  L3_2 = L3_2.Contains
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L3_2 = L0_1.AppearedMonsterRecord
    L4_2 = L3_2
    L3_2 = L3_2.Add
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L6_1._record_appear = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L0_1.AppearedMonsterRecord
  L3_2 = L2_2
  L2_2 = L2_2.Contains
  L4_2 = A1_2.MonsterKey
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = not L2_2
  return L2_2
end
L6_1._is_punklord_first_appear = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L0_1.DeadMonsterRecord
  L3_2 = L2_2
  L2_2 = L2_2.Contains
  L4_2 = A1_2.MonsterKey
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = not L2_2
  return L2_2
end
L6_1._is_punklord_first_dead = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.MonsterKey
  L3_2 = L0_1.DeadMonsterRecord
  L4_2 = L3_2
  L3_2 = L3_2.Contains
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L3_2 = L0_1.DeadMonsterRecord
    L4_2 = L3_2
    L3_2 = L3_2.Add
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L6_1._record_dead = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = A0_2._punklord_datas
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.CurHP
    if L6_2 == 0 then
      L7_2 = A0_2
      L6_2 = A0_2._record_dead
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
    end
  end
end
L6_1._record_all_dead = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  A0_2._is_playing_monster_dead = false
  L2_2 = A0_2
  L1_2 = A0_2._record_all_dead
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_unlock_tutorial
  L1_2(L2_2)
end
L6_1._on_play_dead_finish = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_search_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
end
L6_1._refresh_search = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._cur_punklord = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._try_unlock_tutorial
  L2_2(L3_2)
end
L6_1._on_punklord_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.RefreshMonsterList
  L1_2(L2_2)
end
L6_1._on_punklord_expire = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._state
  L2_2 = L6_1.SelectState
  L2_2 = L2_2.Selected
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2.load_data_and_refresh
    L1_2(L2_2)
  end
end
L6_1._on_punklord_refresh = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._state
  L3_2 = L6_1.SelectState
  L3_2 = L3_2.Selected
  if L2_2 == L3_2 then
    A0_2._cur_punklord = A1_2
    L3_2 = A0_2
    L2_2 = A0_2._on_punklord_refresh
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._try_unlock_tutorial
    L2_2(L3_2)
  end
end
L6_1._on_punklord_summoned = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._state
  L2_2 = L6_1.SelectState
  L2_2 = L2_2.Selected
  if L1_2 == L2_2 then
    L1_2 = A0_2._cur_punklord
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.control_panel
      L2_2 = L1_2
      L1_2 = L1_2.setup_view
      L3_2 = A0_2._cur_punklord
      L1_2(L2_2, L3_2)
      L1_2 = G
      L1_2 = L1_2.UtilEngineWrap
      L1_2 = L1_2.IsCsType
      L2_2 = A0_2._cur_punklord
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.SettledPunkLordData
      L1_2 = L1_2(L2_2, L3_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.share_info_panel
      L3_2 = L2_2
      L2_2 = L2_2.safe_set_active
      L4_2 = A0_2._cur_punklord
      L4_2 = not L1_2 and L4_2
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.share_info_panel
      L3_2 = L2_2
      L2_2 = L2_2.setup_view
      L4_2 = A0_2._cur_punklord
      L2_2(L3_2, L4_2)
    end
  end
end
L6_1._on_punklord_shared = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = {}
  L3_2 = L1_1
  L2_2.ConfigID = L3_2
  L2_2.Count = A1_2
  L3_2 = G
  L3_2 = L3_2.RewardUtils
  L3_2 = L3_2.show_reward_dialog
  L4_2 = {}
  L5_2 = L2_2
  L4_2[1] = L5_2
  L3_2(L4_2)
  L3_2 = A0_2._state
  L4_2 = L6_1.SelectState
  L4_2 = L4_2.Selected
  if L3_2 == L4_2 then
    L4_2 = A0_2
    L3_2 = A0_2._on_punklord_refresh
    L3_2(L4_2)
  end
end
L6_1._on_punklord_taken_score = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1.SummonLeftCount
  if 0 < L1_2 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_show
    L2_2 = "Ui.Activity.ActivityPunkLord.PunkLordSearchTransferDialog"
    L1_2 = L1_2(L2_2)
    L3_2 = L1_2
    L2_2 = L1_2.set_exit_callback
    function L4_2()
      local L0_3, L1_3
      L0_3 = L0_1
      L1_3 = L0_3
      L0_3 = L0_3.SummonMonster
      L0_3(L1_3)
      L0_1.ShowSummonRedDot = false
    end
    L2_2(L3_2, L4_2)
  else
    L1_2 = L0_1
    L2_2 = L1_2
    L1_2 = L1_2.SummonMonster
    L1_2(L2_2)
  end
end
L6_1._on_search = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_punklord
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_desc
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.monster_info_panel
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_record
    L2_2 = L1_2
    L1_2 = L1_2.SetChecked
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = G
    L1_2 = L1_2.new
    L2_2 = "Ui.Activity.ActivityPunkLord.Record.PunkLordRecordDialog"
    L1_2 = L1_2(L2_2)
    L3_2 = L1_2
    L2_2 = L1_2.init
    L4_2 = A0_2._cur_punklord
    L2_2(L3_2, L4_2)
    L3_2 = L1_2
    L2_2 = L1_2.set_exit_callback
    function L4_2()
      local L0_3, L1_3, L2_3
      L0_3 = A0_2._binder
      L0_3 = L0_3.btn_record
      L1_3 = L0_3
      L0_3 = L0_3.SetChecked
      L2_3 = false
      L0_3(L1_3, L2_3)
    end
    L2_2(L3_2, L4_2)
    L3_2 = L1_2
    L2_2 = L1_2.async_show
    L2_2(L3_2)
  end
end
L6_1._on_btn_record = L7_1
return L6_1
