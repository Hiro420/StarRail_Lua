local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ShareItemPanel"
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
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ShareSource
  L1_2 = L1_2.Unknown
  A0_2._source = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  L5_2 = A1_2.ShareChannelRow
  A0_2._channel_row = L5_2
  L5_2 = A1_2.Photo
  A0_2._photo = L5_2
  L5_2 = A1_2.Source
  if not L5_2 then
    L5_2 = A0_2._source
  end
  A0_2._source = L5_2
  L6_2 = A0_2
  L5_2 = A0_2._async_load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.img_channel
  L8_2 = A0_2._channel_row
  L8_2 = L8_2.IconPath
  L5_2(L6_2, L7_2, L8_2)
  A0_2._callback = A2_2
  A0_2._callbackSelf = A4_2
  L6_2 = A0_2
  L5_2 = A0_2._bind_btn_callback
  L7_2 = A0_2._binder
  L7_2 = L7_2.btn_root
  L8_2 = A0_2._on_btn_root
  L5_2(L6_2, L7_2, L8_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._callback
  if L1_2 then
    L1_2 = A0_2._callback
    L2_2 = A0_2._callbackSelf
    L1_2(L2_2)
  end
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.SharePhoto
  L3_2 = A0_2._channel_row
  L3_2 = L3_2.ShareChannelID
  L4_2 = A0_2._photo
  L5_2 = A0_2._source
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_btn_root = L2_1
return L0_1
