local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.ChatBubble.ChatBubbleImagePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ChatBubble.ChatBubbleImagePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ChatBubble.ChatBubbleEmojiPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ChatBubble.ChatBubbleVideoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ChatBubble.ChatBubbleVideoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhoneMessage.ChatHistory.MessageHistoryRaidPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhoneMessage.ChatHistory.MessageHistoryRaidPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhoneMessage.ChatHistory.MessageItemLinkPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhoneMessage.ChatHistory.MessageItemLinkPanelBinder"
L0_1(L1_1)
L0_1 = "PhoneMessageItemContentFadeIn"
L1_1 = {}
L1_1.Image = 1
L1_1.Sticker = 2
L1_1.Raid = 3
L1_1.Video = 4
L1_1.Link = 5
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "ChatBubbleItemPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._extra_panels = L1_2
end
L2_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn
  L4_2 = A0_2._on_btn_click
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._click_callback = A1_2
  A0_2._click_handler = A2_2
end
L2_1.register_click_callback = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_bg
  L3_2 = L3_2.transform
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Vector3
  if A1_2 then
    L5_2 = 1
    if L5_2 then
      goto lbl_13
    end
  end
  L5_2 = -1
  ::lbl_13::
  L6_2 = 1
  L7_2 = 1
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2.localScale = L4_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.ChatBubbleData
  L3_2 = L3_2.DefaultBubbleID
  if A2_2 == L3_2 and A1_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_bg
    L4_2 = G
    L4_2 = L4_2.UIColorUtils
    L4_2 = L4_2.GetColor
    L5_2 = "#d9c49b"
    L4_2 = L4_2(L5_2)
    L3_2.color = L4_2
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_bg
    L4_2 = G
    L4_2 = L4_2.UIColorUtils
    L4_2 = L4_2.GetColor
    L5_2 = "#F6F6F6"
    L4_2 = L4_2(L5_2)
    L3_2.color = L4_2
  end
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.LayoutRebuilder
  L3_2 = L3_2.ForceRebuildLayoutImmediate
  L4_2 = A0_2._binder
  L4_2 = L4_2.root
  L4_2 = L4_2.transform
  L3_2(L4_2)
end
L2_1.set_local_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_bg
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_txt
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_extra
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.LayoutRebuilder
  L2_2 = L2_2.ForceRebuildLayoutImmediate
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L3_2 = L3_2.transform
  L2_2(L3_2)
end
L2_1.setup_text_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_extra_view
  L4_2 = L1_1.Image
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L2_1.setup_image_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.EmojiConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._setup_extra_view
  L5_2 = L1_1.Sticker
  L6_2 = L2_2.EmojiPath
  L3_2(L4_2, L5_2, L6_2)
