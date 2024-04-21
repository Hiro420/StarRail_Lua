local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.TreasureDungeon.TreasureDungeonTeamInfoProvider"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.TreasureDungeon.TreasureDungeonAvatarHpPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.TreasureDungeon.TreasureDungeonAvatarHpPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Team.MemberListDialog"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TreasureDungeonTeamPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 4
function L2_1(A0_2)
  local L1_2
  A0_2._need_play_attack_add = false
  A0_2._need_play_defence_add = false
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_team
  L4_2 = A0_2._on_btn_team
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_property_hint
  L4_2 = A0_2._on_btn_property_hint
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_hp_explore_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2._binder
    L0_3 = L0_3.node_hp_explore_hint
    L1_3 = L0_3
    L0_3 = L0_3.SafeSetActive
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._hp_explore_timer
    if L0_3 ~= nil then
      L0_3 = A0_2._hp_explore_timer
      L1_3 = L0_3
      L0_3 = L0_3.stop
      L0_3(L1_3)
      L0_3 = A0_2._hp_explore_timer
      L1_3 = L0_3
      L0_3 = L0_3.reset
      L0_3(L1_3)
    end
  end
  L4_2 = 3
  L5_2 = 3
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._hp_explore_timer = L1_2
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh_data
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.refresh_properties
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_hp_view
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._level_data = A1_2
  L2_2 = A1_2.TeamData
  A0_2._data = L2_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = A0_2._data
  L4_2 = L3_2
  L3_2 = L3_2.GetAllMemberDatas
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  A0_2._member_list = L2_2
  L2_2 = {}
  A0_2._selected_avatar_list = L2_2
  L2_2 = {}
  A0_2._avatar_list = L2_2
  L2_2 = ipairs
  L3_2 = A0_2._member_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._avatar_list
    L8_2 = A0_2._avatar_list
    L8_2 = #L8_2
    L8_2 = L8_2 + 1
    L9_2 = L6_2.AvatarData
    L7_2[L8_2] = L9_2
    L7_2 = A0_2._data
    L8_2 = L7_2
    L7_2 = L7_2.IsSelectedMember
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L7_2 = A0_2._selected_avatar_list
      L8_2 = A0_2._selected_avatar_list
      L8_2 = #L8_2
      L8_2 = L8_2 + 1
      L9_2 = L6_2.AvatarData
      L7_2[L8_2] = L9_2
    end
  end
end
L0_1._refresh_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_attack
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.SafeSetTextID
    L8_2 = "UIText_TreasureDungeon_Prepare_Value"
    L9_2 = A0_2._data
    L9_2 = L9_2.AttackAdd
    L6_2(L7_2, L8_2, L9_2)
  end
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_defence
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.SafeSetTextID
    L8_2 = "UIText_TreasureDungeon_Prepare_Value"
    L9_2 = A0_2._data
    L9_2 = L9_2.DefenceAdd
    L6_2(L7_2, L8_2, L9_2)
  end
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_atk_ex
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.SafeSetTextID
    L8_2 = "UIText_TreasureDungeon_Prepare_Value"
    L9_2 = A0_2._level_data
    L9_2 = L9_2.ATKExAdd
    L6_2(L7_2, L8_2, L9_2)
  end
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_atk_ex
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2._async_load_sprite_to
    L8_2 = L5_2
    L9_2 = A0_2._level_data
    L9_2 = L9_2.ATKExIcon
    L6_2(L7_2, L8_2, L9_2)
  end
end
L0_1.refresh_properties = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L4_2 = A0_2._data
  L5_2 = L4_2
  L4_2 = L4_2.GetAllMemberDatas
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  A0_2._member_list = L3_2
  L3_2 = nil
  L4_2 = ipairs
  L5_2 = A0_2._member_list
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.IsTrialPlayer
    if L9_2 == A2_2 then
      L9_2 = L8_2.AvatarID
      if L9_2 == A1_2 then
        L3_2 = L8_2.AvatarData
        break
      end
    end
  end
  if L3_2 == nil then
    return
  end
  L5_2 = A0_2
  L4_2 = A0_2._show_avatar_detail
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1.show_getten_detail = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = G
  L3_2 = L3_2.TreasureDungeonTeamInfoProvider
  L4_2 = A0_2._selected_avatar_list
  L5_2 = L1_1
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.new
  L4_2 = "Ui.Avatar.AvatarMainPage"
  L3_2 = L3_2(L4_2)
  L5_2 = L3_2
  L4_2 = L3_2.init
  L6_2 = nil
  L7_2 = nil
  L8_2 = L2_2
  L9_2 = A1_2
  L10_2 = true
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = L3_2
  L4_2 = L3_2.set_avatar_data_list
  L6_2 = {}
  L7_2 = A1_2
  L6_2[1] = L7_2
  L4_2(L5_2, L6_2)
  L5_2 = L3_2
  L4_2 = L3_2.async_show
  L4_2(L5_2)
