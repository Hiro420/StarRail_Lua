local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SharePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_AccountManager
L1_1 = L1_1.ShareSDK
function L2_1(A0_2)
  local L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._photo = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_data
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_channel_items
  L2_2(L3_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  A0_2._source = A1_2
end
L0_1.set_report_source = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_share_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = A0_2._channel_data_table
  L3_2 = #L3_2
  L3_2 = L3_2 ~= 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.channel_item_list
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._channel_data_table
  L4_2 = A0_2._callback
  L5_2 = A0_2._callback_self
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._setup_channel_items = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  A0_2._channel_data_table = L1_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetShareChannelList
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = {}
    L7_2.ShareChannelRow = L6_2
    L8_2 = A0_2._photo
    L7_2.Photo = L8_2
    L8_2 = A0_2._source
    L7_2.Source = L8_2
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._channel_data_table
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
end
L0_1._setup_data = L2_1
return L0_1
