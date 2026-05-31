{ ... }:
{
  # Doesn't work I don't know why...
  # TODO: Fix this when (if) reusing mango one day

  # wayland.windowManager.mango = {
  # enable = false;
  #
  # extraConfig = ''
  # # More option see https://github.com/DreamMaoMao/mango/wiki/
  # border_radius=0
  #
  # # Animation Configuration(support type:zoom,slide)
  # # tag_animation_direction: 1-horizontal,0-vertical
  # animations=1
  # layer_animations=1
  # animation_type_open=slide
  # animation_type_close=slide
  # animation_fade_in=1
  # animation_fade_out=1
  # tag_animation_direction=1
  # zoom_initial_ratio=0.4
  # zoom_end_ratio=0.8
  # fadein_begin_opacity=0.5
  # fadeout_begin_opacity=0.8
  # animation_duration_move=300
  # animation_duration_open=250
  # animation_duration_tag=300
  # animation_duration_close=200
  # animation_duration_focus=0
  # animation_curve_open=0.46,1.0,0.29,1
  # animation_curve_move=0.46,1.0,0.29,1
  # animation_curve_tag=0.46,1.0,0.29,1
  # animation_curve_close=0.08,0.92,0,1
  # animation_curve_focus=0.46,1.0,0.29,1
  # animation_curve_opafadeout=0.5,0.5,0.5,0.5
  # animation_curve_opafadein=0.46,1.0,0.29,1
  #
  # # Scroller Layout Setting
  # scroller_structs=20
  # scroller_default_proportion=0.8
  # scroller_focus_center=0
  # scroller_prefer_center=0
  # edge_scroller_pointer_focus=1
  # scroller_default_proportion_single=1.0
  # scroller_proportion_preset=0.5,0.8,1.0
  #
  # # Master-Stack Layout Setting
  # new_is_master=1
  # default_mfact=0.55
  # default_nmaster=1
  # smartgaps=0
  # center_master_overspread=1
  #
  # # Dwindle Layout Setting
  # dwindle_smart_split=0
  # dwindle_drop_simple_split=1
  # dwindle_manual_split=0
  # dwindle_hsplit=1
  # dwindle_vsplit=1
  # dwindle_preserve_split=0
  #
  # # Overview Setting
  # hotarea_size=10
  # enable_hotarea=1
  # ov_tab_mode=0
  # overviewgappi=5
  # overviewgappo=30
  #
  # # Misc
  # no_border_when_single=0
  # axis_bind_apply_timeout=100
  # focus_on_activate=1
  # idleinhibit_ignore_visible=0
  # sloppyfocus=1
  # warpcursor=1
  # focus_cross_monitor=0
  # focus_cross_tag=0
  # enable_floating_snap=0
  # snap_distance=30
  # cursor_size=24
  # drag_tile_to_tile=1
  # drag_tile_small=1
  #
  # # keyboard
  # repeat_rate=25
  # repeat_delay=600
  # numlockon=0
  # xkb_rules_layout=us
  # xkb_rules_options=caps:escape,compose:ralt
  #
  # # Trackpad
  # # need relogin to make it apply
  # disable_trackpad=0
  # tap_to_click=1
  # tap_and_drag=1
  # drag_lock=1
  # trackpad_natural_scrolling=1
  # disable_while_typing=0
  # left_handed=0
  # middle_button_emulation=1
  # swipe_min_threshold=1
  #
  # # mouse
  # # need relogin to make it apply
  # mouse_natural_scrolling=0
  #
  # # Appearance
  # gappih=5
  # gappiv=5
  # gappoh=10
  # gappov=10
  # scratchpad_width_ratio=0.8
  # scratchpad_height_ratio=0.9
  # borderpx=2
  # rootcolor=0x201b14ff
  # bordercolor=0x444444ff
  # dropcolor=0x8FBA7C55
  # splitcolor=0xEB441EFF
  # focuscolor=0xc9b890ff
  # maximizescreencolor=0x89aa61ff
  # urgentcolor=0xad401fff
  # scratchpadcolor=0x516c93ff
  # globalcolor=0xb153a7ff
  # overlaycolor=0x14a57cff
  #
  # # layout support:
  # # tile,scroller,grid,deck,monocle,center_tile,vertical_tile,vertical_scroller
  # tagrule=id:1,layout_name:tile
  # tagrule=id:2,layout_name:tile
  # tagrule=id:3,layout_name:tile
  # tagrule=id:4,layout_name:tile
  # tagrule=id:5,layout_name:tile
  # tagrule=id:6,layout_name:tile
  # tagrule=id:7,layout_name:tile
  # tagrule=id:8,layout_name:tile
  # tagrule=id:9,layout_name:tile
  #
  # # Key Bindings
  # # key name refer to `xev` or `wev` command output,
  # # mod keys name: super,ctrl,alt,shift,none
  #
  # # reload config
  # bind=SUPER+SHIFT,r,reload_config
  #
  # # exit
  # # bind=SUPER+SHIFT,m,quit
  # bind=SUPER,q,killclient,
  #
  # # switch window focus
  # bind=SUPER,Tab,focusstack,next
  # bind=SUPER,H,focusdir,left
  # bind=SUPER,L,focusdir,right
  # bind=SUPER,K,focusdir,up
  # bind=SUPER,J,focusdir,down
  #
  # # swap window
  # bind=SUPER+SHIFT,K,exchange_client,up
  # bind=SUPER+SHIFT,J,exchange_client,down
  # bind=SUPER+SHIFT,H,exchange_client,left
  # bind=SUPER+SHIFT,L,exchange_client,right
  #
  # # switch window status
  # bind=SUPER,g,toggleglobal,
  # bind=SUPER,O,toggleoverview,
  # bind=SUPER,P,togglefloating,
  # bind=SUPER,f,togglemaximizescreen,
  # bind=SUPER+SHIFT,f,togglefullscreen,
  # bind=ALT+SHIFT,f,togglefakefullscreen,
  # # bind=SUPER,i,minimized,
  # # bind=SUPER,o,toggleoverlay,
  # # bind=SUPER+SHIFT,I,restore_minimized
  # # bind=ALT,z,toggle_scratchpad
  #
  # # scroller layout
  # bind=ALT,e,set_proportion,1.0
  # bind=ALT,x,switch_proportion_preset,
  # bind=alt+super+ctrl,Left,scroller_stack,left
  # bind=alt+super+ctrl,Right,scroller_stack,right
  # bind=alt+super+ctrl,Up,scroller_stack,up
  # bind=alt+super+ctrl,Down,scroller_stack,down
  #
  # #dwindle layout(manual split mode)
  # # bind=alt+shift,Return,dwindle_toggle_split_direction
  #
  # # switch layout
  # # bind=CTRL+ALT,n,switch_layout
  # bind=SHIFT+ALT,T,setlayout,tile
  # bind=SHIFT+ALT,S,setlayout,scroller
  # bind=SHIFT+ALT,C,setlayout,center_tile
  #
  # # tag switch
  # # bind=SUPER,Left,viewtoleft,0
  # # bind=CTRL,Left,viewtoleft_have_client,0
  # # bind=SUPER,Right,viewtoright,0
  # # bind=CTRL,Right,viewtoright_have_client,0
  # # bind=CTRL+SUPER,Left,tagtoleft,0
  # # bind=CTRL+SUPER,Right,tagtoright,0
  #
  # bind=SUPER,1,view,1,0
  # bind=SUPER,2,view,2,0
  # bind=SUPER,3,view,3,0
  # bind=SUPER,4,view,4,0
  # bind=SUPER,5,view,5,0
  # bind=SUPER,6,view,6,0
  # bind=SUPER,7,view,7,0
  # bind=SUPER,8,view,8,0
  # bind=SUPER,9,view,9,0
  #
  # # tag: move client to the tag and focus it
  # bind=SUPER+SHIFT,1,tag,1,0
  # bind=SUPER+SHIFT,2,tag,2,0
  # bind=SUPER+SHIFT,3,tag,3,0
  # bind=SUPER+SHIFT,4,tag,4,0
  # bind=SUPER+SHIFT,5,tag,5,0
  # bind=SUPER+SHIFT,6,tag,6,0
  # bind=SUPER+SHIFT,7,tag,7,0
  # bind=SUPER+SHIFT,8,tag,8,0
  # bind=SUPER+SHIFT,9,tag,9,0
  #
  # # Move silently
  # bind=SUPER+CTRL,1,tagsilent,1,0
  # bind=SUPER+CTRL,2,tagsilent,2,0
  # bind=SUPER+CTRL,3,tagsilent,3,0
  # bind=SUPER+CTRL,4,tagsilent,4,0
  # bind=SUPER+CTRL,5,tagsilent,5,0
  # bind=SUPER+CTRL,6,tagsilent,6,0
  # bind=SUPER+CTRL,7,tagsilent,7,0
  # bind=SUPER+CTRL,8,tagsilent,8,0
  # bind=SUPER+CTRL,9,tagsilent,9,0
  #
  # # monitor switch
  # bind=SUPER+alt,L,focusmon,left
  # bind=SUPER+alt,H,focusmon,right
  # # bind=SUPER+Alt,Left,tagmon,left
  # # bind=SUPER+Alt,Right,tagmon,right
  #
  # # gaps
  # # bind=ALT+SHIFT,X,incgaps,1
  # # bind=ALT+SHIFT,Z,incgaps,-1
  # # bind=ALT+SHIFT,R,togglegaps
  #
  # # movewin
  # # bind=CTRL+ALT,Up,movewin,+0,-50
  # # bind=CTRL+ALT,Down,movewin,+0,+50
  # # bind=CTRL+ALT,Left,movewin,-50,+0
  # # bind=CTRL+ALT,Right,movewin,+50,+0
  #
  # # resizewin
  # bind=SUPER+CTRL,K,resizewin,+0,-50
  # bind=SUPER+CTRL,L,resizewin,+0,+50
  # bind=SUPER+CTRL,H,resizewin,-50,+0
  # bind=SUPER+CTRL,L,resizewin,+50,+0
  #
  # # Apps
  # bind=SUPER,B,spawn,zen-beta
  # bind=SUPER,space,spawn,foot --app-id=otter-launcher otter-launcher
  # bind=SUPER,T,spawn,foot
  #
  # # Applets
  # bind=SUPER,E,spawn,foot --app-id=tui-app yazi
  # bind=SUPER+CTRL,W,spawn,foot --app-id=tui-app impala
  # bind=SUPER+CTRL,B,spawn,foot --app-id=tui-app bluetui
  # bind=SUPER+CTRL,S,spawn,foot --app-id=tui-app htop
  # bind=SUPER,V,spawn,foot --app-id=tui-app clipse
  #
  # # Notifications
  # bind=SUPER,N,spawn,swaync-client --toggle-panel -sw
  # bind=SUPER+CTRL,N,spawn,swaync-client --toggle-dnd -sw
  # bind=SUPER+SHIFT,N,spawn,swaync-client --close-all
  #
  # # Brightness
  # bind=NONE,XF86MonBrightnessUp,spawn,brightness-osd +10
  # bind=SUPER,XF86MonBrightnessUp,spawn,brightness-osd +1
  # bind=NONE,XF86MonBrightnessDown,spawn,brightness-osd -10
  # bind=SUPER,XF86MonBrightnessDown,spawn,brightness-osd -1
  #
  # # Volume
  # bind=NONE,XF86AudioRaiseVolume,spawn,volume-osd +5
  # bind=SUPER,XF86AudioRaiseVolume,spawn,volume-osd +1
  # bind=NONE,XF86AudioLowerVolume,spawn,volume-osd -5
  # bind=SUPER,XF86AudioLowerVolume,spawn,volume-osd -1
  # bind=NONE,XF86AudioMute,spawn,volume-osd mute
  #
  # # Mouse Button Bindings
  # # btn_left and btn_right can't bind none mod key
  # mousebind=SUPER,btn_left,moveresize,curmove
  # mousebind=SUPER,btn_right,moveresize,curresize
  #
  #
  # # Axis Bindings
  # axisbind=SUPER,UP,viewtoleft_have_client
  # axisbind=SUPER,DOWN,viewtoright_have_client
  #
  #
  # # layer rule
  # windowrule=isfloating:1,width:700,height:500,appid:tui-app
  # windowrule=isfloating:1,width:400,height:400,appid:otter-launcher
  #
  #
  # # Exec once
  # exec-once=waybar
  # exec-once=clipse -listen
  # exec-once=swww-daemon
  # exec-once=swaync
  # exec-once=udiskie --tray --automount --notify
  #
  #
  # # Monitor rules
  # monitorrule=name:^eDP-1$,width:1920,height:1080,refresh:120.030,x:0,y:0,scale:1.3
  # monitorrule=name:^HDMI-A-2$,width:3840,height:2160,refresh:29.281,x:1477,y:0,scale:2.5
  # '';
  # };
}