end
L0_1._show_avatar_detail = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_hp
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._data
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._refresh_hp_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._need_play_attack_add
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.on_attack_added
    L3_2 = A0_2._attack_source_position
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._need_play_defence_add
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.on_defence_added
    L3_2 = A0_2._defence_source_position
    L1_2(L2_2, L3_2)
  end
end
L0_1.try_replay_hint = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._need_play_attack_add = true
  A0_2._attack_source_position = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._owner_is_top_page
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_property
    L2_2 = L2_2.gameObject
    L2_2 = L2_2.activeInHierarchy
    if L2_2 then
      goto lbl_14
    end
  end
  do return end
  ::lbl_14::
  A0_2._need_play_attack_add = false
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.LayoutRebuilder
  L2_2 = L2_2.ForceRebuildLayoutImmediate
  L3_2 = A0_2._binder
  L3_2 = L3_2.layout_attack
  L3_2 = L3_2.transform
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.Activity.TreasureDungeon.TreasureDungeonPickDialog"
  L4_2 = A0_2._attack_source_position
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_attack_icon
  L5_2 = L5_2.transform
  L5_2 = L5_2.position
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = L2_2.LuaTable
  L4_2 = L3_2
  L3_2 = L3_2.register_arrive_callback
  function L5_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    L0_3 = L0_3.partical_attack
    L1_3 = L0_3
    L0_3 = L0_3.Play
    L0_3(L1_3)
  end
  L3_2(L4_2, L5_2)
end
L0_1.on_attack_added = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._need_play_defence_add = true
  A0_2._defence_source_position = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._owner_is_top_page
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_property
    L2_2 = L2_2.gameObject
    L2_2 = L2_2.activeInHierarchy
    if L2_2 then
      goto lbl_14
    end
  end
  do return end
  ::lbl_14::
  A0_2._need_play_defence_add = false
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.LayoutRebuilder
  L2_2 = L2_2.ForceRebuildLayoutImmediate
  L3_2 = A0_2._binder
  L3_2 = L3_2.layout_defence
  L3_2 = L3_2.transform
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.Activity.TreasureDungeon.TreasureDungeonPickDialog"
  L4_2 = A0_2._defence_source_position
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_defence_icon
  L5_2 = L5_2.transform
  L5_2 = L5_2.position
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = L2_2.LuaTable
  L4_2 = L3_2
  L3_2 = L3_2.register_arrive_callback
  function L5_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    L0_3 = L0_3.partical_defence
    L1_3 = L0_3
    L0_3 = L0_3.Play
    L0_3(L1_3)
  end
  L3_2(L4_2, L5_2)
end
L0_1.on_defence_added = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_hp
  L3_2 = L2_2
  L2_2 = L2_2.on_hp_recovered
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.on_hp_recovered = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_hp
  L2_2 = L1_2
  L1_2 = L1_2.on_hp_damaged
  L1_2(L2_2)
end
L0_1.on_hp_damaged = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_hp_explore_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_hp_explore_hint
  L2_2 = L2_2.transform
  L1_2(L2_2)
  L1_2 = A0_2._hp_explore_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._hp_explore_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L0_1.play_hp_explore_hint = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2._owner
  L2_2 = L2_2.__name
  L3_2 = A0_2.__name
  L4_2 = "TreasureDungeonTeam"
  L5_2 = A0_2._owner
  L5_2 = L5_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = G
  L2_2 = L2_2.MemberListDialog
  L3_2 = A0_2._member_list
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_team = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Activity.TreasureDungeon.TreasureDungeonPropertyDescDialog"
  L3_2 = A0_2._level_data
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_property_hint = L2_1
return L0_1
