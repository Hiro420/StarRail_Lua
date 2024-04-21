local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "VisitorRegisterDetailPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.TrainModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reward
  L4_2 = A0_2._on_reward_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "VisitorRegisterCompensationReward"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_reddot_reward
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  if A1_2 == nil then
    return
  end
  A0_2.avatar_data = A1_2
  A0_2.train_visitor_info = A2_2
  L3_2 = A0_2.train_visitor_info
  L3_2 = L3_2.Status
  L4_2 = CS
  L4_2 = L4_2.EDOGNIMHMAI
  L4_2 = L4_2.EILKCNAHHAB
  L3_2 = L3_2 == L4_2
  A0_2.is_on = L3_2
  L3_2 = A0_2.train_visitor_info
  L3_2 = L3_2.Status
  L4_2 = CS
  L4_2 = L4_2.EDOGNIMHMAI
  L4_2 = L4_2.OJADEJNDPLM
  L3_2 = L3_2 == L4_2
  A0_2.is_off = L3_2
  L4_2 = A0_2
  L3_2 = A0_2.refresh_basic_info
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.refresh_bottom_panel
  L3_2(L4_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ItemExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2.avatar_data
  L2_2 = L2_2.ID
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_avatar_icon
  L5_2 = L1_2.ItemAvatarIconPath
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_avatar1_icon
  L5_2 = L1_2.ItemAvatarIconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_name
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = A0_2.avatar_data
  L4_2 = L4_2.AvatarName
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_group
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2.avatar_data
  L4_2 = L4_2.CampRow
  L4_2 = L4_2.Name
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.is_on
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_desc
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = A0_2.train_visitor_info
    L4_2 = L4_2.Row
    L4_2 = L4_2.MessageCome
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2.is_off
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.txt_desc
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = A0_2.train_visitor_info
      L4_2 = L4_2.Row
      L4_2 = L4_2.MessageLeave
      L2_2(L3_2, L4_2)
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_leave
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2.is_off
  L2_2(L3_2, L4_2)
end
L0_1.refresh_basic_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_get_on_talk
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.is_on
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_get_off_compensation
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.is_off
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_btn_reward
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L4_2 = A0_2
  L3_2 = A0_2.can_get_reward
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.refresh_bottom_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.is_off
  if L1_2 then
    L1_2 = A0_2.train_visitor_info
    L2_2 = L1_2
    L1_2 = L1_2.HasUnclaimedCompensation
    L1_2 = L1_2(L2_2)
  end
  return L1_2
end
L0_1.can_get_reward = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._callback
  if L1_2 ~= nil then
    L1_2 = A0_2._callback
    L2_2 = A0_2._callback_listener
    L3_2 = A0_2._callback_param
    L1_2(L2_2, L3_2)
  end
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.TakeTrainVisitorReward
  L3_2 = A0_2.train_visitor_info
  L3_2 = L3_2.VisitorID
  L1_2(L2_2, L3_2)
end
L0_1._on_reward_btn_click = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._callback = A1_2
  A0_2._callback_listener = A2_2
  A0_2._callback_param = A3_2
end
L0_1.register_call_back = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.refresh_bottom_panel
  L1_2(L2_2)
end
L0_1._on_return_to_top = L2_1
return L0_1
