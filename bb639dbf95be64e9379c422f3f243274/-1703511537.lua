local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GuideTalkPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 20
function L2_1(A0_2)
  local L1_2
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2
  A0_2._cur_content = A1_2
  A0_2._callback = A3_2
  A0_2._callback_self = A4_2
  A0_2._action_name = A2_2
  L8_2 = A0_2
  L7_2 = A0_2._setup_avatar_img
  L7_2(L8_2)
  L8_2 = A0_2
  L7_2 = A0_2._setup_text_content
  L9_2 = A6_2
  L7_2(L8_2, L9_2)
  L8_2 = A0_2
  L7_2 = A0_2._setup_node
  L9_2 = A5_2
  L7_2(L8_2, L9_2)
  L8_2 = A0_2
  L7_2 = A0_2.safe_set_active
  L9_2 = true
  L7_2(L8_2, L9_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_content
  return L1_2
end
L0_1.get_content_root = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_motion_cmpt
  L2_2 = L1_2
  L1_2 = L1_2.ImmediateFinishAllMotions
  L1_2(L2_2)
end
L0_1.finish_all_motions = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_avatar
  L4_2 = A0_2._cur_content
  L4_2 = L4_2.AvatarHeadIcon
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_avatar_img = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_next_mark
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_next_mark
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_node = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 then
    L2_2 = L1_1
    L2_2 = 1 / L2_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_motion_cmpt
    L4_2 = L3_2
    L3_2 = L3_2.ShowTextIDWithMotion
    L5_2 = L2_2
    function L6_2()
      local L0_3, L1_3
      L0_3 = A0_2._callback
      if L0_3 ~= nil then
        L0_3 = A0_2._callback
        L1_3 = A0_2._callback_self
        L0_3(L1_3)
      end
    end
    L7_2 = A0_2._cur_content
    L7_2 = L7_2.TalkDataText
    L3_2(L4_2, L5_2, L6_2, L7_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_content
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = A0_2._cur_content
    L4_2 = L4_2.TalkDataText
    L2_2(L3_2, L4_2)
  end
  L2_2 = G
  L2_2 = L2_2.StrExt
  L2_2 = L2_2.IsNullOrEmpty
  L3_2 = A0_2._action_name
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.key_map_info
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.key_map_info
    L3_2 = L2_2
    L2_2 = L2_2.SetInControlTipKey
    L4_2 = A0_2._action_name
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.key_map_info
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_text_content = L2_1
return L0_1
