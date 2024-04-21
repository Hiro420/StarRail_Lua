local L0_1, L1_1, L2_1, L3_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ChatModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ChatEmojiSelectGroupPanel"
L3_1 = G
L3_1 = L3_1.TabItem
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._is_mark = false
  A0_2._is_all = false
  A0_2._id = 0
  A0_2._show_reddot = A3_2
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._is_mark = true
  A0_2._is_all = false
  A0_2._id = 0
end
L1_1.setup_mark_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._id = A1_2
  A0_2._is_mark = false
  A0_2._is_all = false
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.EmojiGroupExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._row = L2_2
end
L1_1.setup_group_view = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._is_all = true
  A0_2._id = 0
  A0_2._is_mark = false
end
L1_1.setup_all_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_selected
  L5_2 = A0_2
  L4_2 = A0_2._get_icon_path
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_unselected
  L5_2 = A0_2
  L4_2 = A0_2._get_icon_path
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._is_mark
  if not L1_2 then
    L1_2 = A0_2._show_reddot
    if L1_2 then
      L1_2 = G
      L1_2 = L1_2.RedDotModule
      L1_2 = L1_2.Instance
      L2_2 = L1_2
      L1_2 = L1_2.bind_reddot
      L3_2 = "ChatEmojiGroupNew"
      L4_2 = A0_2._id
      L5_2 = A0_2
      L6_2 = A0_2._binder
      L6_2 = L6_2.reddot
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    end
  end
end
L1_1._on_added = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_mark
  if L1_2 then
    L1_2 = "SpriteOutput/UI/Friend/Chat/TabEmojiCollectionColor.png"
    return L1_2
  else
    L1_2 = A0_2._is_all
    if L1_2 then
      L1_2 = "SpriteOutput/UI/Friend/Chat/TabAllIconColor.png"
      return L1_2
    else
      L1_2 = A0_2._row
      L1_2 = L1_2.ImgPath
      return L1_2
    end
  end
end
L1_1._get_icon_path = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_mark
  if L1_2 then
    L1_2 = "UIText_Chat_Emoji_Collection_Title"
    return L1_2
  else
    L1_2 = A0_2._is_all
    if L1_2 then
      L1_2 = "UIText_Chat_Emoji_Collection_Number"
      return L1_2
    else
      L1_2 = A0_2._row
      L1_2 = L1_2.GroupName
      return L1_2
    end
  end
end
L1_1.get_name = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_mark
  if L1_2 then
    L1_2 = nil
    return L1_2
  else
    L1_2 = A0_2._is_all
    if L1_2 then
      L1_2 = nil
      return L1_2
    else
      L1_2 = A0_2._id
      return L1_2
    end
  end
end
L1_1.get_group_id = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_mark
  if not L1_2 then
    L1_2 = A0_2._show_reddot
    if L1_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.Prefs
      L1_2 = L1_2.User
      L1_2 = L1_2.ChatEmojiGroupSeenIDs
      L3_2 = L1_2
      L2_2 = L1_2.Contains
      L4_2 = A0_2._id
      L2_2 = L2_2(L3_2, L4_2)
      if not L2_2 then
        L3_2 = L1_2
        L2_2 = L1_2.Add
        L4_2 = A0_2._id
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L1_1._on_select = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_mark
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.create_lua_table_from_cs_list
    L2_2 = L0_1.MarkedEmojiIDs
    return L1_2(L2_2)
  else
    L1_2 = A0_2._is_all
    if L1_2 then
      L1_2 = G
      L1_2 = L1_2.Utils
      L1_2 = L1_2.create_lua_table_from_cs_list
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.EmojiUtils
      L2_2 = L2_2.GetAllChatEmojiIDs
      L2_2, L3_2 = L2_2()
      return L1_2(L2_2, L3_2)
    else
      L1_2 = G
      L1_2 = L1_2.Utils
      L1_2 = L1_2.create_lua_table_from_cs_list
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.EmojiUtils
      L2_2 = L2_2.GetEmojiIDs
      L3_2 = A0_2._id
      L2_2, L3_2 = L2_2(L3_2)
      return L1_2(L2_2, L3_2)
    end
  end
end
L1_1.get_emoji_ids = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_mark
  return L1_2
end
L1_1.is_mark = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1._on_unselect = L2_1
return L1_1
