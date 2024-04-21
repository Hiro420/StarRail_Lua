local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Heliobus.Common.HeliobusCommonSNSUserIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Common.HeliobusCommonSNSUserIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.SNSMain.HeliobusSNSMainPostImagePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.SNSMain.HeliobusSNSMainPostImagePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.HeliobusUtilities.HeliobusSNSUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusSNSMainPostItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.HeliobusModule
L1_1 = L1_1.HeliobusSNSData
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.MissionModule
L3_1 = {}
L3_1.Small = 1
L3_1.Medium = 2
L3_1.Large = 3
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_click_btn
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_like
  L4_2 = A0_2._on_click_btn_like
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_in_btn_like_tip
  L1_2.IsShowTip = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._pad_selected_callback
    if L0_3 then
      L0_3 = A0_2._pad_selected_callback_self
      if L0_3 then
        L0_3 = A0_2._pad_selected_callback
        L1_3 = A0_2._pad_selected_callback_self
        L2_3 = A0_2._index
        L0_3(L1_3, L2_3)
      end
    end
    L0_3 = A0_2._binder
    L0_3 = L0_3.mono_in_btn_like
    L0_3.ActionEnabled = true
    L0_3 = A0_2._binder
    L0_3 = L0_3.mono_in_btn_like_tip
    L0_3.IsShowTip = true
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2._binder
    L0_3 = L0_3.mono_in_btn_like
    L0_3.ActionEnabled = false
    L0_3 = A0_2._binder
    L0_3 = L0_3.mono_in_btn_like_tip
    L0_3.IsShowTip = false
  end
  L1_2.onDeselectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HeliobusSNSMainPostImagePanel
  L4_2 = G
  L4_2 = L4_2.HeliobusSNSMainPostImagePanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._img_panel = L1_2
  L1_2 = A0_2._img_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_img_post
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HeliobusCommonSNSUserIconPanel
  L4_2 = G
  L4_2 = L4_2.HeliobusCommonSNSUserIconPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._user_icon_panel = L1_2
  L1_2 = A0_2._user_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_user_icon
  L1_2(L2_2, L3_2)
  A0_2._is_first = true
end
L0_1._on_load = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_callback = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._like_callback = A1_2
  A0_2._like_callback_self = A2_2
end
L0_1.register_like_callback = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._pad_selected_callback = A1_2
  A0_2._pad_selected_callback_self = A2_2
end
L0_1.register_pad_selected_callback = L4_1
function L4_1(A0_2, A1_2)
  A0_2._is_count_change = A1_2
