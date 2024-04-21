local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.MusicAlbum.MusicAlbumItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MusicAlbumItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MusicAlbumModule
function L2_1(A0_2, A1_2, A2_2)
  A0_2._click_self = A1_2
  A0_2._click_func = A2_2
end
L0_1.register_click_callback = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._index = A1_2
  A0_2._music_album_row = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_bg
  L6_2 = A2_2.GroupIcon
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.BackGroundMusicConfigExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L1_1.CurUseMusicID
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_using
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A2_2.ID
  L7_2 = L3_2.GroupID
  L6_2 = L6_2 == L7_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_new
  L4_2(L5_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_checked = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_new
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_new = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetUnLockMusicConfigList
  L3_2 = A0_2._music_album_row
  L3_2 = L3_2.ID
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = {}
  L3_2 = 0
  L4_2 = L1_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L2_2
    L9_2 = L1_2[L6_2]
    L7_2(L8_2, L9_2)
  end
  L3_2 = #L2_2
  if 0 < L3_2 then
    L3_2 = true
    L4_2 = pairs
    L5_2 = L2_2
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2, L8_2 in L4_2, L5_2, L6_2 do
      L9_2 = A0_2._owner
      L10_2 = L9_2
      L9_2 = L9_2._is_played_music_id
      L11_2 = L8_2.ID
      L9_2 = L9_2(L10_2, L11_2)
      if not L9_2 then
        L3_2 = false
        break
      end
    end
    L5_2 = A0_2
    L4_2 = A0_2.setup_new
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
end
L0_1._setup_new = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_btn_root_click
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._click_func
  if L1_2 then
    L1_2 = A0_2._click_func
    L2_2 = A0_2._click_self
    L3_2 = A0_2._index
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_root_click = L2_1
return L0_1
