local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Gacha.GachaPoolInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GachaPoolInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.TimeUtils
function L2_1(A0_2)
  local L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_pool_info
  L4_2 = A0_2._on_pool_info_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.remain_time
  L2_2 = L1_2
  L1_2 = L1_2.Clear
  L1_2(L2_2)
end
L0_1._on_dispose = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._gacha_pool_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_pool_info
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_count_down
  L2_2(L3_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._time_over_callback = A1_2
  A0_2._time_over_callback_self = A2_2
end
L0_1.set_time_over_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._gacha_pool_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_pool_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._gacha_pool_data
  L3_2 = L3_2.Row
  L3_2 = L3_2.PoolDesc
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_pool_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._gacha_pool_data
  L3_2 = L3_2.Row
  L3_2 = L3_2.PoolName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_pool_sub_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._gacha_pool_data
  L3_2 = L3_2.Row
  L3_2 = L3_2.TypeTitle
  L1_2(L2_2, L3_2)
end
L0_1._setup_pool_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._gacha_pool_data
  if L1_2 ~= nil then
    L1_2 = A0_2._gacha_pool_data
    L2_2 = L1_2
    L1_2 = L1_2.HaveTimeLimit
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_remain_time
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.remain_time
      L2_2 = L1_2
      L1_2 = L1_2.SetTargetTimeByTimeStamp
      L3_2 = A0_2._gacha_pool_data
      L3_2 = L3_2.EndTimeStamp
      L4_2 = A0_2._time_over_callback
      L5_2 = A0_2._time_over_callback_self
      L6_2 = 2
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    else
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_remain_time
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = false
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._setup_count_down = L2_1
return L0_1
