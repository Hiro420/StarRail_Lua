local L0_1, L1_1, L2_1, L3_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.PlayerModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "FriendChatMessageItemPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
  A0_2._message_data = nil
  A0_2._player_brief_data = nil
  L1_2 = {}
  A0_2._bubble_panels = L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._message_data = A1_2
  L2_2 = A1_2.IsSenderPlayer
  A0_2._is_player = L2_2
  L2_2 = A0_2._is_player
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._refresh_view
    L2_2(L3_2)
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_ModuleManager
    L2_2 = L2_2.FriendModule
    L3_2 = L2_2
    L2_2 = L2_2.TryGetPlayerBriefData
    L4_2 = A0_2._message_data
    L4_2 = L4_2.SenderID
    L2_2 = L2_2(L3_2, L4_2)
    A0_2._player_brief_data = L2_2
    L2_2 = A0_2._player_brief_data
    if L2_2 ~= nil then
      L3_2 = A0_2
      L2_2 = A0_2._refresh_view
      L2_2(L3_2)
    else
      L2_2 = A0_2._binder
      L2_2 = L2_2.txt_name
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.GlobalVars
      L2_2 = L2_2.s_ModuleManager
      L2_2 = L2_2.FriendModule
      L3_2 = L2_2
      L2_2 = L2_2.GetPlayerBriefDisplayDataPromise
      L4_2 = A0_2._message_data
      L4_2 = L4_2.SenderID
      L2_2 = L2_2(L3_2, L4_2)
      L3_2 = L2_2
      L2_2 = L2_2.ThenLuaActionOneParam
      function L4_2(A0_3)
        local L1_3, L2_3, L3_3
        A0_2._player_brief_data = A0_3
        L1_3 = A0_2._binder
        L1_3 = L1_3.txt_name
        L2_3 = L1_3
        L1_3 = L1_3.SafeSetActive
        L3_3 = true
        L1_3(L2_3, L3_3)
        L1_3 = A0_2
        L2_3 = L1_3
        L1_3 = L1_3._refresh_view
        L1_3(L2_3)
      end
      L2_2(L3_2, L4_2)
    end
  end
end
L1_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_sender_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_content_view
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L1_2(L2_2)
end
L1_1._refresh_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_player
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_name
    L2_2 = L1_2
    L1_2 = L1_2.SetCustomizedText
    L3_2 = L0_1.PlayerData
    L3_2 = L3_2.NickName
    L1_2(L2_2, L3_2)
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.PlayerIconConfigExcelTable
    L1_2 = L1_2.GetData
    L2_2 = L0_1.PlayerData
    L2_2 = L2_2.HeadIconID
    L1_2 = L1_2(L2_2)
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_sender
    L5_2 = L1_2.ImagePath
    L2_2(L3_2, L4_2, L5_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_name
    L2_2 = L1_2
    L1_2 = L1_2.SetCustomizedText
    L3_2 = A0_2._player_brief_data
    L3_2 = L3_2.Name
    L1_2(L2_2, L3_2)
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.PlayerIconConfigExcelTable
    L1_2 = L1_2.GetData
    L2_2 = A0_2._player_brief_data
    L2_2 = L2_2.HeadIconID
    L1_2 = L1_2(L2_2)
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_sender
    L5_2 = L1_2.ImagePath
    L2_2(L3_2, L4_2, L5_2)
  end
end
L1_1._refresh_sender_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.PersonalizeModule
  L2_2 = A0_2._is_player
  if L2_2 then
    L2_2 = L1_2.ChatBubbleData
    L2_2 = L2_2.CurrentBubbleID
    if L2_2 then
      goto lbl_16
    end
  end
  L2_2 = A0_2._player_brief_data
  L2_2 = L2_2.BubbleID
  ::lbl_16::
  if L2_2 == 0 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.ChatBubbleData
    L2_2 = L3_2.DefaultBubbleID
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_bubble
  L4_2 = L3_2
  L3_2 = L3_2.safe_get_bubble_panel
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = L3_2
  L4_2 = L3_2.set_local_view
  L6_2 = A0_2._is_player
  L7_2 = L2_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._message_data
  L4_2 = L4_2.Type
  L5_2 = CS
  L5_2 = L5_2.IDPFDBDMHDO
  L5_2 = L5_2.ACOFKJLHEPN
  if L4_2 == L5_2 then
    L5_2 = L3_2
    L4_2 = L3_2.setup_emoji_view
    L6_2 = A0_2._message_data
    L6_2 = L6_2.ExtraID
    L4_2(L5_2, L6_2)
  else
    L5_2 = L3_2
    L4_2 = L3_2.setup_text_view
    L6_2 = A0_2._message_data
    L6_2 = L6_2.Content
    L4_2(L5_2, L6_2)
  end
end
L1_1._refresh_content_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._message_data
  L1_2 = L1_2.Type
  L2_2 = CS
  L2_2 = L2_2.IDPFDBDMHDO
  L2_2 = L2_2.ACOFKJLHEPN
  if L1_2 ~= L2_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2._message_data
  L1_2 = L1_2.ExtraID
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.EmojiUtils
  L2_2 = L2_2.IsEmojiHasGender
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.EmojiUtils
    L2_2 = L2_2.IsEmojiPlayerGender
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L2_2 = not L2_2
  end
  return L2_2
end
L1_1.is_achievement_emoji = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = nil
  L2_2 = A0_2._is_player
  if L2_2 then
    L2_2 = L0_1.PlayerData
    L1_2 = L2_2.UserID
  else
    L2_2 = A0_2._player_brief_data
    L1_2 = L2_2.UID
  end
  L2_2 = G
  L2_2 = L2_2.FriendUtils
  L2_2 = L2_2.show_friend_detail_info
  L3_2 = L1_2
  L2_2(L3_2)
end
L1_1._on_btn_root = L2_1
return L1_1
