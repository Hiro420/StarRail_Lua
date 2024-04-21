local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Activity.TreasureDungeon.TreasureDungeonAvatarHpPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.TreasureDungeon.TreasureDungeonAvatarHpPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TreasureDungeonHpPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 0.4
L2_1 = 0.8
function L3_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._member_datas = L1_2
  A0_2._member_dead_count = 0
  A0_2._avatar_fade_in = false
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_hp
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_item_changed
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_async_show
    L3_2 = "Ui.Activity.TreasureDungeon.TreasureDungeonPickDialog"
    L4_2 = A1_2
    L6_2 = A0_2
    L5_2 = A0_2._get_target_position
    L5_2, L6_2 = L5_2(L6_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    L3_2 = L2_2.LuaTable
    L4_2 = L3_2
    L3_2 = L3_2.register_arrive_callback
    function L5_2()
      local L0_3, L1_3, L2_3
      L0_3 = CS
      L0_3 = L0_3.RPG
      L0_3 = L0_3.Client
      L0_3 = L0_3.UIAnimationUtils
      L0_3 = L0_3.PlayFromBegin
      L1_3 = A0_2._binder
      L1_3 = L1_3.anim_hp
      L2_3 = "TeamHp_AddHint"
      L0_3(L1_3, L2_3)
    end
    L3_2(L4_2, L5_2)
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIAnimationUtils
    L2_2 = L2_2.PlayFromBegin
    L3_2 = A0_2._binder
    L3_2 = L3_2.anim_hp
    L4_2 = "TeamHp_AddHint"
    L2_2(L3_2, L4_2)
  end
end
L0_1.on_hp_recovered = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_hp
  L3_2 = "TeamHp_CutHint"
  L1_2(L2_2, L3_2)
end
L0_1.on_hp_damaged = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_hp
  L1_2 = L1_2.transform
  L1_2 = L1_2.position
  return L1_2
end
L0_1._get_target_position = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  A0_2._data = A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_hp
  L4_2 = L3_2
  L3_2 = L3_2.SetCustomizedText
  L5_2 = tostring
  L6_2 = A0_2._data
  L6_2 = L6_2.TotalLeftHPRatio
  L5_2 = L5_2(L6_2)
  L6_2 = "%"
  L5_2 = L5_2 .. L6_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._member_datas
  L3_2 = #L3_2
  L3_2 = L3_2 == 0
  L4_2 = A0_2._member_datas
  L4_2 = #L4_2
  L5_2 = G
  L5_2 = L5_2.Utils
  L5_2 = L5_2.create_lua_table_from_cs_list
  L6_2 = A0_2._data
  L7_2 = L6_2
  L6_2 = L6_2.GetCacheSortedAllMemberDatas
  L8_2 = true
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2(L7_2, L8_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2 = #L5_2
  L4_2 = L4_2 ~= L5_2
  if L4_2 then
    L6_2 = A0_2
    L5_2 = A0_2._refresh_avatar_hp
    L5_2(L6_2)
  elseif A2_2 then
    A0_2._hp_tick_time = 0
    L5_2 = 1
    L6_2 = A0_2._member_datas
    L6_2 = #L6_2
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L10_2 = A0_2
      L9_2 = A0_2._get_item_panel
      L11_2 = L8_2
      L9_2 = L9_2(L10_2, L11_2)
      if L9_2 ~= nil then
        L11_2 = L9_2
        L10_2 = L9_2.setup_change_view
        L10_2(L11_2)
      end
    end
    L5_2 = A0_2._binder
    L5_2 = L5_2.mono_tick
    L6_2 = L5_2
    L5_2 = L5_2.SetTickCallback
    L7_2 = A0_2._tick_hp
    L8_2 = A0_2
    L5_2(L6_2, L7_2, L8_2)
  else
    L6_2 = A0_2
    L5_2 = A0_2._refresh_avatar_hp
    L5_2(L6_2)
  end
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._member_datas
  L1_2 = #L1_2
  L2_2 = A0_2._member_dead_count
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L4_2 = A0_2._data
  L5_2 = L4_2
  L4_2 = L4_2.GetCacheSortedAllMemberDatas
  L6_2 = true
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A0_2._member_datas = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._get_dead_count
  L3_2 = L3_2(L4_2)
  A0_2._member_dead_count = L3_2
  L3_2 = A0_2._member_datas
  L3_2 = #L3_2
  L3_2 = L1_2 ~= L3_2
  A0_2._avatar_fade_in = L3_2
  L3_2 = L1_2 == 0
  A0_2._is_first = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.list_hp
  L4_2 = L3_2
  L3_2 = L3_2.SetListItemCount
  L5_2 = A0_2._member_datas
  L5_2 = #L5_2
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._data
  L3_2 = L3_2.NewDeadKeys
  L4_2 = L3_2
  L3_2 = L3_2.Clear
  L3_2(L4_2)
end
L0_1._refresh_avatar_hp = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 0
  L2_2 = ipairs
  L3_2 = A0_2._member_datas
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.IsAlive
    if not L7_2 then
      L1_2 = L1_2 + 1
    end
  end
  return L1_2
end
L0_1._get_dead_count = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_21
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.TreasureDungeonAvatarHpPanel
  L8_2 = G
  L8_2 = L8_2.TreasureDungeonAvatarHpPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  ::lbl_21::
  L5_2 = A0_2._member_datas
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L6_2 = A0_2._is_first
  if L6_2 then
    L6_2 = A0_2._data
    L6_2 = L6_2.NewDeadKeys
    L7_2 = L6_2
    L6_2 = L6_2.Contains
    L8_2 = L5_2.AvatarKeyID
    L6_2 = L6_2(L7_2, L8_2)
  end
  L8_2 = L4_2
  L7_2 = L4_2.setup_view
  L9_2 = L5_2
  L10_2 = A0_2._avatar_fade_in
  L11_2 = L6_2
  L7_2(L8_2, L9_2, L10_2, L11_2)
  return L3_2
end
L0_1._on_item_changed = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2._hp_tick_time
  L2_2 = L2_2 + A1_2
  A0_2._hp_tick_time = L2_2
  L2_2 = A0_2._hp_tick_time
  L3_2 = L1_1
  L3_2 = L3_2 + 0.1
  if L2_2 <= L3_2 then
    L2_2 = L1_1
    L2_2 = A1_2 / L2_2
    L3_2 = 1
    L4_2 = A0_2._member_datas
    L4_2 = #L4_2
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L8_2 = A0_2
      L7_2 = A0_2._get_item_panel
      L9_2 = L6_2
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 ~= nil then
        L9_2 = L7_2
        L8_2 = L7_2.tick_change
        L10_2 = L2_2
        L8_2(L9_2, L10_2)
      end
    end
  end
  L2_2 = A0_2._hp_tick_time
  L3_2 = L1_1
  L4_2 = L2_1
  L3_2 = L3_2 + L4_2
  if L2_2 > L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.mono_tick
    L3_2 = L2_2
    L2_2 = L2_2.ClearTickCallback
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._refresh_avatar_hp
    L2_2(L3_2)
  end
end
L0_1._tick_hp = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_hp
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = A1_2 - 1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L3_2 = nil
    return L3_2
  end
  L3_2 = L2_2.UserObjectData
  return L3_2
end
L0_1._get_item_panel = L3_1
return L0_1
