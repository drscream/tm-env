" 
" Vim syntax file
" Language: cisco configuration files
" Maintainer: Harry Schroeder <has3@usa.net>
" 
" Last Modification: 03-Jan-2002
" 
" 
syntax clear

"if version < 600
"  syntax clear
"elseif exists("b:current_syntax")
"  finish
"endif

syntax case ignore
setlocal iskeyword+=/
setlocal iskeyword+=:
setlocal iskeyword+=.
setlocal iskeyword+=-

syntax match cisco_ip /\d\{1,3}\.\d\{1,3}\.\d\{1,3}\.\d\{1,3}/
syntax match cisco_interface_name / \d\{1,2}\/\d\{0,2}\/\{0,1}\d\{0,2}/
syntax match cisco_interface_name /Loopback\d/
syntax match cisco_interface_name /Null0/
syntax match cisco_interface_name /\a\{1,15}\d\{1,2}\/\d\{1,2}\/\{0,1}\d\{0,2}:\{0,1}\d\{0,2}/ 
syntax match cisco_interface /interface.*/ contains=cisco_interface_name
syntax match cisco_description /description/ nextgroup=cisco_description_text skipwhite
syntax match cisco_description_text /.*/ contained
syntax match cisco_comment /^!.*/
syntax match cisco_route /ip route/ nextgroup=cisco_route_ip 
syntax match cisco_route_ip /\d\{1,3}\.\d\{1,3}\.\d\{1,3}\.\d\{1,3}/ contained nextgroup=cisco_route_mask skipwhite
syntax match cisco_route_mask /\d\{1,3}\.\d\{1,3}\.\d\{1,3}\.\d\{1,3}/ contained nextgroup=cisco_interface_name skipwhite
syntax match cisco_no /no /
syntax region cisco_comment start=// end=//
syntax match keyword /aaa accounting/
syntax match keyword /aaa accounting connection h323/
syntax match keyword /aaa accounting nested/
syntax match keyword /aaa accounting resource start-stop failure/
syntax match keyword /aaa accounting resource start-stop group/
syntax match keyword /aaa accounting resource stop-failure group/
syntax match keyword /aaa accounting send stop-record authentication failure/
syntax match keyword /aaa accounting suppress null-username/
syntax match keyword /aaa accounting update/
syntax match keyword /aaa authentication arap/
syntax match keyword /aaa authentication banner/
syntax match keyword /aaa authentication enable default/
syntax match keyword /aaa authentication fail-message/
syntax match keyword /aaa authentication login/
syntax match keyword /aaa authentication nasi/
syntax match keyword /aaa authentication password-prompt/
syntax match keyword /aaa authentication ppp/
syntax match keyword /aaa authentication username-prompt/
syntax match keyword /aaa authorization/
syntax match keyword /aaa authorization config-/
syntax match keyword /aaa authorization configuration default/
syntax match keyword /aaa authorization ipmobile/
syntax match keyword /aaa authorization reverse-access/
syntax match keyword /aaa dnis map accounting network/
syntax match keyword /aaa dnis map authentication ppp group/
syntax match keyword /aaa dnis map authorization network group/
syntax match keyword /aaa group server/
syntax match keyword /aaa group server radius/
syntax match keyword /aaa group-configuration/
syntax match keyword /aaa nas port extended/
syntax match keyword /aaa new-model/
syntax match keyword /aaa pod server/
syntax match keyword /aaa preauth/
syntax match keyword /aaa processes/
syntax match keyword /aaa route download/
syntax match keyword /aaa session-mib/
syntax match keyword /abr/
syntax match keyword /absolute/
syntax match keyword /absolute-timeout/
syntax match keyword /acc-qos/
syntax match keyword /accept dialin/
syntax match keyword /accept dialout/
syntax match keyword /accept-lifetime/
syntax match keyword /access-class/
syntax match keyword /access-class/
syntax match keyword /access-enable/
syntax match keyword /access-expression/
syntax match keyword /access-list/
syntax match keyword /access-list/
syntax match keyword /access-list additional-zones/
syntax match keyword /access-list cable-range/
syntax match keyword /access-list compiled/
syntax match keyword /access-list dynamic-extend/
syntax match keyword /access-list includes/
syntax match keyword /access-list nbp/
syntax match keyword /access-list network/
syntax match keyword /access-list other-access/
syntax match keyword /access-list other-nbps/
syntax match keyword /access-list rate-limit/
syntax match keyword /access-list remark/
syntax match keyword /access-list within/
syntax match keyword /access-list zone/
syntax match keyword /access-mode/
syntax match keyword /access-point/
syntax match keyword /access-point-name/
syntax match keyword /access-profile/
syntax match keyword /access-template/
syntax match keyword /access-violation/
syntax match keyword /accounting/
syntax match keyword /activation-character/
syntax match keyword /adapter/
syntax match keyword /address/
syntax match keyword /address-family/
syntax match keyword /address-family ipv4/
syntax match keyword /address-family vpnv4/
syntax match keyword /addressed-key/
syntax match keyword /advertise/
syntax match keyword /agent/
syntax match keyword /aggregate-address/
syntax match keyword /alias/
syntax match keyword /alias static/
syntax match keyword /alps a1-map a2-map/
syntax match keyword /alps alias/
syntax match keyword /alps ascu/
syntax match keyword /alps auto-reset/
syntax match keyword /alps circuit/
syntax match keyword /alps connection-type permanent/
syntax match keyword /alps default-circuit/
syntax match keyword /alps enable-alarms ascu/
syntax match keyword /alps enable-alarms circuit/
syntax match keyword /alps enable-alarms peer/
syntax match keyword /alps enable-ascu/
syntax match keyword /alps enable-circuit/
syntax match keyword /alps error-display/
syntax match keyword /alps host-hld host-link/
syntax match keyword /alps hostlink/
syntax match keyword /alps idle-timer/
syntax match keyword /alps keepalive/
syntax match keyword /alps lifetime-timer/
syntax match keyword /alps local-hld remote-hld/
syntax match keyword /alps local-peer/
syntax match keyword /alps matip-close-delay/
syntax match keyword /alps max-msg-length/
syntax match keyword /alps mpx/
syntax match keyword /alps n1/
syntax match keyword /alps n2/
syntax match keyword /alps n3/
syntax match keyword /alps poll-pause/
syntax match keyword /alps primary-peer/
syntax match keyword /alps remote-peer/
syntax match keyword /alps retry-option/
syntax match keyword /alps service-msg data-drop/
syntax match keyword /alps service-msg format/
syntax match keyword /alps service-msg status-change/
syntax match keyword /alps service-msg-interval/
syntax match keyword /alps service-msg-list/
syntax match keyword /alps service-msg-list number/
syntax match keyword /alps servlim/
syntax match keyword /alps t1/
syntax match keyword /alps t2/
syntax match keyword /alps translate/
syntax match keyword /alps update-circuit/
syntax match keyword /alt-dial/
syntax match keyword /answer-address/
syntax match keyword /apollo access-group/
syntax match keyword /apollo access-list/
syntax match keyword /apollo maximum-paths/
syntax match keyword /apollo network/
syntax match keyword /apollo route/
syntax match keyword /apollo routing/
syntax match keyword /apollo update-time/
syntax match keyword /append-after/
syntax match keyword /appletalk access-group/
syntax match keyword /appletalk address/
syntax match keyword /appletalk alternate-addressing/
syntax match keyword /appletalk arp interval/
syntax match keyword /appletalk arp retransmit-count/
syntax match keyword /appletalk arp-timeout/
syntax match keyword /appletalk aurp tickle-time/
syntax match keyword /appletalk cable-range/
syntax match keyword /appletalk checksum/
syntax match keyword /appletalk client-mode/
syntax match keyword /appletalk discovery/
syntax match keyword /appletalk distribute-list in/
syntax match keyword /appletalk distribute-list out/
syntax match keyword /appletalk domain hop-reduction/
syntax match keyword /appletalk domain name/
syntax match keyword /appletalk domain remap-range/
syntax match keyword /appletalk domain-group/
syntax match keyword /appletalk eigrp active-time/
syntax match keyword /appletalk eigrp log-neighbor-changes/
syntax match keyword /appletalk eigrp split-horizon/
syntax match keyword /appletalk eigrp-bandwidth-percent/
syntax match keyword /appletalk eigrp-timers/
syntax match keyword /appletalk event-logging/
syntax match keyword /appletalk free-trade-zone/
syntax match keyword /appletalk getzonelist-filter/
syntax match keyword /appletalk glean-packets/
syntax match keyword /appletalk ignore-verify-errors/
syntax match keyword /appletalk iptalk/
syntax match keyword /appletalk iptalk-baseport/
syntax match keyword /appletalk lookup-type/
syntax match keyword /appletalk macip server/
syntax match keyword /appletalk macip static/
syntax match keyword /appletalk maximum-paths/
syntax match keyword /appletalk name-lookup interval/
syntax match keyword /appletalk permit-partial-zones/
syntax match keyword /appletalk pre-fdditalk/
syntax match keyword /appletalk protocol/
syntax match keyword /appletalk proxy-npb/
syntax match keyword /appletalk require-route-zones/
syntax match keyword /appletalk route-cache/
syntax match keyword /appletalk route-redistribution/
syntax match keyword /appletalk routing/
syntax match keyword /appletalk rtmp jitter/
syntax match keyword /appletalk rtmp-stub/
syntax match keyword /appletalk send-rtmps/
syntax match keyword /appletalk static cable-range/
syntax match keyword /appletalk static network/
syntax match keyword /appletalk strict-rtmp-checking/
syntax match keyword /appletalk timers/
syntax match keyword /appletalk virtual-net/
syntax match keyword /appletalk zip-reply-filter/
syntax match keyword /appletalk zone/
syntax match keyword /application/
syntax match keyword /aps authenticate/
syntax match keyword /aps force/
syntax match keyword /aps group/
syntax match keyword /aps lockout/
syntax match keyword /aps manual/
syntax match keyword /aps protect/
syntax match keyword /aps revert/
syntax match keyword /aps timers/
syntax match keyword /aps unidirectional/
syntax match keyword /aps working/
syntax match keyword /arap authentication/
syntax match keyword /arap callback/
syntax match keyword /arap dedicated/
syntax match keyword /arap enable/
syntax match keyword /arap net-access-list/
syntax match keyword /arap network/
syntax match keyword /arap noguest/
syntax match keyword /arap require-manual-password/
syntax match keyword /arap timelimit/
syntax match keyword /arap warningtime/
syntax match keyword /arap zonelist/
syntax match keyword /area authentication/
syntax match keyword /area default-cost/
syntax match keyword /area filter-list/
syntax match keyword /area nssa/
syntax match keyword /area range/
syntax match keyword /area stub/
syntax match keyword /area virtual-link/
syntax match keyword /area-address/
syntax match keyword /area-password/
syntax match keyword /arp/
syntax match keyword /arp frame-relay/
syntax match keyword /arp probe/
syntax match keyword /arp snap/
syntax match keyword /arp timeout/
syntax match keyword /arq reject-unknown-prefix/
syntax match keyword /asp addr-offset/
syntax match keyword /asp role/
syntax match keyword /asp rx-ift/
syntax match keyword /async default ip address/
syntax match keyword /async default routing/
syntax match keyword /async dynamic address/
syntax match keyword /async dynamic routing/
syntax match keyword /async mode dedicated/
syntax match keyword /async mode interactive/
syntax match keyword /async-bootp/
syntax match keyword /atm aal aal34/
syntax match keyword /atm abr rate-factors/
syntax match keyword /atm address-registration/
syntax match keyword /atm arp-server/
syntax match keyword /atm clock internal/
syntax match keyword /atm compression/
syntax match keyword /atm ds3-scramble/
syntax match keyword /atm e164 auto-conversion/
syntax match keyword /atm e3-scramble/
syntax match keyword /atm esi-address/
syntax match keyword /atm exception-queue/
syntax match keyword /atm framing/
syntax match keyword /atm ilmi-keepalive/
syntax match keyword /atm ilmi-pvc-discovery/
syntax match keyword /atm lbo/
syntax match keyword /atm max channels/
syntax match keyword /atm max-channels/
syntax match keyword /atm maxvc/
syntax match keyword /atm mid-per-vc/
syntax match keyword /atm multicast/
syntax match keyword /atm multipoint-interval/
syntax match keyword /atm multipoint-signalling/
syntax match keyword /atm nsap-address/
syntax match keyword /atm oam flush/
syntax match keyword /atm oversubscribe/
syntax match keyword /atm pvp/
syntax match keyword /atm rate-queue/
syntax match keyword /atm rawq-size/
syntax match keyword /atm route-bridge/
syntax match keyword /atm rxbuff/
syntax match keyword /atm scramble-enable/
syntax match keyword /atm sig-traffic-shaping strict/
syntax match keyword /atm smds-address/
syntax match keyword /atm sonet/
syntax match keyword /atm sonet stm-1/
syntax match keyword /atm txbuff/
syntax match keyword /atm uni-version/
syntax match keyword /atm vc-per-vp/
syntax match keyword /atm video aesa/
syntax match keyword /atm vp-filter/
syntax match keyword /atm-address/
syntax match keyword /atmsig close atm/
syntax match keyword /attach/
syntax match keyword /audio-prompt load/
syntax match keyword /authen before-forward/
syntax match keyword /authentication/
syntax match keyword /authorization/
syntax match keyword /auto/
syntax match keyword /auto-cost/
syntax match keyword /auto-cut-through/
syntax match keyword /auto-polarity/
syntax match keyword /auto-summary/
syntax match keyword /autobaud/
syntax match keyword /autodetect encapsulation/
syntax match keyword /autohangup/
syntax match keyword /autoselect/
syntax match keyword /backup/
syntax match keyword /backup delay/
syntax match keyword /backup interface/
syntax match keyword /backup interface dialer/
syntax match keyword /backup load/
syntax match keyword /bandwidth/
syntax match keyword /bandwidth/
syntax match keyword /bandwidth interface/
syntax match keyword /bandwidth remote/
syntax match keyword /banner exec/
syntax match keyword /banner incoming/
syntax match keyword /banner login/
syntax match keyword /banner motd/
syntax match keyword /battery-reversal/
syntax match keyword /bert abort/
syntax match keyword /bert controller/
syntax match keyword /bert pattern/
syntax match keyword /bert profile/
syntax match keyword /bfe/
syntax match keyword /bgp always-compare-med/
syntax match keyword /bgp bestpath compare-routerid/
syntax match keyword /bgp bestpath med confed/
syntax match keyword /bgp bestpath missing-as-worst/
syntax match keyword /bgp client-to-client reflection/
syntax match keyword /bgp cluster-id/
syntax match keyword /bgp confederation identifier/
syntax match keyword /bgp confederation peers/
syntax match keyword /bgp dampening/
syntax match keyword /bgp default ipv4-unicast/
syntax match keyword /bgp default local-preference/
syntax match keyword /bgp default route-target filter/
syntax match keyword /bgp deterministic med/
syntax match keyword /bgp fast-external-fallover/
syntax match keyword /bgp log-neighbor-changes/
syntax match keyword /bgp redistribute-internal/
syntax match keyword /bgp router-id/
syntax match keyword /bgp scan-time/
syntax match keyword /bgp-policy/
syntax match keyword /bindid/
syntax match keyword /boot/
syntax match keyword /boot bootldr/
syntax match keyword /boot bootstrap/
syntax match keyword /boot buffersize/
syntax match keyword /boot config/
syntax match keyword /boot flash/
syntax match keyword /boot host/
syntax match keyword /boot network/
syntax match keyword /boot system/
syntax match keyword /bootfile/
syntax match keyword /bridge acquire/
syntax match keyword /bridge address/
syntax match keyword /bridge bitswap-layer3-addresses/
syntax match keyword /bridge bridge/
syntax match keyword /bridge circuit-group pause/
syntax match keyword /bridge circuit-group source-based/
syntax match keyword /bridge cmf/
syntax match keyword /bridge crb/
syntax match keyword /bridge domain/
syntax match keyword /bridge forward-time/
syntax match keyword /bridge hello-time/
syntax match keyword /bridge irb/
syntax match keyword /bridge lat-service-filtering/
syntax match keyword /bridge max-age/
syntax match keyword /bridge multicast-source/
syntax match keyword /bridge priority/
syntax match keyword /bridge protocol/
syntax match keyword /bridge protocol ibm/
syntax match keyword /bridge route/
syntax match keyword /bridge subscriber-policy/
syntax match keyword /bridge-group/
syntax match keyword /bridge-group aging-time/
syntax match keyword /bridge-group cbus-bridging/
syntax match keyword /bridge-group circuit-group/
syntax match keyword /bridge-group input-address-list/
syntax match keyword /bridge-group input-lat-service-deny/
syntax match keyword /bridge-group input-lat-service-permit/
syntax match keyword /bridge-group input-lsap-list/
syntax match keyword /bridge-group input-pattern-list/
syntax match keyword /bridge-group input-type-list/
syntax match keyword /bridge-group lat-compression/
syntax match keyword /bridge-group output-address-list/
syntax match keyword /bridge-group output-lat-service-deny/
syntax match keyword /bridge-group output-lat-service-permit/
syntax match keyword /bridge-group output-lsap-list/
syntax match keyword /bridge-group output-pattern-list/
syntax match keyword /bridge-group output-type-list/
syntax match keyword /bridge-group path-cost/
syntax match keyword /bridge-group priority/
syntax match keyword /bridge-group spanning-disabled/
syntax match keyword /bridge-group sse/
syntax match keyword /bridge-group subscriber-loop-control/
syntax match keyword /bridge-group subscriber-trunk/
syntax match keyword /broadcast/
syntax match keyword /bsc contention/
syntax match keyword /bsc dial-contention/
syntax match keyword /bsc host-timeout/
syntax match keyword /bsc pause/
syntax match keyword /bsc poll-timeout/
syntax match keyword /bsc primary/
syntax match keyword /bsc retries/
syntax match keyword /bsc secondary/
syntax match keyword /bsc servlim/
syntax match keyword /bsc spec-poll/
syntax match keyword /bsc-char-set/
syntax match keyword /bstun group/
syntax match keyword /bstun keepalive-count/
syntax match keyword /bstun lisnsap/
syntax match keyword /bstun peer-name/
syntax match keyword /bstun protocol-group/
syntax match keyword /bstun remote-peer-keepalive/
syntax match keyword /bstun route/
syntax match keyword /bstun route/
syntax match keyword /buckets-of-history-kept/
syntax match keyword /buffers/
syntax match keyword /buffers huge size/
syntax match keyword /bump/
syntax match keyword /bundle/
syntax match keyword /busy-message/
syntax match keyword /busyout/
syntax match keyword /busyout/
syntax match keyword /busyout forced/
syntax match keyword /busyout monitor interface/
syntax match keyword /busyout monitor probe/
syntax match keyword /busyout seize/
syntax match keyword /cable bundle/
syntax match keyword /cable helper-address/
syntax match keyword /cablelength/
syntax match keyword /cablelength long/
syntax match keyword /cablelength short/
syntax match keyword /cac master/
syntax match keyword /cache/
syntax match keyword /cadence-list/
syntax match keyword /cadence-max-off-time/
syntax match keyword /cadence-min-on-time/
syntax match keyword /cadence-variation/
syntax match keyword /calendar set/
syntax match keyword /call application voice/
syntax match keyword /call application voice language/
syntax match keyword /call application voice pin-len/
syntax match keyword /call application voice redirect-number/
syntax match keyword /call application voice retry-count/
syntax match keyword /call application voice set-location/
syntax match keyword /call application voice uid-len/
syntax match keyword /call application voice warning-time/
syntax match keyword /call guard-timer/
syntax match keyword /call progress tone country/
syntax match keyword /call rsvp-sync resv-timer/
syntax match keyword /call start/
syntax match keyword /call-type/
syntax match keyword /call-type cas/
syntax match keyword /call-waiting/
syntax match keyword /callback forced-wait/
syntax match keyword /called-number/
syntax match keyword /caller-id alerting dsp-pre-alloc/
syntax match keyword /caller-id alerting line-reversal/
syntax match keyword /caller-id alerting pre-ring/
syntax match keyword /caller-id alerting ring/
syntax match keyword /caller-id attenuation/
syntax match keyword /caller-id block/
syntax match keyword /caller-id enable/
syntax match keyword /calltracker call-record/
syntax match keyword /calltracker enable/
syntax match keyword /calltracker history max-size/
syntax match keyword /calltracker history retain-mins/
syntax match keyword /cap-list vfc/
syntax match keyword /carrier-delay/
syntax match keyword /cas-custom/
syntax match keyword /cas-group/
syntax match keyword /cbr/
syntax match keyword /ccs connect/
syntax match keyword /ccs encap frf11/
syntax match keyword /cd/
syntax match keyword /cdp advertise-v2/
syntax match keyword /cdp enable/
syntax match keyword /cdp holdtime/
syntax match keyword /cdp run/
syntax match keyword /cdp timer/
syntax match keyword /certificate/
syntax match keyword /certificate reload/
syntax match keyword /ces/
syntax match keyword /ces aal1 clock/
syntax match keyword /ces aal1 service/
syntax match keyword /ces cell-loss-integration-period/
syntax match keyword /ces circuit/
syntax match keyword /ces clockmode synchronous/
syntax match keyword /ces connect/
syntax match keyword /ces dsx1 clock source/
syntax match keyword /ces dsx1 framing/
syntax match keyword /ces dsx1 lbo/
syntax match keyword /ces dsx1 linecode/
syntax match keyword /ces dsx1 loopback/
syntax match keyword /ces dsx1 signalmode robbedbit/
syntax match keyword /ces initial-delay/
syntax match keyword /ces max-buf-size/
syntax match keyword /ces partial-fill/
syntax match keyword /ces pvc/
syntax match keyword /ces service/
syntax match keyword /ces-cdv/
syntax match keyword /ces-clock/
syntax match keyword /channel-group/
syntax match keyword /channel-group/
syntax match keyword /channel-protocol/
syntax match keyword /chat-script/
syntax match keyword /class/
syntax match keyword /class/
syntax match keyword /class-bundle/
syntax match keyword /class-int/
syntax match keyword /class-map/
syntax match keyword /class-range/
syntax match keyword /class-vc/
syntax match keyword /claw/
syntax match keyword /claw/
syntax match keyword /clear access-list counters/
syntax match keyword /clear access-template/
syntax match keyword /clear adjacency/
syntax match keyword /clear aim/
syntax match keyword /clear alps circuits/
syntax match keyword /clear alps counters/
syntax match keyword /clear appletalk arp/
syntax match keyword /clear appletalk neighbor/
syntax match keyword /clear appletalk route/
syntax match keyword /clear appletalk traffic/
syntax match keyword /clear arp-cache/
syntax match keyword /clear atm vc/
syntax match keyword /clear bridge/
syntax match keyword /clear bridge multicast/
syntax match keyword /clear call fallback cache/
syntax match keyword /clear call fallback stats/
syntax match keyword /clear cdp counters/
syntax match keyword /clear cdp table/
syntax match keyword /clear cef linecard/
syntax match keyword /clear clns cache/
syntax match keyword /clear clns es-neighbors/
syntax match keyword /clear clns is-neighbors/
syntax match keyword /clear clns neighbors/
syntax match keyword /clear clns route/
syntax match keyword /clear clns traffic/
syntax match keyword /clear controller/
syntax match keyword /clear controller lex/
syntax match keyword /clear cot summary/
syntax match keyword /clear counters/
syntax match keyword /clear counters/
syntax match keyword /clear counters line/
syntax match keyword /clear crypto isakmp/
syntax match keyword /clear crypto sa/
syntax match keyword /clear csm-statistics/
syntax match keyword /clear dbconn connection/
syntax match keyword /clear dbconn statistic/
syntax match keyword /clear decnet accounting/
syntax match keyword /clear decnet counters/
syntax match keyword /clear dialer/
syntax match keyword /clear dialer dnis/
syntax match keyword /clear dialer sessions/
syntax match keyword /clear dlsw circuit/
syntax match keyword /clear dlsw reachability/
syntax match keyword /clear dlsw statistics/
syntax match keyword /clear drip counters/
syntax match keyword /clear dsip tracing/
syntax match keyword /clear entry/
syntax match keyword /clear extended counters/
syntax match keyword /clear frame-relay-inarp/
syntax match keyword /clear gprs charging cdr/
syntax match keyword /clear gprs gtp pdp-context/
syntax match keyword /clear gprs gtp statistics/
syntax match keyword /clear gprs isgsn statistics/
syntax match keyword /clear h323 gatekeeper call/
syntax match keyword /clear host/
syntax match keyword /clear hub/
syntax match keyword /clear hub counters/
syntax match keyword /clear interface/
syntax match keyword /clear interface fastethernet/
syntax match keyword /clear interface serial/
syntax match keyword /clear interface virtual-access/
syntax match keyword /clear ip accounting/
syntax match keyword /clear ip audit configuration/
syntax match keyword /clear ip audit statistics/
syntax match keyword /clear ip auth-proxy cache/
syntax match keyword /clear ip bgp/
syntax match keyword /clear ip bgp dampening/
syntax match keyword /clear ip bgp external/
syntax match keyword /clear ip bgp flap-statistics/
syntax match keyword /clear ip bgp peer-group/
syntax match keyword /clear ip cef/
syntax match keyword /clear ip cef prefix-statistics/
syntax match keyword /clear ip cgmp/
syntax match keyword /clear ip dhcp binding/
syntax match keyword /clear ip dhcp conflict/
syntax match keyword /clear ip dhcp server statistics/
syntax match keyword /clear ip drp/
syntax match keyword /clear ip dvmrp route/
syntax match keyword /clear ip eigrp neighbors/
syntax match keyword /clear ip flow stats/
syntax match keyword /clear ip igmp group/
syntax match keyword /clear ip mds forwarding/
syntax match keyword /clear ip mobile binding/
syntax match keyword /clear ip mobile secure/
syntax match keyword /clear ip mobile traffic/
syntax match keyword /clear ip mobile visitor/
syntax match keyword /clear ip mrm status-report/
syntax match keyword /clear ip mroute/
syntax match keyword /clear ip msdp peer/
syntax match keyword /clear ip msdp sa-cache/
syntax match keyword /clear ip msdp statistics/
syntax match keyword /clear ip nat translation/
syntax match keyword /clear ip nhrp/
syntax match keyword /clear ip ospf/
syntax match keyword /clear ip peer-group/
syntax match keyword /clear ip pgm host/
syntax match keyword /clear ip pgm router/
syntax match keyword /clear ip pim auto-rp/
syntax match keyword /clear ip pim interface count/
syntax match keyword /clear ip route/
syntax match keyword /clear ip route download/
syntax match keyword /clear ip route vrf/
syntax match keyword /clear ip rtp header-compression/
syntax match keyword /clear ip sap/
syntax match keyword /clear ip sdr/
syntax match keyword /clear ip slb/
syntax match keyword /clear ip sse/
syntax match keyword /clear ip trigger-authentication/
syntax match keyword /clear ipx accounting/
syntax match keyword /clear ipx cache/
syntax match keyword /clear ipx nhrp/
syntax match keyword /clear ipx nlsp neighbors/
syntax match keyword /clear ipx route/
syntax match keyword /clear ipx traffic/
syntax match keyword /clear kerberos creds/
syntax match keyword /clear l2relay statistics/
syntax match keyword /clear l2relay topology-map/
syntax match keyword /clear lane le-arp/
syntax match keyword /clear lane server/
syntax match keyword /clear line/
syntax match keyword /clear line async-queue/
syntax match keyword /clear logging/
syntax match keyword /clear mgcp statistics/
syntax match keyword /clear modem/
syntax match keyword /clear modem counters/
syntax match keyword /clear modempool-counters/
syntax match keyword /clear mpoa client cache/
syntax match keyword /clear mpoa server cache/
syntax match keyword /clear ncia circuit/
syntax match keyword /clear ncia client/
syntax match keyword /clear ncia client registered/
syntax match keyword /clear netbios-cache/
syntax match keyword /clear parser cache/
syntax match keyword /clear port/
syntax match keyword /clear port log/
syntax match keyword /clear resource-pool/
syntax match keyword /clear rif-cache/
syntax match keyword /clear rlm group/
syntax match keyword /clear service-module serial/
syntax match keyword /clear sgcp statistics/
syntax match keyword /clear smrp mcache/
syntax match keyword /clear snapshot quiet-time/
syntax match keyword /clear source-bridge/
syntax match keyword /clear spe/
syntax match keyword /clear spe counters/
syntax match keyword /clear spe log/
syntax match keyword /clear sse/
syntax match keyword /clear tarp counters/
syntax match keyword /clear tarp ldb-table/
syntax match keyword /clear tarp tid-table/
syntax match keyword /clear tcp/
syntax match keyword /clear tcp statistics/
syntax match keyword /clear txconn connection/
syntax match keyword /clear txconn statistic/
syntax match keyword /clear txconn transaction/
syntax match keyword /clear vines cache/
syntax match keyword /clear vines ipc/
syntax match keyword /clear vines neighbor/
syntax match keyword /clear vines route/
syntax match keyword /clear vines traffic/
syntax match keyword /clear vlan statistics/
syntax match keyword /clear voice port/
syntax match keyword /clear vpdn history failure/
syntax match keyword /clear vpdn tunnel/
syntax match keyword /clear x25/
syntax match keyword /clear x25-vc/
syntax match keyword /clear xot/
syntax match keyword /clid/
syntax match keyword /clid group/
syntax match keyword /client/
syntax match keyword /client ip/
syntax match keyword /client ip lu/
syntax match keyword /client ip pool/
syntax match keyword /client lu maximum/
syntax match keyword /client pool/
syntax match keyword /client-atm-address/
syntax match keyword /client-atm-address name/
syntax match keyword /client-identifier/
syntax match keyword /client-name/
syntax match keyword /clns access-group/
syntax match keyword /clns adjacency-filter/
syntax match keyword /clns cache-invalidate-delay/
syntax match keyword /clns checksum/
syntax match keyword /clns cluster-alias/
syntax match keyword /clns configuration-time/
syntax match keyword /clns congestion-threshold/
syntax match keyword /clns dec-compatible/
syntax match keyword /clns enable/
syntax match keyword /clns erpdu-interval/
syntax match keyword /clns es-neighbor/
syntax match keyword /clns esct-time/
syntax match keyword /clns filter-expr/
syntax match keyword /clns filter-set/
syntax match keyword /clns holding-time/
syntax match keyword /clns host/
syntax match keyword /clns is-neighbor/
syntax match keyword /clns mtu/
syntax match keyword /clns net/
syntax match keyword /clns packet-lifetime/
syntax match keyword /clns rdpdu-interval/
syntax match keyword /clns route/
syntax match keyword /clns route default/
syntax match keyword /clns route discard/
syntax match keyword /clns route-cache/
syntax match keyword /clns router isis/
syntax match keyword /clns router iso-igrp/
syntax match keyword /clns routing/
syntax match keyword /clns security-passthrough/
syntax match keyword /clns send-erpdu/
syntax match keyword /clns send-rdpdu/
syntax match keyword /clns split-horizon/
syntax match keyword /clns template-alias/
syntax match keyword /clns want-erpdu/
syntax match keyword /clock calendar-valid/
syntax match keyword /clock rate/
syntax match keyword /clock rate line/
syntax match keyword /clock rate network-clock/
syntax match keyword /clock read-calendar/
syntax match keyword /clock set/
syntax match keyword /clock source/
syntax match keyword /clock source/
syntax match keyword /clock source line/
syntax match keyword /clock summer-time/
syntax match keyword /clock timezone/
syntax match keyword /clock update-calendar/
syntax match keyword /clock-select/
syntax match keyword /clp-bit/
syntax match keyword /cmns enable/
syntax match keyword /cmpc/
syntax match keyword /cmt connect/
syntax match keyword /cmt disconnect/
syntax match keyword /codec/
syntax match keyword /codec aal2-profile/
syntax match keyword /codec complexity/
syntax match keyword /codec preference/
syntax match keyword /community-list/
syntax match keyword /compand-type/
syntax match keyword /compatible rfc 1583/
syntax match keyword /compress/
syntax match keyword /compress mppc/
syntax match keyword /compress predictor/
syntax match keyword /compress stac caim/
syntax match keyword /condition/
syntax match keyword /config-register/
syntax match keyword /configure/
syntax match keyword /configure network/
syntax match keyword /configure overwrite-network/
syntax match keyword /confreg/
syntax match keyword /connect/
syntax match keyword /connect voice/
syntax match keyword /connection/
syntax match keyword /continue/
"syntax match keyword /controller/
syntax match keyword /controller t1/
syntax match keyword /controller t3/
syntax match keyword /copy/
syntax match keyword /copy erase flash/
syntax match keyword /copy flash lex/
syntax match keyword /copy flash vfc/
syntax match keyword /copy modem/
syntax match keyword /copy running-config startup-config/
syntax match keyword /copy startup-config running-config/
syntax match keyword /copy tftp lex/
syntax match keyword /copy tftp vfc/
syntax match keyword /copy verify/
syntax match keyword /copy verify bootflash/
syntax match keyword /copy verify flash/
syntax match keyword /copy xmodem/
syntax match keyword /copy ymodem/
syntax match keyword /corlist incoming/
syntax match keyword /corlist outgoing/
syntax match keyword /cpp authentication/
syntax match keyword /cpp callback accept/
syntax match keyword /cptone/
syntax match keyword /crc/
syntax match keyword /crc bits 5/
syntax match keyword /crc4/
syntax match keyword /crl optional/
syntax match keyword /crl query/
syntax match keyword /cross-connect/
syntax match keyword /crypto ca authenticate/
syntax match keyword /crypto ca certificate chain/
syntax match keyword /crypto ca certificate query/
syntax match keyword /crypto ca crl request/
syntax match keyword /crypto ca enroll/
syntax match keyword /crypto ca identity/
syntax match keyword /crypto ca trusted-root/
syntax match keyword /crypto dynamic-map/
syntax match keyword /crypto ipsec security-association lifetime/
syntax match keyword /crypto ipsec transform-set/
syntax match keyword /crypto isakmp enable/
syntax match keyword /crypto isakmp identity/
syntax match keyword /crypto isakmp key/
syntax match keyword /crypto isakmp policy/
syntax match keyword /crypto key generate rsa/
syntax match keyword /crypto key pubkey-chain rsa/
syntax match keyword /crypto key zeroize rsa/
syntax match keyword /crypto map/
syntax match keyword /crypto map client authentication list/
syntax match keyword /crypto map client configuration address/
syntax match keyword /crypto map isakmp authorization list/
syntax match keyword /crypto map local-address/
syntax match keyword /csna/
syntax match keyword /ctunnel destination/
syntax match keyword /ctype/
syntax match keyword /custom-queue-list/
syntax match keyword /customer-id/
syntax match keyword /cut-through/
syntax match keyword /data-character-bits/
syntax match keyword /data-pattern/
syntax match keyword /databits/
syntax match keyword /dbconn license/
syntax match keyword /dbconn pem/
syntax match keyword /dbconn ping/
syntax match keyword /dbconn server/
syntax match keyword /dbconn tcpserver/
syntax match keyword /dce-terminal-timing enable/
syntax match keyword /de-bit/
syntax match keyword /de-bit map-clp/
syntax match keyword /deadtime/
syntax match keyword /debug dbconn/
syntax match keyword /decnet access-group/
syntax match keyword /decnet accounting/
syntax match keyword /decnet accounting list/
syntax match keyword /decnet accounting threshold/
syntax match keyword /decnet accounting transits/
syntax match keyword /decnet advertise/
syntax match keyword /decnet area-max-cost/
syntax match keyword /decnet area-max-hops/
syntax match keyword /decnet congestion-threshold/
syntax match keyword /decnet conversion/
syntax match keyword /decnet cost/
syntax match keyword /decnet encapsulation/
syntax match keyword /decnet hello-timer/
syntax match keyword /decnet host/
syntax match keyword /decnet in-routing-filter/
syntax match keyword /decnet map/
syntax match keyword /decnet max-address/
syntax match keyword /decnet max-area/
syntax match keyword /decnet max-cost/
syntax match keyword /decnet max-hops/
syntax match keyword /decnet max-paths/
syntax match keyword /decnet max-visits/
syntax match keyword /decnet multicast-map/
syntax match keyword /decnet node-type/
syntax match keyword /decnet out-routing-filter/
syntax match keyword /decnet path-split-mode/
syntax match keyword /decnet propagate static/
syntax match keyword /decnet route/
syntax match keyword /decnet route default/
syntax match keyword /decnet route-cache/
syntax match keyword /decnet router-priority/
syntax match keyword /decnet routing/
syntax match keyword /decnet routing-timer/
syntax match keyword /decnet split-horizon/
syntax match keyword /default/
syntax match keyword /default/
syntax match keyword /default-file vfc/
syntax match keyword /default-information/
syntax match keyword /default-information originate/
syntax match keyword /default-metric/
syntax match keyword /default-name/
syntax match keyword /default-profile/
syntax match keyword /default-router/
syntax match keyword /default-value exec-character-bits/
syntax match keyword /default-value special-character-bits/
syntax match keyword /define/
syntax match keyword /delay/
syntax match keyword /delete/
syntax match keyword /delete vfc/
syntax match keyword /deny/
"syntax match keyword /description/
syntax match keyword /destination-pattern/
syntax match keyword /destination-pattern/
syntax match keyword /detect v54 channel-group/
syntax match keyword /device-id/
syntax match keyword /dhcp-gateway-address/
syntax match keyword /dhcp-server/
syntax match keyword /diag/
syntax match keyword /dial-control-mib/
syntax match keyword /dial-peer configuration/
syntax match keyword /dial-peer cor custom/
syntax match keyword /dial-peer cor list/
syntax match keyword /dial-peer hunt/
syntax match keyword /dial-peer terminator/
syntax match keyword /dial-peer video/
syntax match keyword /dial-peer voice/
syntax match keyword /dial-shelf split backplane-ds0/
syntax match keyword /dial-shelf split slots/
syntax match keyword /dial-shelf split slots none/
syntax match keyword /dial-shelf split slots remove/
syntax match keyword /dial-tdm-clock/
syntax match keyword /dial-type/
syntax match keyword /dialer/
syntax match keyword /dialer aaa/
syntax match keyword /dialer callback-secure/
syntax match keyword /dialer callback-server/
syntax match keyword /dialer called/
syntax match keyword /dialer caller/
syntax match keyword /dialer clid group/
syntax match keyword /dialer congestion threshold/
syntax match keyword /dialer dnis group/
syntax match keyword /dialer dns/
syntax match keyword /dialer dtr/
syntax match keyword /dialer enable-timeout/
syntax match keyword /dialer fast-idle/
syntax match keyword /dialer hold-queue/
syntax match keyword /dialer idle-timeout/
syntax match keyword /dialer in-band/
syntax match keyword /dialer isdn/
syntax match keyword /dialer isdn short-hold/
syntax match keyword /dialer load-threshold/
syntax match keyword /dialer map/
syntax match keyword /dialer map/
syntax match keyword /dialer map bridge/
syntax match keyword /dialer map snapshot/
syntax match keyword /dialer max-link/
syntax match keyword /dialer outgoing/
syntax match keyword /dialer pool/
syntax match keyword /dialer pool-member/
syntax match keyword /dialer priority/
syntax match keyword /dialer redial/
syntax match keyword /dialer remote-name/
syntax match keyword /dialer reserved-links/
syntax match keyword /dialer rotary-group/
syntax match keyword /dialer rotor/
syntax match keyword /dialer string/
syntax match keyword /dialer string/
syntax match keyword /dialer voice-call/
syntax match keyword /dialer vpdn/
syntax match keyword /dialer wait-for-carrier-time/
syntax match keyword /dialer watch-disable/
syntax match keyword /dialer watch-group/
syntax match keyword /dialer watch-list/
syntax match keyword /dialer-group/
syntax match keyword /dialer-list protocol/
syntax match keyword /digit-strip/
syntax match keyword /dir/
syntax match keyword /direct-inward-dial/
syntax match keyword /disable/
syntax match keyword /disable/
syntax match keyword /disc_pi_off/
syntax match keyword /disconnect/
syntax match keyword /disconnect qdm/
syntax match keyword /disconnect ssh/
syntax match keyword /disconnect-ack/
syntax match keyword /disconnect-character/
syntax match keyword /dispatch-character/
syntax match keyword /dispatch-machine/
syntax match keyword /dispatch-timeout/
syntax match keyword /distance/
syntax match keyword /distance/
syntax match keyword /distance bgp/
syntax match keyword /distance eigrp/
syntax match keyword /distance mbgp/
syntax match keyword /distance ospf/
syntax match keyword /distribute-list /
syntax match keyword /distribute-list in/
syntax match keyword /distribute-list in/
syntax match keyword /distribute-list out/
syntax match keyword /distribute-list out/
syntax match keyword /distribute-sap-list in/
syntax match keyword /distribute-sap-list out/
syntax match keyword /distributions-of-statistics-kept/
syntax match keyword /dlsw allroute-netbios/
syntax match keyword /dlsw allroute-sna/
syntax match keyword /dlsw bgroup-list/
syntax match keyword /dlsw bridge-group/
syntax match keyword /dlsw cache-ignore-netbios-datagram/
syntax match keyword /dlsw disable/
syntax match keyword /dlsw duplicate-path-bias/
syntax match keyword /dlsw explorerq-depth/
syntax match keyword /dlsw group-cache disable/
syntax match keyword /dlsw group-cache max entries/
syntax match keyword /dlsw icannotreach saps/
syntax match keyword /dlsw icanreach/
syntax match keyword /dlsw llc2 nornr/
syntax match keyword /dlsw load-balance/
syntax match keyword /dlsw local-peer/
syntax match keyword /dlsw mac-addr/
syntax match keyword /dlsw max-multiple-rifs/
syntax match keyword /dlsw netbios-keepalive-filter/
syntax match keyword /dlsw netbios-name/
syntax match keyword /dlsw peer-on-demand-defaults/
syntax match keyword /dlsw port-list/
syntax match keyword /dlsw prom-peer-defaults/
syntax match keyword /dlsw redundant-rings/
syntax match keyword /dlsw remote-peer frame relay/
syntax match keyword /dlsw remote-peer fst/
syntax match keyword /dlsw remote-peer interface/
syntax match keyword /dlsw remote-peer tcp/
syntax match keyword /dlsw ring-list/
syntax match keyword /dlsw rsvp/
syntax match keyword /dlsw timer/
syntax match keyword /dlsw tos disable/
syntax match keyword /dlsw tos map/
syntax match keyword /dlsw transparent map/
syntax match keyword /dlsw transparent redundancy-enable/
syntax match keyword /dlsw transparent switch-support/
syntax match keyword /dlsw transparent timers/
syntax match keyword /dlsw udp-disable/
syntax match keyword /dlur/
syntax match keyword /dlus-backup/
syntax match keyword /dnis/
syntax match keyword /dnis/
syntax match keyword /dnis bypass/
syntax match keyword /dnis group/
syntax match keyword /dns-server/
syntax match keyword /dnsix-dmdp retries/
syntax match keyword /dnsix-nat authorized-redirection/
syntax match keyword /dnsix-nat primary/
syntax match keyword /dnsix-nat secondary/
syntax match keyword /dnsix-nat source/
syntax match keyword /dnsix-nat transmit-count/
syntax match keyword /domain/
syntax match keyword /domain-id/
syntax match keyword /domain-name/
syntax match keyword /domain-password/
syntax match keyword /down-when-looped/
syntax match keyword /downward-compatible-config/
syntax match keyword /ds0 busyout/
syntax match keyword /ds0 busyout-threshold/
syntax match keyword /ds0-group/
syntax match keyword /ds0-group/
syntax match keyword /dscp/
syntax match keyword /dsn/
syntax match keyword /dspint dspfarm/
syntax match keyword /dspu activation-window/
syntax match keyword /dspu default-pu/
syntax match keyword /dspu enable-host/
syntax match keyword /dspu enable-pu/
syntax match keyword /dspu host/
syntax match keyword /dspu lu/
syntax match keyword /dspu ncia/
syntax match keyword /dspu ncia enable-pu/
syntax match keyword /dspu notification-level/
syntax match keyword /dspu pool/
syntax match keyword /dspu pu/
syntax match keyword /dspu rsrb/
syntax match keyword /dspu rsrb enable-host/
syntax match keyword /dspu rsrb enable-pu/
syntax match keyword /dspu rsrb start/
syntax match keyword /dspu start/
syntax match keyword /dspu vdlc/
syntax match keyword /dspu vdlc enable-host/
syntax match keyword /dspu vdlc enable-pu/
syntax match keyword /dspu vdlc start/
syntax match keyword /dsu bandwidth/
syntax match keyword /dsu mode/
syntax match keyword /dte-invert-txc/
syntax match keyword /dtmf-relay/
syntax match keyword /dtmf-timer-inter-digit/
syntax match keyword /duplex/
syntax match keyword /dxi map/
syntax match keyword /dxi pvc/
syntax match keyword /dynamic/
syntax match keyword /e2-clockrate/
syntax match keyword /early-token-release/
syntax match keyword /echo-cancel comfort-noise/
syntax match keyword /echo-cancel compensation/
syntax match keyword /echo-cancel coverage/
syntax match keyword /echo-cancel enable/
syntax match keyword /echo-cancel enable/
syntax match keyword /echo-cancel loopback/
syntax match keyword /editing/
syntax match keyword /efci-bit/
syntax match keyword /eigrp log-neighbor-changes/
syntax match keyword /eigrp log-neighbor-warnings/
syntax match keyword /eigrp stub/
syntax match keyword /enable/
syntax match keyword /enable/
syntax match keyword /enable password/
syntax match keyword /enable secret/
syntax match keyword /enabled/
syntax match keyword /encapsulation/
syntax match keyword /encapsulation aal5/
syntax match keyword /encapsulation alc/
syntax match keyword /encapsulation atm-ces/
syntax match keyword /encapsulation atm-dxi/
syntax match keyword /encapsulation bstun/
syntax match keyword /encapsulation cpp/
syntax match keyword /encapsulation dot1q/
syntax match keyword /encapsulation frame-relay/
syntax match keyword /encapsulation ftc-trunk/
syntax match keyword /encapsulation gtp/
syntax match keyword /encapsulation isl/
syntax match keyword /encapsulation lapb/
syntax match keyword /encapsulation sde/
syntax match keyword /encapsulation sdlc/
syntax match keyword /encapsulation sdlc-primary/
syntax match keyword /encapsulation sdlc-secondary/
syntax match keyword /encapsulation smds/
syntax match keyword /encapsulation stun/
syntax match keyword /encapsulation tr-isl/
syntax match keyword /encapsulation tr-isl trbrf-vlan/
syntax match keyword /encapsulation uts/
syntax match keyword /encapsulation x25/
syntax match keyword /encryption/
syntax match keyword /encryption/
syntax match keyword /encryption mppe/
syntax match keyword /encryptorder/
syntax match keyword /end/
syntax match keyword /enrollment mode ra/
syntax match keyword /enrollment retry-count/
syntax match keyword /enrollment retry-period/
syntax match keyword /enrollment url/
syntax match keyword /erase/
syntax match keyword /erase bootflash/
syntax match keyword /erase flash/
syntax match keyword /erase start-up config/
syntax match keyword /erase vfc/
syntax match keyword /escape-character/
syntax match keyword /ethernet-transit-oui/
syntax match keyword /evaluate/
syntax match keyword /exception core-file/
syntax match keyword /exception dump/
syntax match keyword /exception linecard/
syntax match keyword /exception memory/
syntax match keyword /exception protocol/
syntax match keyword /exception slot/
syntax match keyword /exception spurious-interrupt/
syntax match keyword /exec/
syntax match keyword /exec-banner/
syntax match keyword /exec-character-bits/
syntax match keyword /exec-timeout/
syntax match keyword /execute-on/
syntax match keyword /exit/
syntax match keyword /exit-address-family/
syntax match keyword /expect-factor/
syntax match keyword /exponential-weighting-constant/
syntax match keyword /export destination/
syntax match keyword /extended-port/
syntax match keyword /faildetect/
syntax match keyword /fair-queue/
syntax match keyword /fair-queue aggregate-limit/
syntax match keyword /fair-queue individual-limit/
syntax match keyword /fair-queue limit/
syntax match keyword /fair-queue qos-group/
syntax match keyword /fair-queue tos/
syntax match keyword /fair-queue weight/
syntax match keyword /fax protocol/
syntax match keyword /fax rate/
syntax match keyword /fax receive called-subscriber/
syntax match keyword /fax send center-header/
syntax match keyword /fax send coverpage comment/
syntax match keyword /fax send coverpage e-mail-controllable/
syntax match keyword /fax send coverpage enable/
syntax match keyword /fax send coverpage show-detail/
syntax match keyword /fax send left-header/
syntax match keyword /fax send max-speed/
syntax match keyword /fax send right-header/
syntax match keyword /fax send transmitting-subscriber/
syntax match keyword /fax-relay ecm disable/
syntax match keyword /fddi burst-count/
syntax match keyword /fddi c-min/
syntax match keyword /fddi cmt-signal-bits/
syntax match keyword /fddi duplicate-address-check/
syntax match keyword /fddi encapsulate/
syntax match keyword /fddi smt-frames/
syntax match keyword /fddi t-out/
syntax match keyword /fddi tb-min/
syntax match keyword /fddi tl-min-time/
syntax match keyword /fddi token-rotation-time/
syntax match keyword /fddi valid-transmission-time/
syntax match keyword /fdl/
syntax match keyword /file prompt/
syntax match keyword /filter-for-history/
syntax match keyword /firmware location/
syntax match keyword /firmware upgrade/
syntax match keyword /flowcontrol/
syntax match keyword /force-local-chap/
syntax match keyword /format/
syntax match keyword /forward-digits/
syntax match keyword /forwarding-agent/
syntax match keyword /fr-atm connect dlci/
syntax match keyword /frame-relay/
syntax match keyword /frame-relay adaptive-shaping/
syntax match keyword /frame-relay address registration auto-address/
syntax match keyword /frame-relay address registration ip/
syntax match keyword /frame-relay address-reg enable/
syntax match keyword /frame-relay bc/
syntax match keyword /frame-relay be/
syntax match keyword /frame-relay broadcast-queue/
syntax match keyword /frame-relay cir/
syntax match keyword /frame-relay class/
syntax match keyword /frame-relay congestion threshold de/
syntax match keyword /frame-relay congestion threshold ecn/
syntax match keyword /frame-relay congestion-management/
syntax match keyword /frame-relay custom-queue-list/
syntax match keyword /frame-relay de-group/
syntax match keyword /frame-relay de-list/
syntax match keyword /frame-relay end-to-end keepalive error-threshold/
syntax match keyword /frame-relay end-to-end keepalive event-window/
syntax match keyword /frame-relay end-to-end keepalive mode/
syntax match keyword /frame-relay end-to-end keepalive success-events/
syntax match keyword /frame-relay end-to-end keepalive timer/
syntax match keyword /frame-relay fragment/
syntax match keyword /frame-relay frmr/
syntax match keyword /frame-relay holdq/
syntax match keyword /frame-relay idle-timer/
syntax match keyword /frame-relay interface-dlci/
syntax match keyword /frame-relay interface-dlci switched/
syntax match keyword /frame-relay interface-queue priority/
syntax match keyword /frame-relay intf-type/
syntax match keyword /frame-relay inverse-arp/
syntax match keyword /frame-relay ip rtp header-compression/
syntax match keyword /frame-relay ip rtp priority/
syntax match keyword /frame-relay ip tcp header-compression/
syntax match keyword /frame-relay lapf k/
syntax match keyword /frame-relay lapf n200/
syntax match keyword /frame-relay lapf n201/
syntax match keyword /frame-relay lapf t200/
syntax match keyword /frame-relay lapf-t203/
syntax match keyword /frame-relay lmi-n391dte/
syntax match keyword /frame-relay lmi-n392dce/
syntax match keyword /frame-relay lmi-n392dte/
syntax match keyword /frame-relay lmi-n393dce/
syntax match keyword /frame-relay lmi-n393dte/
syntax match keyword /frame-relay lmi-t392dce/
syntax match keyword /frame-relay lmi-type/
syntax match keyword /frame-relay local-dlci/
syntax match keyword /frame-relay map/
syntax match keyword /frame-relay map bridge/
syntax match keyword /frame-relay map bridge broadcast/
syntax match keyword /frame-relay map bstun/
syntax match keyword /frame-relay map clns/
syntax match keyword /frame-relay map ip compress/
syntax match keyword /frame-relay map ip nocompress/
syntax match keyword /frame-relay map ip rtp header-compression/
syntax match keyword /frame-relay map ip tcp header-compression/
syntax match keyword /frame-relay map llc2/
syntax match keyword /frame-relay map rsrb/
syntax match keyword /frame-relay mincir/
syntax match keyword /frame-relay multicast-dlci/
syntax match keyword /frame-relay payload-compress/
syntax match keyword /frame-relay payload-compress packet-by-packet/
syntax match keyword /frame-relay policing/
syntax match keyword /frame-relay priority-dlci-group/
syntax match keyword /frame-relay priority-group/
syntax match keyword /frame-relay pvc/
syntax match keyword /frame-relay qos-autosense/
syntax match keyword /frame-relay route/
syntax match keyword /frame-relay svc/
syntax match keyword /frame-relay switching/
syntax match keyword /frame-relay traffic-rate/
syntax match keyword /frame-relay traffic-shaping/
syntax match keyword /frame-relay voice bandwidth/
syntax match keyword /framing/
syntax match keyword /framing/
syntax match keyword /fras backup dlsw/
syntax match keyword /fras ban/
syntax match keyword /fras ddr-backup/
syntax match keyword /fras map llc/
syntax match keyword /fras map sdlc/
syntax match keyword /fras-host ban/
syntax match keyword /fras-host bnn/
syntax match keyword /fras-host dlsw-local-ack/
syntax match keyword /freq-max-delay/
syntax match keyword /freq-max-deviation/
syntax match keyword /freq-max-power/
syntax match keyword /freq-min-power/
syntax match keyword /freq-pair/
syntax match keyword /freq-power-twist/
syntax match keyword /frequency/
syntax match keyword /full-duplex/
syntax match keyword /full-help/
syntax match keyword /gatekeeper/
syntax match keyword /gateway/
syntax match keyword /generic-pool/
syntax match keyword /gprs access-point-list/
syntax match keyword /gprs canonical-qos best-effort bandwidth-factor/
syntax match keyword /gprs canonical-qos gsn-resource-factor/
syntax match keyword /gprs canonical-qos map tos/
syntax match keyword /gprs canonical-qos premium mean-throughput-deviation/
syntax match keyword /gprs charging cdr-aggregation-limit/
syntax match keyword /gprs charging cdr-option local-record-sequence-number/
syntax match keyword /gprs charging cdr-option node-id/
syntax match keyword /gprs charging cg-path-requests/
syntax match keyword /gprs charging container volume-threshold/
syntax match keyword /gprs charging disable/
syntax match keyword /gprs charging flow-control private-echo/
syntax match keyword /gprs charging map data tos/
syntax match keyword /gprs charging packet-queue-size/
syntax match keyword /gprs charging path-protocol/
syntax match keyword /gprs charging server-switch-timer/
syntax match keyword /gprs charging tariff-time/
syntax match keyword /gprs charging transfer interval/
syntax match keyword /gprs default charging-gateway/
syntax match keyword /gprs default dhcp-server/
syntax match keyword /gprs default ip-address-pool/
syntax match keyword /gprs default radius-server/
syntax match keyword /gprs fastswitch/
syntax match keyword /gprs gtp error-indication throttle/
syntax match keyword /gprs gtp map signalling tos/
syntax match keyword /gprs gtp n3-buffer-size/
syntax match keyword /gprs gtp n3-requests/
syntax match keyword /gprs gtp path-echo-interval/
syntax match keyword /gprs gtp t3-response/
syntax match keyword /gprs gtp t3-tunnel/
syntax match keyword /gprs idle-pdp-context purge-timer/
syntax match keyword /gprs maximum-pdp-context-allowed/
syntax match keyword /gprs qos default-response requested/
syntax match keyword /gprs qos map canonical-qos/
syntax match keyword /gprs radius msisdn first-byte/
syntax match keyword /group/
syntax match keyword /group/
syntax match keyword /group range/
syntax match keyword /gw-accounting/
syntax match keyword /gw-type-prefix/
syntax match keyword /h225 timeout tcp establish/
syntax match keyword /h323 asr bandwidth/
syntax match keyword /h323 call start/
syntax match keyword /h323 gatekeeper/
syntax match keyword /h323 h323-id/
syntax match keyword /h323 interface/
syntax match keyword /h323 qos/
syntax match keyword /h323 t120/
syntax match keyword /h323-gateway voip bind srcaddr/
syntax match keyword /h323-gateway voip h323-id/
syntax match keyword /h323-gateway voip id/
syntax match keyword /h323-gateway voip tech-prefix/
syntax match keyword /half-duplex/
syntax match keyword /half-duplex controlled-carrier/
syntax match keyword /half-duplex timer/
syntax match keyword /hardware-address/
syntax match keyword /hash/
syntax match keyword /help/
syntax match keyword /history/
syntax match keyword /history size/
syntax match keyword /hold-character/
syntax match keyword /hold-queue/
syntax match keyword /holding-time/
syntax match keyword /hops-of-statistics-kept/
syntax match keyword /host/
syntax match keyword /hostname/
syntax match keyword /hours-of-statistics-kept/
syntax match keyword /hssi external-loop-request/
syntax match keyword /hssi internal-clock/
syntax match keyword /http-raw-request/
syntax match keyword /hub/
syntax match keyword /huntstop/
syntax match keyword /hw-module reload/
syntax match keyword /icpif/
syntax match keyword /idle/
syntax match keyword /idle-time/
syntax match keyword /idle-timeout/
syntax match keyword /idle-voltage/
syntax match keyword /ignore/
syntax match keyword /ignore lsa mospf/
syntax match keyword /ignore-dcd/
syntax match keyword /ignore-hw local-loopback/
syntax match keyword /ignore-lsp-errors/
syntax match keyword /ima active-links-minimum/
syntax match keyword /ima clock-mode/
syntax match keyword /ima differential-delay-maximum/
syntax match keyword /ima frame-length/
syntax match keyword /ima test/
syntax match keyword /ima-group/
syntax match keyword /image resolution/
syntax match keyword /imaging encoding/
syntax match keyword /imli manage/
syntax match keyword /impedance/
syntax match keyword /import all/
syntax match keyword /import map/
syntax match keyword /inarp/
syntax match keyword /incoming called-number/
syntax match keyword /index/
syntax match keyword /information-type/
syntax match keyword /initiate-to/
syntax match keyword /input gain/
syntax match keyword /input-queue/
syntax match keyword /insecure/
syntax match keyword /inservice/
syntax match keyword /interface XTagATM/
syntax match keyword /interface atm/
syntax match keyword /interface atm ima/
syntax match keyword /interface bri/
syntax match keyword /interface bvi/
syntax match keyword /interface cbr/
syntax match keyword /interface channel/
syntax match keyword /interface ctunnel/
syntax match keyword /interface dialer/
"syntax match keyword /interface fastethernet/
syntax match keyword /interface gigabitethernet/
syntax match keyword /interface group-async/
syntax match keyword /interface multilink/
syntax match keyword /interface port-channel/
syntax match keyword /interface pos/
"syntax match keyword /interface serial/
syntax match keyword /interface serial multipoint/
syntax match keyword /interface vg-anylan/
syntax match keyword /interface virtual-template/
syntax match keyword /interface virtual-tokenring/
syntax match keyword /interface vlan/
syntax match keyword /international/
syntax match keyword /invert data/
syntax match keyword /invert rxclock/
syntax match keyword /invert txclock/
syntax match keyword /invert-transmit-clock/
syntax match keyword /ip access-group/
syntax match keyword /ip access-list/
syntax match keyword /ip accounting/
syntax match keyword /ip accounting-list/
syntax match keyword /ip accounting-threshold/
syntax match keyword /ip accounting-transits/
syntax match keyword /ip address/
syntax match keyword /ip address dhcp/
syntax match keyword /ip address negotiated/
syntax match keyword /ip address-pool/
syntax match keyword /ip alias/
syntax match keyword /ip as-path access-list/
syntax match keyword /ip audit/
syntax match keyword /ip audit attack/
syntax match keyword /ip audit info/
syntax match keyword /ip audit name/
syntax match keyword /ip audit notify/
syntax match keyword /ip audit po local/
syntax match keyword /ip audit po max-events/
syntax match keyword /ip audit po protected/
syntax match keyword /ip audit po remote/
syntax match keyword /ip audit signature/
syntax match keyword /ip audit smtp/
syntax match keyword /ip auth-proxy/
syntax match keyword /ip auth-proxy auth-cache-time/
syntax match keyword /ip auth-proxy auth-proxy-banner/
syntax match keyword /ip auth-proxy name/
syntax match keyword /ip authentication key-chain eigrp/
syntax match keyword /ip authentication mode eigrp/
syntax match keyword /ip bandwidth-percent eigrp/
syntax match keyword /ip bgp-community new-format/
syntax match keyword /ip bootp server/
syntax match keyword /ip broadcast-address/
syntax match keyword /ip cache-invalidate-delay/
syntax match keyword /ip casa/
syntax match keyword /ip cef/
syntax match keyword /ip cef accounting/
syntax match keyword /ip cef distributed/
syntax match keyword /ip cef traffic-statistics/
syntax match keyword /ip cgmp/
syntax match keyword /ip classless/
syntax match keyword /ip community-list/
syntax match keyword /ip default-gateway/
syntax match keyword /ip default-network/
syntax match keyword /ip dhcp conflict logging/
syntax match keyword /ip dhcp database/
syntax match keyword /ip dhcp excluded-address/
syntax match keyword /ip dhcp ping packets/
syntax match keyword /ip dhcp ping timeout/
syntax match keyword /ip dhcp pool/
syntax match keyword /ip dhcp relay information check/
syntax match keyword /ip dhcp relay information option/
syntax match keyword /ip dhcp relay information policy/
syntax match keyword /ip dhcp smart-relay/
syntax match keyword /ip dhcp-server/
syntax match keyword /ip directed-broadcast/
syntax match keyword /ip director default-weights/
syntax match keyword /ip director dfp/
syntax match keyword /ip director dfp security/
syntax match keyword /ip director host priority/
syntax match keyword /ip director host weights/
syntax match keyword /ip director server availability/
syntax match keyword /ip director server port availability/
syntax match keyword /ip domain-list/
syntax match keyword /ip domain-lookup/
syntax match keyword /ip domain-lookup nsap/
syntax match keyword /ip domain-name/
syntax match keyword /ip drp access-group/
syntax match keyword /ip drp authentication key-chain/
syntax match keyword /ip drp server/
syntax match keyword /ip dvmrp accept-filter/
syntax match keyword /ip dvmrp auto-summary/
syntax match keyword /ip dvmrp default-information/
syntax match keyword /ip dvmrp metric/
syntax match keyword /ip dvmrp metric-offset/
syntax match keyword /ip dvmrp output-report-delay/
syntax match keyword /ip dvmrp reject-non-pruners/
syntax match keyword /ip dvmrp route-limit/
syntax match keyword /ip dvmrp routehog-notification/
syntax match keyword /ip dvmrp summary-address/
syntax match keyword /ip dvmrp unicast-routing/
syntax match keyword /ip explicit-path/
syntax match keyword /ip finger/
syntax match keyword /ip flow-aggregation cache/
syntax match keyword /ip flow-cache entries/
syntax match keyword /ip flow-export/
syntax match keyword /ip forward-protocol/
syntax match keyword /ip forward-protocol any-local-broadcast/
syntax match keyword /ip forward-protocol spanning-tree/
syntax match keyword /ip forward-protocol turbo-flood/
syntax match keyword /ip ftp passive/
syntax match keyword /ip ftp password/
syntax match keyword /ip ftp source-interface/
syntax match keyword /ip ftp username/
syntax match keyword /ip hello-interval eigrp/
syntax match keyword /ip helper-address/
syntax match keyword /ip hold-time eigrp/
syntax match keyword /ip host/
syntax match keyword /ip hp-host/
syntax match keyword /ip http access-class/
syntax match keyword /ip http authentication/
syntax match keyword /ip http port/
syntax match keyword /ip http server/
syntax match keyword /ip icmp rate-limit unreachable/
syntax match keyword /ip igmp access-group/
syntax match keyword /ip igmp helper-address/
syntax match keyword /ip igmp join-group/
syntax match keyword /ip igmp mroute-proxy/
syntax match keyword /ip igmp proxy-service/
syntax match keyword /ip igmp query-interval/
syntax match keyword /ip igmp query-max-response-time/
syntax match keyword /ip igmp query-timeout/
syntax match keyword /ip igmp static-group/
syntax match keyword /ip igmp unidirectional-link/
syntax match keyword /ip igmp v3lite/
syntax match keyword /ip inspect/
syntax match keyword /ip inspect alert-off/
syntax match keyword /ip inspect audit trail/
syntax match keyword /ip inspect dns-timeout/
syntax match keyword /ip inspect max-incomplete high/
syntax match keyword /ip inspect max-incomplete low/
syntax match keyword /ip inspect name/
syntax match keyword /ip inspect one-minute high/
syntax match keyword /ip inspect one-minute low/
syntax match keyword /ip inspect tcp finwait-time/
syntax match keyword /ip inspect tcp idle-time/
syntax match keyword /ip inspect tcp max-incomplete host/
syntax match keyword /ip inspect tcp synwait-time/
syntax match keyword /ip inspect udp idle-time/
syntax match keyword /ip irdp/
syntax match keyword /ip irdp holdtime/
syntax match keyword /ip irdp maxadvertinterval/
syntax match keyword /ip irdp multicast/
syntax match keyword /ip load-sharing/
syntax match keyword /ip local policy route-map/
syntax match keyword /ip local-pool/
syntax match keyword /ip mask-reply/
syntax match keyword /ip mobile arp/
syntax match keyword /ip mobile foreign-agent/
syntax match keyword /ip mobile foreign-service/
syntax match keyword /ip mobile home-agent/
syntax match keyword /ip mobile homeagent address/
syntax match keyword /ip mobile homeagent standby/
syntax match keyword /ip mobile host/
syntax match keyword /ip mobile prefix-length/
syntax match keyword /ip mobile registration-lifetime/
syntax match keyword /ip mobile secure/
syntax match keyword /ip mobile tunnel/
syntax match keyword /ip mobile virtual-network/
syntax match keyword /ip mrm/
syntax match keyword /ip mrm accept-manager/
syntax match keyword /ip mrm manager/
syntax match keyword /ip mroute/
syntax match keyword /ip mroute-cache/
syntax match keyword /ip msdp border/
syntax match keyword /ip msdp cache-sa-state/
syntax match keyword /ip msdp default-peer/
syntax match keyword /ip msdp description/
syntax match keyword /ip msdp filter-sa-request/
syntax match keyword /ip msdp mesh-group/
syntax match keyword /ip msdp originator-id/
syntax match keyword /ip msdp peer/
syntax match keyword /ip msdp redistribute/
syntax match keyword /ip msdp sa-filter in/
syntax match keyword /ip msdp sa-filter out/
syntax match keyword /ip msdp sa-request/
syntax match keyword /ip msdp shutdown/
syntax match keyword /ip msdp ttl-threshold/
syntax match keyword /ip mtu/
syntax match keyword /ip multicast boundary/
syntax match keyword /ip multicast cache-headers/
syntax match keyword /ip multicast default-rpf-distance/
syntax match keyword /ip multicast heartbeat/
syntax match keyword /ip multicast helper-map/
syntax match keyword /ip multicast multipath/
syntax match keyword /ip multicast rate-limit/
syntax match keyword /ip multicast ttl-threshold/
syntax match keyword /ip multicast use-functional/
syntax match keyword /ip multicast-routing/
syntax match keyword /ip name-server/
syntax match keyword /ip nat/
syntax match keyword /ip nat inside destination/
syntax match keyword /ip nat inside source/
syntax match keyword /ip nat outside source/
syntax match keyword /ip nat pool/
syntax match keyword /ip nat service skinny tcp port/
syntax match keyword /ip nat translation/
syntax match keyword /ip nbar protocol-discovery/
syntax match keyword /ip netmask-format/
syntax match keyword /ip nhrp authentication/
syntax match keyword /ip nhrp holdtime/
syntax match keyword /ip nhrp interest/
syntax match keyword /ip nhrp map/
syntax match keyword /ip nhrp map multicast/
syntax match keyword /ip nhrp max-send/
syntax match keyword /ip nhrp network-id/
syntax match keyword /ip nhrp nhs/
syntax match keyword /ip nhrp record/
syntax match keyword /ip nhrp responder/
syntax match keyword /ip nhrp server-only/
syntax match keyword /ip nhrp trigger-svc/
syntax match keyword /ip nhrp use/
syntax match keyword /ip ospf authentication/
syntax match keyword /ip ospf authentication-key/
syntax match keyword /ip ospf cost/
syntax match keyword /ip ospf database-filter all out/
syntax match keyword /ip ospf dead-interval/
syntax match keyword /ip ospf demand-circuit/
syntax match keyword /ip ospf flood-reduction/
syntax match keyword /ip ospf hello-interval/
syntax match keyword /ip ospf message-digest-key/
syntax match keyword /ip ospf mtu-ignore/
syntax match keyword /ip ospf name-lookup/
syntax match keyword /ip ospf network/
syntax match keyword /ip ospf priority/
syntax match keyword /ip ospf retransmit-interval/
syntax match keyword /ip ospf transmit-delay/
syntax match keyword /ip pgm host/
syntax match keyword /ip pgm router/
syntax match keyword /ip pim/
syntax match keyword /ip pim accept-rp/
syntax match keyword /ip pim border/
syntax match keyword /ip pim bsr-border/
syntax match keyword /ip pim bsr-candidate/
syntax match keyword /ip pim message-interval/
syntax match keyword /ip pim minimum-vc-rate/
syntax match keyword /ip pim multipoint-signalling/
syntax match keyword /ip pim nbma-mode/
syntax match keyword /ip pim neighbor-filter/
syntax match keyword /ip pim query-interval/
syntax match keyword /ip pim register-rate-limit/
syntax match keyword /ip pim register-source/
syntax match keyword /ip pim rp-address/
syntax match keyword /ip pim rp-announce-filter/
syntax match keyword /ip pim rp-candidate/
syntax match keyword /ip pim send-rp-announce/
syntax match keyword /ip pim send-rp-discovery/
syntax match keyword /ip pim spt-threshold/
syntax match keyword /ip pim ssm/
syntax match keyword /ip pim state-refresh disable/
syntax match keyword /ip pim state-refresh origination-interval/
syntax match keyword /ip pim vc-count/
syntax match keyword /ip pim version/
syntax match keyword /ip policy route-map/
syntax match keyword /ip port-map/
syntax match keyword /ip precedence/
syntax match keyword /ip precedence/
syntax match keyword /ip prefix-list/
syntax match keyword /ip prefix-list description/
syntax match keyword /ip prefix-list sequence-number/
syntax match keyword /ip probe proxy/
syntax match keyword /ip proxy-arp/
syntax match keyword /ip radius source-interface/
syntax match keyword /ip rarp-server/
syntax match keyword /ip rcmd domain-lookup/
syntax match keyword /ip rcmd rcp-enable/
syntax match keyword /ip rcmd remote-host/
syntax match keyword /ip rcmd remote-username/
syntax match keyword /ip rcmd rsh-enable/
syntax match keyword /ip redirects/
syntax match keyword /ip reflexive-list timeout/
syntax match keyword /ip rgmp/
syntax match keyword /ip rip authentication key-chain/
syntax match keyword /ip rip authentication mode/
syntax match keyword /ip rip receive version/
syntax match keyword /ip rip send version/
syntax match keyword /ip rip triggered/
"syntax match keyword /ip route/
syntax match keyword /ip route vrf/
syntax match keyword /ip route-cache/
syntax match keyword /ip route-cache cef/
syntax match keyword /ip route-cache flow/
syntax match keyword /ip router isis/
syntax match keyword /ip routing/
syntax match keyword /ip rsvp atm-peak-rate-limit/
syntax match keyword /ip rsvp bandwidth/
syntax match keyword /ip rsvp burst policing/
syntax match keyword /ip rsvp dsbm candidate/
syntax match keyword /ip rsvp dsbm non-resv-send-limit/
syntax match keyword /ip rsvp flow-assist/
syntax match keyword /ip rsvp neighbor/
syntax match keyword /ip rsvp policy cops minimal/
syntax match keyword /ip rsvp policy cops report-all/
syntax match keyword /ip rsvp policy cops servers/
syntax match keyword /ip rsvp policy cops timeout/
syntax match keyword /ip rsvp policy default-reject/
syntax match keyword /ip rsvp pq-profile/
syntax match keyword /ip rsvp precedence/
syntax match keyword /ip rsvp reservation/
syntax match keyword /ip rsvp reservation-host/
syntax match keyword /ip rsvp sender/
syntax match keyword /ip rsvp sender-host/
syntax match keyword /ip rsvp signalling dscp/
syntax match keyword /ip rsvp svc-required/
syntax match keyword /ip rsvp tos/
syntax match keyword /ip rsvp udp-multicasts/
syntax match keyword /ip rtp compression-connections/
syntax match keyword /ip rtp header-compression/
syntax match keyword /ip rtp priority/
syntax match keyword /ip rtp reserve/
syntax match keyword /ip sap cache-timeout/
syntax match keyword /ip sap listen/
syntax match keyword /ip sdr cache-timeout/
syntax match keyword /ip sdr listen/
syntax match keyword /ip security add/
syntax match keyword /ip security aeso/
syntax match keyword /ip security allow-reserved/
syntax match keyword /ip security dedicated/
syntax match keyword /ip security eso-info/
syntax match keyword /ip security eso-max/
syntax match keyword /ip security eso-min/
syntax match keyword /ip security extended-allowed/
syntax match keyword /ip security first/
syntax match keyword /ip security ignore-authorities/
syntax match keyword /ip security implicit-labelling/
syntax match keyword /ip security multilevel/
syntax match keyword /ip security strip/
syntax match keyword /ip slb dfp/
syntax match keyword /ip slb serverfarm/
syntax match keyword /ip slb vserver/
syntax match keyword /ip source-route/
syntax match keyword /ip split-horizon/
syntax match keyword /ip split-horizon/
syntax match keyword /ip split-horizon eigrp/
syntax match keyword /ip ssh/
syntax match keyword /ip subnet-zero/
syntax match keyword /ip summary-address eigrp/
syntax match keyword /ip summary-address rip/
syntax match keyword /ip tacacs source-interface/
syntax match keyword /ip tcp async-mobility server/
syntax match keyword /ip tcp chunk-size/
syntax match keyword /ip tcp compression-connections/
syntax match keyword /ip tcp header-compression/
syntax match keyword /ip tcp intercept connection-timeout/
syntax match keyword /ip tcp intercept drop-mode/
syntax match keyword /ip tcp intercept finrst-timeout/
syntax match keyword /ip tcp intercept list/
syntax match keyword /ip tcp intercept max-incomplete high/
syntax match keyword /ip tcp intercept max-incomplete low/
syntax match keyword /ip tcp intercept mode/
syntax match keyword /ip tcp intercept one-minute high/
syntax match keyword /ip tcp intercept one-minute low/
syntax match keyword /ip tcp intercept watch-timeout/
syntax match keyword /ip tcp path-mtu-discovery/
syntax match keyword /ip tcp queuemax/
syntax match keyword /ip tcp selective-ack/
syntax match keyword /ip tcp synwait-time/
syntax match keyword /ip tcp timestamp/
syntax match keyword /ip tcp window-size/
syntax match keyword /ip telnet quiet/
syntax match keyword /ip telnet source-interface/
syntax match keyword /ip tftp source-interface/
syntax match keyword /ip tos/
syntax match keyword /ip trigger-authentication/
syntax match keyword /ip udp checksum/
syntax match keyword /ip unnumbered/
syntax match keyword /ip unreachables/
syntax match keyword /ip urd/
syntax match keyword /ip verify unicast reverse-path/
syntax match keyword /ip vrf/
syntax match keyword /ip vrf forwarding/
syntax match keyword /ip wccp/
syntax match keyword /ip wccp enable/
syntax match keyword /ip wccp group-address/
syntax match keyword /ip wccp group-list/
syntax match keyword /ip wccp group-listen/
syntax match keyword /ip wccp password/
syntax match keyword /ip wccp redirect/
syntax match keyword /ip wccp redirect exclude in/
syntax match keyword /ip wccp redirect-list/
syntax match keyword /ip wccp version/
syntax match keyword /ip-access-group/
syntax match keyword /ip-address-pool/
syntax match keyword /ipx access-group/
syntax match keyword /ipx access-list/
syntax match keyword /ipx accounting/
syntax match keyword /ipx accounting-list/
syntax match keyword /ipx accounting-threshold/
syntax match keyword /ipx accounting-transits/
syntax match keyword /ipx advertise-default-route-only/
syntax match keyword /ipx advertise-to-lost-route/
syntax match keyword /ipx backup-server-query-interval/
syntax match keyword /ipx bandwidth-percent eigrp/
syntax match keyword /ipx broadcast-fastswitching/
syntax match keyword /ipx compression cipx/
syntax match keyword /ipx default-output-rip-delay/
syntax match keyword /ipx default-output-sap-delay/
syntax match keyword /ipx default-route/
syntax match keyword /ipx default-triggered-rip-delay/
syntax match keyword /ipx default-triggered-rip-holddown/
syntax match keyword /ipx default-triggered-sap-delay/
syntax match keyword /ipx delay/
syntax match keyword /ipx down/
syntax match keyword /ipx encapsulation/
syntax match keyword /ipx flodding-unthrottled/
syntax match keyword /ipx gns-reply-disable/
syntax match keyword /ipx gns-response-delay/
syntax match keyword /ipx gns-round-robin/
syntax match keyword /ipx hello-interval eigrp/
syntax match keyword /ipx helper-address/
syntax match keyword /ipx helper-list/
syntax match keyword /ipx hold-down eigrp/
syntax match keyword /ipx hold-time eigrp/
syntax match keyword /ipx input-network-filter/
syntax match keyword /ipx input-sap-filter/
syntax match keyword /ipx internal-network/
syntax match keyword /ipx ipxwan/
syntax match keyword /ipx ipxwan error/
syntax match keyword /ipx ipxwan static/
syntax match keyword /ipx link-delay/
syntax match keyword /ipx linkup-request/
syntax match keyword /ipx maximum-hops/
syntax match keyword /ipx maximum-paths/
syntax match keyword /ipx nasi-server enable/
syntax match keyword /ipx netbios input-access-filter/
syntax match keyword /ipx netbios output-access-filter/
syntax match keyword /ipx netbios-socket-input-checks/
syntax match keyword /ipx network/
syntax match keyword /ipx nhrp authentication/
syntax match keyword /ipx nhrp holdtime/
syntax match keyword /ipx nhrp interest/
syntax match keyword /ipx nhrp map/
syntax match keyword /ipx nhrp max-send/
syntax match keyword /ipx nhrp network-id/
syntax match keyword /ipx nhrp nhs/
syntax match keyword /ipx nhrp record/
syntax match keyword /ipx nhrp responder/
syntax match keyword /ipx nhrp use/
syntax match keyword /ipx nlsp csnp-interval/
syntax match keyword /ipx nlsp enable/
syntax match keyword /ipx nlsp hello-interval/
syntax match keyword /ipx nlsp hello-muliplier/
syntax match keyword /ipx nlsp lsp-interval/
syntax match keyword /ipx nlsp metric/
syntax match keyword /ipx nlsp multicast/
syntax match keyword /ipx nlsp priority/
syntax match keyword /ipx nlsp retransmit-interval/
syntax match keyword /ipx nlsp rip/
syntax match keyword /ipx nlsp sap/
syntax match keyword /ipx output-ggs-filter/
syntax match keyword /ipx output-gns-filter/
syntax match keyword /ipx output-rip-delay/
syntax match keyword /ipx output-sap-delay/
syntax match keyword /ipx output-sap-filter/
syntax match keyword /ipx pad-process-switched-packets/
syntax match keyword /ipx per-host-load-share/
syntax match keyword /ipx ping-default/
syntax match keyword /ipx potential-pseudonode/
syntax match keyword /ipx ppp-client/
syntax match keyword /ipx rip-max-packetsize/
syntax match keyword /ipx rip-multiplier/
syntax match keyword /ipx rip-queue-maximum/
syntax match keyword /ipx rip-response-delay/
syntax match keyword /ipx rip-update-queue-maximum/
syntax match keyword /ipx route/
syntax match keyword /ipx route-cache/
syntax match keyword /ipx route-cache inactivity-timeout/
syntax match keyword /ipx route-cache max-size/
syntax match keyword /ipx route-cache update-timeout/
syntax match keyword /ipx router/
syntax match keyword /ipx router-filter/
syntax match keyword /ipx router-sap-filter/
syntax match keyword /ipx routing/
syntax match keyword /ipx sap/
syntax match keyword /ipx sap follow-route-path/
syntax match keyword /ipx sap-helper/
syntax match keyword /ipx sap-incremental/
syntax match keyword /ipx sap-incremental split-horizon/
syntax match keyword /ipx sap-multiplier/
syntax match keyword /ipx sap-queue-maximum/
syntax match keyword /ipx sap-update-queue-maximum/
syntax match keyword /ipx server-split-horizon-on-serverpaths/
syntax match keyword /ipx split-horizon eigrp/
syntax match keyword /ipx spx-idle-time/
syntax match keyword /ipx spx-spoof/
syntax match keyword /ipx throughput/
syntax match keyword /ipx triggered-rip-delay/
syntax match keyword /ipx triggered-sap-delay/
syntax match keyword /ipx triggered-sap-holddown/
syntax match keyword /ipx type-20-helpered/
syntax match keyword /ipx type-20-input-checks/
syntax match keyword /ipx type-20-output-checks/
syntax match keyword /ipx type-20-propagation/
syntax match keyword /ipx update interval/
syntax match keyword /ipx update sap-after-rip/
syntax match keyword /ipx watchdog/
syntax match keyword /ipx watchdog-spoof/
syntax match keyword /is-type/
syntax match keyword /isdn all-incoming-calls-v120/
syntax match keyword /isdn answer1/
syntax match keyword /isdn answer2/
syntax match keyword /isdn autodetect/
syntax match keyword /isdn bchan-number-order/
syntax match keyword /isdn busy/
syntax match keyword /isdn call interface/
syntax match keyword /isdn caller/
syntax match keyword /isdn calling-number/
syntax match keyword /isdn calling-pty/
syntax match keyword /isdn conference-code/
syntax match keyword /isdn contiguous-bchan/
syntax match keyword /isdn disconnect interface/
syntax match keyword /isdn disconnect-cause/
syntax match keyword /isdn fast-rollover-delay/
syntax match keyword /isdn gateway-max-interworking/
syntax match keyword /isdn global-disconnect/
syntax match keyword /isdn guard-timer/
syntax match keyword /isdn i-number/
syntax match keyword /isdn incoming-voice/
syntax match keyword /isdn layer1-emulate/
syntax match keyword /isdn leased-line bri 128/
syntax match keyword /isdn map/
syntax match keyword /isdn negotiate-bchan/
syntax match keyword /isdn network-failure-cause/
syntax match keyword /isdn not-end-to-end/
syntax match keyword /isdn nsf-service/
syntax match keyword /isdn outgoing-voice/
syntax match keyword /isdn overlap-receiving/
syntax match keyword /isdn point-to-point-setup/
syntax match keyword /isdn protocol-emulate/
syntax match keyword /isdn rlm-group/
syntax match keyword /isdn send-alerting/
syntax match keyword /isdn sending-complete/
syntax match keyword /isdn service/
syntax match keyword /isdn snmp busyout b-channel/
syntax match keyword /isdn spid1/
syntax match keyword /isdn spid2/
syntax match keyword /isdn switch-type/
syntax match keyword /isdn t306/
syntax match keyword /isdn t310/
syntax match keyword /isdn tei-negotiation/
syntax match keyword /isdn transfer-code/
syntax match keyword /isdn twait-disable/
syntax match keyword /isdn voice-priority/
syntax match keyword /isdn x25 dchannel/
syntax match keyword /isdn x25 static-tei/
syntax match keyword /isis adjacency-filter/
syntax match keyword /isis circuit-type/
syntax match keyword /isis csnp-interval/
syntax match keyword /isis display delimiter/
syntax match keyword /isis display delimiter/
syntax match keyword /isis hello-interval/
syntax match keyword /isis hello-multiplier/
syntax match keyword /isis lsp-interval/
syntax match keyword /isis mesh-group/
syntax match keyword /isis metric/
syntax match keyword /isis password/
syntax match keyword /isis priority/
syntax match keyword /isis retransmit-interval/
syntax match keyword /isis retransmit-throttle-interval/
syntax match keyword /iso-igrp adjacency-filter/
syntax match keyword /ivr autoload/
syntax match keyword /ivr autoload mode/
syntax match keyword /ivr autoload retry/
syntax match keyword /ivr prompt memory/
syntax match keyword /keepalive/
syntax match keyword /keepalive/
syntax match keyword /keepalive-lifetime/
syntax match keyword /keepalive-time/
syntax match keyword /kerberos clients mandatory/
syntax match keyword /kerberos credentials forward/
syntax match keyword /kerberos instance map/
syntax match keyword /kerberos local-realm/
syntax match keyword /kerberos preauth/
syntax match keyword /kerberos realm/
syntax match keyword /kerberos server/
syntax match keyword /kerberos srvtab entry/
syntax match keyword /kerberos srvtab remote/
syntax match keyword /key/
syntax match keyword /key chain/
syntax match keyword /key config-key/
syntax match keyword /key-string/
syntax match keyword /key-string/
syntax match keyword /keylen/
syntax match keyword /keymap/
syntax match keyword /keymap-type/
syntax match keyword /l2f ignore-mid-sequence/
syntax match keyword /l2relay echo-interval/
syntax match keyword /l2relay flow-control/
syntax match keyword /l2relay pilot-uid/
syntax match keyword /l2relay use-interface/
syntax match keyword /l2tp drop out-of-order/
syntax match keyword /l2tp flow-control backoff-queuesize/
syntax match keyword /l2tp flow-control maximum-ato/
syntax match keyword /l2tp flow-control receive-window/
syntax match keyword /l2tp flow-control static-rtt/
syntax match keyword /l2tp hidden/
syntax match keyword /l2tp ip tos reflect/
syntax match keyword /l2tp ip udp checksum/
syntax match keyword /l2tp offset/
syntax match keyword /l2tp tunnel authentication/
syntax match keyword /l2tp tunnel hello/
syntax match keyword /l2tp tunnel password/
syntax match keyword /lan/
syntax match keyword /lan-name/
syntax match keyword /lane auto-config-atm-address/
syntax match keyword /lane bus-atm-address/
syntax match keyword /lane client/
syntax match keyword /lane client flush/
syntax match keyword /lane client mpoa client name/
syntax match keyword /lane client mpoa server name/
syntax match keyword /lane client-atm-address/
syntax match keyword /lane config database/
syntax match keyword /lane config-atm-address/
syntax match keyword /lane database/
syntax match keyword /lane fixed-config-atm-address/
syntax match keyword /lane fssrp/
syntax match keyword /lane global-lecs-address/
syntax match keyword /lane le-arp/
syntax match keyword /lane server-atm-address/
syntax match keyword /lane server-bus/
syntax match keyword /lapb interface-outage/
syntax match keyword /lapb k/
syntax match keyword /lapb modulo/
syntax match keyword /lapb n1/
syntax match keyword /lapb n2/
syntax match keyword /lapb protocol/
syntax match keyword /lapb t1/
syntax match keyword /lapb t4/
syntax match keyword /lat/
syntax match keyword /lat access-list/
syntax match keyword /lat enabled/
syntax match keyword /lat group-list/
syntax match keyword /lat host-buffers/
syntax match keyword /lat host-delay/
syntax match keyword /lat ka-timer/
syntax match keyword /lat node/
syntax match keyword /lat out-group/
syntax match keyword /lat remote-modification/
syntax match keyword /lat retransmit-limit/
syntax match keyword /lat server-buffers/
syntax match keyword /lat service auto/
syntax match keyword /lat service enabled/
syntax match keyword /lat service ident/
syntax match keyword /lat service password/
syntax match keyword /lat service rating/
syntax match keyword /lat service rotary/
syntax match keyword /lat service timer/
syntax match keyword /lat service-announcements/
syntax match keyword /lat service-group/
syntax match keyword /lat service-responder/
syntax match keyword /lat service-timer/
syntax match keyword /lat vc-sessions/
syntax match keyword /lat vc-timer/
syntax match keyword /lbo/
syntax match keyword /lcp renegotiation/
syntax match keyword /lease/
syntax match keyword /length/
syntax match keyword /lex burned-in-address/
syntax match keyword /lex input-address-list/
syntax match keyword /lex input-type-list/
syntax match keyword /lex priority-group/
syntax match keyword /lex retry-count/
syntax match keyword /lex timeout/
syntax match keyword /lifetime/
syntax match keyword /limit base-size/
syntax match keyword /limit overflow-size/
syntax match keyword /line/
syntax match keyword /line-power/
syntax match keyword /linecode/
syntax match keyword /link/
syntax match keyword /link-test/
syntax match keyword /list/
syntax match keyword /listen-point/
syntax match keyword /lives-of-history-kept/
syntax match keyword /llc2 ack-delay-time/
syntax match keyword /llc2 ack-max/
syntax match keyword /llc2 dynwind/
syntax match keyword /llc2 idle-time/
syntax match keyword /llc2 local-window/
syntax match keyword /llc2 n1/
syntax match keyword /llc2 n2/
syntax match keyword /llc2 nw/
syntax match keyword /llc2 recv-window/
syntax match keyword /llc2 send-window/
syntax match keyword /llc2 t1-time/
syntax match keyword /llc2 tbusy-time/
syntax match keyword /llc2 tpf-time/
syntax match keyword /llc2 trej-time/
syntax match keyword /llc2 xid-neg-val-time/
syntax match keyword /llc2 xid-retry-time/
syntax match keyword /lnm alternate/
syntax match keyword /lnm crs/
syntax match keyword /lnm disabled/
syntax match keyword /lnm express-buffer/
syntax match keyword /lnm loss-threshold/
syntax match keyword /lnm password/
syntax match keyword /lnm pathtrace-disabled/
syntax match keyword /lnm rem/
syntax match keyword /lnm rps/
syntax match keyword /lnm snmp-only/
syntax match keyword /lnm softerr/
syntax match keyword /load-interval/
syntax match keyword /loadsharing/
syntax match keyword /locaddr-priority/
syntax match keyword /locaddr-priority-list/
syntax match keyword /local name/
syntax match keyword /local-lnm/
syntax match keyword /location/
syntax match keyword /lock/
syntax match keyword /lockable/
syntax match keyword /log-adj-changes/
syntax match keyword /log-adjacency-changes/
syntax match keyword /log-neighbor-changes/
syntax match keyword /logging/
syntax match keyword /logging buffered/
syntax match keyword /logging console/
syntax match keyword /logging facility/
syntax match keyword /logging history/
syntax match keyword /logging history size/
syntax match keyword /logging linecard/
syntax match keyword /logging monitor/
syntax match keyword /logging on/
syntax match keyword /logging rate-limit/
syntax match keyword /logging source-interface/
syntax match keyword /logging synchronous/
syntax match keyword /logging trap/
syntax match keyword /login/
syntax match keyword /login authentication/
syntax match keyword /login-string/
syntax match keyword /logout-warning/
syntax match keyword /loop-detect/
syntax match keyword /loopback /
syntax match keyword /loopback applique/
syntax match keyword /loopback dte/
syntax match keyword /loopback line/
syntax match keyword /loopback local/
syntax match keyword /loopback remote/
syntax match keyword /loss-plan/
syntax match keyword /lrq forward-queries/
syntax match keyword /lrq reject-unknown-prefix/
syntax match keyword /lrq timeout blast window/
syntax match keyword /lrq timeout seq delay/
syntax match keyword /lsap/
syntax match keyword /lsp-gen-interval/
syntax match keyword /lsp-mtu/
syntax match keyword /lsp-refresh-interval/
syntax match keyword /lsr-path/
syntax match keyword /lu deletion/
syntax match keyword /lu termination/
syntax match keyword /mac-address/
syntax match keyword /manager/
syntax match keyword /map-class atm/
syntax match keyword /map-class dialer/
syntax match keyword /map-class frame-relay/
syntax match keyword /map-group/
syntax match keyword /map-list/
syntax match keyword /mask destination/
syntax match keyword /mask source/
syntax match keyword /match access-group/
syntax match keyword /match address/
syntax match keyword /match any/
syntax match keyword /match as-path/
syntax match keyword /match class-map/
syntax match keyword /match clns address/
syntax match keyword /match clns next-hop/
syntax match keyword /match clns route-source/
syntax match keyword /match community-list/
syntax match keyword /match cos/
syntax match keyword /match destination-address mac/
syntax match keyword /match input-interface/
syntax match keyword /match interface/
syntax match keyword /match interface/
syntax match keyword /match ip address/
syntax match keyword /match ip dscp/
syntax match keyword /match ip next-hop/
syntax match keyword /match ip precedence/
syntax match keyword /match ip route-source/
syntax match keyword /match ip rtp/
syntax match keyword /match length/
syntax match keyword /match metric/
syntax match keyword /match mpls experimental/
syntax match keyword /match nlri/
syntax match keyword /match not/
syntax match keyword /match protocol/
syntax match keyword /match protocol citrix/
syntax match keyword /match protocol http/
syntax match keyword /match qos-group/
syntax match keyword /match route-type/
syntax match keyword /match source-address mac/
syntax match keyword /match tag/
syntax match keyword /max bandwidth/
syntax match keyword /max vc/
syntax match keyword /max-connection/
syntax match keyword /max-forwards/
syntax match keyword /max-llc2-sessions/
syntax match keyword /max-lsp-lifetime/
syntax match keyword /max-redirects/
syntax match keyword /max-reserved-bandwidth/
syntax match keyword /maxconns/
syntax match keyword /maximum routes/
syntax match keyword /maximum-lus/
syntax match keyword /maximum-paths/
syntax match keyword /mdl/
syntax match keyword /mdn/
syntax match keyword /media-type/
syntax match keyword /media-type half-duplex/
syntax match keyword /member/
syntax match keyword /member/
syntax match keyword /memory scan/
syntax match keyword /memory-size iomem/
syntax match keyword /menu/
syntax match keyword /menu/
syntax match keyword /menu clear-screen/
syntax match keyword /menu default/
syntax match keyword /menu line-mode/
syntax match keyword /menu options/
syntax match keyword /menu prompt/
syntax match keyword /menu single-space/
syntax match keyword /menu status-line/
syntax match keyword /menu text/
syntax match keyword /menu title/
syntax match keyword /metric holddown/
syntax match keyword /metric maximum-hops/
syntax match keyword /metric weights/
syntax match keyword /metric weights/
syntax match keyword /metric-style narrow/
syntax match keyword /metric-style transition/
syntax match keyword /metric-style wide/
syntax match keyword /mgcp/
syntax match keyword /mgcp block-newcalls/
syntax match keyword /mgcp call-agent/
syntax match keyword /mgcp codec/
syntax match keyword /mgcp default-package/
syntax match keyword /mgcp dtmf-relay/
syntax match keyword /mgcp ip-tos/
syntax match keyword /mgcp max-waiting-delay/
syntax match keyword /mgcp modem passthru/
syntax match keyword /mgcp package-capability/
syntax match keyword /mgcp playout/
syntax match keyword /mgcp quality-threshold/
syntax match keyword /mgcp request retries/
syntax match keyword /mgcp request timeout/
syntax match keyword /mgcp restart-delay/
syntax match keyword /mgcp sdp simple/
syntax match keyword /mgcp vad/
syntax match keyword /microcode/
syntax match keyword /microcode reload/
syntax match keyword /microcode reload controller/
syntax match keyword /mid/
syntax match keyword /mkdir/
syntax match keyword /mls rp ip/
syntax match keyword /mls rp ip multicast/
syntax match keyword /mls rp ip multicast management-interface/
syntax match keyword /mls rp ipx/
syntax match keyword /mls rp locate ipx/
syntax match keyword /mls rp management-interface/
syntax match keyword /mls rp nde-address/
syntax match keyword /mls rp vlan-id/
syntax match keyword /mls rp vtp-domain/
syntax match keyword /mmoip aaa global-password/
syntax match keyword /mmoip aaa method fax accounting/
syntax match keyword /mmoip aaa method fax authentication/
syntax match keyword /mmoip aaa receive-accounting enable/
syntax match keyword /mmoip aaa receive-authentication enable/
syntax match keyword /mmoip aaa receive-id primary/
syntax match keyword /mmoip aaa receive-id secondary/
syntax match keyword /mmoip aaa send-accounting enable/
syntax match keyword /mmoip aaa send-authentication enable/
syntax match keyword /mmoip aaa send-id primary/
syntax match keyword /mmoip aaa send-id secondary/
syntax match keyword /mode/
syntax match keyword /mode ccs/
syntax match keyword /modem answer-timeout/
syntax match keyword /modem at-mode/
syntax match keyword /modem at-mode-permit/
syntax match keyword /modem autoconfigure discovery/
syntax match keyword /modem autoconfigure type/
syntax match keyword /modem autotest/
syntax match keyword /modem bad/
syntax match keyword /modem buffer-size/
syntax match keyword /modem busyout/
syntax match keyword /modem busyout-threshold/
syntax match keyword /modem callin/
syntax match keyword /modem callout/
syntax match keyword /modem country mica/
syntax match keyword /modem country microcom_hdms/
syntax match keyword /modem cts-required/
syntax match keyword /modem dialin/
syntax match keyword /modem dtr-active/
syntax match keyword /modem hold-reset/
syntax match keyword /modem host/
syntax match keyword /modem inout/
syntax match keyword /modem link-info poll time/
syntax match keyword /modem min-speed max-speed/
syntax match keyword /modem passthrough/
syntax match keyword /modem poll retry/
syntax match keyword /modem poll time/
syntax match keyword /modem printer/
syntax match keyword /modem recovery action/
syntax match keyword /modem recovery maintenance/
syntax match keyword /modem recovery threshold/
syntax match keyword /modem recovery-time/
syntax match keyword /modem ri-is-cd/
syntax match keyword /modem shutdown/
syntax match keyword /modem startup-test/
syntax match keyword /modem status-poll/
syntax match keyword /modem-pool/
syntax match keyword /modemcap edit/
syntax match keyword /modemcap entry/
syntax match keyword /mop device-code/
syntax match keyword /mop enabled/
syntax match keyword /mop retransmit-timer/
syntax match keyword /mop sysid/
syntax match keyword /more/
syntax match keyword /more begin/
syntax match keyword /more exclude/
syntax match keyword /more flh:logfile/
syntax match keyword /more include/
syntax match keyword /motd-banner/
syntax match keyword /mpls atm control-vc/
syntax match keyword /mpls atm vpi/
syntax match keyword /mpls ip/
syntax match keyword /mpls ip default-route/
syntax match keyword /mpls ip propagate-ttl/
syntax match keyword /mpls ip ttl-expiration pop/
syntax match keyword /mpls label range/
syntax match keyword /mpls mtu/
syntax match keyword /mpls traffic-eng/
syntax match keyword /mpls traffic-eng administrative-weight/
syntax match keyword /mpls traffic-eng area/
syntax match keyword /mpls traffic-eng attribute-flags/
syntax match keyword /mpls traffic-eng flooding thresholds/
syntax match keyword /mpls traffic-eng link timers bandwidth-hold/
syntax match keyword /mpls traffic-eng link timers periodic-flooding/
syntax match keyword /mpls traffic-eng link-management timers bandwidth-hold/
syntax match keyword /mpls traffic-eng link-management timers periodic-flooding/
syntax match keyword /mpls traffic-eng logging lsp/
syntax match keyword /mpls traffic-eng logging tunnel/
syntax match keyword /mpls traffic-eng reoptimize/
syntax match keyword /mpls traffic-eng reoptimize events/
syntax match keyword /mpls traffic-eng reoptimize timers frequency/
syntax match keyword /mpls traffic-eng router-id/
syntax match keyword /mpls traffic-eng signaling advertise implicit-null/
syntax match keyword /mpls traffic-eng tunnels/
syntax match keyword /mpoa client config name/
syntax match keyword /mpoa client name/
syntax match keyword /mpoa server config name/
syntax match keyword /mpoa server name/
syntax match keyword /mpoa server name trigger ip-address/
syntax match keyword /mrinfo/
syntax match keyword /mrm/
syntax match keyword /mstat/
syntax match keyword /mta receive aliases/
syntax match keyword /mta receive generate-mdn/
syntax match keyword /mta receive maximum-recipients/
syntax match keyword /mta send mail-from/
syntax match keyword /mta send origin-prefix/
syntax match keyword /mta send postmaster/
syntax match keyword /mta send return-receipt-to/
syntax match keyword /mta send server/
syntax match keyword /mta send subject/
syntax match keyword /mtrace/
syntax match keyword /mtu/
syntax match keyword /multicast/
syntax match keyword /multilink bundle-name/
syntax match keyword /multilink virtual-template/
syntax match keyword /multilink-group/
syntax match keyword /multiring/
syntax match keyword /multiring trcrf-vlan/
syntax match keyword /music-threshold/
syntax match keyword /name/
syntax match keyword /name/
syntax match keyword /name elan-id/
syntax match keyword /name local-seg-id/
syntax match keyword /name preempt/
syntax match keyword /name server-atm-address/
syntax match keyword /name-connection/
syntax match keyword /named-key/
syntax match keyword /nasi authentication/
syntax match keyword /nat/
syntax match keyword /national bit/
syntax match keyword /national reserve/
syntax match keyword /ncia/
syntax match keyword /ncia client/
syntax match keyword /ncia rsrb/
syntax match keyword /ncia server/
syntax match keyword /negotiation/
syntax match keyword /neighbor/
syntax match keyword /neighbor activate/
syntax match keyword /neighbor advertise-map non-exist-map/
syntax match keyword /neighbor advertisement-interval/
syntax match keyword /neighbor allowas-in/
syntax match keyword /neighbor as-override/
syntax match keyword /neighbor database-filter/
syntax match keyword /neighbor default-originate/
syntax match keyword /neighbor description/
syntax match keyword /neighbor distribute-list/
syntax match keyword /neighbor ebgp-multihop/
syntax match keyword /neighbor filter-list/
syntax match keyword /neighbor local-as/
syntax match keyword /neighbor maximum-prefix/
syntax match keyword /neighbor next-hop-self/
syntax match keyword /neighbor password/
syntax match keyword /neighbor peer-group/
syntax match keyword /neighbor prefix-list/
syntax match keyword /neighbor remote-as/
syntax match keyword /neighbor remove-private-as/
syntax match keyword /neighbor route-map/
syntax match keyword /neighbor route-reflector-client/
syntax match keyword /neighbor send-community/
syntax match keyword /neighbor shutdown/
syntax match keyword /neighbor soft-reconfiguration inbound/
syntax match keyword /neighbor unsuppress-map/
syntax match keyword /neighbor update-source/
syntax match keyword /neighbor version/
syntax match keyword /neighbor weight/
syntax match keyword /net /
syntax match keyword /netbios access-list/
syntax match keyword /netbios access-list bytes/
syntax match keyword /netbios access-list host/
syntax match keyword /netbios enable-name-cache/
syntax match keyword /netbios input-access-filter bytes/
syntax match keyword /netbios input-access-filter host/
syntax match keyword /netbios name-cache/
syntax match keyword /netbios name-cache name-len/
syntax match keyword /netbios name-cache proxy-datagram/
syntax match keyword /netbios name-cache query-timeout/
syntax match keyword /netbios name-cache recognized-timeout/
syntax match keyword /netbios name-cache timeout/
syntax match keyword /netbios nbf/
syntax match keyword /netbios output-access-filter bytes/
syntax match keyword /netbios output-access-filter host/
syntax match keyword /netbios-name-server/
syntax match keyword /netbios-node-type/
syntax match keyword /network/
syntax match keyword /network/
syntax match keyword /network area/
syntax match keyword /network backdoor/
syntax match keyword /network weight/
syntax match keyword /network-clock base-rate/
syntax match keyword /network-clock-priority/
syntax match keyword /network-clock-select/
syntax match keyword /network-clock-select/
syntax match keyword /network-clock-switch/
syntax match keyword /network-id/
syntax match keyword /next-address/
syntax match keyword /next-server/
syntax match keyword /no ip inspect/
syntax match keyword /no menu/
syntax match keyword /no snmp-server/
syntax match keyword /non-linear/
syntax match keyword /nrzi-encoding/
syntax match keyword /nsap/
syntax match keyword /ntp access-group/
syntax match keyword /ntp authenticate/
syntax match keyword /ntp authentication-key/
syntax match keyword /ntp broadcast/
syntax match keyword /ntp broadcast client/
syntax match keyword /ntp broadcastdelay/
syntax match keyword /ntp clock-period/
syntax match keyword /ntp disable/
syntax match keyword /ntp master/
syntax match keyword /ntp peer/
syntax match keyword /ntp refclock/
syntax match keyword /ntp server/
syntax match keyword /ntp source/
syntax match keyword /ntp trusted-key/
syntax match keyword /ntp update-calendar/
syntax match keyword /num-exp/
syntax match keyword /number/
syntax match keyword /numbering-type/
syntax match keyword /oam retry/
syntax match keyword /oam-bundle/
syntax match keyword /oam-pvc/
syntax match keyword /oam-range/
syntax match keyword /oam-svc/
syntax match keyword /offload/
syntax match keyword /offload/
syntax match keyword /offload alias/
syntax match keyword /offset-list/
syntax match keyword /operation/
syntax match keyword /option/
syntax match keyword /output attenuation/
syntax match keyword /output-delay/
syntax match keyword /owner/
syntax match keyword /pad/
syntax match keyword /padding/
syntax match keyword /parity/
syntax match keyword /parser cache/
syntax match keyword /partition/
syntax match keyword /partition avoidance/
syntax match keyword /partition flash/
syntax match keyword /passive-interface/
syntax match keyword /password/
syntax match keyword /path/
syntax match keyword /paths-of-statistics-kept/
syntax match keyword /peer default IP address/
syntax match keyword /periodic/
syntax match keyword /permission/
syntax match keyword /permit/
syntax match keyword /permit/
syntax match keyword /physical-layer/
syntax match keyword /ping/
syntax match keyword /ping sna/
syntax match keyword /playout-delay/
syntax match keyword /playout-delay mode/
syntax match keyword /police/
syntax match keyword /policy-map/
syntax match keyword /pool/
syntax match keyword /pool-member/
syntax match keyword /pool-range/
syntax match keyword /port/
syntax match keyword /port/
syntax match keyword /port media/
syntax match keyword /port modem autotest/
syntax match keyword /port signal/
syntax match keyword /pos ais-shut/
syntax match keyword /pos flag/
syntax match keyword /pos framing/
syntax match keyword /pos framing-sdh/
syntax match keyword /pos internal-clock/
syntax match keyword /pos report/
syntax match keyword /pos scramble-atm/
syntax match keyword /pos threshold/
syntax match keyword /posi framing-sdh/
syntax match keyword /pots call-waiting/
syntax match keyword /pots dialing-method/
syntax match keyword /pots disconnect-time/
syntax match keyword /pots distinctive-ring-guard-time/
syntax match keyword /pots encoding/
syntax match keyword /pots line-type/
syntax match keyword /pots ringing-freq/
syntax match keyword /pots silence-time/
syntax match keyword /pots tone-source/
syntax match keyword /ppp/
syntax match keyword /ppp accounting/
syntax match keyword /ppp authentication/
syntax match keyword /ppp authorization/
syntax match keyword /ppp bap call/
syntax match keyword /ppp bap callback/
syntax match keyword /ppp bap drop/
syntax match keyword /ppp bap link types/
syntax match keyword /ppp bap max/
syntax match keyword /ppp bap monitor load/
syntax match keyword /ppp bap number/
syntax match keyword /ppp bap timeout/
syntax match keyword /ppp bridge appletalk/
syntax match keyword /ppp bridge ip/
syntax match keyword /ppp bridge ipx/
syntax match keyword /ppp callback/
syntax match keyword /ppp chap hostname/
syntax match keyword /ppp chap password/
syntax match keyword /ppp chap refuse/
syntax match keyword /ppp chap wait/
syntax match keyword /ppp encrypt mppe/
syntax match keyword /ppp ipcp/
syntax match keyword /ppp lcp delay/
syntax match keyword /ppp lcp fast-start/
syntax match keyword /ppp link reorders/
syntax match keyword /ppp max-bad-auth/
syntax match keyword /ppp multilink/
syntax match keyword /ppp multilink fragment delay/
syntax match keyword /ppp multilink fragment disable/
syntax match keyword /ppp multilink fragment maximum/
syntax match keyword /ppp multilink group/
syntax match keyword /ppp multilink idle-link/
syntax match keyword /ppp multilink interleave/
syntax match keyword /ppp multilink links maximum/
syntax match keyword /ppp multilink links minimum/
syntax match keyword /ppp multilink load-threshold/
syntax match keyword /ppp pap/
syntax match keyword /ppp pap sent-username/
syntax match keyword /ppp quality/
syntax match keyword /ppp reliable-link/
syntax match keyword /ppp timeout/
syntax match keyword /ppp timeout authentication/
syntax match keyword /ppp timeout multilink link add/
syntax match keyword /ppp timeout multilink link remove/
syntax match keyword /ppp timeout multilink lost-fragment/
syntax match keyword /ppp timeout ncp/
syntax match keyword /ppp timeout retry/
syntax match keyword /pppoe enable/
syntax match keyword /pppoe limit per-mac/
syntax match keyword /pppoe limit per-vc/
syntax match keyword /pppoe limit per-vlan/
syntax match keyword /pppoe max-session/
syntax match keyword /pptp flow-control receive-window/
syntax match keyword /pptp flow-control static-rtt/
syntax match keyword /pptp tunnel echo/
syntax match keyword /prc-interval/
syntax match keyword /pre-dial delay/
syntax match keyword /precedence/
syntax match keyword /predictor/
syntax match keyword /preference/
syntax match keyword /preferred-nnserver/
syntax match keyword /prefix/
syntax match keyword /pri-group/
syntax match keyword /pri-group nec-fusion/
syntax match keyword /pri-group timeslots nfas_d/
syntax match keyword /printer/
syntax match keyword /priority/
syntax match keyword /priority-group/
syntax match keyword /priority-list/
syntax match keyword /priority-list default/
syntax match keyword /priority-list interface/
syntax match keyword /priority-list protocol/
syntax match keyword /priority-list protocol bstun/
syntax match keyword /priority-list protocol ip tcp/
syntax match keyword /priority-list queue-limit/
syntax match keyword /priority-list stun address/
syntax match keyword /private/
syntax match keyword /privilege /
syntax match keyword /privilege level/
syntax match keyword /profile/
syntax match keyword /profile incoming/
syntax match keyword /progress_ind/
syntax match keyword /prompt/
syntax match keyword /protect/
syntax match keyword /protocol/
syntax match keyword /protocol rlm port/
syntax match keyword /protocol-type/
syntax match keyword /proxy h323/
syntax match keyword /pu/
syntax match keyword /pu dlur/
syntax match keyword /pulse-time/
syntax match keyword /pvc/
syntax match keyword /pvc-bundle/
syntax match keyword /pvc-in-range/
syntax match keyword /pwd/
syntax match keyword /qllc accept-all-calls/
syntax match keyword /qllc dlsw/
syntax match keyword /qllc largest-packet/
syntax match keyword /qllc npsi-poll/
syntax match keyword /qllc partner/
syntax match keyword /qllc sap/
syntax match keyword /qllc srb/
syntax match keyword /qllc xid/
syntax match keyword /qos pre-classify/
syntax match keyword /question mark/
syntax match keyword /queue-limit/
syntax match keyword /queue-list default/
syntax match keyword /queue-list interface/
syntax match keyword /queue-list protocol/
syntax match keyword /queue-list protocol bstun/
syntax match keyword /queue-list protocol ip tcp/
syntax match keyword /queue-list queue byte-count/
syntax match keyword /queue-list queue limit/
syntax match keyword /radius-server/
syntax match keyword /radius-server attribute 188 format/
syntax match keyword /radius-server attribute 32 include-in-access-req/
syntax match keyword /radius-server attribute 44 include-in-access-req/
syntax match keyword /radius-server attribute 69 clear/
syntax match keyword /radius-server attribute 8 include-in-access-req/
syntax match keyword /radius-server attribute nas-port format/
syntax match keyword /radius-server configure-nas/
syntax match keyword /radius-server deadtime/
syntax match keyword /radius-server directed-request/
syntax match keyword /radius-server extended-portnames/
syntax match keyword /radius-server host/
syntax match keyword /radius-server host non-standard/
syntax match keyword /radius-server key/
syntax match keyword /radius-server optional passwords/
syntax match keyword /radius-server retransmit/
syntax match keyword /radius-server timeout/
syntax match keyword /radius-server vsa send/
syntax match keyword /random-detect/
syntax match keyword /random-detect dscp/
syntax match keyword /random-detect exponential-weighting-constant/
syntax match keyword /random-detect flow/
syntax match keyword /random-detect flow average-depth-factor/
syntax match keyword /random-detect flow count/
syntax match keyword /random-detect precedence/
syntax match keyword /random-detect-group/
syntax match keyword /range/
syntax match keyword /range pvc/
syntax match keyword /rate-limit/
syntax match keyword /rcapi number/
syntax match keyword /rcapi server/
syntax match keyword /rd/
syntax match keyword /real/
syntax match keyword /reassign/
syntax match keyword /receivers/
syntax match keyword /redistribute/
syntax match keyword /redistribute dvmrp/
syntax match keyword /redistribute static clns/
syntax match keyword /redistribute static ip/
syntax match keyword /refuse-message/
syntax match keyword /register/
syntax match keyword /registered-caller ring/
syntax match keyword /reload/
syntax match keyword /reload components/
syntax match keyword /remark/
syntax match keyword /rename/
syntax match keyword /req-qos/
syntax match keyword /request dialin/
syntax match keyword /request dialout/
syntax match keyword /request-data-size/
syntax match keyword /reset/
syntax match keyword /resource/
syntax match keyword /resource threshold/
syntax match keyword /resource-pool/
syntax match keyword /resource-pool aaa accounting ppp/
syntax match keyword /resource-pool aaa protocol/
syntax match keyword /resource-pool call treatment/
syntax match keyword /resource-pool call treatment discriminator/
syntax match keyword /resource-pool group resource/
syntax match keyword /resource-pool profile customer/
syntax match keyword /resource-pool profile discriminator/
syntax match keyword /resource-pool profile service/
syntax match keyword /resource-pool profile vpdn/
syntax match keyword /response-data-size/
syntax match keyword /response-time group/
syntax match keyword /response-timeout/
syntax match keyword /resume/
syntax match keyword /retry/
syntax match keyword /retry/
syntax match keyword /retry keepalive/
syntax match keyword /retry-delay/
syntax match keyword /retry-limit/
syntax match keyword /rif/
syntax match keyword /rif timeout/
syntax match keyword /rif validate-age/
syntax match keyword /rif validate-enable/
syntax match keyword /rif validate-enable-age/
syntax match keyword /rif validate-enable-route-cache/
syntax match keyword /ring/
syntax match keyword /ring cadence/
syntax match keyword /ring frequency/
syntax match keyword /ring number/
syntax match keyword /ring-speed/
syntax match keyword /rlogin/
syntax match keyword /rlogin trusted-localuser-source/
syntax match keyword /rlogin trusted-remoteuser-source local/
syntax match keyword /rmdir/
syntax match keyword /rmon/
syntax match keyword /rmon alarm/
syntax match keyword /rmon capture-userdata/
syntax match keyword /rmon collection history/
syntax match keyword /rmon collection host/
syntax match keyword /rmon collection matrix/
syntax match keyword /rmon event/
syntax match keyword /rmon queuesize/
syntax match keyword /roaming/
syntax match keyword /roaming/
syntax match keyword /root CEP/
syntax match keyword /root PROXY/
syntax match keyword /root TFTP/
syntax match keyword /rotary/
syntax match keyword /rotary-group/
syntax match keyword /route reflectors, bgp cluster-id/
syntax match keyword /route-aggregation/
syntax match keyword /route-map/
syntax match keyword /route-target/
syntax match keyword /router bgp/
syntax match keyword /router eigrp/
syntax match keyword /router igrp/
syntax match keyword /router isis/
syntax match keyword /router iso-igrp/
syntax match keyword /router mobile/
syntax match keyword /router odr/
syntax match keyword /router ospf/
syntax match keyword /router reflectors, bgp client-to-client reflection/
syntax match keyword /router rip/
syntax match keyword /router-id/
syntax match keyword /rsh/
syntax match keyword /rsrb remote-peer netbios-output-list/
syntax match keyword /rtr/
syntax match keyword /rtr key-chain/
syntax match keyword /rtr low memory/
syntax match keyword /rtr reaction-configuration/
syntax match keyword /rtr reaction-trigger/
syntax match keyword /rtr reset/
syntax match keyword /rtr responder/
syntax match keyword /rtr schedule/
syntax match keyword /rtsp client session history duration/
syntax match keyword /rtsp client session history records/
syntax match keyword /rule/
syntax match keyword /samples-of-history-kept/
syntax match keyword /sap-priority/
syntax match keyword /sap-priority-list/
syntax match keyword /scheduler allocate/
syntax match keyword /scheduler-interval/
syntax match keyword /scramble/
syntax match keyword /scrambling cell-payload/
syntax match keyword /scrambling-payload/
syntax match keyword /script activation/
syntax match keyword /script arap-callback/
syntax match keyword /script callback/
syntax match keyword /script connection/
syntax match keyword /script dialer/
syntax match keyword /script reset/
syntax match keyword /script startup/
syntax match keyword /sdlc address/
syntax match keyword /sdlc cts-delay/
syntax match keyword /sdlc dlsw/
syntax match keyword /sdlc dte-timeout/
syntax match keyword /sdlc frmr-disable/
syntax match keyword /sdlc hdx/
syntax match keyword /sdlc holdq/
syntax match keyword /sdlc k/
syntax match keyword /sdlc line-speed/
syntax match keyword /sdlc n1/
syntax match keyword /sdlc n2/
syntax match keyword /sdlc partner/
syntax match keyword /sdlc poll-limit-value/
syntax match keyword /sdlc poll-pause-timer/
syntax match keyword /sdlc poll-wait-timeout/
syntax match keyword /sdlc qllc-prtnr/
syntax match keyword /sdlc role/
syntax match keyword /sdlc rts-delay/
syntax match keyword /sdlc saps/
syntax match keyword /sdlc sdlc-largest-frame/
syntax match keyword /sdlc simultaneous/
syntax match keyword /sdlc slow-poll/
syntax match keyword /sdlc snrm-timer/
syntax match keyword /sdlc t1/
syntax match keyword /sdlc test serial/
syntax match keyword /sdlc virtual multidrop/
syntax match keyword /sdlc vmac/
syntax match keyword /sdlc xid/
syntax match keyword /sdlc xid-pause-timer/
syntax match keyword /sdllc partner/
syntax match keyword /sdllc ring-largest-frame/
syntax match keyword /sdllc sap/
syntax match keyword /sdllc sdlc-largest-frame/
syntax match keyword /sdllc traddr/
syntax match keyword /sdllc xid/
syntax match keyword /sec-profile/
syntax match keyword /security/
syntax match keyword /send/
syntax match keyword /send qdm message/
syntax match keyword /send-lifetime/
syntax match keyword /senders/
syntax match keyword /sequence-numbers/
syntax match keyword /server/
syntax match keyword /server registration-port/
syntax match keyword /server trigger/
syntax match keyword /servercert/
syntax match keyword /serverfarm/
syntax match keyword /service compress-config/
syntax match keyword /service config/
syntax match keyword /service decimal-tty/
syntax match keyword /service dhcp/
syntax match keyword /service exec-callback/
syntax match keyword /service exec-wait/
syntax match keyword /service finger/
syntax match keyword /service gprs/
syntax match keyword /service hide-telnet-address/
syntax match keyword /service linenumber/
syntax match keyword /service module t1 fdl/
syntax match keyword /service nagle/
syntax match keyword /service old-slip-prompts/
syntax match keyword /service pad/
syntax match keyword /service pad from-xot/
syntax match keyword /service pad to-xot/
syntax match keyword /service password-encryption/
syntax match keyword /service prompt config/
syntax match keyword /service pt-vty-logging/
syntax match keyword /service single-slot-reload-enable/
syntax match keyword /service slave-log/
syntax match keyword /service tcp-keepalives-in/
syntax match keyword /service tcp-keepalives-out/
syntax match keyword /service tcp-small-servers/
syntax match keyword /service telnet-zero-idle/
syntax match keyword /service timestamps/
syntax match keyword /service translation/
syntax match keyword /service udp-small-servers/
syntax match keyword /service-module 56k clock rate/
syntax match keyword /service-module 56k clock source/
syntax match keyword /service-module 56k data-coding/
syntax match keyword /service-module 56k network-type/
syntax match keyword /service-module 56k remote-loopback/
syntax match keyword /service-module 56k switched-carrier/
syntax match keyword /service-module t1 clock source/
syntax match keyword /service-module t1 data-coding/
syntax match keyword /service-module t1 framing/
syntax match keyword /service-module t1 lbo/
syntax match keyword /service-module t1 linecode/
syntax match keyword /service-module t1 remote-alarm-enable/
syntax match keyword /service-module t1 remote-loopback/
syntax match keyword /service-module t1 timeslots/
syntax match keyword /service-policy/
syntax match keyword /session protocol/
syntax match keyword /session protocol/
syntax match keyword /session protocol aal2/
syntax match keyword /session protocol multicast/
syntax match keyword /session target/
syntax match keyword /session target/
syntax match keyword /session transport/
syntax match keyword /session-limit/
syntax match keyword /session-timeout/
syntax match keyword /set as-path/
syntax match keyword /set atm-clp/
syntax match keyword /set automatic-tag/
syntax match keyword /set community/
syntax match keyword /set cos/
syntax match keyword /set dampening/
syntax match keyword /set default interface/
syntax match keyword /set interface/
syntax match keyword /set ip default next-hop/
syntax match keyword /set ip dscp/
syntax match keyword /set ip next-hop/
syntax match keyword /set ip next-hop/
syntax match keyword /set ip next-hop verify-availability/
syntax match keyword /set ip precedence/
syntax match keyword /set ip precedence/
syntax match keyword /set ip qos-group/
syntax match keyword /set level/
syntax match keyword /set local-preference/
syntax match keyword /set metric/
syntax match keyword /set metric/
syntax match keyword /set metric-type/
syntax match keyword /set metric-type/
syntax match keyword /set metric-type internal/
syntax match keyword /set mpls experimental/
syntax match keyword /set next-hop/
syntax match keyword /set nlri/
syntax match keyword /set origin/
syntax match keyword /set origin/
syntax match keyword /set ospf router-id/
syntax match keyword /set peer/
syntax match keyword /set peer/
syntax match keyword /set pfs/
syntax match keyword /set qos-group/
syntax match keyword /set security-association level per-host/
syntax match keyword /set security-association lifetime/
syntax match keyword /set session-key/
syntax match keyword /set tag/
syntax match keyword /set tag/
syntax match keyword /set transform-set/
syntax match keyword /set weight/
syntax match keyword /set-overload-bit/
syntax match keyword /settle-call/
syntax match keyword /settlement/
syntax match keyword /settlement roam-pattern/
syntax match keyword /setup/
syntax match keyword /sgbp dial-bids/
syntax match keyword /sgbp group/
syntax match keyword /sgbp member/
syntax match keyword /sgbp ppp-forward/
syntax match keyword /sgbp seed-bid/
syntax match keyword /sgcp/
syntax match keyword /sgcp call-agent/
syntax match keyword /sgcp max-waiting-delay/
syntax match keyword /sgcp modem passthru/
syntax match keyword /sgcp quarantine-buffer disable/
syntax match keyword /sgcp request retries/
syntax match keyword /sgcp request timeout/
syntax match keyword /sgcp restart/
syntax match keyword /sgcp retransmit timer/
syntax match keyword /sgcp timer/
syntax match keyword /sgcp tse payload/
syntax match keyword /shape/
syntax match keyword /shape adaptive/
syntax match keyword /shape fecn-adapt/
syntax match keyword /shape max-buffers/
syntax match keyword /shelf-id/
syntax match keyword /shortcut-frame-count/
syntax match keyword /shortcut-frame-time/
syntax match keyword /show/
syntax match keyword /show aal2 profile/
syntax match keyword /show access-expression/
syntax match keyword /show access-list compiled/
syntax match keyword /show access-lists/
syntax match keyword /show access-lists rate-limit/
syntax match keyword /show accounting/
syntax match keyword /show adjacency/
syntax match keyword /show aliases/
syntax match keyword /show alps ascu/
syntax match keyword /show alps circuits/
syntax match keyword /show alps peers/
syntax match keyword /show apollo arp/
syntax match keyword /show apollo interface/
syntax match keyword /show apollo route/
syntax match keyword /show apollo traffic/
syntax match keyword /show appletalk access-lists/
syntax match keyword /show appletalk adjacent-routes/
syntax match keyword /show appletalk arp/
syntax match keyword /show appletalk aurp events/
syntax match keyword /show appletalk aurp topology/
syntax match keyword /show appletalk cache/
syntax match keyword /show appletalk domain/
syntax match keyword /show appletalk eigrp interfaces/
syntax match keyword /show appletalk eigrp neighbors/
syntax match keyword /show appletalk eigrp topology/
syntax match keyword /show appletalk globals/
syntax match keyword /show appletalk interface/
syntax match keyword /show appletalk macip-clients/
syntax match keyword /show appletalk macip-servers/
syntax match keyword /show appletalk macip-traffic/
syntax match keyword /show appletalk name-cache/
syntax match keyword /show appletalk nbp/
syntax match keyword /show appletalk neighbors/
syntax match keyword /show appletalk remap/
syntax match keyword /show appletalk route/
syntax match keyword /show appletalk sockets/
syntax match keyword /show appletalk static/
syntax match keyword /show appletalk traffic/
syntax match keyword /show appletalk zone/
syntax match keyword /show aps/
syntax match keyword /show arap/
syntax match keyword /show arp/
syntax match keyword /show async status/
syntax match keyword /show async-bootp/
syntax match keyword /show atm arp-server/
syntax match keyword /show atm bundle/
syntax match keyword /show atm bundle statistics/
syntax match keyword /show atm class-links/
syntax match keyword /show atm interface atm/
syntax match keyword /show atm map/
syntax match keyword /show atm pvc/
syntax match keyword /show atm svc/
syntax match keyword /show atm svc ppp/
syntax match keyword /show atm traffic/
syntax match keyword /show atm vc/
syntax match keyword /show atm vc privileged/
syntax match keyword /show atm vp/
syntax match keyword /show begin/
syntax match keyword /show boot/
syntax match keyword /show bootvar/
syntax match keyword /show bridge/
syntax match keyword /show bridge circuit-group/
syntax match keyword /show bridge group/
syntax match keyword /show bridge multicast/
syntax match keyword /show bridge vlan/
syntax match keyword /show bsc/
syntax match keyword /show bstun/
syntax match keyword /show busyout/
syntax match keyword /show c2600/
syntax match keyword /show c7200/
syntax match keyword /show cable bundle/
syntax match keyword /show calendar/
syntax match keyword /show call active/
syntax match keyword /show call application voice/
syntax match keyword /show call calltracker active/
syntax match keyword /show call calltracker handle/
syntax match keyword /show call calltracker history/
syntax match keyword /show call calltracker summary/
syntax match keyword /show call fallback cache/
syntax match keyword /show call fallback config/
syntax match keyword /show call fallback stats/
syntax match keyword /show call history/
syntax match keyword /show call history video record/
syntax match keyword /show call history voice record/
syntax match keyword /show call progress tone/
syntax match keyword /show call resource voice stats/
syntax match keyword /show call resource voice threshold/
syntax match keyword /show call rsvp-sync conf/
syntax match keyword /show call rsvp-sync stats/
syntax match keyword /show caller/
syntax match keyword /show cdapi/
syntax match keyword /show cdp/
syntax match keyword /show cdp entry/
syntax match keyword /show cdp interface/
syntax match keyword /show cdp neighbors/
syntax match keyword /show cdp traffic/
syntax match keyword /show cef/
syntax match keyword /show cef interface/
syntax match keyword /show cef linecard/
syntax match keyword /show ces/
syntax match keyword /show ces circuit/
syntax match keyword /show ces clock-select/
syntax match keyword /show ces interface cbr/
syntax match keyword /show ces status/
syntax match keyword /show class-map/
syntax match keyword /show clns/
syntax match keyword /show clns cache/
syntax match keyword /show clns es-neighbors/
syntax match keyword /show clns filter-expr/
syntax match keyword /show clns filter-set/
syntax match keyword /show clns interface/
syntax match keyword /show clns is-neighbors/
syntax match keyword /show clns neighbor areas/
syntax match keyword /show clns neighbors/
syntax match keyword /show clns protocol/
syntax match keyword /show clns route/
syntax match keyword /show clns traffic/
syntax match keyword /show clock/
syntax match keyword /show cls/
syntax match keyword /show cmns/
syntax match keyword /show compress/
syntax match keyword /show configuration/
syntax match keyword /show connect/
syntax match keyword /show context/
syntax match keyword /show controllers/
syntax match keyword /show controllers XTagATM/
syntax match keyword /show controllers atm/
syntax match keyword /show controllers bri/
syntax match keyword /show controllers cbus/
syntax match keyword /show controllers channel/
syntax match keyword /show controllers e1/
syntax match keyword /show controllers e1 call-counters/
syntax match keyword /show controllers e1 cas-data/
syntax match keyword /show controllers ethernet/
syntax match keyword /show controllers fastethernet/
syntax match keyword /show controllers fddi/
syntax match keyword /show controllers gigabitethernet/
syntax match keyword /show controllers lex/
syntax match keyword /show controllers logging/
syntax match keyword /show controllers mci/
syntax match keyword /show controllers pcbus/
syntax match keyword /show controllers pos/
syntax match keyword /show controllers rs366/
syntax match keyword /show controllers serial/
syntax match keyword /show controllers t1/
syntax match keyword /show controllers t1 bert/
syntax match keyword /show controllers t1 call-counters/
syntax match keyword /show controllers t1 cas-data/
syntax match keyword /show controllers t1 timeslots/
syntax match keyword /show controllers t3/
syntax match keyword /show controllers tech-support/
syntax match keyword /show controllers timeslots/
syntax match keyword /show controllers token/
syntax match keyword /show controllers token/
syntax match keyword /show controllers vg-anylan/
syntax match keyword /show controllers voice/
syntax match keyword /show controllers vsi control-interface/
syntax match keyword /show controllers vsi descriptor/
syntax match keyword /show controllers vsi session/
syntax match keyword /show controllers vsi status/
syntax match keyword /show controllers vsi traffic/
syntax match keyword /show cops servers/
syntax match keyword /show cot dsp/
syntax match keyword /show cot request/
syntax match keyword /show cot summary/
syntax match keyword /show crypto ca certificates/
syntax match keyword /show crypto ca roots/
syntax match keyword /show crypto dynamic-map/
syntax match keyword /show crypto ipsec sa/
syntax match keyword /show crypto ipsec security-association lifetime/
syntax match keyword /show crypto ipsec transform-set/
syntax match keyword /show crypto isakmp policy/
syntax match keyword /show crypto isakmp sa/
syntax match keyword /show crypto key mypubkey rsa/
syntax match keyword /show crypto key pubkey-chain rsa/
syntax match keyword /show crypto map/
syntax match keyword /show csm/
syntax match keyword /show dbconn connection/
syntax match keyword /show dbconn license/
syntax match keyword /show dbconn ports/
syntax match keyword /show dbconn server/
syntax match keyword /show dbconn statistic/
syntax match keyword /show dbconn wlm/
syntax match keyword /show debugging/
syntax match keyword /show decnet/
syntax match keyword /show decnet accounting/
syntax match keyword /show decnet interface/
syntax match keyword /show decnet map/
syntax match keyword /show decnet neighbors/
syntax match keyword /show decnet route/
syntax match keyword /show decnet static/
syntax match keyword /show decnet traffic/
syntax match keyword /show dhcp/
syntax match keyword /show diag/
syntax match keyword /show diagbus/
syntax match keyword /show dial-peer video/
syntax match keyword /show dial-peer voice/
syntax match keyword /show dial-shelf/
syntax match keyword /show dial-shelf split/
syntax match keyword /show dialer/
syntax match keyword /show dialer dnis/
syntax match keyword /show dialer interface bri/
syntax match keyword /show dialer map/
syntax match keyword /show dialer sessions/
syntax match keyword /show dialplan incall number/
syntax match keyword /show dialplan number/
syntax match keyword /show dlsw capabilities/
syntax match keyword /show dlsw circuits/
syntax match keyword /show dlsw fastcache/
syntax match keyword /show dlsw peers/
syntax match keyword /show dlsw reachability/
syntax match keyword /show dlsw statistics/
syntax match keyword /show dlsw transparent cache/
syntax match keyword /show dlsw transparent map/
syntax match keyword /show dlsw transparent neighbor/
syntax match keyword /show dnsix/
syntax match keyword /show drip/
syntax match keyword /show dsc clock/
syntax match keyword /show dsi/
syntax match keyword /show dsip/
syntax match keyword /show dsip clients/
syntax match keyword /show dsip nodes/
syntax match keyword /show dsip ports/
syntax match keyword /show dsip queue/
syntax match keyword /show dsip tracing/
syntax match keyword /show dsip transport/
syntax match keyword /show dsip version/
syntax match keyword /show dspu/
syntax match keyword /show dxi map/
syntax match keyword /show dxi pvc/
syntax match keyword /show entry/
syntax match keyword /show environment/
syntax match keyword /show exclude/
syntax match keyword /show extended channel backup/
syntax match keyword /show extended channel cmgr/
syntax match keyword /show extended channel cmpc/
syntax match keyword /show extended channel connection-map llc2/
syntax match keyword /show extended channel csna/
syntax match keyword /show extended channel icmp-stack/
syntax match keyword /show extended channel ip-stack/
syntax match keyword /show extended channel lan/
syntax match keyword /show extended channel llc2/
syntax match keyword /show extended channel max-llc2-sessions/
syntax match keyword /show extended channel packing names/
syntax match keyword /show extended channel packing stats/
syntax match keyword /show extended channel statistics/
syntax match keyword /show extended channel subchannel/
syntax match keyword /show extended channel tcp-connections/
syntax match keyword /show extended channel tcp-stack/
syntax match keyword /show extended channel tg/
syntax match keyword /show extended channel tn3270-server/
syntax match keyword /show extended channel tn3270-server client-ip-address/
syntax match keyword /show extended channel tn3270-server client-name/
syntax match keyword /show extended channel tn3270-server dlur/
syntax match keyword /show extended channel tn3270-server dlurlink/
syntax match keyword /show extended channel tn3270-server nailed-domain/
syntax match keyword /show extended channel tn3270-server nailed-ip/
syntax match keyword /show extended channel tn3270-server nailed-name/
syntax match keyword /show extended channel tn3270-server pu/
syntax match keyword /show extended channel tn3270-server pu lu/
syntax match keyword /show extended channel tn3270-server response-time application/
syntax match keyword /show extended channel tn3270-server response-time global/
syntax match keyword /show extended channel tn3270-server response-time link/
syntax match keyword /show extended channel tn3270-server security/
syntax match keyword /show extended channel udp-listeners/
syntax match keyword /show extended channel udp-stack/
syntax match keyword /show extended max-llc2-sessions/
syntax match keyword /show file/
syntax match keyword /show file descriptors/
syntax match keyword /show file information/
syntax match keyword /show file systems/
syntax match keyword /show flash/
syntax match keyword /show flash chips/
syntax match keyword /show flash filesys/
syntax match keyword /show flh-log/
syntax match keyword /show frame-relay end-to-end keepalive/
syntax match keyword /show frame-relay ip rtp header-compression/
syntax match keyword /show frame-relay ip tcp header-compression/
syntax match keyword /show frame-relay lapf/
syntax match keyword /show frame-relay lmi/
syntax match keyword /show frame-relay map/
syntax match keyword /show frame-relay pvc/
syntax match keyword /show frame-relay qos-autosense/
syntax match keyword /show frame-relay route/
syntax match keyword /show frame-relay svc maplist/
syntax match keyword /show frame-relay traffic/
syntax match keyword /show frame-relay vofr/
syntax match keyword /show fras/
syntax match keyword /show fras map/
syntax match keyword /show fras-host/
syntax match keyword /show gatekeeper calls/
syntax match keyword /show gatekeeper endpoints/
syntax match keyword /show gatekeeper gw-type-prefix/
syntax match keyword /show gatekeeper servers/
syntax match keyword /show gatekeeper status/
syntax match keyword /show gatekeeper zone prefix/
syntax match keyword /show gatekeeper zone status/
syntax match keyword /show gateway/
syntax match keyword /show gprs access-point/
syntax match keyword /show gprs charging parameters/
syntax match keyword /show gprs charging statistics/
syntax match keyword /show gprs gtp parameters/
syntax match keyword /show gprs gtp path/
syntax match keyword /show gprs gtp pdp-context/
syntax match keyword /show gprs gtp statistics/
syntax match keyword /show gprs gtp status/
syntax match keyword /show gprs isgsn statistics/
syntax match keyword /show gsr/
syntax match keyword /show gt64010/
syntax match keyword /show history/
syntax match keyword /show hosts/
syntax match keyword /show hub/
syntax match keyword /show ima interface atm/
syntax match keyword /show include/
syntax match keyword /show interface XTagATM/
syntax match keyword /show interface cbr/
syntax match keyword /show interface dspfarm dsp/
syntax match keyword /show interface stats/
syntax match keyword /show interfaces/
syntax match keyword /show interfaces atm/
syntax match keyword /show interfaces bri/
syntax match keyword /show interfaces channel/
syntax match keyword /show interfaces crb/
syntax match keyword /show interfaces ctunnel/
syntax match keyword /show interfaces ethernet/
syntax match keyword /show interfaces ethernet accounting/
syntax match keyword /show interfaces fair-queue/
syntax match keyword /show interfaces fastethernet/
syntax match keyword /show interfaces fddi/
syntax match keyword /show interfaces fddi accounting/
syntax match keyword /show interfaces gigabitethernet/
syntax match keyword /show interfaces hssi/
syntax match keyword /show interfaces ip-brief/
syntax match keyword /show interfaces irb/
syntax match keyword /show interfaces lex/
syntax match keyword /show interfaces loopback/
syntax match keyword /show interfaces port-channel/
syntax match keyword /show interfaces pos/
syntax match keyword /show interfaces random-detect/
syntax match keyword /show interfaces rate-limit/
syntax match keyword /show interfaces serial/
syntax match keyword /show interfaces serial accounting/
syntax match keyword /show interfaces serial bchannel/
syntax match keyword /show interfaces tokenring/
syntax match keyword /show interfaces tokenring/
syntax match keyword /show interfaces tunnel/
syntax match keyword /show interfaces vg-anylan/
syntax match keyword /show interfaces virtual-access/
syntax match keyword /show ip access-list/
syntax match keyword /show ip accounting/
syntax match keyword /show ip aliases/
syntax match keyword /show ip arp/
syntax match keyword /show ip audit configuration/
syntax match keyword /show ip audit interface/
syntax match keyword /show ip audit statistics/
syntax match keyword /show ip auth-proxy/
syntax match keyword /show ip bgp/
syntax match keyword /show ip bgp cidr-only/
syntax match keyword /show ip bgp community/
syntax match keyword /show ip bgp community-list/
syntax match keyword /show ip bgp dampened-paths/
syntax match keyword /show ip bgp filter-list/
syntax match keyword /show ip bgp flap-statistics/
syntax match keyword /show ip bgp inconsistent-as/
syntax match keyword /show ip bgp ipv4/
syntax match keyword /show ip bgp ipv4 multicast/
syntax match keyword /show ip bgp ipv4 multicast summary/
syntax match keyword /show ip bgp neighbors/
syntax match keyword /show ip bgp paths/
syntax match keyword /show ip bgp peer-group/
syntax match keyword /show ip bgp regexp/
syntax match keyword /show ip bgp summary/
syntax match keyword /show ip bgp vpnv4/
syntax match keyword /show ip cache/
syntax match keyword /show ip cache flow/
syntax match keyword /show ip cache flow aggregation/
syntax match keyword /show ip cache policy/
syntax match keyword /show ip casa affinities/
syntax match keyword /show ip casa oper/
syntax match keyword /show ip casa stats/
syntax match keyword /show ip casa wildcard/
syntax match keyword /show ip cef/
syntax match keyword /show ip cef vrf/
syntax match keyword /show ip dhcp binding/
syntax match keyword /show ip dhcp conflict/
syntax match keyword /show ip dhcp database/
syntax match keyword /show ip dhcp import/
syntax match keyword /show ip dhcp server statistics/
syntax match keyword /show ip director dfp/
syntax match keyword /show ip drp/
syntax match keyword /show ip dvmrp route/
syntax match keyword /show ip eigrp interfaces/
syntax match keyword /show ip eigrp neighbors/
syntax match keyword /show ip eigrp topology/
syntax match keyword /show ip eigrp traffic/
syntax match keyword /show ip explicit-paths/
syntax match keyword /show ip flow export/
syntax match keyword /show ip igmp groups/
syntax match keyword /show ip igmp interface/
syntax match keyword /show ip igmp udlr/
syntax match keyword /show ip inspect/
syntax match keyword /show ip interface/
syntax match keyword /show ip interface virtual-access/
syntax match keyword /show ip irdp/
syntax match keyword /show ip local policy/
syntax match keyword /show ip local-pool/
syntax match keyword /show ip masks/
syntax match keyword /show ip mbgp/
syntax match keyword /show ip mbgp summary/
syntax match keyword /show ip mcache/
syntax match keyword /show ip mds forwarding/
syntax match keyword /show ip mds interface/
syntax match keyword /show ip mds stats/
syntax match keyword /show ip mds summary/
syntax match keyword /show ip mobile binding/
syntax match keyword /show ip mobile globals/
syntax match keyword /show ip mobile host/
syntax match keyword /show ip mobile interface/
syntax match keyword /show ip mobile secure/
syntax match keyword /show ip mobile traffic/
syntax match keyword /show ip mobile tunnel/
syntax match keyword /show ip mobile violation/
syntax match keyword /show ip mobile visitor/
syntax match keyword /show ip mpacket/
syntax match keyword /show ip mrm interface/
syntax match keyword /show ip mrm manager/
syntax match keyword /show ip mrm status-report/
syntax match keyword /show ip mroute/
syntax match keyword /show ip msdp count/
syntax match keyword /show ip msdp peer/
syntax match keyword /show ip msdp sa-cache/
syntax match keyword /show ip msdp summary/
syntax match keyword /show ip nat statistics/
syntax match keyword /show ip nat translations/
syntax match keyword /show ip nbar protocol-discovery/
syntax match keyword /show ip nhrp/
syntax match keyword /show ip nhrp traffic/
syntax match keyword /show ip ospf/
syntax match keyword /show ip ospf border-routers/
syntax match keyword /show ip ospf database/
syntax match keyword /show ip ospf database opaque-area/
syntax match keyword /show ip ospf flood-list/
syntax match keyword /show ip ospf interface/
syntax match keyword /show ip ospf mpls traffic-eng/
syntax match keyword /show ip ospf neighbor/
syntax match keyword /show ip ospf request-list/
syntax match keyword /show ip ospf retransmission-list/
syntax match keyword /show ip ospf summary-address/
syntax match keyword /show ip ospf virtual-links/
syntax match keyword /show ip pgm host defaults/
syntax match keyword /show ip pgm host sessions/
syntax match keyword /show ip pgm host traffic/
syntax match keyword /show ip pgm router/
syntax match keyword /show ip pim bsr/
syntax match keyword /show ip pim interface/
syntax match keyword /show ip pim neighbor/
syntax match keyword /show ip pim rp/
syntax match keyword /show ip pim rp-hash/
syntax match keyword /show ip pim vc/
syntax match keyword /show ip policy/
syntax match keyword /show ip port-map/
syntax match keyword /show ip protocols/
syntax match keyword /show ip protocols vrf/
syntax match keyword /show ip redirects/
syntax match keyword /show ip rip database/
syntax match keyword /show ip route/
syntax match keyword /show ip route summary/
syntax match keyword /show ip route supernets-only/
syntax match keyword /show ip route vrf/
syntax match keyword /show ip rpf/
syntax match keyword /show ip rsvp/
syntax match keyword /show ip rsvp atm-peak-rate-limit/
syntax match keyword /show ip rsvp host/
syntax match keyword /show ip rsvp installed/
syntax match keyword /show ip rsvp interface/
syntax match keyword /show ip rsvp neighbor/
syntax match keyword /show ip rsvp policy cops/
syntax match keyword /show ip rsvp request/
syntax match keyword /show ip rsvp reservation/
syntax match keyword /show ip rsvp sbm/
syntax match keyword /show ip rsvp sender/
syntax match keyword /show ip rtp header-compression/
syntax match keyword /show ip sap/
syntax match keyword /show ip sdr/
syntax match keyword /show ip slb conns/
syntax match keyword /show ip slb dfp/
syntax match keyword /show ip slb reals/
syntax match keyword /show ip slb serverfarms/
syntax match keyword /show ip slb stats/
syntax match keyword /show ip slb sticky/
syntax match keyword /show ip ssh/
syntax match keyword /show ip tcp header-compression/
syntax match keyword /show ip traffic/
syntax match keyword /show ip traffic-engineering/
syntax match keyword /show ip traffic-engineering configuration/
syntax match keyword /show ip traffic-engineering routes/
syntax match keyword /show ip trigger-authentication/
syntax match keyword /show ip vrf/
syntax match keyword /show ip wccp/
syntax match keyword /show ip wccp detail/
syntax match keyword /show ip wccp view/
syntax match keyword /show ipx access-list/
syntax match keyword /show ipx accounting/
syntax match keyword /show ipx cache/
syntax match keyword /show ipx compression/
syntax match keyword /show ipx eigrp interfaces/
syntax match keyword /show ipx eigrp neighbors/
syntax match keyword /show ipx eigrp topology/
syntax match keyword /show ipx interface/
syntax match keyword /show ipx nhrp/
syntax match keyword /show ipx nhrp traffic/
syntax match keyword /show ipx nlsp database/
syntax match keyword /show ipx nlsp neighbors/
syntax match keyword /show ipx nlsp spf-log/
syntax match keyword /show ipx route/
syntax match keyword /show ipx servers/
syntax match keyword /show ipx spx-protocol/
syntax match keyword /show ipx spx-spoof/
syntax match keyword /show ipx traffic/
syntax match keyword /show isdn/
syntax match keyword /show isdn nfas group/
syntax match keyword /show isdn service/
syntax match keyword /show isdn status/
syntax match keyword /show isis database/
syntax match keyword /show isis database verbose/
syntax match keyword /show isis mpls traffic-eng adjacency-log/
syntax match keyword /show isis mpls traffic-eng advertisements/
syntax match keyword /show isis mpls traffic-eng tunnel/
syntax match keyword /show isis routes/
syntax match keyword /show isis spf-log/
syntax match keyword /show isis topology/
syntax match keyword /show kerberos creds/
syntax match keyword /show key chain/
syntax match keyword /show keymap/
syntax match keyword /show l2relay statistics/
syntax match keyword /show lane/
syntax match keyword /show lane bus/
syntax match keyword /show lane client/
syntax match keyword /show lane config/
syntax match keyword /show lane database/
syntax match keyword /show lane default-atm-addresses/
syntax match keyword /show lane le-arp/
syntax match keyword /show lane server/
syntax match keyword /show lat advertised/
syntax match keyword /show lat groups/
syntax match keyword /show lat nodes/
syntax match keyword /show lat services/
syntax match keyword /show lat sessions/
syntax match keyword /show lat traffic/
syntax match keyword /show line/
syntax match keyword /show line async-queue/
syntax match keyword /show llc2/
syntax match keyword /show lnm bridge/
syntax match keyword /show lnm config/
syntax match keyword /show lnm interface/
syntax match keyword /show lnm ring/
syntax match keyword /show lnm station/
syntax match keyword /show local-ack/
syntax match keyword /show logging/
syntax match keyword /show management event/
syntax match keyword /show memory/
syntax match keyword /show mgcp/
syntax match keyword /show microcode/
syntax match keyword /show mls rp/
syntax match keyword /show mls rp interface/
syntax match keyword /show mls rp ip multicast/
syntax match keyword /show mls rp ipx/
syntax match keyword /show mls rp vtp-domain/
syntax match keyword /show modem/
syntax match keyword /show modem at-mode/
syntax match keyword /show modem call-stats/
syntax match keyword /show modem calltracker/
syntax match keyword /show modem configuration/
syntax match keyword /show modem connect-speeds/
syntax match keyword /show modem cookie/
syntax match keyword /show modem csm/
syntax match keyword /show modem log/
syntax match keyword /show modem mapping/
syntax match keyword /show modem mica/
syntax match keyword /show modem operational-status/
syntax match keyword /show modem summary/
syntax match keyword /show modem test/
syntax match keyword /show modem version/
syntax match keyword /show modem-pool/
syntax match keyword /show modemcap/
syntax match keyword /show mpls forwarding-table/
syntax match keyword /show mpls interfaces/
syntax match keyword /show mpls label range/
syntax match keyword /show mpls traffic-eng autoroute/
syntax match keyword /show mpls traffic-eng link-management admission-control/
syntax match keyword /show mpls traffic-eng link-management advertisements/
syntax match keyword /show mpls traffic-eng link-management bandwidth-allocation/
syntax match keyword /show mpls traffic-eng link-management igp-neighbors/
syntax match keyword /show mpls traffic-eng link-management interfaces/
syntax match keyword /show mpls traffic-eng link-management summary/
syntax match keyword /show mpls traffic-eng topology/
syntax match keyword /show mpls traffic-eng topology path/
syntax match keyword /show mpls traffic-eng tunnels/
syntax match keyword /show mpls traffic-eng tunnels summary/
syntax match keyword /show mpoa client/
syntax match keyword /show mpoa client cache/
syntax match keyword /show mpoa client statistics/
syntax match keyword /show mpoa default-atm-addresses/
syntax match keyword /show mpoa server/
syntax match keyword /show mpoa server cache/
syntax match keyword /show mpoa server statistics/
syntax match keyword /show nbf cache/
syntax match keyword /show nbf sessions/
syntax match keyword /show ncia circuits/
syntax match keyword /show ncia client/
syntax match keyword /show ncia server/
syntax match keyword /show netbios-cache/
syntax match keyword /show network-clocks/
syntax match keyword /show node/
syntax match keyword /show ntp associations/
syntax match keyword /show ntp status/
syntax match keyword /show num-exp/
syntax match keyword /show parser statistics/
syntax match keyword /show pas caim/
syntax match keyword /show pas eswitch address/
syntax match keyword /show pci/
syntax match keyword /show pci aim/
syntax match keyword /show pci hardware/
syntax match keyword /show policy-map/
syntax match keyword /show policy-map class/
syntax match keyword /show policy-map interface/
syntax match keyword /show port config/
syntax match keyword /show port digital log/
syntax match keyword /show port modem calltracker/
syntax match keyword /show port modem log/
syntax match keyword /show port modem test/
syntax match keyword /show port operational-status/
syntax match keyword /show pots csm/
syntax match keyword /show pots status/
syntax match keyword /show ppp bap/
syntax match keyword /show ppp mppe/
syntax match keyword /show ppp multilink/
syntax match keyword /show ppp queues/
syntax match keyword /show privilege/
syntax match keyword /show processes/
syntax match keyword /show processes memory/
syntax match keyword /show protocols/
syntax match keyword /show proxy h323 calls/
syntax match keyword /show proxy h323 detail-call/
syntax match keyword /show proxy h323 status/
syntax match keyword /show pxf accounting/
syntax match keyword /show pxf crash/
syntax match keyword /show pxf feature cef/
syntax match keyword /show pxf feature nat/
syntax match keyword /show pxf interface/
syntax match keyword /show qdm status/
syntax match keyword /show qllc/
syntax match keyword /show queue/
syntax match keyword /show queueing/
syntax match keyword /show queueing interface/
syntax match keyword /show queuing virtual-access/
syntax match keyword /show radius statistics/
syntax match keyword /show rawmsg/
syntax match keyword /show rcapi status/
syntax match keyword /show redundancy/
syntax match keyword /show redundancy history/
syntax match keyword /show registry/
syntax match keyword /show reload/
syntax match keyword /show resource-pool call/
syntax match keyword /show resource-pool customer/
syntax match keyword /show resource-pool discriminator/
syntax match keyword /show resource-pool resource/
syntax match keyword /show resource-pool vpdn/
syntax match keyword /show rif/
syntax match keyword /show rlm group statistics/
syntax match keyword /show rlm group status/
syntax match keyword /show rlm group timer/
syntax match keyword /show rmon/
syntax match keyword /show rmon alarms/
syntax match keyword /show rmon capture/
syntax match keyword /show rmon events/
syntax match keyword /show rmon filter/
syntax match keyword /show rmon history/
syntax match keyword /show rmon hosts/
syntax match keyword /show rmon matrix/
syntax match keyword /show rmon statistics/
syntax match keyword /show rmon topn/
syntax match keyword /show route-map/
syntax match keyword /show route-map ipc/
syntax match keyword /show rtr application/
syntax match keyword /show rtr authentication/
syntax match keyword /show rtr collection-statistics/
syntax match keyword /show rtr configuration/
syntax match keyword /show rtr distribution-statistics/
syntax match keyword /show rtr history/
syntax match keyword /show rtr operational-state/
syntax match keyword /show rtr reaction-trigger/
syntax match keyword /show rtr responder/
syntax match keyword /show rtr totals-statistics/
syntax match keyword /show rtsp client session/
syntax match keyword /show running map-class/
syntax match keyword /show running-config/
syntax match keyword /show sdlc local-ack/
syntax match keyword /show service/
syntax match keyword /show service-module serial/
syntax match keyword /show sessions/
syntax match keyword /show settlement/
syntax match keyword /show sgbp/
syntax match keyword /show sgbp queries/
syntax match keyword /show sgcp connection/
syntax match keyword /show sgcp endpoint/
syntax match keyword /show sgcp statistics/
syntax match keyword /show sip-ua/
syntax match keyword /show smds addresses/
syntax match keyword /show smds map/
syntax match keyword /show smds traffic/
syntax match keyword /show smf/
syntax match keyword /show smrp forward/
syntax match keyword /show smrp globals/
syntax match keyword /show smrp group/
syntax match keyword /show smrp mcache/
syntax match keyword /show smrp neighbor/
syntax match keyword /show smrp port/
syntax match keyword /show smrp route/
syntax match keyword /show smrp traffic/
syntax match keyword /show sna/
syntax match keyword /show snapshot/
syntax match keyword /show snasw class-of-service/
syntax match keyword /show snasw connection-network/
syntax match keyword /show snasw directory/
syntax match keyword /show snasw dlctrace/
syntax match keyword /show snasw dlus/
syntax match keyword /show snasw ipstrace/
syntax match keyword /show snasw link/
syntax match keyword /show snasw lu/
syntax match keyword /show snasw mode/
syntax match keyword /show snasw node/
syntax match keyword /show snasw pdlog/
syntax match keyword /show snasw port/
syntax match keyword /show snasw pu/
syntax match keyword /show snasw rtp/
syntax match keyword /show snasw session/
syntax match keyword /show snasw statistics/
syntax match keyword /show snasw summary-ipstrace/
syntax match keyword /show snasw topology/
syntax match keyword /show snmp/
syntax match keyword /show snmp engineID/
syntax match keyword /show snmp group/
syntax match keyword /show snmp pending/
syntax match keyword /show snmp sessions/
syntax match keyword /show snmp user/
syntax match keyword /show sntp/
syntax match keyword /show source-bridge/
syntax match keyword /show span/
syntax match keyword /show spanning-tree/
syntax match keyword /show spe/
syntax match keyword /show spe digital/
syntax match keyword /show spe digital active/
syntax match keyword /show spe digital csr/
syntax match keyword /show spe digital disconnect-reason/
syntax match keyword /show spe digital summary/
syntax match keyword /show spe log/
syntax match keyword /show spe modem/
syntax match keyword /show spe modem active/
syntax match keyword /show spe modem csr/
syntax match keyword /show spe modem disconnect-reason/
syntax match keyword /show spe modem high speed/
syntax match keyword /show spe modem high standard/
syntax match keyword /show spe modem low speed/
syntax match keyword /show spe modem low standard/
syntax match keyword /show spe modem summary/
syntax match keyword /show spe recovery/
syntax match keyword /show spe version/
syntax match keyword /show sscop/
syntax match keyword /show sse summary/
syntax match keyword /show ssh/
syntax match keyword /show stacks/
syntax match keyword /show standby/
syntax match keyword /show startup-config/
syntax match keyword /show stun/
syntax match keyword /show subscriber-policy/
syntax match keyword /show subsys/
syntax match keyword /show tag-switching atm-tdp bindings/
syntax match keyword /show tag-switching atm-tdp bindwait/
syntax match keyword /show tag-switching atm-tdp capability/
syntax match keyword /show tag-switching atm-tdp summary/
syntax match keyword /show tag-switching cos-map/
syntax match keyword /show tag-switching forwarding vrf/
syntax match keyword /show tag-switching forwarding-table/
syntax match keyword /show tag-switching interfaces/
syntax match keyword /show tag-switching prefix-map/
syntax match keyword /show tag-switching tdp bindings/
syntax match keyword /show tag-switching tdp discovery/
syntax match keyword /show tag-switching tdp neighbors/
syntax match keyword /show tag-switching tdp parameters/
syntax match keyword /show tag-switching tsp-tunnels/
syntax match keyword /show tarp/
syntax match keyword /show tarp blacklisted-adjacencies/
syntax match keyword /show tarp host/
syntax match keyword /show tarp interface/
syntax match keyword /show tarp ldb/
syntax match keyword /show tarp map/
syntax match keyword /show tarp static-adjacencies/
syntax match keyword /show tarp tid-cache/
syntax match keyword /show tarp traffic/
syntax match keyword /show tcp/
syntax match keyword /show tcp brief/
syntax match keyword /show tcp intercept connections/
syntax match keyword /show tcp intercept statistics/
syntax match keyword /show tcp statistics/
syntax match keyword /show tdm backplane/
syntax match keyword /show tdm connections/
syntax match keyword /show tdm data/
syntax match keyword /show tdm detail/
syntax match keyword /show tdm information/
syntax match keyword /show tdm pool/
syntax match keyword /show tech-support/
syntax match keyword /show tech-support rsvp/
syntax match keyword /show terminal/
syntax match keyword /show tgrm/
syntax match keyword /show tn3270 ascii-hexval/
syntax match keyword /show tn3270 character-map/
syntax match keyword /show traffic-shape/
syntax match keyword /show traffic-shape queue/
syntax match keyword /show traffic-shape statistics/
syntax match keyword /show translate/
syntax match keyword /show translation-rule/
syntax match keyword /show ttycap/
syntax match keyword /show txconn connection/
syntax match keyword /show txconn destination/
syntax match keyword /show txconn license/
syntax match keyword /show txconn route/
syntax match keyword /show txconn server/
syntax match keyword /show txconn statistic/
syntax match keyword /show txconn transaction/
syntax match keyword /show users/
syntax match keyword /show vc-group/
syntax match keyword /show version/
syntax match keyword /show vfc/
syntax match keyword /show vfc cap-list/
syntax match keyword /show vfc default-file/
syntax match keyword /show vfc directory/
syntax match keyword /show vfc version/
syntax match keyword /show video call summary/
syntax match keyword /show vines access/
syntax match keyword /show vines cache/
syntax match keyword /show vines host/
syntax match keyword /show vines interface/
syntax match keyword /show vines ipc/
syntax match keyword /show vines neighbor/
syntax match keyword /show vines route/
syntax match keyword /show vines service/
syntax match keyword /show vines traffic/
syntax match keyword /show vlans/
syntax match keyword /show voice busyout/
syntax match keyword /show voice call/
syntax match keyword /show voice dsp/
syntax match keyword /show voice permanent-call/
syntax match keyword /show voice port/
syntax match keyword /show voice trunk-conditioning signaling/
syntax match keyword /show voice trunk-conditioning supervisory/
syntax match keyword /show vpdn/
syntax match keyword /show vpdn domain/
syntax match keyword /show vpdn group/
syntax match keyword /show vpdn history failure/
syntax match keyword /show vpdn multilink/
syntax match keyword /show vrm active_calls/
syntax match keyword /show vrm vdevices/
syntax match keyword /show whoami/
syntax match keyword /show x25 context/
syntax match keyword /show x25 cug/
syntax match keyword /show x25 hunt-group/
syntax match keyword /show x25 interface/
syntax match keyword /show x25 map/
syntax match keyword /show x25 pad/
syntax match keyword /show x25 profile/
syntax match keyword /show x25 remote-red/
syntax match keyword /show x25 route/
syntax match keyword /show x25 services/
syntax match keyword /show x25 vc/
syntax match keyword /show x25 xot/
syntax match keyword /show xns cache/
syntax match keyword /show xns interface/
syntax match keyword /show xns route/
syntax match keyword /show xns traffic/
syntax match keyword /show xremote/
syntax match keyword /show xremote line/
syntax match keyword /show xtagatm cos-bandwidth-allocation XTagATM/
syntax match keyword /show xtagatm cross-connect/
syntax match keyword /show xtagatm vc/
syntax match keyword /shut/
syntax match keyword /shutdown/
syntax match keyword /shutdown/
syntax match keyword /signal/
syntax match keyword /signal keepalive/
syntax match keyword /signal pattern/
syntax match keyword /signal sequence oos/
syntax match keyword /signal timing idle suppress-voice/
syntax match keyword /signal timing oos/
syntax match keyword /signal timing oos restart/
syntax match keyword /signal timing oos slave-standby/
syntax match keyword /signal timing oos suppress-all/
syntax match keyword /signal timing oos suppress-voice/
syntax match keyword /signal timing oos timeout/
syntax match keyword /signal-type/
syntax match keyword /sip-server/
syntax match keyword /sip-ua/
syntax match keyword /slave auto-sync config/
syntax match keyword /slave default-slot/
syntax match keyword /slave image/
syntax match keyword /slave reload/
syntax match keyword /slave sync config/
syntax match keyword /slave terminal/
syntax match keyword /slip/
syntax match keyword /smds address/
syntax match keyword /smds dxi/
syntax match keyword /smds enable-arp/
syntax match keyword /smds glean/
syntax match keyword /smds multicast/
syntax match keyword /smds multicast arp/
syntax match keyword /smds multicast bridge/
syntax match keyword /smds multicast ip/
syntax match keyword /smds static-map/
syntax match keyword /smrp mroute-cache protocol appletalk/
syntax match keyword /smrp protocol appletalk/
syntax match keyword /smrp routing/
syntax match keyword /smt-queue-threshold/
syntax match keyword /sna enable-host/
syntax match keyword /sna host/
syntax match keyword /sna rsrb/
syntax match keyword /sna rsrb enable-host/
syntax match keyword /sna rsrb start/
syntax match keyword /sna start/
syntax match keyword /sna vdlc/
syntax match keyword /sna vdlc enable-host/
syntax match keyword /sna vdlc start/
syntax match keyword /snapshot client/
syntax match keyword /snapshot server/
syntax match keyword /snasw cpname/
syntax match keyword /snasw dlcfilter/
syntax match keyword /snasw dlctrace/
syntax match keyword /snasw dlus/
syntax match keyword /snasw dump/
syntax match keyword /snasw event/
syntax match keyword /snasw ip-precedence/
syntax match keyword /snasw ipsfilter/
syntax match keyword /snasw ipstrace/
syntax match keyword /snasw link/
syntax match keyword /snasw location/
syntax match keyword /snasw mode/
syntax match keyword /snasw msgdump/
syntax match keyword /snasw pathswitch/
syntax match keyword /snasw pdlog/
syntax match keyword /snasw port/
syntax match keyword /snasw start/
syntax match keyword /snasw start cp-cp/
syntax match keyword /snasw start link/
syntax match keyword /snasw start port/
syntax match keyword /snasw stop/
syntax match keyword /snasw stop cp-cp/
syntax match keyword /snasw stop link/
syntax match keyword /snasw stop port/
syntax match keyword /snasw stop session/
syntax match keyword /snmp enable peer-trap poor-qov/
syntax match keyword /snmp ifindex clear/
syntax match keyword /snmp ifindex persist/
syntax match keyword /snmp trap illegal-address/
syntax match keyword /snmp trap link-status/
syntax match keyword /snmp-server access-policy/
syntax match keyword /snmp-server chassis-id/
syntax match keyword /snmp-server community/
syntax match keyword /snmp-server contact/
syntax match keyword /snmp-server context/
syntax match keyword /snmp-server enable informs/
syntax match keyword /snmp-server enable traps/
syntax match keyword /snmp-server enable traps aaa_server/
syntax match keyword /snmp-server enable traps atm/
syntax match keyword /snmp-server enable traps bgp/
syntax match keyword /snmp-server enable traps calltracker/
syntax match keyword /snmp-server enable traps envmon/
syntax match keyword /snmp-server enable traps frame-relay/
syntax match keyword /snmp-server enable traps isdn/
syntax match keyword /snmp-server enable traps repeater/
syntax match keyword /snmp-server enable traps snmp/
syntax match keyword /snmp-server enable traps voice poor-qov/
syntax match keyword /snmp-server engineID/
syntax match keyword /snmp-server group/
syntax match keyword /snmp-server host/
syntax match keyword /snmp-server informs/
syntax match keyword /snmp-server location/
syntax match keyword /snmp-server manager/
syntax match keyword /snmp-server manager session-timeout/
syntax match keyword /snmp-server packet-size/
syntax match keyword /snmp-server queue-length/
syntax match keyword /snmp-server system-shutdown/
syntax match keyword /snmp-server tftp-server-list/
syntax match keyword /snmp-server trap link/
syntax match keyword /snmp-server trap-authentication/
syntax match keyword /snmp-server trap-source/
syntax match keyword /snmp-server trap-timeout/
syntax match keyword /snmp-server user/
syntax match keyword /snmp-server view/
syntax match keyword /sntp broadcast client/
syntax match keyword /sntp server/
syntax match keyword /source template/
syntax match keyword /source-address/
syntax match keyword /source-bridge/
syntax match keyword /source-bridge connection-timeout/
syntax match keyword /source-bridge cos-enable/
syntax match keyword /source-bridge enable-80d5/
syntax match keyword /source-bridge explorer-dup-ARE-filter/
syntax match keyword /source-bridge explorer-fastswitch/
syntax match keyword /source-bridge explorer-maxrate/
syntax match keyword /source-bridge explorerq-depth/
syntax match keyword /source-bridge fst-peername/
syntax match keyword /source-bridge input-address-list/
syntax match keyword /source-bridge input-lsap-list/
syntax match keyword /source-bridge input-type-list/
syntax match keyword /source-bridge keepalive/
syntax match keyword /source-bridge largest-frame/
syntax match keyword /source-bridge max-hops/
syntax match keyword /source-bridge max-in-hops/
syntax match keyword /source-bridge max-out-hops/
syntax match keyword /source-bridge output-address-list/
syntax match keyword /source-bridge output-lsap-list/
syntax match keyword /source-bridge output-type-list/
syntax match keyword /source-bridge passthrough/
syntax match keyword /source-bridge proxy-explorer/
syntax match keyword /source-bridge proxy-netbios-only/
syntax match keyword /source-bridge qllc-local-ack/
syntax match keyword /source-bridge remote-peer frame-relay/
syntax match keyword /source-bridge remote-peer fst/
syntax match keyword /source-bridge remote-peer interface/
syntax match keyword /source-bridge remote-peer tcp/
syntax match keyword /source-bridge ring-group/
syntax match keyword /source-bridge route-cache/
syntax match keyword /source-bridge route-cache cbus/
syntax match keyword /source-bridge route-cache sse/
syntax match keyword /source-bridge sap-80d5/
syntax match keyword /source-bridge sdllc-local-ack/
syntax match keyword /source-bridge spanning/
syntax match keyword /source-bridge tcp-queue-max/
syntax match keyword /source-bridge transparent/
syntax match keyword /source-bridge transparent fastswitch/
syntax match keyword /source-bridge trcrf-vlan/
syntax match keyword /source-ip/
syntax match keyword /spe /
syntax match keyword /spe call-record/
syntax match keyword /spe country/
syntax match keyword /spe download maintenance/
syntax match keyword /spe log-event-size/
syntax match keyword /spe recovery/
syntax match keyword /special-character-bits/
syntax match keyword /speed /
syntax match keyword /spf-interval/
syntax match keyword /squeeze/
syntax match keyword /squelch/
syntax match keyword /srp loopback/
syntax match keyword /srp priority-map/
syntax match keyword /srp random-detect/
syntax match keyword /srp shutdown/
syntax match keyword /srp tx-traffic-rate/
syntax match keyword /srp-deficit-round-robin/
syntax match keyword /sscop cc-timer/
syntax match keyword /sscop keepalive-timer/
syntax match keyword /sscop max-cc/
syntax match keyword /sscop poll-timer/
syntax match keyword /sscop receive-window/
syntax match keyword /sscop send-window/
syntax match keyword /ssrp buffer-size/
syntax match keyword /standby authentication/
syntax match keyword /standby ip/
syntax match keyword /standby mac-address/
syntax match keyword /standby mac-refresh/
syntax match keyword /standby name/
syntax match keyword /standby preempt/
syntax match keyword /standby redirects/
syntax match keyword /standby timers/
syntax match keyword /standby track/
syntax match keyword /standby use-bia/
syntax match keyword /start-character/
syntax match keyword /start-chat/
syntax match keyword /start-forwarding-agent/
syntax match keyword /state-machine/
syntax match keyword /state-tracks-signal/
syntax match keyword /station name/
syntax match keyword /station number/
syntax match keyword /statistics-distribution-interval/
syntax match keyword /sticky/
syntax match keyword /stop-character/
syntax match keyword /stopbits/
syntax match keyword /stun group/
syntax match keyword /stun keepalive-count/
syntax match keyword /stun peer-name/
syntax match keyword /stun protocol-group/
syntax match keyword /stun quick-response/
syntax match keyword /stun remote-peer-keepalive/
syntax match keyword /stun route address interface dlci/
syntax match keyword /stun route address interface serial/
syntax match keyword /stun route address tcp/
syntax match keyword /stun route all interface serial/
syntax match keyword /stun route all tcp/
syntax match keyword /stun schema offset length format/
syntax match keyword /stun sdlc-role primary/
syntax match keyword /stun sdlc-role secondary/
syntax match keyword /subcell-mux/
syntax match keyword /subscriber-policy/
syntax match keyword /subscription-required/
syntax match keyword /summary-address/
syntax match keyword /summary-address/
syntax match keyword /supervisory disconnect/
syntax match keyword /supervisory disconnect anytone/
syntax match keyword /supervisory disconnect dualtone voice-class/
syntax match keyword /svc/
syntax match keyword /synchronization/
syntax match keyword /synguard/
syntax match keyword /t1/
syntax match keyword /t1 bert/
syntax match keyword /t1 clock source/
syntax match keyword /t1 external/
syntax match keyword /t1 fdl ansi/
syntax match keyword /t1 framing/
syntax match keyword /t1 linecode/
syntax match keyword /t1 test/
syntax match keyword /t1 timeslot/
syntax match keyword /t1 yellow/
syntax match keyword /table-map/
syntax match keyword /tacacs+/
syntax match keyword /tacacs-server timeout/
syntax match keyword /tacacs-server directed-request/
syntax match keyword /tacacs-server host/
syntax match keyword /tacacs-server key/
syntax match keyword /tag/
syntax match keyword /tag-control-protocol vsi/
syntax match keyword /tag-switching advertise-tags/
syntax match keyword /tag-switching atm allocation-mode/
syntax match keyword /tag-switching atm control-vc interface configuration/
syntax match keyword /tag-switching atm maxhops/
syntax match keyword /tag-switching atm vc-merge/
syntax match keyword /tag-switching atm vp-tunnel/
syntax match keyword /tag-switching atm vpi/
syntax match keyword /tag-switching cos-map/
syntax match keyword /tag-switching ip/
syntax match keyword /tag-switching ip default-route/
syntax match keyword /tag-switching mtu/
syntax match keyword /tag-switching prefix-map/
syntax match keyword /tag-switching request-tags for/
syntax match keyword /tag-switching tag-range downstream/
syntax match keyword /tag-switching tdp discovery/
syntax match keyword /tag-switching tdp holdtime/
syntax match keyword /tag-switching tsp-tunnels/
syntax match keyword /tarp allow-caching/
syntax match keyword /tarp arp-request-timer/
syntax match keyword /tarp blacklist-adjacency/
syntax match keyword /tarp cache-timer/
syntax match keyword /tarp enable/
syntax match keyword /tarp global-propagate/
syntax match keyword /tarp ldb-timer/
syntax match keyword /tarp lifetime/
syntax match keyword /tarp map/
syntax match keyword /tarp nselector-type/
syntax match keyword /tarp originate/
syntax match keyword /tarp post-t2-response-timer/
syntax match keyword /tarp propagate/
syntax match keyword /tarp protocol-type/
syntax match keyword /tarp query/
syntax match keyword /tarp resolve/
syntax match keyword /tarp route-static/
syntax match keyword /tarp run/
syntax match keyword /tarp sequence-number/
syntax match keyword /tarp t1-response-timer/
syntax match keyword /tarp t2-response-timer/
syntax match keyword /tcp-port/
syntax match keyword /tdm-group/
syntax match keyword /tech-prefix/
syntax match keyword /telnet/
syntax match keyword /telnet break-on-ip/
syntax match keyword /telnet refuse-negotiations/
syntax match keyword /telnet speed/
syntax match keyword /telnet sync-on-break/
syntax match keyword /telnet transparent/
syntax match keyword /template/
syntax match keyword /term ip netmask-format/
syntax match keyword /terminal data-character-bits/
syntax match keyword /terminal databits/
syntax match keyword /terminal dispatch-character/
syntax match keyword /terminal dispatch-timeout/
syntax match keyword /terminal download/
syntax match keyword /terminal editing/
syntax match keyword /terminal escape-character/
syntax match keyword /terminal exec-character-bits/
syntax match keyword /terminal flowcontrol/
syntax match keyword /terminal full-help/
syntax match keyword /terminal history/
syntax match keyword /terminal hold-character/
syntax match keyword /terminal international/
syntax match keyword /terminal keymap-type/
syntax match keyword /terminal lat out-group/
syntax match keyword /terminal lat remote-modification/
syntax match keyword /terminal length/
syntax match keyword /terminal monitor/
syntax match keyword /terminal notify/
syntax match keyword /terminal padding/
syntax match keyword /terminal parity/
syntax match keyword /terminal rxspeed/
syntax match keyword /terminal special-character-bits/
syntax match keyword /terminal speed/
syntax match keyword /terminal start-character/
syntax match keyword /terminal stop-character/
syntax match keyword /terminal stopbits/
syntax match keyword /terminal telnet break-on-ip/
syntax match keyword /terminal telnet refuse-negotiations/
syntax match keyword /terminal telnet speed/
syntax match keyword /terminal telnet sync-on-break/
syntax match keyword /terminal telnet transparent/
syntax match keyword /terminal terminal-type/
syntax match keyword /terminal transport preferred/
syntax match keyword /terminal txspeed/
syntax match keyword /terminal width/
syntax match keyword /terminal-queue/
syntax match keyword /terminal-type/
syntax match keyword /terminate-from/
syntax match keyword /test aim eeprom/
syntax match keyword /test appletalk/
syntax match keyword /test call fallback probe/
syntax match keyword /test flash/
syntax match keyword /test interface fastethernet/
syntax match keyword /test interfaces/
syntax match keyword /test memory/
syntax match keyword /test modem back-to-back/
syntax match keyword /test port modem back-to-back/
syntax match keyword /test pots dial/
syntax match keyword /test pots disconnect/
syntax match keyword /test service-module/
syntax match keyword /test translation-rule/
syntax match keyword /test voice port detector/
syntax match keyword /test voice port inject-tone/
syntax match keyword /test voice port loopback/
syntax match keyword /test voice port relay/
syntax match keyword /test voice port switch/
syntax match keyword /test vrm busyout/
syntax match keyword /test vrm reset/
syntax match keyword /test vrm unbusyout/
syntax match keyword /tftp-server/
syntax match keyword /tftp-server system/
syntax match keyword /tg/
syntax match keyword /threshold/
syntax match keyword /threshold de/
syntax match keyword /threshold ecn/
syntax match keyword /time-range/
syntax match keyword /timeout/
syntax match keyword /timeout login response/
syntax match keyword /timeouts call-disconnect/
syntax match keyword /timeouts initial/
syntax match keyword /timeouts interdigit/
syntax match keyword /timeouts ringing/
syntax match keyword /timeouts wait-release/
syntax match keyword /timers/
syntax match keyword /timers active-time/
syntax match keyword /timers basic/
syntax match keyword /timers basic/
syntax match keyword /timers bgp/
syntax match keyword /timers lsa-group-pacing/
syntax match keyword /timers spf/
syntax match keyword /timeslot[s ] /
syntax match keyword /timing clear-wait/
syntax match keyword /timing delay-duration/
syntax match keyword /timing delay-start/
syntax match keyword /timing delay-with-integrity/
syntax match keyword /timing dial-pulse min-delay/
syntax match keyword /timing dialout-delay/
syntax match keyword /timing digit/
syntax match keyword /timing guard-out/
syntax match keyword /timing hookflash-input/
syntax match keyword /timing hookflash-output/
syntax match keyword /timing interdigit/
syntax match keyword /timing percentbreak/
syntax match keyword /timing pulse/
syntax match keyword /timing pulse-interdigit/
syntax match keyword /timing wink-duration/
syntax match keyword /timing wink-wait/
syntax match keyword /timing-mark/
syntax match keyword /tn3270/
syntax match keyword /tn3270 8bit display/
syntax match keyword /tn3270 8bit transparent-mode/
syntax match keyword /tn3270 character-map/
syntax match keyword /tn3270 datastream/
syntax match keyword /tn3270 null-processing/
syntax match keyword /tn3270 optimize-cursor-move/
syntax match keyword /tn3270 reset-required/
syntax match keyword /tn3270 status-message/
syntax match keyword /tn3270 typeahead/
syntax match keyword /tn3270-server/
syntax match keyword /token-root-name/
syntax match keyword /tos/
syntax match keyword /trace/
syntax match keyword /traffic-engineering filter/
syntax match keyword /traffic-engineering route/
syntax match keyword /traffic-shape adaptive/
syntax match keyword /traffic-shape fecn-adapt/
syntax match keyword /traffic-shape group/
syntax match keyword /traffic-shape rate/
syntax match keyword /traffic-share/
syntax match keyword /traffic-share balanced/
syntax match keyword /traffic-share min/
syntax match keyword /translate/
syntax match keyword /translate lat/
syntax match keyword /translate lat/
syntax match keyword /translate tcp/
syntax match keyword /translate tcp/
syntax match keyword /translate x25/
syntax match keyword /translate x25/
syntax match keyword /translate-outgoing/
syntax match keyword /translation-rule/
syntax match keyword /transmit-buffers backing-store/
syntax match keyword /transmit-clock-internal/
syntax match keyword /transmit-interface/
syntax match keyword /transmitter-delay/
syntax match keyword /transport/
syntax match keyword /transport input/
syntax match keyword /transport output/
syntax match keyword /transport preferred/
syntax match keyword /trunk group/
syntax match keyword /trunk-group/
syntax match keyword /trunkgroup/
syntax match keyword /ttycap/
syntax match keyword /tunnel/
syntax match keyword /tunnel checksum/
syntax match keyword /tunnel destination/
syntax match keyword /tunnel key/
syntax match keyword /tunnel mode/
syntax match keyword /tunnel mode mpls traffic-eng/
syntax match keyword /tunnel mode tag-switching/
syntax match keyword /tunnel mpls traffic-eng affinity/
syntax match keyword /tunnel mpls traffic-eng autoroute announce/
syntax match keyword /tunnel mpls traffic-eng autoroute metric/
syntax match keyword /tunnel mpls traffic-eng bandwidth/
syntax match keyword /tunnel mpls traffic-eng path-option/
syntax match keyword /tunnel mpls traffic-eng priority/
syntax match keyword /tunnel sequence-datagrams/
syntax match keyword /tunnel source/
syntax match keyword /tunnel tsp-hop/
syntax match keyword /tunnel udlr address-resolution/
syntax match keyword /tunnel udlr receive-only/
syntax match keyword /tunnel udlr send-only/
syntax match keyword /tx-queue-limit/
syntax match keyword /tx-ring-limit/
syntax match keyword /txconn destination/
syntax match keyword /txconn license/
syntax match keyword /txconn ping/
syntax match keyword /txconn route/
syntax match keyword /txconn server/
syntax match keyword /txspeed/
syntax match keyword /type/
syntax match keyword /type/
syntax match keyword /type dchp/
syntax match keyword /type dlsw/
syntax match keyword /type dns/
syntax match keyword /type echo/
syntax match keyword /type ftp/
syntax match keyword /type http/
syntax match keyword /type jitter/
syntax match keyword /type pathEcho/
syntax match keyword /type tcpConnect/
syntax match keyword /type udpEcho/
syntax match keyword /ubr/
syntax match keyword /ubr+/
syntax match keyword /udp-port/
syntax match keyword /unbind-action/
syntax match keyword /unbundle vfc/
syntax match keyword /unbundle vfc EXEC/
syntax match keyword /undelete/
syntax match keyword /url/
syntax match keyword /use-interface/
syntax match keyword /use-proxy/
syntax match keyword /username/
syntax match keyword /vacant-message/
syntax match keyword /vad/
syntax match keyword /vad/
syntax match keyword /validate-update-source/
syntax match keyword /vbr-nrt/
syntax match keyword /vbr-rt/
syntax match keyword /vc-group/
syntax match keyword /vc-hold-queue/
syntax match keyword /verify/
syntax match keyword /verify-data/
syntax match keyword /version/
syntax match keyword /vines access-group/
syntax match keyword /vines access-list/
syntax match keyword /vines arp-enable/
syntax match keyword /vines decimal/
syntax match keyword /vines encapsulation/
syntax match keyword /vines enhancements/
syntax match keyword /vines host/
syntax match keyword /vines input-network-filter/
syntax match keyword /vines input-router-filter/
syntax match keyword /vines metric/
syntax match keyword /vines neighbor/
syntax match keyword /vines output-network-filter/
syntax match keyword /vines propagate/
syntax match keyword /vines redirect/
syntax match keyword /vines route/
syntax match keyword /vines route-cache/
syntax match keyword /vines routing/
syntax match keyword /vines serverless/
syntax match keyword /vines single-route/
syntax match keyword /vines split-horizon/
syntax match keyword /vines srtp-enabled/
syntax match keyword /vines time access-group/
syntax match keyword /vines time destination/
syntax match keyword /vines time participate/
syntax match keyword /vines time services/
syntax match keyword /vines time set-system/
syntax match keyword /vines time use-system/
syntax match keyword /vines update deltas/
syntax match keyword /vines update interval/
syntax match keyword /virtual/
syntax match keyword /virtual-profile aaa/
syntax match keyword /virtual-profile if-needed/
syntax match keyword /virtual-profile virtual-template/
syntax match keyword /virtual-template/
syntax match keyword /vofr/
syntax match keyword /voice call send-alert/
syntax match keyword /voice class busyout/
syntax match keyword /voice class codec/
syntax match keyword /voice class dualtone/
syntax match keyword /voice class h323/
syntax match keyword /voice class permanent/
syntax match keyword /voice confirmation-tone/
syntax match keyword /voice hunt user-busy/
syntax match keyword /voice local-bypass/
syntax match keyword /voice rtp send-recv/
syntax match keyword /voice service/
syntax match keyword /voice vad-time/
syntax match keyword /voice-card/
syntax match keyword /voice-class codec/
syntax match keyword /voice-class permanent/
syntax match keyword /voice-class permanent/
syntax match keyword /voice-port/
syntax match keyword /voice-port busyout/
syntax match keyword /voip-incoming translation-rule/
syntax match keyword /vpdn aaa attribute/
syntax match keyword /vpdn aaa attribute nas-port vpdn-nas/
syntax match keyword /vpdn aaa override-server/
syntax match keyword /vpdn domain-delimiter/
syntax match keyword /vpdn enable/
syntax match keyword /vpdn group/
syntax match keyword /vpdn history failure table-size/
syntax match keyword /vpdn logging/
syntax match keyword /vpdn logging history failure/
syntax match keyword /vpdn profile/
syntax match keyword /vpdn search-order/
syntax match keyword /vpdn session-limit/
syntax match keyword /vpdn softshut/
syntax match keyword /vpdn source-ip/
syntax match keyword /vrn/
syntax match keyword /vty-async/
syntax match keyword /vty-async dynamic-routing/
syntax match keyword /vty-async header-compression/
syntax match keyword /vty-async ipx ppp-client loopback/
syntax match keyword /vty-async keepalive/
syntax match keyword /vty-async mtu/
syntax match keyword /vty-async ppp authentication/
syntax match keyword /vty-async ppp use-tacacs/
syntax match keyword /vty-async virtual-template/
syntax match keyword /weight/
syntax match keyword /where/
syntax match keyword /which-route/
syntax match keyword /width/
syntax match keyword /write erase/
syntax match keyword /write memory/
syntax match keyword /write network/
syntax match keyword /x25 accept-reverse/
syntax match keyword /x25 address/
syntax match keyword /x25 alias/
syntax match keyword /x25 aodi/
syntax match keyword /x25 bfe-decision/
syntax match keyword /x25 bfe-emergency/
syntax match keyword /x25 default/
syntax match keyword /x25 facility/
syntax match keyword /x25 failover/
syntax match keyword /x25 hic/
syntax match keyword /x25 hoc/
syntax match keyword /x25 hold-queue/
syntax match keyword /x25 hold-vc-timer/
syntax match keyword /x25 host/
syntax match keyword /x25 htc/
syntax match keyword /x25 hunt-group/
syntax match keyword /x25 idle/
syntax match keyword /x25 ip-precedence/
syntax match keyword /x25 ips/
syntax match keyword /x25 lic/
syntax match keyword /x25 linkrestart/
syntax match keyword /x25 loc/
syntax match keyword /x25 ltc/
syntax match keyword /x25 map/
syntax match keyword /x25 map bridge/
syntax match keyword /x25 map cmns/
syntax match keyword /x25 map compressedtcp/
syntax match keyword /x25 map pad/
syntax match keyword /x25 map ppp/
syntax match keyword /x25 map qllc/
syntax match keyword /x25 modulo/
syntax match keyword /x25 nvc/
syntax match keyword /x25 ops/
syntax match keyword /x25 pad-access/
syntax match keyword /x25 profile/
syntax match keyword /x25 pvc/
syntax match keyword /x25 pvc qllc/
syntax match keyword /x25 remote-red/
syntax match keyword /x25 retry/
syntax match keyword /x25 roa/
syntax match keyword /x25 route/
syntax match keyword /x25 routing/
syntax match keyword /x25 routing acknowledge local/
syntax match keyword /x25 subaddress/
syntax match keyword /x25 subscribe cug-service/
syntax match keyword /x25 subscribe flow-control/
syntax match keyword /x25 subscribe local-cug/
syntax match keyword /x25 subscribe packetsize/
syntax match keyword /x25 subscribe windowsize/
syntax match keyword /x25 suppress-called-address/
syntax match keyword /x25 suppress-calling-address/
syntax match keyword /x25 t10/
syntax match keyword /x25 t11/
syntax match keyword /x25 t12/
syntax match keyword /x25 t13/
syntax match keyword /x25 t20/
syntax match keyword /x25 t21/
syntax match keyword /x25 t22/
syntax match keyword /x25 t23/
syntax match keyword /x25 threshold/
syntax match keyword /x25 use-source-address/
syntax match keyword /x25 win/
syntax match keyword /x25 wout/
syntax match keyword /x28/
syntax match keyword /x29 access-list/
syntax match keyword /x29 profile/
syntax match keyword /x3/
syntax match keyword /xmodem/
syntax match keyword /xns access-group/
syntax match keyword /xns encapsulation/
syntax match keyword /xns flood broadcast allnets/
syntax match keyword /xns flood broadcast net-zero/
syntax match keyword /xns flood specific allnets/
syntax match keyword /xns forward-protocol/
syntax match keyword /xns hear-rip/
syntax match keyword /xns helper-address/
syntax match keyword /xns input-network-filter/
syntax match keyword /xns maximum-paths/
syntax match keyword /xns network/
syntax match keyword /xns output-network-filter/
syntax match keyword /xns route/
syntax match keyword /xns route-cache/
syntax match keyword /xns router-filter/
syntax match keyword /xns routing/
syntax match keyword /xns ub-emulation/
syntax match keyword /xremote/
syntax match keyword /xremote lat/
syntax match keyword /xremote tftp buffersize/
syntax match keyword /xremote tftp host/
syntax match keyword /xremote tftp retries/
syntax match keyword /xremote xdm/
syntax match keyword /yellow/
syntax match keyword /zone access/
syntax match keyword /zone bw/
syntax match keyword /zone local/
syntax match keyword /zone prefix/
syntax match keyword /zone remote/
syntax match keyword /zone subnet/
" added by matt okeson-harlow for cmts 2002/01/03 12:33:44 
syntax match keyword /cable upstream/
syntax match keyword /cable dhcp-giaddr/
syntax match keyword /cable downstream/


" Define the default hightlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_cisco_syn_inits")
    if version < 508
	   let did_cisco_syn_inits = 1
	   command -nargs=+ HiLink hi link <args>
    else
	   command -nargs=+ HiLink hi def link <args>
    endif

    HiLink cisco_no Tag
    HiLink cisco_keyword keyword
    HiLink cisco_interface keyword
    HiLink cisco_interface_name String
    HiLink cisco_route keyword
    HiLink cisco_route_ip Type
    HiLink cisco_route_mask Type
    HiLink cisco_identifier String
    HiLink cisco_description keyword
    HiLink cisco_comment Comment
    HiLink cisco_description_text Comment
    HiLink cisco_ip Type

    delcommand HiLink
endif

let b:current_syntax = "cisco"

" vim:ts=4