end
L0_1.set_is_count_change = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._post = A1_2
  A0_2._index = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_basic_info
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_post
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_like_and_comment
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_last_comment
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_status
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._show_new_hint
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._bind_reddot
  L3_2(L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.TutorialSupportModule
  L4_2 = L3_2
  L3_2 = L3_2.SetNodeDynamicKey
  L5_2 = A0_2._binder
  L5_2 = L5_2.root
  L5_2 = L5_2.gameObject
  L6_2 = A0_2._post
  L6_2 = L6_2.ID
  L3_2(L4_2, L5_2, L6_2)
  A0_2._is_first = false
end
L0_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_post_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._post
  L3_2 = L3_2.Title
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.HeliobusUserExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._post
  L2_2 = L2_2.UserID
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogErrorFormat
    L3_2 = "HeliobusSNSMainPostItem : \228\184\141\229\173\152\229\156\168UserId\228\184\186("
    L4_2 = A0_2._post
    L4_2 = L4_2.UserID
    L5_2 = ")\231\154\132SNS\231\148\168\230\136\183"
    L3_2 = L3_2 .. L4_2 .. L5_2
    L2_2(L3_2)
    return
  end
  L2_2 = A0_2._user_icon_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._post
  L4_2 = L4_2.UserID
  L2_2(L3_2, L4_2)
end
L0_1._setup_basic_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_post_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._post
  L3_2 = L3_2.Content
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_img_post
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._post
  L3_2 = L3_2.ImgID
  L3_2 = L3_2 ~= 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._post
  L1_2 = L1_2.ImgID
  if L1_2 ~= 0 then
    L1_2 = A0_2._img_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._post
    L4_2 = L3_1.Large
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._img_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_change_img_show
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_post = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_like_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = G
  L3_2 = L3_2.HeliobusSNSUtils
  L3_2 = L3_2.get_abbreviation_num_text
  L4_2 = A0_2._post
  L4_2 = L4_2.Likes
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator_like
  L2_2 = L1_2
  L1_2 = L1_2.SetBool
  L3_2 = "NeedTransition"
  L4_2 = A0_2._is_click_like
  if not L4_2 then
    L4_2 = false
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_like
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = A0_2._post
  L3_2 = L3_2.IsLike
  L1_2(L2_2, L3_2)
  A0_2._is_click_like = false
  L1_2 = A0_2._post
  L2_2 = L1_2
  L1_2 = L1_2.GetCommentCount
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_comment_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._post
  L2_2 = L2_2.ReadCommentCount
  L2_2 = L1_2 - L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_comment_add_num
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = 0 < L2_2
  L3_2(L4_2, L5_2)
  if L2_2 ~= 0 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_comment_add_num
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = "(+"
    L6_2 = L2_2
    L7_2 = ")"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_comment_can_reply
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._post
  L6_2 = L5_2
  L5_2 = L5_2.CheckIsCanReplyComment
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1._setup_like_and_comment = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2._is_show_last_comment
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_last_comment
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.create_lua_table_from_cs_dict
    L3_2 = A0_2._post
    L3_2 = L3_2.CommentDataDict
    L2_2 = L2_2(L3_2)
    L3_2 = G
    L3_2 = L3_2.HeliobusSNSUtils
    L3_2 = L3_2.sort_comment_table
    L4_2 = L2_2
    L5_2 = false
    L6_2 = A0_2._post
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = L2_2[1]
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.HeliobusUserExcelTable
    L4_2 = L4_2.GetData
    L5_2 = L3_2.UserID
    L4_2 = L4_2(L5_2)
    if L4_2 == nil then
      L5_2 = G
      L5_2 = L5_2.SuperDebug
      L5_2 = L5_2.LogErrorFormat
      L6_2 = "HeliobusSNSMainPostItem : \228\184\141\229\173\152\229\156\168UserId\228\184\186("
      L7_2 = L3_2.UserID
      L8_2 = ")\231\154\132SNS\231\148\168\230\136\183"
      L6_2 = L6_2 .. L7_2 .. L8_2
      L5_2(L6_2)
      return
    end
    L6_2 = A0_2
    L5_2 = A0_2._async_load_sprite_to
    L7_2 = A0_2._binder
    L7_2 = L7_2.img_last_comment_icon
    L8_2 = L4_2.UserIconPath
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.txt_last_comment_desc
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = L3_2.Content
    L5_2(L6_2, L7_2)
  end
end
L0_1._setup_last_comment = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._post
  L1_2 = L1_2.CommentDataDict
  L1_2 = L1_2.Count
  if L1_2 <= 0 then
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2._post
  L1_2 = L1_2.IsMyPost
  if not L1_2 then
    L1_2 = A0_2._post
    L1_2 = L1_2.PostType
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.HeliobusPostType
    L2_2 = L2_2.Tattle
    if L1_2 ~= L2_2 then
      L1_2 = L2_1
      L2_2 = L1_2
      L1_2 = L1_2.TryGetMainMissionData
      L3_2 = A0_2._post
      L3_2 = L3_2.Row
      L3_2 = L3_2.PostTypeParameter
      L1_2 = L1_2(L2_2, L3_2)
      if L1_2 == nil then
        L2_2 = G
        L2_2 = L2_2.SuperDebug
        L2_2 = L2_2.LogErrorFormat
        L3_2 = "HeliobusSNSMainPostItem _is_show_last_comment() : \228\184\141\229\173\152\229\156\168\228\187\187\229\138\161Id\228\184\186("
        L4_2 = A0_2._post
        L4_2 = L4_2.Row
        L4_2 = L4_2.PostTypeParameter
        L5_2 = ")\231\154\132Post\228\184\187\228\187\187\229\138\161"
        L3_2 = L3_2 .. L4_2 .. L5_2
        L2_2(L3_2)
        return
      end
      L2_2 = L1_2.IsFinish
      return L2_2
    end
  end
  L1_2 = true
  return L1_2
end
L0_1._is_show_last_comment = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._post
  L1_2 = L1_2.PostType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.HeliobusPostType
  L2_2 = L2_2.MissionAnchor
  if L1_2 == L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.HeliobusPostType
    L1_2 = L2_2.MissionMain
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.HeliobusPostTypeConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_finish
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_status_text_panel
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._post
  L3_2 = L3_2.IsMyPost
  if not L3_2 then
    L3_2 = A0_2._post
    L3_2 = L3_2.PostType
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.HeliobusPostType
    L4_2 = L4_2.Tattle
    if L3_2 ~= L4_2 then
      goto lbl_91
    end
  end
  L3_2 = A0_2._post
  L3_2 = L3_2.IsMyPost
  if L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.anim_status
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2._async_load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_status_icon
    L6_2 = L2_2.PostTypeIconPath
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.anim_status
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._post
    L3_2 = L3_2.IsRead
    if L3_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.anim_status
      L4_2 = L3_2
      L3_2 = L3_2.SetTrigger
      L5_2 = "Seen"
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.txt_status
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetTextID
      L5_2 = "UIText_Heliobus_PostStatus_Read"
      L3_2(L4_2, L5_2)
    else
      L3_2 = A0_2._binder
      L3_2 = L3_2.anim_status
      L4_2 = L3_2
      L3_2 = L3_2.SetTrigger
      L5_2 = "Discussions"
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.txt_status
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetTextID
      L5_2 = "UIText_Heliobus_PostStatus_UnRead"
      L3_2(L4_2, L5_2)
    end
  end
  do return end
  ::lbl_91::
  L3_2 = A0_2._binder
  L3_2 = L3_2.anim_status
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = L2_1
  L4_2 = L3_2
  L3_2 = L3_2.TryGetMainMissionData
  L5_2 = A0_2._post
  L5_2 = L5_2.Row
  L5_2 = L5_2.PostTypeParameter
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 == nil then
    L4_2 = G
    L4_2 = L4_2.SuperDebug
    L4_2 = L4_2.LogErrorFormat
    L5_2 = "HeliobusSNSMainPostItem _setup_status() : \228\184\141\229\173\152\229\156\168\228\187\187\229\138\161Id\228\184\186("
    L6_2 = A0_2._post
    L6_2 = L6_2.Row
    L6_2 = L6_2.PostTypeParameter
    L7_2 = ")\231\154\132Post\228\184\187\228\187\187\229\138\161"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L4_2(L5_2)
    return
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.MainMissionTypeConfigExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L3_2.Row
  L5_2 = L5_2.Type
  L4_2 = L4_2(L5_2)
  L6_2 = A0_2
  L5_2 = A0_2._async_load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.img_status_icon
  L8_2 = L4_2.TypeIcon
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_finish
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = L3_2.IsFinish
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_status_text_panel
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = L3_2.IsFinish
  L7_2 = not L7_2
  L5_2(L6_2, L7_2)
  L5_2 = L3_2.IsFinish
  if L5_2 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.txt_status
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = "UIText_Heliobus_PostStatus_Compele"
    L5_2(L6_2, L7_2)
    L6_2 = A0_2
    L5_2 = A0_2._setup_mission_anim_status
    L7_2 = L3_2
    L5_2(L6_2, L7_2)
    return
  end
  L5_2 = nil
  L6_2 = L1_1.PostMissionInProgress
  if L6_2 ~= nil then
    L6_2 = L1_1.PostMissionInProgress
    L6_2 = L6_2.ID
    L7_2 = A0_2._post
    L7_2 = L7_2.Row
    L7_2 = L7_2.PostTypeParameter
    if L6_2 ~= L7_2 then
      L5_2 = "UIText_Heliobus_PostStatus_NotAvailable"
      L7_2 = A0_2
      L6_2 = A0_2._check_is_main_mission_type
      L8_2 = L3_2.Row
      L8_2 = L8_2.Type
      L6_2 = L6_2(L7_2, L8_2)
      if L6_2 then
        L6_2 = A0_2._binder
        L6_2 = L6_2.anim_status
        L7_2 = L6_2
        L6_2 = L6_2.SetTrigger
        L8_2 = "MainUnavailable"
        L6_2(L7_2, L8_2)
      else
        L6_2 = A0_2._binder
        L6_2 = L6_2.anim_status
        L7_2 = L6_2
        L6_2 = L6_2.SetTrigger
        L8_2 = "SubUnavailable"
        L6_2(L7_2, L8_2)
      end
    else
      L5_2 = "UIText_Heliobus_PostStatus_InProgress"
      L7_2 = A0_2
      L6_2 = A0_2._setup_mission_anim_status
      L8_2 = L3_2
      L6_2(L7_2, L8_2)
    end
  else
    L5_2 = L2_2.PostTypeName
    L7_2 = A0_2
    L6_2 = A0_2._setup_mission_anim_status
    L8_2 = L3_2
    L6_2(L7_2, L8_2)
  end
  L6_2 = A0_2._binder
  L6_2 = L6_2.txt_status
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetTextID
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
end
L0_1._setup_status = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._check_is_main_mission_type
  L4_2 = A1_2.Row
  L4_2 = L4_2.Type
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_status
    L3_2 = L2_2
    L2_2 = L2_2.SetTrigger
    L4_2 = "MainMission"
    L2_2(L3_2, L4_2)
  else
    L2_2 = A1_2.Row
    L2_2 = L2_2.Type
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.MainMissionType
    L3_2 = L3_2.Branch
    if L2_2 == L3_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.anim_status
      L3_2 = L2_2
      L2_2 = L2_2.SetTrigger
      L4_2 = "SubMission"
      L2_2(L3_2, L4_2)
    else
      L2_2 = A0_2._post
      L2_2 = L2_2.PostType
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.HeliobusPostType
      L3_2 = L3_2.MissionEvent
      if L2_2 == L3_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.anim_status
        L3_2 = L2_2
        L2_2 = L2_2.SetTrigger
        L4_2 = "DailyMission"
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L0_1._setup_mission_anim_status = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MainMissionType
  L2_2 = L2_2.Gap
  L2_2 = A1_2 == L2_2
  return L2_2
end
L0_1._check_is_main_mission_type = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_first
  if L1_2 then
    L1_2 = A0_2._post
    L1_2 = L1_2.IsRead
    if not L1_2 then
      L1_2 = G
      L1_2 = L1_2.HeliobusSNSUtils
      L1_2 = L1_2.is_mission_type_post
      L2_2 = A0_2._post
      L2_2 = L2_2.PostType
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L2_2 = A0_2
        L1_2 = A0_2._check_is_unavailable_take
        L1_2 = L1_2(L2_2)
        if not L1_2 then
          goto lbl_21
        end
      end
    end
  end
  do return end
  ::lbl_21::
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.TryGetMainMissionData
  L3_2 = A0_2._post
  L3_2 = L3_2.Row
  L3_2 = L3_2.PostTypeParameter
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2.IsStart
  if not L2_2 then
    L2_2 = L1_2.IsFinish
    if not L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.anim_status
      L3_2 = L2_2
      L2_2 = L2_2.SetTrigger
      L4_2 = "HintShow"
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._show_new_hint = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1.PostMissionInProgress
  L1_2 = L1_2 ~= nil
  return L1_2
end
L0_1._check_is_unavailable_take = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.bind_reddot
    L3_2 = "HeliobusCanReplySNSMissionPost"
    L4_2 = A0_2._post
    L4_2 = L4_2.ID
    L5_2 = A0_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_reddot
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1._bind_reddot = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._callback
  if L1_2 ~= nil then
    L1_2 = A0_2._callback_self
    if L1_2 ~= nil then
      L1_2 = A0_2._callback
      L2_2 = A0_2._callback_self
      L3_2 = A0_2._post
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_click_btn = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._is_click_like = true
  L1_2 = A0_2._like_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._like_callback_self
    if L1_2 ~= nil then
      L1_2 = A0_2._like_callback
      L2_2 = A0_2._like_callback_self
      L3_2 = A0_2._post
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_click_btn_like = L4_1
return L0_1
