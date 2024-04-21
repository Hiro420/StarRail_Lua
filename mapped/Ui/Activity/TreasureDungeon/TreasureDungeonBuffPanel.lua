local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Activity.TreasureDungeon.TreasureDungeonBuffTipsDialog"
L0_1(L1_1)
L0_1 = "TDSkillBtn_Success"
L1_1 = "TDSkillBtn_Fail"
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "TreasureDungeonBuffPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_buff
  L4_2 = A0_2._on_btn_buff
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._success_timer
    if L0_3 ~= nil then
      L0_3 = A0_2._success_timer
      L1_3 = L0_3
      L0_3 = L0_3.reset
      L0_3(L1_3)
      L0_3 = A0_2._success_timer
      L1_3 = L0_3
      L0_3 = L0_3.stop
      L0_3(L1_3)
    end
    L0_3 = A0_2._binder
    if L0_3 ~= nil then
      L0_3 = CS
      L0_3 = L0_3.RPG
      L0_3 = L0_3.Client
      L0_3 = L0_3.UIAnimationUtils
      L0_3 = L0_3.PlayToBegin
      L1_3 = A0_2._binder
      L1_3 = L1_3.anim
      L2_3 = L0_1
      L0_3(L1_3, L2_3)
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._refresh_buff
      L0_3(L1_3)
    end
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.anim
  L5_2 = L4_2
  L4_2 = L4_2.GetClip
  L6_2 = L0_1
  L4_2 = L4_2(L5_2, L6_2)
  L4_2 = L4_2.length
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._success_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._fail_timer
    if L0_3 ~= nil then
      L0_3 = A0_2._fail_timer
      L1_3 = L0_3
      L0_3 = L0_3.reset
      L0_3(L1_3)
      L0_3 = A0_2._fail_timer
      L1_3 = L0_3
      L0_3 = L0_3.stop
      L0_3(L1_3)
    end
    L0_3 = A0_2._binder
    if L0_3 ~= nil then
      L0_3 = CS
      L0_3 = L0_3.RPG
      L0_3 = L0_3.Client
      L0_3 = L0_3.UIAnimationUtils
      L0_3 = L0_3.PlayToBegin
      L1_3 = A0_2._binder
      L1_3 = L1_3.anim
      L2_3 = L0_1
      L0_3(L1_3, L2_3)
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._refresh_buff
      L0_3(L1_3)
    end
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.anim
  L5_2 = L4_2
  L4_2 = L4_2.GetClip
  L6_2 = L1_1
  L4_2 = L4_2(L5_2, L6_2)
  L4_2 = L4_2.length
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._fail_timer = L1_2
end
L2_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_buff
  L2_2(L3_2)
end
L2_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._data
  L1_2 = L1_2.CurrentFloorBuff
  L1_2 = L1_2 ~= nil
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_empty_buff
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_icon_buff
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_buff
    L5_2 = A0_2._data
    L5_2 = L5_2.CurrentFloorBuff
    L5_2 = L5_2.IconPath
    L2_2(L3_2, L4_2, L5_2)
  end
end
L2_1._refresh_buff = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_empty_buff
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_icon_buff
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim
  L3_2 = L0_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._success_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
  L1_2 = A0_2._success_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
end
L2_1.on_battle_buff_success = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_empty_buff
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_icon_buff
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._fail_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
  L1_2 = A0_2._fail_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
end
L2_1.on_battle_buff_fail = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_btn_buff
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_buff_bg
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L2_1.enable_buff = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_btn_buff
  L1_2 = L1_2.transform
  L1_2 = L1_2.position
  return L1_2
end
L2_1.get_position = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2._owner
  L2_2 = L2_2.__name
  L3_2 = A0_2.__name
  L4_2 = "TreasureDungeonBuffItem"
  L5_2 = A0_2._owner
  L5_2 = L5_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._data
  L1_2 = L1_2.CurrentFloorBuff
  if L1_2 == nil then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "UIText_TreasureDungeon_Stage_NoBuff"
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = G
  L2_2 = L2_2.TreasureDungeonBuffDetailDialog
  L3_2 = A0_2._data
  L3_2 = L3_2.CurrentFloorBuff
  L1_2(L2_2, L3_2)
end
L2_1._on_btn_buff = L3_1
return L2_1
