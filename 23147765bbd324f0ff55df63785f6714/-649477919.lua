local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PrefabDisplayPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._ui_prefab_config = nil
  A0_2._ui_prefab_panel = nil
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_ui_prefab
  L4_2 = A0_2._ui_prefab_play_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayUIPrefabInTalk
  L4_2 = L0_1._on_play_ui_prefab_in_talk
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  A0_2._ui_prefab_config = A1_2
  L2_2 = A0_2._ui_prefab_panel
  if L2_2 == nil then
    L2_2 = G
    L2_2 = L2_2.new
    L3_2 = G
    L3_2 = L3_2.BasePanel
    L2_2 = L2_2(L3_2)
    A0_2._ui_prefab_panel = L2_2
  end
end
L0_1._on_play_ui_prefab_in_talk = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._ui_prefab_config
  L1_2 = L1_2.UITextNodes
  if L1_2 ~= nil then
    L1_2 = 0
    L2_2 = A0_2._ui_prefab_config
    L2_2 = L2_2.UITextNodes
    L2_2 = L2_2.Length
    L2_2 = L2_2 - 1
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = A0_2._ui_prefab_config
      L5_2 = L5_2.UITextNodes
      L5_2 = L5_2[L4_2]
      L6_2 = G
      L6_2 = L6_2.StrExt
      L6_2 = L6_2.IsNullOrEmpty
      L7_2 = L5_2.SDFPath
      L6_2 = L6_2(L7_2)
      if not L6_2 then
        L6_2 = G
        L6_2 = L6_2.ComponentExtensions
        L6_2 = L6_2.SafeGetCmpt
        L7_2 = typeof
        L8_2 = CS
        L8_2 = L8_2.RPG
        L8_2 = L8_2.Client
        L8_2 = L8_2.LocalizedTextSDF
        L7_2 = L7_2(L8_2)
        L8_2 = A0_2._ui_prefab_panel
        L8_2 = L8_2._ViewTransform
        L9_2 = L5_2.SDFPath
        L6_2 = L6_2(L7_2, L8_2, L9_2)
        L7_2 = G
        L7_2 = L7_2.TextExtensions
        L7_2 = L7_2.SafeSetTextID
        L8_2 = L6_2
        L9_2 = L5_2.content
        L7_2(L8_2, L9_2)
      end
      L6_2 = G
      L6_2 = L6_2.StrExt
      L6_2 = L6_2.IsNullOrEmpty
      L7_2 = L5_2.TextPath
      L6_2 = L6_2(L7_2)
      if not L6_2 then
        L6_2 = G
        L6_2 = L6_2.ComponentExtensions
        L6_2 = L6_2.SafeGetCmpt
        L7_2 = typeof
        L8_2 = CS
        L8_2 = L8_2.UnityEngine
        L8_2 = L8_2.UI
        L8_2 = L8_2.Text
        L7_2 = L7_2(L8_2)
        L8_2 = A0_2._ui_prefab_panel
        L8_2 = L8_2._ViewTransform
        L9_2 = L5_2.TextPath
        L6_2 = L6_2(L7_2, L8_2, L9_2)
        L7_2 = G
        L7_2 = L7_2.TextExtensions
        L7_2 = L7_2.SafeSetTextID
        L8_2 = L6_2
        L9_2 = L5_2.content
        L7_2(L8_2, L9_2)
      end
    end
  end
end
L0_1._refresh_ui_prefab = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  A0_2._image_node_list = L1_2
  L1_2 = A0_2._ui_prefab_config
  L1_2 = L1_2.UIImageNodes
  if L1_2 ~= nil then
    L1_2 = 0
    L2_2 = A0_2._ui_prefab_config
    L2_2 = L2_2.UIImageNodes
    L2_2 = L2_2.Length
    L2_2 = L2_2 - 1
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = A0_2._ui_prefab_config
      L5_2 = L5_2.UIImageNodes
      L5_2 = L5_2[L4_2]
      L6_2 = G
      L6_2 = L6_2.ComponentExtensions
      L6_2 = L6_2.SafeGetCmpt
      L7_2 = typeof
      L8_2 = CS
      L8_2 = L8_2.UnityEngine
      L8_2 = L8_2.UI
      L8_2 = L8_2.Image
      L7_2 = L7_2(L8_2)
      L8_2 = A0_2._ui_prefab_panel
      L8_2 = L8_2._ViewTransform
      L9_2 = L5_2.Path
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      L8_2 = A0_2
      L7_2 = A0_2.async_load_sprite_to
      L9_2 = L6_2
      L10_2 = L5_2.AssetPath
      L7_2(L8_2, L9_2, L10_2)
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._image_node_list
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_ui_prefab
  L1_2(L2_2)
end
L0_1._load_ui_prefab_finish = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._image_node_list
  if L1_2 ~= nil then
    L1_2 = pairs
    L2_2 = A0_2._image_node_list
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L7_2 = A0_2
      L6_2 = A0_2.async_release_sprite_in
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
    end
  end
  A0_2._image_node_list = nil
  L1_2 = A0_2._ui_prefab_panel
  L2_2 = L1_2
  L1_2 = L1_2.dispose
  L1_2(L2_2)
  A0_2._ui_prefab_panel = nil
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.TalkUIPrefabFinish
  L1_2(L2_2)
end
L0_1._ui_prefab_play_finish = L1_1
