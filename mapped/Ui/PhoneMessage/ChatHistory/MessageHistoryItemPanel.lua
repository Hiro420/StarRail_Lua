local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Logic.LogicUtils.MessageUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.PlayerModule
L1_1 = "PhoneMessageItemFadeIn"
L2_1 = "PhoneMessageItemEnteringLoop"
L3_1 = 1.8
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "MessageHistoryItemPanel"
L6_1 = G
L6_1 = L6_1.BasePanel
L4_1 = L4_1(L5_1, L6_1)
function L5_1(A0_2)
  local L1_2
  A0_2._group_id = nil
  A0_2._is_writing = false
  L1_2 = {}
  A0_2._bubble_panels = L1_2
end
L4_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PhoneMessageSkipWriting
  L4_2 = A0_2._skip_writing
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._finish_writing
  L4_2 = L3_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._write_timer = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_bubble
  L2_2 = L1_2
  L1_2 = L1_2.register_click_callback
  L3_2 = A0_2._on_btn_click
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L4_1._on_load = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._written_callback = A1_2
  A0_2._written_handler = A2_2
end
L4_1.register_written_callback = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._get_moving_callback = A1_2
  A0_2._get_moving_handler = A2_2
end
L4_1.set_moving_getter = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._visible_func = A1_2
  A0_2._visible_handler = A2_2
end
L4_1.set_visible_function = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2
  L6_2 = A0_2._write_timer
  L7_2 = L6_2
  L6_2 = L6_2.reset
  L6_2(L7_2)
  L6_2 = A0_2._write_timer
  L7_2 = L6_2
  L6_2 = L6_2.stop
  L6_2(L7_2)
  A0_2._index = A2_2
  A0_2._group_id = A4_2
  A0_2._item_data = A1_2
  L6_2 = A1_2.Row
  L6_2 = L6_2.ItemType
  A0_2._type = L6_2
  A0_2._is_new = A5_2
  L7_2 = A0_2
  L6_2 = A0_2._setup_sender_view
  L6_2(L7_2)
  L7_2 = A0_2
  L6_2 = A0_2._setup_content_view
  L6_2(L7_2)
  L6_2 = A0_2._is_new
  if L6_2 then
    L6_2 = A0_2._binder
    L6_2 = L6_2.anim_root
    L7_2 = L6_2
    L6_2 = L6_2.Play
    L8_2 = L1_1
    L6_2(L7_2, L8_2)
  else
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.UIAnimationUtils
    L6_2 = L6_2.PlayFromEnd
    L7_2 = A0_2._binder
    L7_2 = L7_2.anim_root
    L8_2 = L1_1
    L6_2(L7_2, L8_2)
    L7_2 = A0_2
    L6_2 = A0_2._get_bubble_panel
    L6_2 = L6_2(L7_2)
    L7_2 = L6_2
    L6_2 = L6_2.reset_fade_in
    L6_2(L7_2)
  end
  if A3_2 then
    L7_2 = A0_2
    L6_2 = A0_2._start_writing
    L6_2(L7_2)
  else
    L7_2 = A0_2
    L6_2 = A0_2._do_show_content
    L6_2(L7_2)
  end