end
L2_1.setup_emoji_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.EmojiUtils
  L2_2 = L2_2.GetEmojiIDByGender
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2.setup_emoji_view
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L2_1.setup_emoji_view_in_hero_gender = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_extra_view
  L4_2 = L1_1.Video
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L2_1.setup_video_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_extra_view
  L4_2 = L1_1.Raid
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L2_1.setup_raid_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_extra_view
  L4_2 = L1_1.Link
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L2_1.setup_link_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_bg
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_txt
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_extra
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = pairs
  L4_2 = A0_2._extra_panels
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.safe_set_active
    L10_2 = L6_2 == A1_2
    L8_2(L9_2, L10_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._safe_get_extra_panel
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = L3_2
  L4_2 = L3_2.setup_view
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.LayoutRebuilder
  L4_2 = L4_2.ForceRebuildLayoutImmediate
  L5_2 = A0_2._binder
  L5_2 = L5_2.root
  L5_2 = L5_2.transform
  L4_2(L5_2)
end
L2_1._setup_extra_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._extra_panels
  L2_2 = L2_2[A1_2]
  if L2_2 ~= nil then
    L2_2 = A0_2._extra_panels
    L2_2 = L2_2[A1_2]
    return L2_2
  end
  L2_2 = A0_2._extra_panels
  L4_2 = A0_2
  L3_2 = A0_2._create_extra_panel
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L2_2[A1_2] = L3_2
  L2_2 = A0_2._extra_panels
  L2_2 = L2_2[A1_2]
  return L2_2
end
L2_1._safe_get_extra_panel = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = nil
  L3_2 = L1_1.Image
  if A1_2 == L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.create_panel
    L5_2 = G
    L5_2 = L5_2.ChatBubbleImagePanel
    L6_2 = G
    L6_2 = L6_2.ChatBubbleImagePanelBinder
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2 = L3_2
  else
    L3_2 = L1_1.Sticker
    if A1_2 == L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2.create_panel
      L5_2 = G
      L5_2 = L5_2.ChatBubbleImagePanel
      L6_2 = G
      L6_2 = L6_2.ChatBubbleEmojiPanelBinder
      L3_2 = L3_2(L4_2, L5_2, L6_2)
      L2_2 = L3_2
    else
      L3_2 = L1_1.Video
      if A1_2 == L3_2 then
        L4_2 = A0_2
        L3_2 = A0_2.create_panel
        L5_2 = G
        L5_2 = L5_2.ChatBubbleVideoPanel
        L6_2 = G
        L6_2 = L6_2.ChatBubbleVideoPanelBinder
        L3_2 = L3_2(L4_2, L5_2, L6_2)
        L2_2 = L3_2
      else
        L3_2 = L1_1.Raid
        if A1_2 == L3_2 then
          L4_2 = A0_2
          L3_2 = A0_2.create_panel
          L5_2 = G
          L5_2 = L5_2.MessageHistoryRaidPanel
          L6_2 = G
          L6_2 = L6_2.MessageHistoryRaidPanelBinder
          L3_2 = L3_2(L4_2, L5_2, L6_2)
          L2_2 = L3_2
        else
          L3_2 = L1_1.Link
          if A1_2 == L3_2 then
            L4_2 = A0_2
            L3_2 = A0_2.create_panel
            L5_2 = G
            L5_2 = L5_2.MessageItemLinkPanel
            L6_2 = G
            L6_2 = L6_2.MessageItemLinkPanelBinder
            L3_2 = L3_2(L4_2, L5_2, L6_2)
            L2_2 = L3_2
          end
        end
      end
    end
  end
  if L2_2 ~= nil then
    L4_2 = L2_2
    L3_2 = L2_2.sync_loadto
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_extra
    L3_2(L4_2, L5_2)
  end
  L3_2 = L2_2._binder
  L3_2 = L3_2.root
  L3_2 = L3_2.name
  L4_2 = L2_2._binder
  L4_2 = L4_2.root
  L5_2 = string
  L5_2 = L5_2.sub
  L6_2 = L3_2
  L7_2 = 1
  L8_2 = string
  L8_2 = L8_2.len
  L9_2 = L3_2
  L8_2 = L8_2(L9_2)
  L9_2 = string
  L9_2 = L9_2.len
  L10_2 = "(Clone)"
  L9_2 = L9_2(L10_2)
  L8_2 = L8_2 - L9_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2.name = L5_2
  L5_2 = A0_2
  L4_2 = A0_2.safe_set_active
  L6_2 = true
  L4_2(L5_2, L6_2)
  return L2_2
end
L2_1._create_extra_panel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._click_callback
  L3_2 = A0_2._click_handler
  L1_2(L2_2, L3_2)
end
L2_1._on_btn_click = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_control
  L2_2.ActionEnabled = A1_2
end
L2_1.setup_btn_control = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim
  L3_2 = L0_1
  L1_2(L2_2, L3_2)
end
L2_1.play_fade_in = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayToEnd
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim
  L3_2 = L0_1
  L1_2(L2_2, L3_2)
end
L2_1.reset_fade_in = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn
  L1_2 = L1_2.gameObject
  return L1_2
end
L2_1.get_first_selected_object = L3_1
return L2_1