end
L4_1.setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._is_hero
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.MessageContactData
    L1_2 = L1_2.GetShownContactRow
    L2_2 = A0_2._item_data
    L2_2 = L2_2.SenderContactID
    L1_2 = L1_2(L2_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_name
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L1_2.Name
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_sender
    L5_2 = L1_2.IconPath
    L2_2(L3_2, L4_2, L5_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_name
    L2_2 = L1_2
    L1_2 = L1_2.SetCustomizedText
    L3_2 = L0_1.PlayerData
    L3_2 = L3_2.NickName
    L1_2(L2_2, L3_2)
    L1_2 = L0_1.PlayerData
    L1_2 = L1_2.HeroAvatarInfoData
    L2_2 = L1_2
    L1_2 = L1_2.GetCurrentHeroBasicType
    L1_2 = L1_2(L2_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.AvatarExcelTable
    L2_2 = L2_2.GetData
    L3_2 = #L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 ~= nil then
      L4_2 = A0_2
      L3_2 = A0_2._load_sprite_to
      L5_2 = A0_2._binder
      L5_2 = L5_2.img_sender
      L6_2 = L2_2.AvatarSideIconPath
      L3_2(L4_2, L5_2, L6_2)
    end
  end
end
L4_1._setup_sender_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._item_data
  L1_2 = L1_2.IsSentByHero
  if not L1_2 then
    L1_2 = A0_2._item_data
    L1_2 = L1_2.SenderContactID
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.ConstValueClientExcelTable
    L2_2 = L2_2.GetData
    L3_2 = "PhoneMessage_ContactsID_Hero"
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2.Value
    L2_2 = L2_2.UintValue
    L1_2 = L1_2 == L2_2
  end
  return L1_2
end
L4_1._is_hero = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._get_bubble_id
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._get_bubble_panel
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.set_local_view
  L5_2 = A0_2._item_data
  L5_2 = L5_2.IsSentByPlayer
  L6_2 = L1_2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = L2_2
  L3_2 = L2_2.setup_btn_control
  L5_2 = A0_2._type
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.MessageItemType
  L6_2 = L6_2.Raid
  L5_2 = L5_2 == L6_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._type
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.MessageItemType
  L4_2 = L4_2.Text
  if L3_2 == L4_2 then
    L3_2 = G
    L3_2 = L3_2.TextmapStatic
    L3_2 = L3_2.GetText
    L4_2 = A0_2._item_data
    L4_2 = L4_2.Row
    L4_2 = L4_2.MainText
    L3_2 = L3_2(L4_2)
    L5_2 = L2_2
    L4_2 = L2_2.setup_text_view
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  else
    L3_2 = A0_2._type
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.MessageItemType
    L4_2 = L4_2.Image
    if L3_2 == L4_2 then
      L3_2 = A0_2._item_data
      L3_2 = L3_2.Row
      L3_2 = L3_2.ItemContentID
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.GameCore
      L4_2 = L4_2.MessageImageExcelTable
      L4_2 = L4_2.GetData
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      L5_2 = L4_2.ImagePath
      A0_2._image_path = L5_2
      L6_2 = L2_2
      L5_2 = L2_2.setup_image_view
      L7_2 = A0_2._image_path
      L5_2(L6_2, L7_2)
    else
      L3_2 = A0_2._type
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.GameCore
      L4_2 = L4_2.MessageItemType
      L4_2 = L4_2.Video
      if L3_2 == L4_2 then
        L3_2 = A0_2._item_data
        L3_2 = L3_2.Row
        L3_2 = L3_2.ItemContentID
        L4_2 = CS
        L4_2 = L4_2.RPG
        L4_2 = L4_2.GameCore
        L4_2 = L4_2.MessageVideoExcelTable
        L4_2 = L4_2.GetData
        L5_2 = L3_2
        L4_2 = L4_2(L5_2)
        L5_2 = L4_2.ImagePath
        A0_2._image_path = L5_2
        L6_2 = L2_2
        L5_2 = L2_2.setup_video_view
        L7_2 = A0_2._item_data
        L5_2(L6_2, L7_2)
      else
        L3_2 = A0_2._type
        L4_2 = CS
        L4_2 = L4_2.RPG
        L4_2 = L4_2.GameCore
        L4_2 = L4_2.MessageItemType
        L4_2 = L4_2.Sticker
        if L3_2 == L4_2 then
          L3_2 = A0_2._item_data
          L3_2 = L3_2.Row
          L3_2 = L3_2.ItemContentID
          L5_2 = A0_2
          L4_2 = A0_2._is_hero
          L4_2 = L4_2(L5_2)
          if L4_2 then
            L5_2 = L2_2
            L4_2 = L2_2.setup_emoji_view_in_hero_gender
            L6_2 = L3_2
            L4_2(L5_2, L6_2)
          else
            L5_2 = L2_2
            L4_2 = L2_2.setup_emoji_view
            L6_2 = L3_2
            L4_2(L5_2, L6_2)
          end
        else
          L3_2 = A0_2._type
          L4_2 = CS
          L4_2 = L4_2.RPG
          L4_2 = L4_2.GameCore
          L4_2 = L4_2.MessageItemType
          L4_2 = L4_2.Raid
          if L3_2 == L4_2 then
            L4_2 = L2_2
            L3_2 = L2_2.setup_raid_view
            L5_2 = A0_2._item_data
            L5_2 = L5_2.ID
            L3_2(L4_2, L5_2)
            L3_2 = CS
            L3_2 = L3_2.RPG
            L3_2 = L3_2.Client
            L3_2 = L3_2.GlobalVars
            L3_2 = L3_2.s_ModuleManager
            L3_2 = L3_2.MessageModule
            L4_2 = L3_2
            L3_2 = L3_2.FinishItemInHistory
            L5_2 = A0_2._item_data
            L5_2 = L5_2.ID
            L3_2(L4_2, L5_2)
          else
            L3_2 = A0_2._type
            L4_2 = CS
            L4_2 = L4_2.RPG
            L4_2 = L4_2.GameCore
            L4_2 = L4_2.MessageItemType
            L4_2 = L4_2.Link
            if L3_2 == L4_2 then
              L4_2 = L2_2
              L3_2 = L2_2.setup_link_view
              L5_2 = A0_2._item_data
              L3_2(L4_2, L5_2)
            end
          end
        end
      end
    end
  end
end
L4_1._setup_content_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._get_bubble_id
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_bubble
  L3_2 = L2_2
  L2_2 = L2_2.safe_get_bubble_panel
  L4_2 = L1_2
  return L2_2(L3_2, L4_2)
end
L4_1._get_bubble_panel = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.PersonalizeModule
  L3_2 = A0_2
  L2_2 = A0_2._is_hero
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = L1_2.ChatBubbleData
    L2_2 = L2_2.CurrentBubbleID
    if L2_2 then
      goto lbl_20
    end
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ChatBubbleData
  L2_2 = L2_2.DefaultBubbleID
  ::lbl_20::
  return L2_2
end
L4_1._get_bubble_id = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_content
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_writing
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_writing
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.PhoneMessageWritingStarted
  L1_2(L2_2)
  L1_2 = A0_2._write_timer
  L2_2 = L1_2
  L1_2 = L1_2.set_interval
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MessageUtils
  L3_2 = L3_2.GetWritingTime
  L4_2 = A0_2._item_data
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._write_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._write_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
  A0_2._is_writing = true
end
L4_1._start_writing = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_writing
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._finish_writing
  L1_2(L2_2)
end
L4_1._skip_writing = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._is_writing = false
  L1_2 = A0_2._write_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._write_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_writing
  L2_2 = L1_2
  L1_2 = L1_2.Stop
  L1_2(L2_2)
  L1_2 = A0_2._type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MessageItemType
  L2_2 = L2_2.Text
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._get_bubble_panel
    L1_2 = L1_2(L2_2)
    L2_2 = L1_2
    L1_2 = L1_2.play_fade_in
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._do_show_content
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._written_callback
  L3_2 = A0_2._written_handler
  L4_2 = A0_2._group_id
  L5_2 = A0_2._index
  L6_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L4_1._finish_writing = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._try_trigger_audio
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_content
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_writing
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_new
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.PhoneMessageItemWritten
    L3_2 = A0_2._item_data
    L1_2(L2_2, L3_2)
  end
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.layout_txt
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
L4_1._do_show_content = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_new
  if L1_2 then
    L1_2 = A0_2._item_data
    L1_2 = L1_2.Row
    L1_2 = L1_2.Sender
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.SenderType
    L2_2 = L2_2.NPC
    if L1_2 == L2_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.GlobalVars
      L1_2 = L1_2.s_AudioManager
      L2_2 = L1_2
      L1_2 = L1_2.PostEvent
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.GlobalVars
      L3_2 = L3_2.s_AudioManager
      L3_2 = L3_2.AudioConfig
      L3_2 = L3_2.EventPhoneMessageItemReceived
      L1_2(L2_2, L3_2)
    else
      L1_2 = A0_2._item_data
      L1_2 = L1_2.Row
      L1_2 = L1_2.Sender
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.GameCore
      L2_2 = L2_2.SenderType
      L2_2 = L2_2.Player
      if L1_2 ~= L2_2 then
        L1_2 = A0_2._item_data
        L1_2 = L1_2.Row
        L1_2 = L1_2.Sender
        L2_2 = CS
        L2_2 = L2_2.RPG
        L2_2 = L2_2.GameCore
        L2_2 = L2_2.SenderType
        L2_2 = L2_2.PlayerAuto
        if L1_2 ~= L2_2 then
          goto lbl_63
        end
      end
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.GlobalVars
      L1_2 = L1_2.s_AudioManager
      L2_2 = L1_2
      L1_2 = L1_2.PostEvent
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.GlobalVars
      L3_2 = L3_2.s_AudioManager
      L3_2 = L3_2.AudioConfig
      L3_2 = L3_2.EventPhoneMessageItemSent
      L1_2(L2_2, L3_2)
    end
  end
  ::lbl_63::
end
L4_1._try_trigger_audio = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.is_scale_zero
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = A0_2._type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MessageItemType
  L2_2 = L2_2.Image
  if L1_2 == L2_2 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.PhoneMessage.MessageImageDialog"
    L3_2 = A0_2._image_path
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._type
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.MessageItemType
    L2_2 = L2_2.Video
    if L1_2 == L2_2 then
      L1_2 = A0_2._item_data
      L1_2 = L1_2.ID
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.GlobalVars
      L2_2 = L2_2.s_ModuleManager
      L2_2 = L2_2.MessageModule
      L3_2 = L2_2
      L2_2 = L2_2.IsItemFinished
      L4_2 = L1_2
      L2_2 = L2_2(L3_2, L4_2)
      if L2_2 then
        L3_2 = G
        L3_2 = L3_2.Utils
        L3_2 = L3_2.invoke_callback
        L4_2 = A0_2._get_moving_callback
        L5_2 = A0_2._get_moving_handler
        L3_2 = L3_2(L4_2, L5_2)
        if L3_2 then
          return
        end
      end
      L3_2 = G
      L3_2 = L3_2.MessageUtils
      L3_2 = L3_2.go_video
      L4_2 = L1_2
      L3_2 = L3_2(L4_2)
      L4_2 = L3_2.LuaTable
      L5_2 = L4_2
      L4_2 = L4_2.set_exit_callback
      function L6_2()
        local L0_3, L1_3, L2_3
        L0_3 = L2_2
        if not L0_3 then
          L0_3 = CS
          L0_3 = L0_3.RPG
          L0_3 = L0_3.Client
          L0_3 = L0_3.CoroutineUtils
          L0_3 = L0_3.InvokeAfterFrames
          L1_3 = 5
          function L2_3()
            local L0_4, L1_4, L2_4
            L0_4 = A0_2._binder
            if L0_4 == nil then
              return
            end
            L0_4 = CS
            L0_4 = L0_4.RPG
            L0_4 = L0_4.Client
            L0_4 = L0_4.GlobalVars
            L0_4 = L0_4.s_ModuleManager
            L0_4 = L0_4.MessageModule
            L1_4 = L0_4
            L0_4 = L0_4.FinishItemInHistory
            L2_4 = L1_2
            L0_4(L1_4, L2_4)
          end
          L0_3(L1_3, L2_3)
        end
      end
      L4_2(L5_2, L6_2)
    else
      L1_2 = A0_2._type
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.GameCore
      L2_2 = L2_2.MessageItemType
      L2_2 = L2_2.Raid
      if L1_2 == L2_2 then
        L2_2 = A0_2
        L1_2 = A0_2._on_btn_raid
        L1_2(L2_2)
      else
        L1_2 = A0_2._type
        L2_2 = CS
        L2_2 = L2_2.RPG
        L2_2 = L2_2.GameCore
        L2_2 = L2_2.MessageItemType
        L2_2 = L2_2.Link
        if L1_2 == L2_2 then
          L1_2 = CS
          L1_2 = L1_2.RPG
          L1_2 = L1_2.Client
          L1_2 = L1_2.GlobalVars
          L1_2 = L1_2.s_ModuleManager
          L1_2 = L1_2.MessageModule
          L2_2 = L1_2
          L1_2 = L1_2.GoLink
          L3_2 = A0_2._item_data
          L3_2 = L3_2.ID
          L1_2(L2_2, L3_2)
        end
      end
    end
  end
end
L4_1._on_btn_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.invoke_callback
    L2_2 = A0_2._visible_func
    L3_2 = A0_2._visible_handler
    L4_2 = A0_2._index
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    if not L1_2 then
      return
    end
  end
  L1_2 = G
  L1_2 = L1_2.MessageUtils
  L1_2 = L1_2.go_raid
  L2_2 = A0_2._item_data
  L2_2 = L2_2.ID
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
end
L4_1._on_btn_raid = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_bubble
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L4_1.get_first_selected_object = L5_1
return L4_1
