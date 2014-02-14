.class public Landroid/net/fourG/wimax/WimaxStateTracker;
.super Landroid/os/Handler;
.source "WimaxStateTracker.java"

# interfaces
.implements Landroid/net/NetworkStateTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/fourG/wimax/WimaxStateTracker$1;,
        Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateReceiver;,
        Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;,
        Landroid/net/fourG/wimax/WimaxStateTracker$WimaxAuthFail;,
        Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;
    }
.end annotation


# static fields
.field public static final ACTION_WIMAX_DHCP_RENEW:Ljava/lang/String; = "com.android.server.Wimax4GManager.action.WIMAX_DHCP_RENEW"

.field private static final DEFAULT_MAX_DHCP_RETRIES:I = 0x2

.field private static final EVENT_AFTER_VI_REQ_NEED_DELAY:I = 0x6

.field private static final EVENT_AUTH_FAIL:I = 0xb

.field private static final EVENT_DHCP_START:I = 0x5

.field private static final EVENT_DRIVER_STATE_CHANGED:I = 0x9

.field private static final EVENT_INTERFACE_CONFIGURATION_FAILED:I = 0x3

.field private static final EVENT_INTERFACE_CONFIGURATION_SUCCEEDED:I = 0x2

.field private static final EVENT_IP_RENEW:I = 0xa

.field private static final EVENT_LINK_WEAK_INFO:I = 0xe

.field private static final EVENT_MOCALL_FAIL:I = 0x10

.field private static final EVENT_MOCALL_INFO:I = 0xf

.field private static final EVENT_OMADM_RESP_DATA:I = 0xc

.field private static final EVENT_POLL_INTERVAL:I = 0x4

.field private static final EVENT_RADIO_INFO_RESP_DATA:I = 0xd

.field private static final EVENT_SCAN_DELAY:I = 0x7

.field private static final EVENT_VI_REQ:I = 0x8

.field private static final EVENT_WIMAX_STATE_CHANGED:I = 0x1

.field private static ICON_WIMAX_CONNECTED:I = 0x0

.field private static ICON_WIMAX_DISCONNECTED:I = 0x0

.field private static LS:Ljava/lang/String; = null

.field private static final NETWORKTYPE:Ljava/lang/String; = "WIMAX"

.field private static final PDA:[B = null

.field private static final POLL_STATUS_INTERVAL_MSECS:I = 0x7d0

.field private static final RUN_STATE_RUNNING:I = 0x2

.field private static final RUN_STATE_STARTING:I = 0x1

.field private static final RUN_STATE_STOPPED:I = 0x4

.field private static final RUN_STATE_STOPPING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WimaxStateTracker"

.field private static final USB_PATH:Ljava/lang/String; = "/sys/class/sec/switch/usb_sel"

.field private static final WIMAX_DHCP_RENEW_INTERVAL:I = 0x0

.field private static final WiMAX:[B = null

.field private static final mRunStateNames:[Ljava/lang/String; = null

.field private static final m_nwaitLU:I = 0x5

.field private static nOdbReqCount:I

.field private static sDnsPropNames:[Ljava/lang/String;

.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private WIMAX_ENTRY_DELAY:I

.field private WIMAX_SCAN_ATTEMPT_TIMEOUT:I

.field private WIMAX_SCAN_RETRY_SECONDS:I

.field private isHaveLinkInfo:Z

.field private isIdleState:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mContext:Landroid/content/Context;

.field private mCsHandler:Landroid/os/Handler;

.field private mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDhcpEnd:J

.field private mDhcpInfoInt:Landroid/net/DhcpResults;

.field private mDhcpRenewIntent:Landroid/app/PendingIntent;

.field private mDhcpStart:J

.field private mDhcpTarget:Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

.field private mDiffDhcpTime:I

.field private mHaveIpAddress:Z

.field private mInterfaceName:Ljava/lang/String;

.field public mIsTetheredmode:Z

.field private mLastState:Landroid/net/NetworkInfo$State;

.field private mLinkCapabilities:Landroid/net/LinkCapabilities;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field public mModemReset:Z

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotification:Landroid/app/Notification;

.field private mObtainingIpAddress:Z

.field private mPolicyDataEnabled:Z

.field private mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mReleaseWakeLockCallback:Ljava/lang/Runnable;

.field private mRunState:I

.field private mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mTetheredModeUsbPlugged:Z

.field private mTornDownByConnMgr:Z

.field private mUseStaticIp:Z

.field private mUserDataEnabled:Z

.field private mWM:Landroid/net/fourG/wimax/Wimax4GManager;

.field private mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

.field private mWimaxLinkState:I

.field private mWimaxMonitor:Landroid/net/fourG/wimax/WimaxMonitor;

.field private mWimaxNotifyManager:Landroid/app/NotificationManager;

.field private mWimaxSettingIntent:Landroid/app/PendingIntent;

.field private mWimaxState:Landroid/net/fourG/wimax/WimaxState;

.field private mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

.field private mWimaxStateDetailOld:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

.field private mWimaxStateOld:Landroid/net/fourG/wimax/WimaxState;

.field private mWimaxTemperature:I

.field private m_bEntryDelaySet:Z

.field private m_bExitCriteria:Z

.field private m_bLog:Z

.field public m_bMruWorking:Z

.field private m_bNoBackOff:Z

.field public m_bPoweroff:Z

.field private m_bScreenOff:Z

.field public m_bSkipEntryDelayOnce:Z

.field public m_bSkipEntryMet:Z

.field private m_bUserDisconnect:Z

.field private m_isBootCompleted:Z

.field private m_nAutoConnectEnabled:I

.field private mnOldIP:I

.field private nOldSignalLevel:I

.field public nRetryFlag:I

.field public nScanAttempt:I

.field private nwService:Landroid/os/INetworkManagementService;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 201
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Starting"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "Running"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Stopping"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Stopped"

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/fourG/wimax/WimaxStateTracker;->mRunStateNames:[Ljava/lang/String;

    .line 212
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/fourG/wimax/WimaxStateTracker;->LS:Ljava/lang/String;

    .line 216
    const/4 v0, 0x0

    sput-object v0, Landroid/net/fourG/wimax/WimaxStateTracker;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 228
    new-array v0, v4, [B

    fill-array-data v0, :array_36

    sput-object v0, Landroid/net/fourG/wimax/WimaxStateTracker;->PDA:[B

    .line 229
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_3c

    sput-object v0, Landroid/net/fourG/wimax/WimaxStateTracker;->WiMAX:[B

    .line 231
    sput v3, Landroid/net/fourG/wimax/WimaxStateTracker;->nOdbReqCount:I

    return-void

    .line 228
    :array_36
    .array-data 0x1
        0x50t
        0x44t
        0x41t
        0x0t
    .end array-data

    .line 229
    :array_3c
    .array-data 0x1
        0x57t
        0x49t
        0x4dt
        0x41t
        0x58t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 16
    .parameter "context"
    .parameter "target"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const-wide/16 v9, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 297
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 104
    sget-object v3, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    iput-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mLastState:Landroid/net/NetworkInfo$State;

    .line 109
    iput-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    .line 111
    iput v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_nAutoConnectEnabled:I

    .line 156
    sget-object v3, Landroid/net/fourG/wimax/WimaxState;->UNKNOWN:Landroid/net/fourG/wimax/WimaxState;

    iput-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    .line 157
    sget-object v3, Landroid/net/fourG/wimax/WimaxState;->UNKNOWN:Landroid/net/fourG/wimax/WimaxState;

    iput-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateOld:Landroid/net/fourG/wimax/WimaxState;

    .line 158
    sget-object v3, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->De_registration:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 159
    sget-object v3, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->De_registration:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetailOld:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 168
    iput-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mUseStaticIp:Z

    .line 171
    iput-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bUserDisconnect:Z

    .line 176
    iput-wide v9, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpStart:J

    .line 177
    iput-wide v9, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpEnd:J

    .line 178
    iput v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDiffDhcpTime:I

    .line 179
    iput v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mnOldIP:I

    .line 180
    iput v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxTemperature:I

    .line 181
    iput v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxLinkState:I

    .line 183
    const/4 v3, -0x1

    iput v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nOldSignalLevel:I

    .line 184
    iput-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isHaveLinkInfo:Z

    .line 185
    iput-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isIdleState:Z

    .line 189
    iput v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nRetryFlag:I

    .line 190
    iput v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    .line 191
    iput v11, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->WIMAX_SCAN_ATTEMPT_TIMEOUT:I

    .line 192
    const/16 v3, 0x78

    iput v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->WIMAX_SCAN_RETRY_SECONDS:I

    .line 193
    const/16 v3, 0x12c

    iput v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->WIMAX_ENTRY_DELAY:I

    .line 225
    iput-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mIsTetheredmode:Z

    .line 226
    iput-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mTetheredModeUsbPlugged:Z

    .line 232
    iput-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bMruWorking:Z

    .line 233
    iput-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mModemReset:Z

    .line 234
    iput-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bScreenOff:Z

    .line 235
    iput-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_isBootCompleted:Z

    .line 236
    iput-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bNoBackOff:Z

    .line 238
    iput-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bExitCriteria:Z

    .line 239
    iput-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bEntryDelaySet:Z

    .line 240
    iput-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bSkipEntryDelayOnce:Z

    .line 241
    iput-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bSkipEntryMet:Z

    .line 243
    iput-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bPoweroff:Z

    .line 265
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 266
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 267
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 271
    iput-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mUserDataEnabled:Z

    .line 272
    iput-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mPolicyDataEnabled:Z

    .line 299
    iput-object p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    .line 300
    new-instance v3, Landroid/net/fourG/wimax/Wimax4GInfo;

    invoke-direct {v3}, Landroid/net/fourG/wimax/Wimax4GInfo;-><init>()V

    iput-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    .line 301
    new-instance v3, Landroid/net/fourG/wimax/WimaxMonitor;

    invoke-direct {v3, p0}, Landroid/net/fourG/wimax/WimaxMonitor;-><init>(Landroid/net/fourG/wimax/WimaxStateTracker;)V

    iput-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxMonitor:Landroid/net/fourG/wimax/WimaxMonitor;

    .line 302
    iput-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    .line 303
    iput-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mObtainingIpAddress:Z

    .line 305
    new-instance v3, Landroid/net/NetworkInfo;

    const/4 v6, 0x6

    const-string v7, "WIMAX"

    const-string v8, ""

    invoke-direct {v3, v6, v5, v7, v8}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 306
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 314
    .local v2, tm:Landroid/telephony/TelephonyManager;
    invoke-direct {p0, v5}, Landroid/net/fourG/wimax/WimaxStateTracker;->setTornDownByConnMgr(Z)V

    .line 317
    new-instance v3, Landroid/net/DhcpResults;

    invoke-direct {v3}, Landroid/net/DhcpResults;-><init>()V

    iput-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpResults;

    .line 318
    iput v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mRunState:I

    .line 320
    const-string v3, "wimax.interface"

    const-string v6, "uwbr0"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    .line 321
    new-array v3, v11, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dhcp."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".dns1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dhcp."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".dns2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    sput-object v3, Landroid/net/fourG/wimax/WimaxStateTracker;->sDnsPropNames:[Ljava/lang/String;

    .line 325
    const-string v3, "batteryinfo"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    iput-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 327
    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    iput-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mAlarmManager:Landroid/app/AlarmManager;

    .line 328
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.server.Wimax4GManager.action.WIMAX_DHCP_RENEW"

    invoke-direct {v0, v3, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 329
    .local v0, DhcpRenewIntent:Landroid/content/Intent;
    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpRenewIntent:Landroid/app/PendingIntent;

    .line 331
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 332
    .local v1, b:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v3

    iput-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nwService:Landroid/os/INetworkManagementService;

    .line 337
    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxNotifyManager:Landroid/app/NotificationManager;

    .line 338
    new-instance v3, Landroid/app/Notification;

    sget v6, Landroid/net/fourG/wimax/WimaxStateTracker;->ICON_WIMAX_DISCONNECTED:I

    invoke-direct {v3, v6, v12, v9, v10}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNotification:Landroid/app/Notification;

    .line 339
    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.settings.WIMAX_SETTINGS"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v5, v6, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxSettingIntent:Landroid/app/PendingIntent;

    .line 341
    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v6, "stat_sys_data_wimax_signal_3_fully"

    const-string v7, "drawable"

    iget-object v8, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sput v3, Landroid/net/fourG/wimax/WimaxStateTracker;->ICON_WIMAX_CONNECTED:I

    .line 342
    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v6, "stat_sys_data_wimax_signal_disconnected"

    const-string v7, "drawable"

    iget-object v8, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sput v3, Landroid/net/fourG/wimax/WimaxStateTracker;->ICON_WIMAX_DISCONNECTED:I

    .line 344
    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "mobile_data"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_186

    move v3, v4

    :goto_183
    iput-boolean v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mUserDataEnabled:Z

    .line 347
    return-void

    :cond_186
    move v3, v5

    .line 344
    goto :goto_183
.end method

.method private RetryProcess()V
    .registers 10

    .prologue
    const/4 v3, -0x1

    const-wide/16 v7, 0xbb8

    const/4 v6, 0x7

    const/4 v5, 0x1

    const/4 v4, 0x6

    .line 1470
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->resetInterface()V

    .line 1471
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bNoBackOff:Z

    if-eqz v1, :cond_36

    .line 1472
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_18

    const-string v1, "WimaxStateTracker"

    const-string v2, "[RetryProcess] m_bNoBackOff --return"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    :cond_18
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->acquire_WakeLock()V

    .line 1474
    invoke-static {v3, v5}, Landroid/net/fourG/wimax/WimaxNative;->VirtualIdleReq(IB)Z

    .line 1475
    invoke-virtual {p0, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1476
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_2f

    const-string v1, "WimaxStateTracker"

    const-string v2, "[RetryProcess] removeMessage(EVENT_AFTER_VI_REQ_NEED_DELAY)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    :cond_2f
    invoke-virtual {p0, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->removeMessages(I)V

    .line 1479
    :cond_32
    invoke-virtual {p0, v4, v7, v8}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendEmptyMessageDelayed(IJ)Z

    .line 1544
    :goto_35
    return-void

    .line 1485
    :cond_36
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->isWifiConnected()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 1486
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_47

    const-string v1, "WimaxStateTracker"

    const-string v2, "[RetryProcess] mTornDownByConnMgr && mWM.isWiFiConnect()--return"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    :cond_47
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->isWifiConnected()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-direct {p0, v5}, Landroid/net/fourG/wimax/WimaxStateTracker;->setTornDownByConnMgr(Z)V

    .line 1488
    :cond_50
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->acquire_WakeLock()V

    .line 1489
    invoke-static {v3, v5}, Landroid/net/fourG/wimax/WimaxNative;->VirtualIdleReq(IB)Z

    .line 1490
    invoke-virtual {p0, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 1491
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_67

    const-string v1, "WimaxStateTracker"

    const-string v2, "[RetryProcess] removeMessage(EVENT_AFTER_VI_REQ_NEED_DELAY)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    :cond_67
    invoke-virtual {p0, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->removeMessages(I)V

    .line 1494
    :cond_6a
    invoke-virtual {p0, v4, v7, v8}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_35

    .line 1498
    :cond_6e
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bMruWorking:Z

    if-eqz v1, :cond_83

    .line 1499
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_7d

    const-string v1, "WimaxStateTracker"

    const-string v2, "[RetryProcess] m_bMruWorking --return"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    :cond_7d
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->release_sWakeLock()V

    goto :goto_35

    .line 1505
    :cond_83
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bEntryDelaySet:Z

    if-eqz v1, :cond_97

    .line 1506
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_92

    const-string v1, "WimaxStateTracker"

    const-string v2, "[RetryProcess] >>>>>>>>>>>> About to ENTRY to RetryProcess <<<<<<<<<<<<<<<<<<"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    :cond_92
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bEntryDelaySet:Z

    .line 1508
    iput-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bExitCriteria:Z

    .line 1511
    :cond_97
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_a2

    const-string v1, "WimaxStateTracker"

    const-string v2, "[RetryProcess] >>>>>>>>>>>> WELCOME to RetryProcess <<<<<<<<<<<<<<<<<<"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    :cond_a2
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->getWimaxMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_b4

    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->getWimaxMode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_bf

    .line 1515
    :cond_b4
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_bf

    const-string v1, "WimaxStateTracker"

    const-string v2, "BACKHAUL mode......!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    :cond_bf
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_e3

    const-string v1, "WimaxStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RetryProcess] ++++ nRetryFlag =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nRetryFlag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ++++"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    :cond_e3
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_107

    const-string v1, "WimaxStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RetryProcess] ++++ nScanAttempt =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ++++"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    :cond_107
    iget v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    iget v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->WIMAX_SCAN_ATTEMPT_TIMEOUT:I

    if-ge v1, v2, :cond_158

    .line 1522
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_13d

    const-string v1, "WimaxStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "++++ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->WIMAX_SCAN_ATTEMPT_TIMEOUT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ++++"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    :cond_13d
    invoke-virtual {p0, v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_151

    .line 1524
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_14e

    const-string v1, "WimaxStateTracker"

    const-string v2, "[RetryProcess] removeMessage(EVENT_SCAN_DELAY)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    :cond_14e
    invoke-virtual {p0, v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->removeMessages(I)V

    .line 1527
    :cond_151
    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v6, v1, v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_35

    .line 1529
    :cond_158
    iget v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->WIMAX_SCAN_RETRY_SECONDS:I

    iget v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nRetryFlag:I

    iget v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->WIMAX_SCAN_RETRY_SECONDS:I

    mul-int/2addr v2, v3

    add-int v0, v1, v2

    .line 1530
    .local v0, nWaitTime:I
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_183

    const-string v1, "WimaxStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "++++ time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ++++"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    :cond_183
    const/16 v1, 0x708

    if-gt v0, v1, :cond_1ac

    .line 1532
    iget v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nRetryFlag:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nRetryFlag:I

    .line 1536
    :goto_18d
    const/4 v1, 0x0

    iput v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    .line 1537
    invoke-static {v0, v5}, Landroid/net/fourG/wimax/WimaxNative;->VirtualIdleReq(IB)Z

    .line 1538
    invoke-virtual {p0, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1a7

    .line 1539
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_1a4

    const-string v1, "WimaxStateTracker"

    const-string v2, "[RetryProcess] removeMessage(EVENT_AFTER_VI_REQ_NEED_DELAY)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    :cond_1a4
    invoke-virtual {p0, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->removeMessages(I)V

    .line 1542
    :cond_1a7
    invoke-virtual {p0, v4, v7, v8}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_35

    .line 1534
    :cond_1ac
    const/16 v0, 0x708

    goto :goto_18d
.end method

.method static synthetic access$100(Landroid/net/fourG/wimax/WimaxStateTracker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    return v0
.end method

.method static synthetic access$1000(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/net/fourG/wimax/Wimax4GInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/net/LinkProperties;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$1102(Landroid/net/fourG/wimax/WimaxStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$1200(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/net/LinkCapabilities;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    return-object v0
.end method

.method static synthetic access$1202(Landroid/net/fourG/wimax/WimaxStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    return-object p1
.end method

.method static synthetic access$1300(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/net/NetworkInfo$State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mLastState:Landroid/net/NetworkInfo$State;

    return-object v0
.end method

.method static synthetic access$1302(Landroid/net/fourG/wimax/WimaxStateTracker;Landroid/net/NetworkInfo$State;)Landroid/net/NetworkInfo$State;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mLastState:Landroid/net/NetworkInfo$State;

    return-object p1
.end method

.method static synthetic access$1400(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mCsHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/fourG/wimax/WimaxStateTracker;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/app/PendingIntent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpRenewIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$400(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/app/AlarmManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$500(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/net/DhcpResults;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpResults;

    return-object v0
.end method

.method static synthetic access$502(Landroid/net/fourG/wimax/WimaxStateTracker;Landroid/net/DhcpResults;)Landroid/net/DhcpResults;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpResults;

    return-object p1
.end method

.method static synthetic access$600(Landroid/net/fourG/wimax/WimaxStateTracker;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mnOldIP:I

    return v0
.end method

.method static synthetic access$602(Landroid/net/fourG/wimax/WimaxStateTracker;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mnOldIP:I

    return p1
.end method

.method static synthetic access$700(Ljava/lang/String;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    invoke-static {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/net/fourG/wimax/WimaxStateTracker;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 101
    iget-wide v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpStart:J

    return-wide v0
.end method

.method static synthetic access$802(Landroid/net/fourG/wimax/WimaxStateTracker;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-wide p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpStart:J

    return-wide p1
.end method

.method static synthetic access$900(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/net/NetworkInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$902(Landroid/net/fourG/wimax/WimaxStateTracker;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method private checkUseStaticIp()Z
    .registers 27

    .prologue
    .line 2431
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/fourG/wimax/WimaxStateTracker;->mUseStaticIp:Z

    .line 2432
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 2434
    .local v11, cr:Landroid/content/ContentResolver;
    const/16 v20, 0x0

    .line 2435
    .local v20, msg:Ljava/lang/String;
    const/4 v7, 0x0

    .line 2436
    .local v7, backup_ip:Ljava/lang/String;
    const/4 v6, 0x0

    .line 2437
    .local v6, backup_gateway:Ljava/lang/String;
    const/4 v8, 0x0

    .line 2438
    .local v8, backup_netmask:Ljava/lang/String;
    const/4 v4, 0x0

    .line 2439
    .local v4, backup_dns1:Ljava/lang/String;
    const/4 v5, 0x0

    .line 2441
    .local v5, backup_dns2:Ljava/lang/String;
    const/4 v9, 0x0

    .line 2442
    .local v9, br:Ljava/io/BufferedReader;
    const/4 v15, 0x0

    .line 2445
    .local v15, fis:Ljava/io/FileInputStream;
    :try_start_1b
    new-instance v16, Ljava/io/FileInputStream;

    const-string v23, "/data/wimax_ip.txt"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_26} :catch_149

    .line 2451
    .end local v15           #fis:Ljava/io/FileInputStream;
    .local v16, fis:Ljava/io/FileInputStream;
    const-string v2, "0.0.0.0"

    .line 2452
    .local v2, EMPTY_IP:Ljava/lang/String;
    new-instance v3, Landroid/net/RouteInfo;

    new-instance v23, Landroid/net/LinkAddress;

    const-string v24, "0.0.0.0"

    invoke-static/range {v24 .. v24}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v24

    const/16 v25, 0x0

    invoke-direct/range {v23 .. v25}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v3, v0, v1}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    .line 2455
    .local v3, EMPTY_ROUTE:Landroid/net/RouteInfo;
    const-string v19, "0.0.0.0"

    .line 2456
    .local v19, ip:Ljava/lang/String;
    const/16 v21, 0x0

    .line 2457
    .local v21, prefixLength:I
    const-string v12, "0.0.0.0"

    .line 2458
    .local v12, dns1:Ljava/lang/String;
    const-string v13, "0.0.0.0"

    .line 2459
    .local v13, dns2:Ljava/lang/String;
    move-object/from16 v22, v3

    .line 2463
    .local v22, route:Landroid/net/RouteInfo;
    :try_start_4a
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/InputStreamReader;

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v23

    invoke-direct {v10, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5a
    .catchall {:try_start_4a .. :try_end_5a} :catchall_1ff
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_5a} :catch_1d9

    .line 2464
    .end local v9           #br:Ljava/io/BufferedReader;
    .local v10, br:Ljava/io/BufferedReader;
    :try_start_5a
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    .line 2465
    if-eqz v20, :cond_15c

    .line 2468
    move-object/from16 v19, v20

    .line 2473
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    .line 2474
    if-eqz v20, :cond_177

    .line 2479
    invoke-static/range {v20 .. v20}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v22

    .line 2488
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    .line 2489
    if-eqz v20, :cond_194

    .line 2492
    invoke-static/range {v20 .. v20}, Landroid/net/fourG/wimax/WimaxStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v21

    .line 2506
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    .line 2507
    if-eqz v20, :cond_1b3

    .line 2510
    move-object/from16 v12, v20

    .line 2511
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v23, v0

    if-eqz v23, :cond_ae

    const-string v23, "WimaxStateTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, ":)------dns1-msg--------Use DHCP for WiMAX\n "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpResults;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/net/DhcpResults;->dns1:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2530
    :cond_ae
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    .line 2531
    if-eqz v20, :cond_1d5

    .line 2534
    move-object/from16 v13, v20

    .line 2535
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v23, v0

    if-eqz v23, :cond_e2

    const-string v23, "WimaxStateTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, ":)------dns21-msg--------Use DHCP for WiMAX\n "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpResults;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/net/DhcpResults;->dns2:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e2
    .catchall {:try_start_5a .. :try_end_e2} :catchall_29e
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_e2} :catch_2a2

    .line 2569
    :cond_e2
    :goto_e2
    :try_start_e2
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 2570
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e8} :catch_234

    .line 2579
    new-instance v23, Landroid/net/DhcpResults;

    invoke-direct/range {v23 .. v23}, Landroid/net/DhcpResults;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpResults;

    .line 2580
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpResults;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    iput-object v0, v1, Landroid/net/DhcpResults;->ipAddress:Ljava/lang/String;

    .line 2581
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpResults;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/net/DhcpResults;->addRoute(Landroid/net/RouteInfo;)V

    .line 2582
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpResults;

    move-object/from16 v23, v0

    move/from16 v0, v21

    move-object/from16 v1, v23

    iput v0, v1, Landroid/net/DhcpResults;->prefixLength:I

    .line 2583
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpResults;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-object v12, v0, Landroid/net/DhcpResults;->dns1:Ljava/lang/String;

    .line 2584
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpResults;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-object v13, v0, Landroid/net/DhcpResults;->dns2:Ljava/lang/String;

    .line 2588
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v23, v0

    if-eqz v23, :cond_13b

    const-string v23, "WimaxStateTracker"

    const-string v24, "Use Static IP for WiMAX\n"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2589
    :cond_13b
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/fourG/wimax/WimaxStateTracker;->mUseStaticIp:Z

    .line 2590
    const/16 v23, 0x1

    move-object/from16 v15, v16

    .end local v16           #fis:Ljava/io/FileInputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    move-object v9, v10

    .end local v2           #EMPTY_IP:Ljava/lang/String;
    .end local v3           #EMPTY_ROUTE:Landroid/net/RouteInfo;
    .end local v10           #br:Ljava/io/BufferedReader;
    .end local v12           #dns1:Ljava/lang/String;
    .end local v13           #dns2:Ljava/lang/String;
    .end local v19           #ip:Ljava/lang/String;
    .end local v21           #prefixLength:I
    .end local v22           #route:Landroid/net/RouteInfo;
    .restart local v9       #br:Ljava/io/BufferedReader;
    :goto_148
    return v23

    .line 2446
    :catch_149
    move-exception v17

    .line 2447
    .local v17, fnfe:Ljava/io/FileNotFoundException;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v23, v0

    if-eqz v23, :cond_159

    const-string v23, "WimaxStateTracker"

    const-string v24, ":)-------------------Use DHCP for WiMAX\n"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    :cond_159
    const/16 v23, 0x0

    goto :goto_148

    .line 2470
    .end local v9           #br:Ljava/io/BufferedReader;
    .end local v15           #fis:Ljava/io/FileInputStream;
    .end local v17           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v2       #EMPTY_IP:Ljava/lang/String;
    .restart local v3       #EMPTY_ROUTE:Landroid/net/RouteInfo;
    .restart local v10       #br:Ljava/io/BufferedReader;
    .restart local v12       #dns1:Ljava/lang/String;
    .restart local v13       #dns2:Ljava/lang/String;
    .restart local v16       #fis:Ljava/io/FileInputStream;
    .restart local v19       #ip:Ljava/lang/String;
    .restart local v21       #prefixLength:I
    .restart local v22       #route:Landroid/net/RouteInfo;
    :cond_15c
    :try_start_15c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v23, v0

    if-eqz v23, :cond_16b

    const-string v23, "WimaxStateTracker"

    const-string v24, ":)------ip-none----------Use DHCP for WiMAX\n"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16b
    .catchall {:try_start_15c .. :try_end_16b} :catchall_29e
    .catch Ljava/io/IOException; {:try_start_15c .. :try_end_16b} :catch_2a2

    .line 2471
    :cond_16b
    const/16 v23, 0x0

    .line 2569
    :try_start_16d
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 2570
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_173
    .catch Ljava/io/IOException; {:try_start_16d .. :try_end_173} :catch_28a

    move-object/from16 v15, v16

    .end local v16           #fis:Ljava/io/FileInputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    move-object v9, v10

    .line 2471
    .end local v10           #br:Ljava/io/BufferedReader;
    .restart local v9       #br:Ljava/io/BufferedReader;
    goto :goto_148

    .line 2482
    .end local v9           #br:Ljava/io/BufferedReader;
    .end local v15           #fis:Ljava/io/FileInputStream;
    .restart local v10       #br:Ljava/io/BufferedReader;
    .restart local v16       #fis:Ljava/io/FileInputStream;
    :cond_177
    :try_start_177
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v23, v0

    if-eqz v23, :cond_186

    const-string v23, "WimaxStateTracker"

    const-string v24, ":)------gateway-none-----Use DHCP for WiMAX\n"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2485
    :cond_186
    const-string v19, "0.0.0.0"
    :try_end_188
    .catchall {:try_start_177 .. :try_end_188} :catchall_29e
    .catch Ljava/io/IOException; {:try_start_177 .. :try_end_188} :catch_2a2

    .line 2486
    const/16 v23, 0x0

    .line 2569
    :try_start_18a
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 2570
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_190
    .catch Ljava/io/IOException; {:try_start_18a .. :try_end_190} :catch_276

    move-object/from16 v15, v16

    .end local v16           #fis:Ljava/io/FileInputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    move-object v9, v10

    .line 2486
    .end local v10           #br:Ljava/io/BufferedReader;
    .restart local v9       #br:Ljava/io/BufferedReader;
    goto :goto_148

    .line 2494
    .end local v9           #br:Ljava/io/BufferedReader;
    .end local v15           #fis:Ljava/io/FileInputStream;
    .restart local v10       #br:Ljava/io/BufferedReader;
    .restart local v16       #fis:Ljava/io/FileInputStream;
    :cond_194
    :try_start_194
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1a3

    const-string v23, "WimaxStateTracker"

    const-string v24, ":)------netmask-none-----Use DHCP for WiMAX\n"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2501
    :cond_1a3
    move-object/from16 v22, v3

    .line 2502
    const-string v19, "0.0.0.0"
    :try_end_1a7
    .catchall {:try_start_194 .. :try_end_1a7} :catchall_29e
    .catch Ljava/io/IOException; {:try_start_194 .. :try_end_1a7} :catch_2a2

    .line 2504
    const/16 v23, 0x0

    .line 2569
    :try_start_1a9
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 2570
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_1af
    .catch Ljava/io/IOException; {:try_start_1a9 .. :try_end_1af} :catch_262

    move-object/from16 v15, v16

    .end local v16           #fis:Ljava/io/FileInputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    move-object v9, v10

    .line 2504
    .end local v10           #br:Ljava/io/BufferedReader;
    .restart local v9       #br:Ljava/io/BufferedReader;
    goto :goto_148

    .line 2513
    .end local v9           #br:Ljava/io/BufferedReader;
    .end local v15           #fis:Ljava/io/FileInputStream;
    .restart local v10       #br:Ljava/io/BufferedReader;
    .restart local v16       #fis:Ljava/io/FileInputStream;
    :cond_1b3
    :try_start_1b3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1c2

    const-string v23, "WimaxStateTracker"

    const-string v24, ":)------dns1-none--------Use DHCP for WiMAX\n"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2524
    :cond_1c2
    const-string v19, "0.0.0.0"
    :try_end_1c4
    .catchall {:try_start_1b3 .. :try_end_1c4} :catchall_29e
    .catch Ljava/io/IOException; {:try_start_1b3 .. :try_end_1c4} :catch_2a2

    .line 2525
    move-object/from16 v22, v3

    .line 2526
    const/16 v21, 0x0

    .line 2528
    const/16 v23, 0x0

    .line 2569
    :try_start_1ca
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 2570
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_1d0
    .catch Ljava/io/IOException; {:try_start_1ca .. :try_end_1d0} :catch_24e

    move-object/from16 v15, v16

    .end local v16           #fis:Ljava/io/FileInputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    move-object v9, v10

    .line 2528
    .end local v10           #br:Ljava/io/BufferedReader;
    .restart local v9       #br:Ljava/io/BufferedReader;
    goto/16 :goto_148

    .line 2539
    .end local v9           #br:Ljava/io/BufferedReader;
    .end local v15           #fis:Ljava/io/FileInputStream;
    .restart local v10       #br:Ljava/io/BufferedReader;
    .restart local v16       #fis:Ljava/io/FileInputStream;
    :cond_1d5
    :try_start_1d5
    const-string v13, "0.0.0.0"
    :try_end_1d7
    .catchall {:try_start_1d5 .. :try_end_1d7} :catchall_29e
    .catch Ljava/io/IOException; {:try_start_1d5 .. :try_end_1d7} :catch_2a2

    goto/16 :goto_e2

    .line 2541
    .end local v10           #br:Ljava/io/BufferedReader;
    .restart local v9       #br:Ljava/io/BufferedReader;
    :catch_1d9
    move-exception v14

    .line 2542
    .local v14, e:Ljava/io/IOException;
    :goto_1da
    :try_start_1da
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1e9

    const-string v23, "WimaxStateTracker"

    const-string v24, ":)-------exception---Use DHCP for WiMAX\n"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2560
    :cond_1e9
    const-string v19, "0.0.0.0"

    .line 2561
    move-object/from16 v22, v3

    .line 2562
    const/16 v21, 0x0

    .line 2563
    const-string v12, "0.0.0.0"

    .line 2564
    const-string v13, "0.0.0.0"
    :try_end_1f3
    .catchall {:try_start_1da .. :try_end_1f3} :catchall_1ff

    .line 2566
    const/16 v23, 0x0

    .line 2569
    :try_start_1f5
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 2570
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_1fb
    .catch Ljava/io/IOException; {:try_start_1f5 .. :try_end_1fb} :catch_220

    move-object/from16 v15, v16

    .line 2566
    .end local v16           #fis:Ljava/io/FileInputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_148

    .line 2568
    .end local v14           #e:Ljava/io/IOException;
    .end local v15           #fis:Ljava/io/FileInputStream;
    .restart local v16       #fis:Ljava/io/FileInputStream;
    :catchall_1ff
    move-exception v23

    .line 2569
    :goto_200
    :try_start_200
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 2570
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_206
    .catch Ljava/io/IOException; {:try_start_200 .. :try_end_206} :catch_207

    .line 2568
    throw v23

    .line 2571
    :catch_207
    move-exception v18

    .line 2572
    .local v18, ioe:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v23, v0

    if-eqz v23, :cond_217

    const-string v23, "WimaxStateTracker"

    const-string v24, ":)----- wimax_static_ip_config file close error\n"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    :cond_217
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    .line 2574
    :goto_21a
    const/16 v23, 0x0

    move-object/from16 v15, v16

    .end local v16           #fis:Ljava/io/FileInputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_148

    .line 2571
    .end local v15           #fis:Ljava/io/FileInputStream;
    .end local v18           #ioe:Ljava/io/IOException;
    .restart local v14       #e:Ljava/io/IOException;
    .restart local v16       #fis:Ljava/io/FileInputStream;
    :catch_220
    move-exception v18

    .line 2572
    .restart local v18       #ioe:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v23, v0

    if-eqz v23, :cond_230

    const-string v23, "WimaxStateTracker"

    const-string v24, ":)----- wimax_static_ip_config file close error\n"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    :cond_230
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21a

    .line 2571
    .end local v9           #br:Ljava/io/BufferedReader;
    .end local v14           #e:Ljava/io/IOException;
    .end local v18           #ioe:Ljava/io/IOException;
    .restart local v10       #br:Ljava/io/BufferedReader;
    :catch_234
    move-exception v18

    .line 2572
    .restart local v18       #ioe:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v23, v0

    if-eqz v23, :cond_244

    const-string v23, "WimaxStateTracker"

    const-string v24, ":)----- wimax_static_ip_config file close error\n"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    :cond_244
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    .line 2574
    :goto_247
    const/16 v23, 0x0

    move-object/from16 v15, v16

    .end local v16           #fis:Ljava/io/FileInputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    move-object v9, v10

    .end local v10           #br:Ljava/io/BufferedReader;
    .restart local v9       #br:Ljava/io/BufferedReader;
    goto/16 :goto_148

    .line 2571
    .end local v9           #br:Ljava/io/BufferedReader;
    .end local v15           #fis:Ljava/io/FileInputStream;
    .end local v18           #ioe:Ljava/io/IOException;
    .restart local v10       #br:Ljava/io/BufferedReader;
    .restart local v16       #fis:Ljava/io/FileInputStream;
    :catch_24e
    move-exception v18

    .line 2572
    .restart local v18       #ioe:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v23, v0

    if-eqz v23, :cond_25e

    const-string v23, "WimaxStateTracker"

    const-string v24, ":)----- wimax_static_ip_config file close error\n"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    :cond_25e
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_247

    .line 2571
    .end local v18           #ioe:Ljava/io/IOException;
    :catch_262
    move-exception v18

    .line 2572
    .restart local v18       #ioe:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v23, v0

    if-eqz v23, :cond_272

    const-string v23, "WimaxStateTracker"

    const-string v24, ":)----- wimax_static_ip_config file close error\n"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    :cond_272
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_247

    .line 2571
    .end local v18           #ioe:Ljava/io/IOException;
    :catch_276
    move-exception v18

    .line 2572
    .restart local v18       #ioe:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v23, v0

    if-eqz v23, :cond_286

    const-string v23, "WimaxStateTracker"

    const-string v24, ":)----- wimax_static_ip_config file close error\n"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    :cond_286
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_247

    .line 2571
    .end local v18           #ioe:Ljava/io/IOException;
    :catch_28a
    move-exception v18

    .line 2572
    .restart local v18       #ioe:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v23, v0

    if-eqz v23, :cond_29a

    const-string v23, "WimaxStateTracker"

    const-string v24, ":)----- wimax_static_ip_config file close error\n"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    :cond_29a
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_247

    .line 2568
    .end local v18           #ioe:Ljava/io/IOException;
    :catchall_29e
    move-exception v23

    move-object v9, v10

    .end local v10           #br:Ljava/io/BufferedReader;
    .restart local v9       #br:Ljava/io/BufferedReader;
    goto/16 :goto_200

    .line 2541
    .end local v9           #br:Ljava/io/BufferedReader;
    .restart local v10       #br:Ljava/io/BufferedReader;
    :catch_2a2
    move-exception v14

    move-object v9, v10

    .end local v10           #br:Ljava/io/BufferedReader;
    .restart local v9       #br:Ljava/io/BufferedReader;
    goto/16 :goto_1da
.end method

.method private configureLinkProperties()V
    .registers 4

    .prologue
    .line 2654
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpResults;

    monitor-enter v1

    .line 2655
    :try_start_3
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpResults;

    invoke-virtual {v0}, Landroid/net/DhcpResults;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    iput-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 2656
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_36

    .line 2657
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 2658
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v0, :cond_35

    .line 2659
    const-string v0, "WimaxStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configureLinkProperties : Link configured: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2662
    :cond_35
    return-void

    .line 2656
    :catchall_36
    move-exception v0

    :try_start_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v0
.end method

.method private getMaxDhcpRetries()I
    .registers 2

    .prologue
    .line 2597
    iget v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->WIMAX_SCAN_ATTEMPT_TIMEOUT:I

    return v0
.end method

.method private getValue()Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 449
    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v2, :cond_2a

    const-string v2, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getValue() called : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wimax_networks_available_notification_on"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_2a
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wimax_networks_available_notification_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_39

    :goto_38
    return v0

    :cond_39
    move v0, v1

    goto :goto_38
.end method

.method private declared-synchronized isDriverStopped()Z
    .registers 3

    .prologue
    .line 732
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mRunState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_b

    iget v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mRunState:I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_10

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    :cond_b
    const/4 v0, 0x1

    :goto_c
    monitor-exit p0

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isWifiConnected()Z
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2666
    :try_start_2
    iget-object v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2667
    .local v0, connManager:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1a

    .line 2668
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_19

    const-string v4, "WimaxStateTracker"

    const-string v5, "isWifiConnected connManager == null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2684
    .end local v0           #connManager:Landroid/net/ConnectivityManager;
    :cond_19
    :goto_19
    return v3

    .line 2672
    .restart local v0       #connManager:Landroid/net/ConnectivityManager;
    :cond_1a
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 2673
    .local v2, mWifi:Landroid/net/NetworkInfo;
    if-nez v2, :cond_4b

    .line 2674
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_19

    const-string v4, "WimaxStateTracker"

    const-string v5, "isWifiConnected mWifi == null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2c} :catch_2d

    goto :goto_19

    .line 2681
    .end local v0           #connManager:Landroid/net/ConnectivityManager;
    .end local v2           #mWifi:Landroid/net/NetworkInfo;
    :catch_2d
    move-exception v1

    .line 2682
    .local v1, e:Ljava/lang/Exception;
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_19

    const-string v4, "WimaxStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "e "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 2678
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #connManager:Landroid/net/ConnectivityManager;
    .restart local v2       #mWifi:Landroid/net/NetworkInfo;
    :cond_4b
    :try_start_4b
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_2d

    move-result v5

    if-eqz v5, :cond_19

    move v3, v4

    .line 2679
    goto :goto_19
.end method

.method private noteRunState()V
    .registers 1

    .prologue
    .line 746
    return-void
.end method

.method private static putAddress(Ljava/lang/StringBuffer;I)V
    .registers 5
    .parameter "buf"
    .parameter "addr"

    .prologue
    const/16 v2, 0x2e

    .line 1196
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1200
    return-void
.end method

.method private declared-synchronized requestConnectionTime(Landroid/net/fourG/wimax/Wimax4GInfo;)V
    .registers 5
    .parameter "info"

    .prologue
    .line 1840
    monitor-enter p0

    const/4 v1, 0x0

    .line 1843
    .local v1, rev_time:Ljava/lang/String;
    :try_start_2
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->getConnectionTime()Ljava/lang/String;

    move-result-object v1

    .line 1844
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1846
    .local v0, newTime:I
    invoke-direct {p0, v0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendConnectionTimeChangeBroadcast(I)V
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_f

    .line 1847
    monitor-exit p0

    return-void

    .line 1840
    .end local v0           #newTime:I
    :catchall_f
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized requestPolledInfo(Landroid/net/fourG/wimax/Wimax4GInfo;)V
    .registers 19
    .parameter "info"

    .prologue
    .line 1746
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bScreenOff:Z
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_2d

    if-eqz v14, :cond_9

    .line 1832
    :cond_7
    :goto_7
    monitor-exit p0

    return-void

    .line 1750
    :cond_9
    const/4 v9, 0x0

    .line 1751
    .local v9, sBsid:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, nTxpower:I
    const/4 v2, 0x0

    .local v2, nCF:I
    const/4 v11, 0x0

    .local v11, sRssi:I
    const/4 v10, 0x0

    .local v10, sCinr:I
    const/4 v13, 0x0

    .local v13, ulspeed:I
    const/4 v1, 0x0

    .line 1752
    .local v1, dlspeed:I
    const/4 v7, 0x0

    .local v7, rev_info:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1754
    .local v8, rev_time:Ljava/lang/String;
    :try_start_12
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->getLinkInfo()Ljava/lang/String;

    move-result-object v7

    .line 1755
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->getConnectionTime()Ljava/lang/String;

    move-result-object v8

    .line 1756
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->getRadioInfo()Z

    .line 1757
    if-nez v7, :cond_30

    .line 1758
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v14, :cond_7

    const-string v14, "WimaxStateTracker"

    const-string v15, "[requestPolledInfo] getLinkInfo() returns null"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_12 .. :try_end_2c} :catchall_2d

    goto :goto_7

    .line 1746
    .end local v1           #dlspeed:I
    .end local v2           #nCF:I
    .end local v4           #nTxpower:I
    .end local v7           #rev_info:Ljava/lang/String;
    .end local v8           #rev_time:Ljava/lang/String;
    .end local v9           #sBsid:Ljava/lang/String;
    .end local v10           #sCinr:I
    .end local v11           #sRssi:I
    .end local v13           #ulspeed:I
    :catchall_2d
    move-exception v14

    monitor-exit p0

    throw v14

    .line 1761
    .restart local v1       #dlspeed:I
    .restart local v2       #nCF:I
    .restart local v4       #nTxpower:I
    .restart local v7       #rev_info:Ljava/lang/String;
    .restart local v8       #rev_time:Ljava/lang/String;
    .restart local v9       #sBsid:Ljava/lang/String;
    .restart local v10       #sCinr:I
    .restart local v11       #sRssi:I
    .restart local v13       #ulspeed:I
    :cond_30
    :try_start_30
    new-instance v12, Ljava/util/StringTokenizer;

    const-string v14, "#"

    invoke-direct {v12, v7, v14}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1764
    .local v12, st:Ljava/util/StringTokenizer;
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v14

    if-eqz v14, :cond_99

    .line 1765
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1766
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v14

    if-eqz v14, :cond_99

    .line 1767
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1768
    const/16 v14, -0x7b

    if-eq v11, v14, :cond_7

    .line 1769
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v14

    if-eqz v14, :cond_99

    .line 1770
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1771
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v14

    if-eqz v14, :cond_99

    .line 1772
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1773
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v14

    if-eqz v14, :cond_99

    .line 1774
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 1775
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v14

    if-eqz v14, :cond_99

    .line 1776
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 1777
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v14

    if-eqz v14, :cond_99

    .line 1778
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    .line 1789
    :cond_99
    invoke-virtual/range {p1 .. p1}, Landroid/net/fourG/wimax/Wimax4GInfo;->getBSID()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_ad

    .line 1790
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/net/fourG/wimax/Wimax4GInfo;->setBSID(Ljava/lang/String;)V

    .line 1791
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendBSIDChangeBroadcast(Ljava/lang/String;)V

    .line 1795
    :cond_ad
    invoke-virtual/range {p1 .. p1}, Landroid/net/fourG/wimax/Wimax4GInfo;->getFREQ()I

    move-result v14

    if-eq v14, v2, :cond_bd

    .line 1796
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/fourG/wimax/Wimax4GInfo;->setFREQ(I)V

    .line 1797
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendFrequencyChangeBroadcast(I)V

    .line 1802
    :cond_bd
    invoke-virtual/range {p1 .. p1}, Landroid/net/fourG/wimax/Wimax4GInfo;->getRssi()I

    move-result v6

    .line 1803
    .local v6, oldRssi:I
    invoke-virtual/range {p1 .. p1}, Landroid/net/fourG/wimax/Wimax4GInfo;->getCinr()I

    move-result v5

    .line 1805
    .local v5, oldCinr:I
    if-ne v6, v11, :cond_c9

    if-eq v5, v10, :cond_113

    .line 1806
    :cond_c9
    if-eq v6, v11, :cond_d5

    .line 1807
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/net/fourG/wimax/Wimax4GInfo;->setRssi(I)V

    .line 1808
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendSignalChangeBroadcast(I)V

    .line 1810
    :cond_d5
    if-eq v5, v10, :cond_e1

    .line 1811
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/net/fourG/wimax/Wimax4GInfo;->setCinr(I)V

    .line 1812
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendCINRSignalChangeBroadcast(I)V

    .line 1818
    :cond_e1
    const/4 v14, 0x4

    invoke-static {v11, v10, v14}, Landroid/net/fourG/wimax/Wimax4GManager;->calculateSignalLevel(III)I

    move-result v3

    .line 1819
    .local v3, nNewSignalLevel:I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->nOldSignalLevel:I

    if-eq v14, v3, :cond_113

    .line 1820
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v14, :cond_10a

    const-string v14, "WimaxStateTracker"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "nNewSignalLevel ====> "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    :cond_10a
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendSignalLevelChangeBroadcast(I)V

    .line 1822
    move-object/from16 v0, p0

    iput v3, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->nOldSignalLevel:I

    .line 1826
    .end local v3           #nNewSignalLevel:I
    :cond_113
    invoke-virtual/range {p1 .. p1}, Landroid/net/fourG/wimax/Wimax4GInfo;->getTxPower()I

    move-result v14

    if-eq v14, v4, :cond_11e

    .line 1827
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/fourG/wimax/Wimax4GInfo;->setTxPower(I)V

    .line 1829
    :cond_11e
    invoke-virtual/range {p1 .. p1}, Landroid/net/fourG/wimax/Wimax4GInfo;->getLinkSpeed()I

    move-result v14

    if-eq v14, v13, :cond_7

    .line 1830
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/net/fourG/wimax/Wimax4GInfo;->setLinkSpeed(I)V
    :try_end_129
    .catchall {:try_start_30 .. :try_end_129} :catchall_2d

    goto/16 :goto_7
.end method

.method private sendBSIDChangeBroadcast(Ljava/lang/String;)V
    .registers 5
    .parameter "newBsid"

    .prologue
    .line 1850
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1851
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wimax.NET_4G_HANDOVER_COMPLETE_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1852
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "newBSID"

    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->getConnectedNSP()Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1853
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1855
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1d
    return-void
.end method

.method private sendCINRSignalChangeBroadcast(I)V
    .registers 4
    .parameter "newCINR"

    .prologue
    .line 1884
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1885
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.CINR_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1886
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "newCINR"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1887
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1889
    .end local v0           #intent:Landroid/content/Intent;
    :cond_17
    return-void
.end method

.method private sendConnectionTimeChangeBroadcast(I)V
    .registers 4
    .parameter "newTime"

    .prologue
    .line 1950
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1951
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wimax.TIME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1952
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "newTime"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1953
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1955
    .end local v0           #intent:Landroid/content/Intent;
    :cond_17
    return-void
.end method

.method private sendDHCPTimeBroadcast(I)V
    .registers 4
    .parameter "newDHCPTime"

    .prologue
    .line 1962
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1963
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wimax.WIMAX_DHCP_TIME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1964
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "newDHCPTime"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1965
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1967
    .end local v0           #intent:Landroid/content/Intent;
    :cond_17
    return-void
.end method

.method private sendFrequencyChangeBroadcast(I)V
    .registers 4
    .parameter "newFreq"

    .prologue
    .line 1858
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1859
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wimax.FREQUENCY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1860
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "newFrequency"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1861
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1863
    .end local v0           #intent:Landroid/content/Intent;
    :cond_17
    return-void
.end method

.method private sendModeChangeBroadcast(I)V
    .registers 4
    .parameter "usbMode"

    .prologue
    .line 1903
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wimax.MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1904
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1905
    const-string v1, "usbMode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1906
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1907
    return-void
.end method

.method private sendNetworkStateChangeBroadcast()V
    .registers 4

    .prologue
    .line 1926
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.fourG.wimax.NETWORK_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1928
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1930
    const-string v1, "linkProperties"

    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1931
    const-string v1, "networkInfo"

    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1932
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_2b

    .line 1933
    const-string v1, "fourG_info"

    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1935
    :cond_2b
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1936
    return-void
.end method

.method private sendSignalChangeBroadcast(I)V
    .registers 4
    .parameter "newRssi"

    .prologue
    .line 1871
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1872
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.RSSI_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1873
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "newRSSI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1874
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1876
    .end local v0           #intent:Landroid/content/Intent;
    :cond_17
    return-void
.end method

.method private sendSignalLevelChangeBroadcast(I)V
    .registers 4
    .parameter "newSignalLevel"

    .prologue
    .line 1895
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1896
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1897
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "newSignalLevel"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1898
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1900
    .end local v0           #intent:Landroid/content/Intent;
    :cond_17
    return-void
.end method

.method private sendSupplicantStateChangeBroadcast()V
    .registers 4

    .prologue
    .line 1939
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.fourG.NET_4G_SUPPLICANT_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1940
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1941
    const-string v1, "4g_supplicant_state"

    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GInfo;->getSupplicantState()Landroid/net/fourG/net4GSupplicantState;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1942
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1943
    return-void
.end method

.method private sendWimaxOMADMResponseBroadcast(Ljava/nio/ByteBuffer;II)V
    .registers 7
    .parameter "respDataAray"
    .parameter "nRetType"
    .parameter "odbMngState"

    .prologue
    .line 2000
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wimax.WIMAX_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2001
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "WimaxOMADMRespData"

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2002
    const-string v1, "WimaxOMADMRespState"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2003
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2004
    return-void
.end method

.method private sendWimaxRadioInfoTemperatureResponseBroadcast()V
    .registers 5

    .prologue
    .line 2007
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->getRadioInfoTemperature()Landroid/net/fourG/net4GManager$RadioInfoTemperature;

    move-result-object v1

    check-cast v1, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;

    .line 2009
    .local v1, radioInfoObj:Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;
    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->getCurrent()I

    move-result v2

    iput v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxTemperature:I

    .line 2010
    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->isRadioOverheat()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_28

    .line 2011
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.RADIO_OVERHEAT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2012
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "radio_temperature"

    iget v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxTemperature:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2013
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2015
    .end local v0           #intent:Landroid/content/Intent;
    :cond_28
    return-void
.end method

.method private sendWimaxStateChangeBroadcast()V
    .registers 4

    .prologue
    .line 1910
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1911
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1916
    const-string v1, "WimaxState"

    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/WimaxState;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1917
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    sget-object v2, Landroid/net/fourG/wimax/WimaxState;->CONNECTING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v1, v2, :cond_29

    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    sget-object v2, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-eq v1, v2, :cond_29

    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    sget-object v2, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v1, v2, :cond_38

    .line 1919
    :cond_29
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-eqz v1, :cond_38

    .line 1920
    const-string v1, "WimaxStateDetail"

    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1922
    :cond_38
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1923
    return-void
.end method

.method private declared-synchronized setPollTimer()V
    .registers 4

    .prologue
    .line 725
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bScreenOff:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    if-eqz v0, :cond_7

    .line 729
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 726
    :cond_7
    const/4 v0, 0x4

    :try_start_8
    invoke-virtual {p0, v0}, Landroid/net/fourG/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 727
    const/4 v0, 0x4

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendEmptyMessageDelayed(IJ)Z
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_15

    goto :goto_5

    .line 725
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setTornDownByConnMgr(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 532
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 533
    iput-boolean p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mTornDownByConnMgr:Z

    .line 534
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->updateNetworkInfo()V

    .line 535
    return-void
.end method

.method private static stringToIpAddr(Ljava/lang/String;)I
    .registers 10
    .parameter "addrString"

    .prologue
    const/4 v6, -0x1

    .line 2410
    :try_start_1
    const-string v7, "\\."

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2411
    .local v5, parts:[Ljava/lang/String;
    array-length v7, v5

    const/4 v8, 0x4

    if-eq v7, v8, :cond_c

    .line 2424
    .end local v5           #parts:[Ljava/lang/String;
    :goto_b
    return v6

    .line 2416
    .restart local v5       #parts:[Ljava/lang/String;
    :cond_c
    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2417
    .local v0, a:I
    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    shl-int/lit8 v1, v7, 0x8

    .line 2418
    .local v1, b:I
    const/4 v7, 0x2

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    shl-int/lit8 v2, v7, 0x10

    .line 2419
    .local v2, c:I
    const/4 v7, 0x3

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_2b} :catch_33

    move-result v6

    shl-int/lit8 v3, v6, 0x18

    .line 2421
    .local v3, d:I
    or-int v6, v0, v1

    or-int/2addr v6, v2

    or-int/2addr v6, v3

    goto :goto_b

    .line 2422
    .end local v0           #a:I
    .end local v1           #b:I
    .end local v2           #c:I
    .end local v3           #d:I
    .end local v5           #parts:[Ljava/lang/String;
    :catch_33
    move-exception v4

    .line 2423
    .local v4, ex:Ljava/lang/NumberFormatException;
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_b
.end method

.method private updateNetworkInfo()V
    .registers 3

    .prologue
    .line 640
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 641
    return-void
.end method

.method private updateWimaxNotiMsg()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 399
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v0, :cond_21

    const-string v0, "WimaxStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValue() within updateWimaxNotiMsg() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_21
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getValue()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 401
    sget-object v0, Landroid/net/fourG/wimax/WimaxStateTracker$1;->$SwitchMap$android$net$fourG$wimax$WimaxState:[I

    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/WimaxState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_8a

    .line 416
    :cond_34
    :goto_34
    return-void

    .line 404
    :pswitch_35
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v0, :cond_55

    const-string v0, "WimaxStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "4G Network Connected :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_55
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    sget v1, Landroid/net/fourG/wimax/WimaxStateTracker;->ICON_WIMAX_CONNECTED:I

    const-string v2, "4G network connected"

    invoke-virtual {p0, v0, v1, v3, v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->setNotificationVisible(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_34

    .line 410
    :pswitch_5f
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v0, :cond_7f

    const-string v0, "WimaxStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "4G Network Disconnected :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_7f
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    sget v1, Landroid/net/fourG/wimax/WimaxStateTracker;->ICON_WIMAX_DISCONNECTED:I

    const-string v2, "4G network disconnected"

    invoke-virtual {p0, v0, v1, v3, v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->setNotificationVisible(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_34

    .line 401
    nop

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_35
        :pswitch_5f
    .end packed-switch
.end method


# virtual methods
.method public SendWimaxLinkStateChangeBroadcast()V
    .registers 5

    .prologue
    .line 1185
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    sget-object v1, Landroid/net/fourG/wimax/Wimax4GInfo;->linkStateMap:Ljava/util/EnumMap;

    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    invoke-virtual {v1, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_UNDEFINED:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    if-ne v1, v2, :cond_f

    .line 1193
    :cond_e
    :goto_e
    return-void

    .line 1188
    :cond_f
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1189
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.LINK_STATE_DETAIL_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1190
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "link_state_detail"

    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    sget-object v1, Landroid/net/fourG/wimax/Wimax4GInfo;->linkStateMap:Ljava/util/EnumMap;

    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    invoke-virtual {v1, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1191
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_e
.end method

.method public SetNoBackOff(Z)V
    .registers 2
    .parameter "bNoBackOff"

    .prologue
    .line 1462
    iput-boolean p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bNoBackOff:Z

    .line 1463
    return-void
.end method

.method public SetScreenOff(Z)V
    .registers 4
    .parameter "bScreenOff"

    .prologue
    .line 1725
    iput-boolean p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bScreenOff:Z

    .line 1727
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isIdleState:Z

    if-eqz v0, :cond_7

    .line 1739
    :cond_6
    :goto_6
    return-void

    .line 1729
    :cond_7
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    sget-object v1, Landroid/net/fourG/wimax/WimaxState;->CONNECTING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v0, v1, :cond_1f

    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    sget-object v1, Landroid/net/fourG/wimax/WimaxState;->OBTAINING_IPADDR:Landroid/net/fourG/wimax/WimaxState;

    if-eq v0, v1, :cond_1f

    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    sget-object v1, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-eq v0, v1, :cond_1f

    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    sget-object v1, Landroid/net/fourG/wimax/WimaxState;->READY:Landroid/net/fourG/wimax/WimaxState;

    if-ne v0, v1, :cond_27

    .line 1731
    :cond_1f
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bScreenOff:Z

    if-nez v0, :cond_27

    .line 1732
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/net/fourG/wimax/WimaxNative;->setLinkInfo(Z)V

    .line 1736
    :cond_27
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bScreenOff:Z

    if-eqz v0, :cond_6

    .line 1737
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/net/fourG/wimax/WimaxNative;->setLinkInfo(Z)V

    goto :goto_6
.end method

.method public acquire_WakeLock()V
    .registers 4

    .prologue
    .line 760
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/WimaxStateTracker;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_5

    .line 770
    :cond_4
    :goto_4
    return-void

    .line 761
    :cond_5
    sget-object v1, Landroid/net/fourG/wimax/WimaxStateTracker;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 762
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_4

    const-string v1, "WimaxStateTracker"

    const-string v2, "------WakeLock already acquired----------------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_4

    .line 767
    :catch_19
    move-exception v0

    .line 768
    .local v0, e:Ljava/lang/NullPointerException;
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_4

    const-string v1, "WimaxStateTracker"

    const-string v2, "------WakeLock NullPointerException----------------"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 764
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_26
    :try_start_26
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_31

    const-string v1, "WimaxStateTracker"

    const-string v2, "------WakeLock will be acquired----------------"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_31
    sget-object v1, Landroid/net/fourG/wimax/WimaxStateTracker;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_36
    .catch Ljava/lang/NullPointerException; {:try_start_26 .. :try_end_36} :catch_19

    goto :goto_4
.end method

.method public clearRetryFlag()V
    .registers 5

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x0

    .line 1547
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v0, :cond_d

    const-string v0, "WimaxStateTracker"

    const-string v1, "[clearRetryFlag] Called ********** "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    :cond_d
    iput v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nRetryFlag:I

    .line 1549
    iput v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    .line 1550
    invoke-virtual {p0, v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1551
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v0, :cond_22

    const-string v0, "WimaxStateTracker"

    const-string v1, "[clearRetryFlag] removeMessage(EVENT_SCAN_DELAY)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    :cond_22
    invoke-virtual {p0, v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->removeMessages(I)V

    .line 1554
    :cond_25
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bSkipEntryDelayOnce:Z

    .line 1555
    return-void
.end method

.method public configureInterface()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 1558
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->setPollTimer()V

    .line 1560
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mUseStaticIp:Z

    if-nez v4, :cond_24

    .line 1561
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    if-nez v4, :cond_23

    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mObtainingIpAddress:Z

    if-nez v4, :cond_23

    .line 1562
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_1b

    const-string v4, "WimaxStateTracker"

    const-string v5, "[configureInterface] !mHaveIpAddress && !mObtainingIpAddress"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    :cond_1b
    iput-boolean v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mObtainingIpAddress:Z

    .line 1564
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->sendEmptyMessage(I)Z

    .line 1619
    :cond_23
    :goto_23
    return-void

    .line 1567
    :cond_24
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    if-nez v4, :cond_23

    .line 1583
    const/4 v3, 0x0

    .line 1585
    .local v3, ifcg:Landroid/net/InterfaceConfiguration;
    :try_start_29
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nwService:Landroid/os/INetworkManagementService;

    iget-object v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v3

    .line 1586
    if-eqz v3, :cond_23

    .line 1593
    new-instance v0, Landroid/net/LinkAddress;

    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpResults;

    iget-object v4, v4, Landroid/net/DhcpResults;->ipAddress:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    const/16 v5, 0x18

    invoke-direct {v0, v4, v5}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 1595
    .local v0, addr:Landroid/net/LinkAddress;
    invoke-virtual {v3, v0}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 1596
    invoke-virtual {v3}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 1599
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nwService:Landroid/os/INetworkManagementService;

    iget-object v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 1603
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    .line 1604
    const/4 v2, 0x2

    .line 1605
    .local v2, event:I
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_23

    const-string v4, "WimaxStateTracker"

    const-string v5, "Static IP configuration succeeded"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_5e} :catch_5f

    goto :goto_23

    .line 1608
    .end local v0           #addr:Landroid/net/LinkAddress;
    .end local v2           #event:I
    :catch_5f
    move-exception v1

    .line 1609
    .local v1, e:Ljava/lang/Exception;
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_88

    const-string v4, "WimaxStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error configuring interface "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    :cond_88
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    .line 1611
    const/4 v2, 0x3

    .line 1612
    .restart local v2       #event:I
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_23

    const-string v4, "WimaxStateTracker"

    const-string v5, "Static IP configuration failed"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method public defaultRouteSet(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 522
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 523
    return-void
.end method

.method public declared-synchronized disconnectAndStop()Z
    .registers 5

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x1

    .line 2166
    monitor-enter p0

    :try_start_3
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_e

    const-string v1, "WimaxStateTracker"

    const-string v2, "[disconnectAndStop] called ****** "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    :cond_e
    iget v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mRunState:I

    if-eq v1, v3, :cond_26

    iget v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mRunState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_26

    .line 2168
    const/4 v0, 0x3

    iput v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mRunState:I

    .line 2169
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isHaveLinkInfo:Z

    .line 2172
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bUserDisconnect:Z

    .line 2173
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->disconnectWimax()Z
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_2a

    move-result v0

    .line 2189
    :goto_24
    monitor-exit p0

    return v0

    .line 2187
    :cond_26
    :try_start_26
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->releaseWakeLock()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_24

    .line 2166
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAnyDataEnabled()Z
    .registers 5

    .prologue
    .line 2690
    monitor-enter p0

    .line 2691
    :try_start_1
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mUserDataEnabled:Z

    if-eqz v1, :cond_30

    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mPolicyDataEnabled:Z

    if-eqz v1, :cond_30

    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->getPersistedWimaxEnabled()Z

    move-result v1

    if-eqz v1, :cond_30

    const/4 v0, 0x1

    .line 2692
    .local v0, result:Z
    :goto_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_32

    .line 2693
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_2f

    const-string v1, "WimaxStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAnyDataEnabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2694
    :cond_2f
    return v0

    .line 2691
    .end local v0           #result:Z
    :cond_30
    const/4 v0, 0x0

    goto :goto_12

    .line 2692
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public getCurrentWimaxState()Landroid/net/fourG/wimax/WimaxState;
    .registers 2

    .prologue
    .line 1703
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    return-object v0
.end method

.method public getCurrentWimaxStateDetail()I
    .registers 2

    .prologue
    .line 1707
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->ordinal()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .registers 2

    .prologue
    .line 1699
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpResults;

    invoke-virtual {v0}, Landroid/net/DhcpResults;->makeDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 551
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkCapabilities()Landroid/net/LinkCapabilities;
    .registers 3

    .prologue
    .line 568
    new-instance v0, Landroid/net/LinkCapabilities;

    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/LinkCapabilities;-><init>(Landroid/net/LinkCapabilities;)V

    return-object v0
.end method

.method public getLinkProperties()Landroid/net/LinkProperties;
    .registers 3

    .prologue
    .line 558
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .registers 2

    .prologue
    .line 487
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getNetworkSubtype()I
    .registers 2

    .prologue
    .line 632
    const/4 v0, 0x0

    return v0
.end method

.method public getNoBackoff()Z
    .registers 2

    .prologue
    .line 1458
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bNoBackOff:Z

    return v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 576
    const-string v0, "net.tcp.buffersize.wimax"

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .parameter "msg"

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x6

    const/4 v10, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1206
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_48e

    .line 1455
    :cond_a
    :goto_a
    :pswitch_a
    return-void

    .line 1208
    :pswitch_b
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;

    .line 1210
    .local v3, result:Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    iput-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateOld:Landroid/net/fourG/wimax/WimaxState;

    .line 1211
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetailOld:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 1213
    iget-object v4, v3, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->state:Landroid/net/fourG/wimax/WimaxState;

    iput-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    .line 1214
    iget-object v4, v3, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 1216
    iget-object v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    sget-object v4, Landroid/net/fourG/wimax/Wimax4GInfo;->linkStateMap:Ljava/util/EnumMap;

    iget-object v6, v3, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    invoke-virtual {v4, v6}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    invoke-virtual {v5, v4}, Landroid/net/fourG/wimax/Wimax4GInfo;->setLinkStateDetailed(Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;)V

    .line 1218
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_4c

    const-string v4, "WimaxStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handleMessage] Old state is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateOld:Landroid/net/fourG/wimax/WimaxState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    :cond_4c
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_76

    const-string v4, "WimaxStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handleMessage] New state is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " New detailed info is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    :cond_76
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->updateNetworkInfo()V

    .line 1221
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_97

    const-string v4, "WimaxStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handleMessage] result(New Wimax State ::: )  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->state:Landroid/net/fourG/wimax/WimaxState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    :cond_97
    invoke-virtual {p0, v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->handleWimaxStateChanged(Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;)V

    .line 1223
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendNetworkStateChangeBroadcast()V

    .line 1224
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendSupplicantStateChangeBroadcast()V

    .line 1225
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iget-object v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetailOld:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-eq v4, v5, :cond_a

    .line 1226
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v5, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Abnormal_State:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-ne v4, v5, :cond_b3

    .line 1227
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Landroid/net/fourG/wimax/Wimax4GManager;->setLastError(I)I

    .line 1228
    :cond_b3
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->SendWimaxLinkStateChangeBroadcast()V

    goto/16 :goto_a

    .line 1237
    .end local v3           #result:Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;
    :pswitch_b8
    iget-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isHaveLinkInfo:Z

    if-ne v5, v4, :cond_d7

    .line 1238
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isIdleState:Z

    if-nez v4, :cond_ca

    .line 1239
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    invoke-direct {p0, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->requestPolledInfo(Landroid/net/fourG/wimax/Wimax4GInfo;)V

    .line 1240
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->setPollTimer()V

    goto/16 :goto_a

    .line 1242
    :cond_ca
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_a

    const-string v4, "WimaxStateTracker"

    const-string v5, "[handleMessage:EVENT_POLL_INTERVAL] ^^^^^ IDLE MODE ^^^^^"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 1245
    :cond_d7
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_a

    const-string v4, "WimaxStateTracker"

    const-string v5, "[handleMessage:EVENT_POLL_INTERVAL] ^^^^^ DISCONNECTED ^^^^^"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 1249
    :pswitch_e4
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v4}, Landroid/net/fourG/wimax/Wimax4GManager;->release_sWakeLock()V

    goto/16 :goto_a

    .line 1252
    :pswitch_eb
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v4}, Landroid/net/fourG/wimax/Wimax4GManager;->startScan()Z

    goto/16 :goto_a

    .line 1255
    :pswitch_f2
    invoke-static {v9, v4}, Landroid/net/fourG/wimax/WimaxNative;->VirtualIdleReq(IB)Z

    .line 1256
    invoke-virtual {p0, v8}, Landroid/net/fourG/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_109

    .line 1257
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_106

    const-string v4, "WimaxStateTracker"

    const-string v5, "[EVENT_VI_REQ] removeMessage(EVENT_AFTER_VI_REQ_NEED_DELAY)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    :cond_106
    invoke-virtual {p0, v8}, Landroid/net/fourG/wimax/WimaxStateTracker;->removeMessages(I)V

    .line 1260
    :cond_109
    const-wide/16 v4, 0xbb8

    invoke-virtual {p0, v8, v4, v5}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_a

    .line 1270
    :pswitch_110
    iget-boolean v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v6, :cond_134

    const-string v6, "WimaxStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mDhcpInfo.netmask:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpResults;

    iget v8, v8, Landroid/net/DhcpResults;->prefixLength:I

    invoke-static {v8}, Landroid/net/NetworkUtils;->prefixLengthToNetmaskInt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    :cond_134
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpResults;

    iget v6, v6, Landroid/net/DhcpResults;->prefixLength:I

    invoke-static {v6}, Landroid/net/NetworkUtils;->prefixLengthToNetmaskInt(I)I

    move-result v6

    if-ne v6, v9, :cond_150

    .line 1273
    iget-boolean v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v6, :cond_149

    const-string v6, "WimaxStateTracker"

    const-string v7, "SystemProperties.set wimax_route"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    :cond_149
    const-string v6, "ctl.start"

    const-string v7, "wimax_route"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    :cond_150
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpEnd:J

    .line 1278
    iget-boolean v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v6, :cond_17f

    const-string v6, "WimaxStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[handleMessage : DhcpEnd is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpEnd:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    :cond_17f
    iget-wide v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpEnd:J

    iget-wide v8, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpStart:J

    sub-long/2addr v6, v8

    long-to-int v6, v6

    iput v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDiffDhcpTime:I

    .line 1282
    iget-boolean v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v6, :cond_1ab

    const-string v6, "WimaxStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[handleMessage : DHCP Difference is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDiffDhcpTime:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    :cond_1ab
    iget v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDiffDhcpTime:I

    invoke-direct {p0, v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendDHCPTimeBroadcast(I)V

    .line 1285
    iput-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    .line 1286
    iput-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mObtainingIpAddress:Z

    .line 1289
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpResults;

    iget-object v6, v6, Landroid/net/DhcpResults;->ipAddress:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/net/fourG/wimax/Wimax4GInfo;->setIpAddress(I)V

    .line 1291
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_1f3

    const-string v4, "WimaxStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mNetworkInfo.getDetailedState(.) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    :cond_1f3
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v4, v6, :cond_25d

    .line 1293
    iput v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nRetryFlag:I

    .line 1294
    iput v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    .line 1295
    sget-object v4, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    iput-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    .line 1296
    sget-object v4, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Registered:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 1297
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->IpObtained()Z

    .line 1298
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->updateWimaxNotiMsg()V

    .line 1301
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v4, v5, v10, v10}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 1304
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    sget-object v5, Landroid/net/fourG/net4GSupplicantState;->ASSOCIATED:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {v4, v5}, Landroid/net/fourG/wimax/Wimax4GInfo;->setSupplicantState(Landroid/net/fourG/net4GSupplicantState;)V

    .line 1337
    :cond_220
    :goto_220
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->configureLinkProperties()V

    .line 1338
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendNetworkStateChangeBroadcast()V

    .line 1341
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_244

    const-string v4, "WimaxStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handleMessage] >>> IP configuration << "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpResults;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    :cond_244
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v4

    if-eqz v4, :cond_256

    .line 1344
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.net.wimax.NETWORK_IP_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1347
    :cond_256
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v4}, Landroid/net/fourG/wimax/Wimax4GManager;->release_sWakeLock()V

    goto/16 :goto_a

    .line 1308
    :cond_25d
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->IpObtained()Z

    .line 1315
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mCsHandler:Landroid/os/Handler;

    const/4 v6, 0x3

    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1316
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1319
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isIdleState:Z

    if-eqz v4, :cond_220

    .line 1320
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_27b

    const-string v4, "WimaxStateTracker"

    const-string v6, "isIdleState == true"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    :cond_27b
    iput-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isIdleState:Z

    .line 1322
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->setPollTimer()V

    .line 1324
    sget-object v4, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    iput-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    .line 1325
    sget-object v4, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Registered:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 1326
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->IpObtained()Z

    .line 1327
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v4, v5, v10, v10}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 1330
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    sget-object v5, Landroid/net/fourG/net4GSupplicantState;->ASSOCIATED:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {v4, v5}, Landroid/net/fourG/wimax/Wimax4GInfo;->setSupplicantState(Landroid/net/fourG/net4GSupplicantState;)V

    goto :goto_220

    .line 1352
    :pswitch_29d
    iget-boolean v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v6, :cond_2a8

    const-string v6, "WimaxStateTracker"

    const-string v7, "[handleMessage] >>> IP configuration...  failed <<< "

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    :cond_2a8
    iput-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    .line 1354
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    invoke-virtual {v6, v5}, Landroid/net/fourG/wimax/Wimax4GInfo;->setIpAddress(I)V

    .line 1355
    iput-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mObtainingIpAddress:Z

    .line 1357
    iput v9, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDiffDhcpTime:I

    .line 1358
    iget v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDiffDhcpTime:I

    invoke-direct {p0, v5}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendDHCPTimeBroadcast(I)V

    .line 1361
    iget-object v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

    if-eqz v5, :cond_2e1

    .line 1362
    iget-object v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

    invoke-virtual {v5, v4}, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->setCancelCallback(Z)V

    .line 1363
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_2d0

    .line 1364
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->removeMessages(I)V

    .line 1366
    :cond_2d0
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_2e1

    .line 1367
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->removeMessages(I)V

    .line 1370
    :cond_2e1
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2f4

    .line 1371
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_2f4

    const-string v4, "WimaxStateTracker"

    const-string v5, "Could not stop DHCP"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    :cond_2f4
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/NetworkUtils;->disableInterface(Ljava/lang/String;)I

    .line 1375
    monitor-enter p0

    .line 1376
    :try_start_2fa
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    sget-object v5, Landroid/net/fourG/wimax/WimaxState;->CONNECTING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v4, v5, :cond_306

    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    sget-object v5, Landroid/net/fourG/wimax/WimaxState;->OBTAINING_IPADDR:Landroid/net/fourG/wimax/WimaxState;

    if-ne v4, v5, :cond_311

    .line 1377
    :cond_306
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_311

    const-string v4, "WimaxStateTracker"

    const-string v5, "[handleMessage:EVENT_INTERFACE_CONFIGURATION_FAILED] b4 disconnectWimax()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    :cond_311
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->disconnectWimax()Z

    .line 1379
    monitor-exit p0

    goto/16 :goto_a

    :catchall_317
    move-exception v4

    monitor-exit p0
    :try_end_319
    .catchall {:try_start_2fa .. :try_end_319} :catchall_317

    throw v4

    .line 1382
    :pswitch_31a
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_39d

    move v1, v4

    .line 1383
    .local v1, driverStarted:Z
    :goto_31f
    iget-boolean v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v6, :cond_341

    const-string v6, "WimaxStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[handleMessage:EVENT_DRIVER_STATE_CHANGED] ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    :cond_341
    if-nez v1, :cond_398

    .line 1385
    iput-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bUserDisconnect:Z

    .line 1386
    iput-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bExitCriteria:Z

    .line 1388
    iget-object v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v5, v4}, Landroid/net/fourG/wimax/Wimax4GManager;->setWimax4GState(I)V

    .line 1389
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_364

    .line 1390
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_35f

    const-string v4, "WimaxStateTracker"

    const-string v5, "[EVENT_DRIVER_STATE_CHANGED] removeMessage(EVENT_VI_REQ)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    :cond_35f
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->removeMessages(I)V

    .line 1393
    :cond_364
    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_37a

    .line 1394
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_376

    const-string v4, "WimaxStateTracker"

    const-string v5, "[EVENT_DRIVER_STATE_CHANGED] removeMessage(EVENT_SCAN_DELAY)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    :cond_376
    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->removeMessages(I)V

    .line 1405
    :cond_37a
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_385

    const-string v4, "WimaxStateTracker"

    const-string v5, "!!!!!!!!!!!!!!!!!set DISCONNECTED state When 4G is turned off  before scanning step!!!!!!!!!!!!!!!!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    :cond_385
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v4, v5, v10, v10}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    sget-object v5, Landroid/net/fourG/net4GSupplicantState;->DISCONNECTED:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {v4, v5}, Landroid/net/fourG/wimax/Wimax4GInfo;->setSupplicantState(Landroid/net/fourG/net4GSupplicantState;)V

    .line 1412
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v4}, Landroid/net/fourG/wimax/Wimax4GManager;->release_sWakeLock()V

    .line 1415
    :cond_398
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->noteRunState()V

    goto/16 :goto_a

    .end local v1           #driverStarted:Z
    :cond_39d
    move v1, v5

    .line 1382
    goto :goto_31f

    .line 1418
    :pswitch_39f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxAuthFail;

    .line 1419
    .local v0, auth:Landroid/net/fourG/wimax/WimaxStateTracker$WimaxAuthFail;
    iget-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v5, :cond_3cd

    const-string v5, "WimaxStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[handleMessage] AUTH_FAIL  nErrorCode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxAuthFail;->nErrorCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", strError :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxAuthFail;->strError:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    :cond_3cd
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.net.wimax.WIMAX_AUTH_ERROR"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1423
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "auth_error"

    iget v6, v0, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxAuthFail;->nErrorCode:I

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1424
    iget-object v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v5, v4}, Landroid/net/fourG/wimax/Wimax4GManager;->setLastError(I)I

    .line 1425
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_a

    .line 1428
    .end local v0           #auth:Landroid/net/fourG/wimax/WimaxStateTracker$WimaxAuthFail;
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_3e9
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/nio/ByteBuffer;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v4, v5, v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxOMADMResponseBroadcast(Ljava/nio/ByteBuffer;II)V

    goto/16 :goto_a

    .line 1431
    :pswitch_3f6
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxRadioInfoResponseBroadcast()V

    .line 1432
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxRadioInfoTemperatureResponseBroadcast()V

    goto/16 :goto_a

    .line 1435
    :pswitch_3fe
    iget-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v5, :cond_422

    const-string v5, "WimaxStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[handleMessage] EVENT_LINK_WEAK_INFO : 4G will disconnect. (currentState :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    :cond_422
    iput-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bExitCriteria:Z

    .line 1437
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v4}, Landroid/net/fourG/wimax/Wimax4GManager;->disconnect()Z

    .line 1438
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    iget-object v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v4, v8}, Landroid/net/fourG/wimax/Wimax4GManager;->setLastError(I)I

    goto/16 :goto_a

    .line 1441
    :pswitch_432
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_43d

    const-string v4, "WimaxStateTracker"

    const-string v5, "[handleMessage] EVENT_MOCALL_INFO : wait 5sec. "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    :cond_43d
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->acquire_WakeLock()V

    .line 1443
    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_458

    .line 1444
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_453

    const-string v4, "WimaxStateTracker"

    const-string v5, "[handleMessage] removeMessage(EVENT_MOCALL_FAIL)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    :cond_453
    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->removeMessages(I)V

    .line 1447
    :cond_458
    const/16 v4, 0x10

    const-wide/16 v5, 0x1388

    invoke-virtual {p0, v4, v5, v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_a

    .line 1450
    :pswitch_461
    iget-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v5, :cond_485

    const-string v5, "WimaxStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[handleMessage] EVENT_MOCALL_FAIL : 4G will disconnect. (currentState :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    :cond_485
    iput-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bExitCriteria:Z

    .line 1452
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v4}, Landroid/net/fourG/wimax/Wimax4GManager;->disconnect()Z

    goto/16 :goto_a

    .line 1206
    :pswitch_data_48e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_110
        :pswitch_29d
        :pswitch_b8
        :pswitch_a
        :pswitch_e4
        :pswitch_eb
        :pswitch_f2
        :pswitch_31a
        :pswitch_a
        :pswitch_39f
        :pswitch_3e9
        :pswitch_3f6
        :pswitch_3fe
        :pswitch_432
        :pswitch_461
    .end packed-switch
.end method

.method public handleWimaxStateChanged(Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;)V
    .registers 14
    .parameter "newWimaxState"

    .prologue
    .line 795
    sget-object v7, Landroid/net/fourG/wimax/WimaxStateTracker$1;->$SwitchMap$android$net$fourG$wimax$WimaxState:[I

    iget-object v8, p1, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->state:Landroid/net/fourG/wimax/WimaxState;

    invoke-virtual {v8}, Landroid/net/fourG/wimax/WimaxState;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_6de

    .line 1182
    :cond_d
    :goto_d
    return-void

    .line 797
    :pswitch_e
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 798
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    sget-object v8, Landroid/net/fourG/net4GSupplicantState;->INVALID:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GInfo;->setSupplicantState(Landroid/net/fourG/net4GSupplicantState;)V

    goto :goto_d

    .line 802
    :pswitch_19
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mIsTetheredmode:Z

    if-eqz v7, :cond_60

    .line 803
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendModeChangeBroadcast(I)V

    .line 807
    :goto_21
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bUserDisconnect:Z

    .line 810
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GManager;->setWimax4GState(I)V

    .line 811
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 813
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v7}, Landroid/net/fourG/wimax/Wimax4GManager;->getWimaxMode()I

    move-result v5

    .line 814
    .local v5, nMode:I
    const/4 v7, 0x4

    if-eq v5, v7, :cond_3c

    const/4 v7, 0x2

    if-eq v5, v7, :cond_3c

    const/4 v7, 0x1

    if-ne v5, v7, :cond_40

    .line 815
    :cond_3c
    const/4 v7, 0x1

    invoke-static {v7}, Landroid/net/fourG/wimax/WimaxNative;->setBackhaulMode(Z)V

    .line 817
    :cond_40
    const/4 v7, 0x4

    if-eq v5, v7, :cond_46

    const/4 v7, 0x3

    if-ne v5, v7, :cond_65

    .line 818
    :cond_46
    const/4 v7, 0x1

    invoke-static {v7}, Landroid/net/fourG/wimax/WimaxNative;->setDMMode(Z)V

    .line 822
    :goto_4a
    const/4 v7, 0x2

    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mRunState:I

    .line 823
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bUserDisconnect:Z

    .line 824
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mTornDownByConnMgr:Z

    .line 825
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 826
    const/4 v7, 0x0

    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nRetryFlag:I

    .line 827
    const/4 v7, 0x0

    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    goto :goto_d

    .line 805
    .end local v5           #nMode:I
    :cond_60
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendModeChangeBroadcast(I)V

    goto :goto_21

    .line 820
    .restart local v5       #nMode:I
    :cond_65
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/net/fourG/wimax/WimaxNative;->setDMMode(Z)V

    goto :goto_4a

    .line 832
    .end local v5           #nMode:I
    :pswitch_6a
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 833
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateOld:Landroid/net/fourG/wimax/WimaxState;

    sget-object v8, Landroid/net/fourG/wimax/WimaxState;->UNKNOWN:Landroid/net/fourG/wimax/WimaxState;

    if-eq v7, v8, :cond_79

    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateOld:Landroid/net/fourG/wimax/WimaxState;

    sget-object v8, Landroid/net/fourG/wimax/WimaxState;->INITIALIZING:Landroid/net/fourG/wimax/WimaxState;

    if-ne v7, v8, :cond_9d

    .line 834
    :cond_79
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_97

    const-string v7, "WimaxStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[handleMessageWimaxStateChanged] modified nRetryFlag = 0, nScanAttempt = 0, bUserReq = true m_bSkipEntryDelayOnce = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bSkipEntryDelayOnce:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    :cond_97
    const/4 v7, 0x0

    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nRetryFlag:I

    .line 837
    const/4 v7, 0x0

    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    .line 840
    :cond_9d
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bUserDisconnect:Z

    .line 842
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->getOdbConfigData()[I

    move-result-object v6

    .line 843
    .local v6, nOdbCfgData:[I
    if-eqz v6, :cond_b5

    .line 844
    const/4 v7, 0x1

    aget v7, v6, v7

    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->WIMAX_SCAN_RETRY_SECONDS:I

    .line 845
    const/4 v7, 0x2

    aget v7, v6, v7

    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->WIMAX_SCAN_ATTEMPT_TIMEOUT:I

    .line 846
    const/4 v7, 0x5

    aget v7, v6, v7

    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->WIMAX_ENTRY_DELAY:I

    .line 848
    :cond_b5
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->noteRunState()V

    .line 850
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v7}, Landroid/net/fourG/wimax/Wimax4GManager;->getDeviceInformation()Landroid/net/fourG/wimax/Wimax4GDeviceInfo;

    move-result-object v1

    .line 851
    .local v1, devInfo:Landroid/net/fourG/wimax/Wimax4GDeviceInfo;
    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    .line 852
    .local v4, macAddress:Ljava/lang/String;
    const-string v7, "net.wimax.mac.address"

    invoke-static {v7, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_e3

    const-string v7, "WimaxStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "macAddress : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    :cond_e3
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->checkUseStaticIp()Z

    .line 859
    new-instance v2, Landroid/os/HandlerThread;

    const-string v7, "DHCP Handler Thread"

    invoke-direct {v2, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 860
    .local v2, dhcpThread:Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 861
    new-instance v7, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, p0, v8, p0}, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;-><init>(Landroid/net/fourG/wimax/WimaxStateTracker;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

    .line 863
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mTornDownByConnMgr:Z

    .line 864
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 876
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    const-string v8, "WimaxStateTracker"

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;

    move-result-object v3

    .line 877
    .local v3, l:Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;
    invoke-virtual {v3}, Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;->acquire()V

    .line 878
    invoke-virtual {v3}, Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;->release()V

    .line 880
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    iput-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateOld:Landroid/net/fourG/wimax/WimaxState;

    .line 881
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetailOld:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 883
    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->SCANNING:Landroid/net/fourG/wimax/WimaxState;

    iput-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    .line 884
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 886
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 888
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    sget-object v8, Landroid/net/fourG/net4GSupplicantState;->SCANNING:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GInfo;->setSupplicantState(Landroid/net/fourG/net4GSupplicantState;)V

    .line 891
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bNoBackOff:Z

    if-nez v7, :cond_145

    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->isWifiConnected()Z

    move-result v7

    if-nez v7, :cond_145

    .line 893
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v7}, Landroid/net/fourG/wimax/Wimax4GManager;->startScan()Z

    goto/16 :goto_d

    .line 895
    :cond_145
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->acquire_WakeLock()V

    .line 896
    const/4 v7, -0x1

    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroid/net/fourG/wimax/WimaxNative;->VirtualIdleReq(IB)Z

    .line 897
    const/4 v7, 0x6

    invoke-virtual {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_163

    .line 898
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_15f

    const-string v7, "WimaxStateTracker"

    const-string v8, "[RetryProcess] removeMessage(EVENT_AFTER_VI_REQ_NEED_DELAY)"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    :cond_15f
    const/4 v7, 0x6

    invoke-virtual {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->removeMessages(I)V

    .line 901
    :cond_163
    const/4 v7, 0x6

    const-wide/16 v8, 0xbb8

    invoke-virtual {p0, v7, v8, v9}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_d

    .line 906
    .end local v1           #devInfo:Landroid/net/fourG/wimax/Wimax4GDeviceInfo;
    .end local v2           #dhcpThread:Landroid/os/HandlerThread;
    .end local v3           #l:Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;
    .end local v4           #macAddress:Ljava/lang/String;
    .end local v6           #nOdbCfgData:[I
    :pswitch_16b
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 907
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isIdleState:Z

    .line 908
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isHaveLinkInfo:Z

    .line 910
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    sget-object v8, Landroid/net/fourG/net4GSupplicantState;->SCANNING:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GInfo;->setSupplicantState(Landroid/net/fourG/net4GSupplicantState;)V

    goto/16 :goto_d

    .line 916
    :pswitch_186
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_1a4

    const-string v7, "WimaxStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[handleWimaxStateChanged : READY] WIMAX SCAN ATTEMPT TIMEOUT : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :cond_1a4
    iget v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    iget v8, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->WIMAX_SCAN_ATTEMPT_TIMEOUT:I

    if-ne v7, v8, :cond_1bc

    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bExitCriteria:Z

    if-eqz v7, :cond_1bc

    .line 918
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_1b9

    const-string v7, "WimaxStateTracker"

    const-string v8, "[handleWimaxStateChanged : READY] Reset m_bExitCriteria "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    :cond_1b9
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bExitCriteria:Z

    .line 922
    :cond_1bc
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v7}, Landroid/net/fourG/wimax/Wimax4GManager;->getWimaxMode()I

    move-result v5

    .line 923
    .restart local v5       #nMode:I
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_1f0

    const-string v7, "WimaxStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[handleMessageWimaxStateChanged] >>>> READY : WimaxMode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " m_bSkipEntryDelayOnce = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bSkipEntryDelayOnce:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " <<<<"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    :cond_1f0
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    const/4 v7, 0x1

    if-eq v5, v7, :cond_1ff

    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    const/4 v7, 0x2

    if-eq v5, v7, :cond_1ff

    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    const/4 v7, 0x4

    if-ne v5, v7, :cond_297

    :cond_1ff
    const/4 v0, 0x1

    .line 925
    .local v0, bTethering:Z
    :goto_200
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_22a

    const-string v7, "WimaxStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[READY] >>>> m_bExitCriteria ***********<<<<  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bExitCriteria:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "[READY] >>>> m_bEntryDelaySet ***********<<<<  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bEntryDelaySet:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    :cond_22a
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bExitCriteria:Z

    if-eqz v7, :cond_29a

    if-nez v0, :cond_29a

    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bSkipEntryDelayOnce:Z

    if-nez v7, :cond_29a

    .line 927
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_23f

    const-string v7, "WimaxStateTracker"

    const-string v8, "[RetryProcess] >>>> m_bExitCriteria <<<<"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :cond_23f
    iget v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->WIMAX_ENTRY_DELAY:I

    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroid/net/fourG/wimax/WimaxNative;->VirtualIdleReq(IB)Z

    .line 929
    const/4 v7, 0x6

    invoke-virtual {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_25b

    .line 930
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_257

    const-string v7, "WimaxStateTracker"

    const-string v8, "[RetryProcess] removeMessage(EVENT_AFTER_VI_REQ_NEED_DELAY)"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_257
    const/4 v7, 0x6

    invoke-virtual {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->removeMessages(I)V

    .line 933
    :cond_25b
    const/4 v7, 0x6

    const-wide/16 v8, 0xbb8

    invoke-virtual {p0, v7, v8, v9}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendEmptyMessageDelayed(IJ)Z

    .line 935
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bExitCriteria:Z

    .line 936
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bEntryDelaySet:Z

    .line 937
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_272

    const-string v7, "WimaxStateTracker"

    const-string v8, "[handleWimaxStateChanged : READY] m_bExitCriteria ON."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_272
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    iput-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateOld:Landroid/net/fourG/wimax/WimaxState;

    .line 939
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetailOld:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 941
    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    iput-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    .line 942
    sget-object v7, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Not_Met_Entry_Criteria:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 943
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 945
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    sget-object v8, Landroid/net/fourG/net4GSupplicantState;->DISCONNECTED:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GInfo;->setSupplicantState(Landroid/net/fourG/net4GSupplicantState;)V

    goto/16 :goto_d

    .line 924
    .end local v0           #bTethering:Z
    :cond_297
    const/4 v0, 0x0

    goto/16 :goto_200

    .line 950
    .restart local v0       #bTethering:Z
    :cond_29a
    iget v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    iget v8, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->WIMAX_SCAN_ATTEMPT_TIMEOUT:I

    if-ne v7, v8, :cond_2ae

    .line 951
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_2ab

    const-string v7, "WimaxStateTracker"

    const-string v8, "[handleWimaxStateChanged : READY] WIMAX SCAN ATTEMPT TIMEOUT"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    :cond_2ab
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bSkipEntryDelayOnce:Z

    .line 955
    :cond_2ae
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 957
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    sget-object v8, Landroid/net/fourG/net4GSupplicantState;->INACTIVE:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GInfo;->setSupplicantState(Landroid/net/fourG/net4GSupplicantState;)V

    .line 960
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    .line 961
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mObtainingIpAddress:Z

    .line 963
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->checkUseStaticIp()Z

    .line 964
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    invoke-direct {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->requestPolledInfo(Landroid/net/fourG/wimax/Wimax4GInfo;)V

    .line 965
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->setPollTimer()V

    .line 967
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bUserDisconnect:Z

    if-eqz v7, :cond_2e3

    .line 968
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_d

    const-string v7, "WimaxStateTracker"

    const-string v8, "[handleWimaxStateChanged : READY] USER Disconnect!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 972
    :cond_2e3
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 974
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    sget-object v8, Landroid/net/fourG/net4GSupplicantState;->ASSOCIATING:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GInfo;->setSupplicantState(Landroid/net/fourG/net4GSupplicantState;)V

    .line 977
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/net/fourG/wimax/Wimax4GManager;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_d

    .line 978
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_311

    const-string v7, "WimaxStateTracker"

    const-string v8, "[handleWimaxStateChanged : READY] connect() returns fail."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :cond_311
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    iput-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateOld:Landroid/net/fourG/wimax/WimaxState;

    .line 980
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetailOld:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 982
    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    iput-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    .line 983
    sget-object v7, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Timeout_NE:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 985
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 987
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    sget-object v8, Landroid/net/fourG/net4GSupplicantState;->DISCONNECTED:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GInfo;->setSupplicantState(Landroid/net/fourG/net4GSupplicantState;)V

    goto/16 :goto_d

    .line 993
    .end local v0           #bTethering:Z
    .end local v5           #nMode:I
    :pswitch_336
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 995
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    sget-object v8, Landroid/net/fourG/net4GSupplicantState;->ASSOCIATING:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GInfo;->setSupplicantState(Landroid/net/fourG/net4GSupplicantState;)V

    goto/16 :goto_d

    .line 1001
    :pswitch_34b
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->configureInterface()V

    .line 1004
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    iput-wide v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpStart:J

    .line 1005
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_37d

    const-string v7, "WimaxStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[handleMessage : DhcpStart is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpStart:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    :cond_37d
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 1009
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    sget-object v8, Landroid/net/fourG/net4GSupplicantState;->ASSOCIATED:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GInfo;->setSupplicantState(Landroid/net/fourG/net4GSupplicantState;)V

    goto/16 :goto_d

    .line 1013
    :pswitch_392
    const/4 v7, 0x0

    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nRetryFlag:I

    .line 1014
    const/4 v7, 0x0

    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    .line 1015
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_3b6

    const-string v7, "WimaxStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mHaveIpAddress :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    :cond_3b6
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isIdleState:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3d9

    .line 1018
    const/16 v7, 0x10

    invoke-virtual {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_3d3

    .line 1019
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_3ce

    const-string v7, "WimaxStateTracker"

    const-string v8, "[handleMessageWimaxStateChanged] removeMessage(EVENT_MOCALL_FAIL)"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    :cond_3ce
    const/16 v7, 0x10

    invoke-virtual {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->removeMessages(I)V

    .line 1022
    :cond_3d3
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isIdleState:Z

    .line 1023
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->setPollTimer()V

    .line 1026
    :cond_3d9
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    if-eqz v7, :cond_45f

    .line 1027
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_401

    const-string v7, "WimaxStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[handleMessageWimaxStateChanged] nRetryFlag = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nRetryFlag:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " -> 0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :cond_401
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->configureInterface()V

    .line 1029
    const/4 v7, 0x0

    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nRetryFlag:I

    .line 1030
    const/4 v7, 0x0

    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    .line 1031
    iget-object v7, p1, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v8, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Idle:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-ne v7, v8, :cond_413

    .line 1032
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isIdleState:Z

    .line 1036
    :cond_413
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    sget-object v8, Landroid/net/fourG/net4GSupplicantState;->COMPLETED:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GInfo;->setSupplicantState(Landroid/net/fourG/net4GSupplicantState;)V

    .line 1038
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    iget-object v8, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v8}, Landroid/net/fourG/wimax/Wimax4GManager;->getConnectedNSP()Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GInfo;->set4GBaseStationInfo(Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;)V

    .line 1039
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 1040
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v7}, Landroid/net/fourG/wimax/Wimax4GManager;->release_sWakeLock()V

    .line 1059
    :goto_436
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isIdleState:Z

    if-nez v7, :cond_d

    .line 1060
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_458

    const-string v7, "WimaxStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[CONNECTED] m_bScreenOff :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bScreenOff:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :cond_458
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bScreenOff:Z

    invoke-virtual {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->SetScreenOff(Z)V

    goto/16 :goto_d

    .line 1042
    :cond_45f
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_46a

    const-string v7, "WimaxStateTracker"

    const-string v8, "[handleMessageWimaxStateChanged]  No IP Address -> setDetailedState.OBTAINING_IPADDR"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    :cond_46a
    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->OBTAINING_IPADDR:Landroid/net/fourG/wimax/WimaxState;

    iput-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    .line 1045
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 1049
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->configureInterface()V

    .line 1052
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    iput-wide v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpStart:J

    .line 1053
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 1054
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    sget-object v8, Landroid/net/fourG/net4GSupplicantState;->ASSOCIATED:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GInfo;->setSupplicantState(Landroid/net/fourG/net4GSupplicantState;)V

    goto :goto_436

    .line 1066
    :pswitch_493
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    goto/16 :goto_d

    .line 1069
    :pswitch_498
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->acquire_WakeLock()V

    .line 1071
    const/16 v7, 0x10

    invoke-virtual {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_4b3

    .line 1072
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_4ae

    const-string v7, "WimaxStateTracker"

    const-string v8, "[DISCONNECTED] removeMessage(EVENT_MOCALL_FAIL)"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    :cond_4ae
    const/16 v7, 0x10

    invoke-virtual {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->removeMessages(I)V

    .line 1076
    :cond_4b3
    iget-object v7, p1, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-eqz v7, :cond_4e4

    .line 1077
    iget-object v7, p1, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v8, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Abnormal_State:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-ne v7, v8, :cond_4e4

    .line 1078
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_4c8

    const-string v7, "WimaxStateTracker"

    const-string v8, "-------- Abnormal_State  ----------"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    :cond_4c8
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v7}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_4d9

    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v7}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v7

    if-nez v7, :cond_573

    .line 1081
    :cond_4d9
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_4e4

    const-string v7, "WimaxStateTracker"

    const-string v8, "-------- discard Abnormal_State  ----------"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    :cond_4e4
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isHaveLinkInfo:Z

    .line 1102
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->resetLinkStatusInfo()V

    .line 1104
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 1105
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v7, v8, :cond_5ad

    .line 1106
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_502

    const-string v7, "WimaxStateTracker"

    const-string v8, "[handleMessageWimaxStateChanged] ^^^ DetailedState.DISCONNECTED ^^^"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    :cond_502
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->updateWimaxNotiMsg()V

    .line 1110
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    sget-object v8, Landroid/net/fourG/net4GSupplicantState;->DISCONNECTED:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GInfo;->setSupplicantState(Landroid/net/fourG/net4GSupplicantState;)V

    .line 1118
    :goto_515
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bUserDisconnect:Z

    if-eqz v7, :cond_5ce

    .line 1119
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_524

    const-string v7, "WimaxStateTracker"

    const-string v8, "USER Disconnect!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    :cond_524
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v7}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v7

    if-eqz v7, :cond_53d

    .line 1121
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_537

    const-string v7, "WimaxStateTracker"

    const-string v8, "setWimaxStatus(NET_4G_STATE_DISABLING)"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    :cond_537
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GManager;->setWimax4GState(I)V

    .line 1124
    :cond_53d
    const/4 v7, 0x0

    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nRetryFlag:I

    .line 1125
    const/4 v7, 0x0

    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    .line 1127
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->resetInterface()V

    .line 1129
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->stopWimax()Z

    move-result v7

    if-nez v7, :cond_557

    .line 1130
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_557

    const-string v7, "WimaxStateTracker"

    const-string v8, "Failed to stop Wimax."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    :cond_557
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/net/fourG/wimax/WimaxNative;->loadDriver(B)Z

    move-result v7

    if-nez v7, :cond_5ca

    .line 1134
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_569

    const-string v7, "WimaxStateTracker"

    const-string v8, "[handleMessageWimaxStateChanged] Failed to unload Wimax driver."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    :cond_569
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v7}, Landroid/net/fourG/wimax/Wimax4GManager;->release_sWakeLock()V

    .line 1139
    :goto_56e
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bUserDisconnect:Z

    goto/16 :goto_d

    .line 1084
    :cond_573
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mModemReset:Z

    .line 1085
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isHaveLinkInfo:Z

    .line 1086
    const/4 v7, 0x0

    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nRetryFlag:I

    .line 1087
    const/4 v7, 0x0

    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    .line 1088
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->resetInterface()V

    .line 1089
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    const-string v8, "00:00:00:00:00:00"

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GInfo;->setBSID(Ljava/lang/String;)V

    .line 1090
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GInfo;->setFREQ(I)V

    .line 1091
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    const/16 v8, -0x270f

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GInfo;->setRssi(I)V

    .line 1092
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GInfo;->setCinr(I)V

    .line 1093
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GInfo;->setTxPower(I)V

    .line 1094
    const/4 v7, -0x1

    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nOldSignalLevel:I

    .line 1095
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GManager;->set4GEnabled(Z)Z

    goto/16 :goto_d

    .line 1112
    :cond_5ad
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_5b8

    const-string v7, "WimaxStateTracker"

    const-string v8, "[handleMessageWimaxStateChanged] ^^^ DetailedState.FAILED ^^^"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    :cond_5b8
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    sget-object v8, Landroid/net/fourG/net4GSupplicantState;->INVALID:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GInfo;->setSupplicantState(Landroid/net/fourG/net4GSupplicantState;)V

    goto/16 :goto_515

    .line 1137
    :cond_5ca
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->notifyDriverStopped()V

    goto :goto_56e

    .line 1141
    :cond_5ce
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateOld:Landroid/net/fourG/wimax/WimaxState;

    sget-object v8, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-eq v7, v8, :cond_61f

    .line 1143
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_5f2

    const-string v7, "WimaxStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " connection fail :: newWimaxState.info ********  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    :cond_5f2
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_5fd

    const-string v7, "WimaxStateTracker"

    const-string v8, " !!!!!!!!!!!!!!!!!!!!!!!!!WimaxState.DISCONNECTED"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    :cond_5fd
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bEntryDelaySet:Z

    if-nez v7, :cond_60f

    .line 1147
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_60c

    const-string v7, "WimaxStateTracker"

    const-string v8, " m_bEntryDelaySet!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    :cond_60c
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bExitCriteria:Z

    .line 1151
    :cond_60f
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_61a

    const-string v7, "WimaxStateTracker"

    const-string v8, "Fail for Connect command !!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    :cond_61a
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->RetryProcess()V

    goto/16 :goto_d

    .line 1154
    :cond_61f
    iget-object v7, p1, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v8, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Timeout_Sync:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-eq v7, v8, :cond_62b

    iget-object v7, p1, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v8, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Timeout_NE:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-ne v7, v8, :cond_64e

    .line 1156
    :cond_62b
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_649

    const-string v7, "WimaxStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Connection Time out !!!!!!!!!!!!!!!!!!!!!!!!! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    :cond_649
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->RetryProcess()V

    goto/16 :goto_d

    .line 1158
    :cond_64e
    iget-object v7, p1, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v8, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Syncup_PHY:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-eq v7, v8, :cond_65a

    iget-object v7, p1, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v8, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Syncup_MAC:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-ne v7, v8, :cond_67d

    .line 1160
    :cond_65a
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_678

    const-string v7, "WimaxStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sync Fail !!!!!!!!!!!!!!!!!!!!!!!!! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    :cond_678
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->RetryProcess()V

    goto/16 :goto_d

    .line 1162
    :cond_67d
    iget-object v7, p1, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v8, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->EAP_authentication_Device:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-eq v7, v8, :cond_689

    iget-object v7, p1, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v8, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->EAP_authentication_User:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-ne v7, v8, :cond_6ac

    .line 1164
    :cond_689
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_6a7

    const-string v7, "WimaxStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Auth Fail !!!!!!!!!!!!!!!!!!!!!!!!! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    :cond_6a7
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->RetryProcess()V

    goto/16 :goto_d

    .line 1167
    :cond_6ac
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_6b7

    const-string v7, "WimaxStateTracker"

    const-string v8, "Virtual IDLE!!!!!!!!!!!!!! "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    :cond_6b7
    const/16 v7, 0x8

    invoke-virtual {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_6cf

    .line 1169
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_6ca

    const-string v7, "WimaxStateTracker"

    const-string v8, "[DISCONNECTED] removeMessage(EVENT_VI_REQ)"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    :cond_6ca
    const/16 v7, 0x8

    invoke-virtual {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->removeMessages(I)V

    .line 1172
    :cond_6cf
    const/4 v7, 0x6

    invoke-virtual {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_d

    .line 1173
    const/4 v7, 0x6

    const-wide/16 v8, 0xbb8

    invoke-virtual {p0, v7, v8, v9}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_d

    .line 795
    :pswitch_data_6de
    .packed-switch 0x1
        :pswitch_392
        :pswitch_498
        :pswitch_e
        :pswitch_19
        :pswitch_6a
        :pswitch_16b
        :pswitch_186
        :pswitch_336
        :pswitch_34b
        :pswitch_493
    .end packed-switch
.end method

.method public hasIpAddress()Z
    .registers 2

    .prologue
    .line 656
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    return v0
.end method

.method public declared-synchronized isAvailable()Z
    .registers 4

    .prologue
    .line 620
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getCurrentWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v1

    sget-object v2, Landroid/net/fourG/wimax/WimaxState;->UNKNOWN:Landroid/net/fourG/wimax/WimaxState;

    if-eq v1, v2, :cond_11

    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getCurrentWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v1

    sget-object v2, Landroid/net/fourG/wimax/WimaxState;->INITIALIZING:Landroid/net/fourG/wimax/WimaxState;

    if-ne v1, v2, :cond_1b

    :cond_11
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mTornDownByConnMgr:Z

    if-nez v1, :cond_1b

    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->isDriverStopped()Z
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_20

    move-result v1

    if-nez v1, :cond_1e

    :cond_1b
    const/4 v0, 0x1

    .line 624
    .local v0, bRet:Z
    :goto_1c
    monitor-exit p0

    return v0

    .line 620
    .end local v0           #bRet:Z
    :cond_1e
    const/4 v0, 0x0

    goto :goto_1c

    :catchall_20
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isBootCompleted(Z)V
    .registers 2
    .parameter "bCompleted"

    .prologue
    .line 2088
    iput-boolean p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_isBootCompleted:Z

    .line 2089
    return-void
.end method

.method public isConnectionCompleted()Z
    .registers 3

    .prologue
    .line 648
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getCurrentWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v0

    sget-object v1, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isDataDisabledExternally()Z
    .registers 2

    .prologue
    .line 2698
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mUserDataEnabled:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mPolicyDataEnabled:Z

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isDefaultRouteSet()Z
    .registers 2

    .prologue
    .line 515
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isPrivateDnsRouteSet()Z
    .registers 2

    .prologue
    .line 501
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isTeardownRequested()Z
    .registers 2

    .prologue
    .line 480
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method notifyAuthFail(ILjava/lang/String;)V
    .registers 6
    .parameter "nErrorCode"
    .parameter "strError"

    .prologue
    .line 680
    const/16 v1, 0xb

    new-instance v2, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxAuthFail;

    invoke-direct {v2, p1, p2}, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxAuthFail;-><init>(ILjava/lang/String;)V

    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 682
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 683
    return-void
.end method

.method notifyDriverStarted()V
    .registers 4

    .prologue
    .line 701
    const/16 v0, 0x9

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 702
    return-void
.end method

.method public notifyDriverStopped()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 689
    const/4 v0, 0x4

    iput v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mRunState:I

    .line 692
    const/16 v0, 0x9

    invoke-static {p0, v0, v1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 693
    return-void
.end method

.method public notifyIpRenew()V
    .registers 3

    .prologue
    .line 671
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mUseStaticIp:Z

    if-nez v0, :cond_1a

    .line 672
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getCurrentWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v0

    sget-object v1, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v0, v1, :cond_1a

    .line 673
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mObtainingIpAddress:Z

    .line 674
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->sendEmptyMessage(I)Z

    .line 677
    :cond_1a
    return-void
.end method

.method public notifyLinkWeakInformation()V
    .registers 2

    .prologue
    .line 713
    const/16 v0, 0xe

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 714
    return-void
.end method

.method public notifyMoCallInformation()V
    .registers 2

    .prologue
    .line 717
    const/16 v0, 0xf

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 718
    return-void
.end method

.method public notifyOMADMResponse(Ljava/nio/ByteBuffer;II)V
    .registers 5
    .parameter "bDataArray"
    .parameter "nDataLen"
    .parameter "odbMngState"

    .prologue
    .line 705
    const/16 v0, 0xc

    invoke-static {p0, v0, p2, p3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 706
    return-void
.end method

.method public notifyRadioInfoResponse()V
    .registers 2

    .prologue
    .line 709
    const/16 v0, 0xd

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 710
    return-void
.end method

.method public notifyStateChange(Landroid/net/fourG/wimax/WimaxState;Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V
    .registers 6
    .parameter "newWimaxState"
    .parameter "newInfo"

    .prologue
    .line 665
    const/4 v1, 0x1

    new-instance v2, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;

    invoke-direct {v2, p1, p2}, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;-><init>(Landroid/net/fourG/wimax/WimaxState;Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V

    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 667
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 668
    return-void
.end method

.method public privateDnsRouteSet(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 508
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 509
    return-void
.end method

.method public reconnect()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2096
    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v2, :cond_22

    const-string v2, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[reconnect] isWifiConnected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->isWifiConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    :cond_22
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 2098
    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v2, :cond_33

    const-string v2, "WimaxStateTracker"

    const-string v3, "[reconnect] isAvailable false ignore reconnect"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    move v0, v1

    .line 2152
    :cond_34
    :goto_34
    return v0

    .line 2101
    :cond_35
    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v2, :cond_71

    const-string v2, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[reconnect] mTornDownByConnMgr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mTornDownByConnMgr:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  getCurrentWimaxState() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getCurrentWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " getWimaxStatus()  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v4}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    :cond_71
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2104
    invoke-direct {p0, v1}, Landroid/net/fourG/wimax/WimaxStateTracker;->setTornDownByConnMgr(Z)V

    .line 2105
    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v2, :cond_84

    const-string v2, "WimaxStateTracker"

    const-string v3, "mTeardownRequested.set(false)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    :cond_84
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->getPersistedWimaxEnabled()Z

    move-result v2

    if-nez v2, :cond_99

    .line 2108
    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v2, :cond_97

    const-string v2, "WimaxStateTracker"

    const-string v3, "[reconnect] This is NOT by User request.... reject..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_97
    move v0, v1

    .line 2109
    goto :goto_34

    .line 2111
    :cond_99
    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_isBootCompleted:Z

    if-nez v2, :cond_aa

    .line 2112
    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v2, :cond_a8

    const-string v2, "WimaxStateTracker"

    const-string v3, "[reconnect] m_isBootCompleted is false "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a8
    move v0, v1

    .line 2113
    goto :goto_34

    .line 2115
    :cond_aa
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getAnyDataEnabled()Z

    move-result v2

    if-nez v2, :cond_be

    .line 2116
    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v2, :cond_bb

    const-string v2, "WimaxStateTracker"

    const-string v3, "[reconnect] mobile data is disabled ignoring reconnect "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bb
    move v0, v1

    .line 2117
    goto/16 :goto_34

    .line 2134
    :cond_be
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v2

    if-eq v2, v0, :cond_e0

    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v2

    if-eqz v2, :cond_e0

    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_e0

    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_f1

    .line 2137
    :cond_e0
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2, v0}, Landroid/net/fourG/wimax/Wimax4GManager;->set4GEnabled(Z)Z

    move-result v0

    .line 2138
    .local v0, bRet:Z
    if-eqz v0, :cond_34

    .line 2139
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2140
    iput-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mTornDownByConnMgr:Z

    goto/16 :goto_34

    .line 2146
    .end local v0           #bRet:Z
    :cond_f1
    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v2, :cond_10f

    const-string v2, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[reconnect] mWimaxState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    :cond_10f
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    sget-object v3, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v2, v3, :cond_11f

    .line 2148
    invoke-direct {p0, v1}, Landroid/net/fourG/wimax/WimaxStateTracker;->setTornDownByConnMgr(Z)V

    .line 2149
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2, v1}, Landroid/net/fourG/wimax/Wimax4GManager;->startScan(Z)Z

    goto/16 :goto_34

    :cond_11f
    move v0, v1

    .line 2152
    goto/16 :goto_34
.end method

.method public releaseWakeLock()V
    .registers 2

    .prologue
    .line 749
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mReleaseWakeLockCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    .line 750
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mReleaseWakeLockCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 752
    :cond_9
    return-void
.end method

.method public requestConnectionInfo()Landroid/net/fourG/wimax/Wimax4GInfo;
    .registers 5

    .prologue
    .line 1715
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    invoke-direct {p0, v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->requestPolledInfo(Landroid/net/fourG/wimax/Wimax4GInfo;)V

    .line 1716
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v1

    .line 1718
    .local v1, dhcp:Landroid/net/DhcpInfo;
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpResults;

    iget-object v3, v3, Landroid/net/DhcpResults;->ipAddress:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/fourG/wimax/Wimax4GInfo;->setIpAddress(I)V

    .line 1719
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->getDeviceInformation()Landroid/net/fourG/wimax/Wimax4GDeviceInfo;

    move-result-object v0

    .line 1720
    .local v0, devInfo:Landroid/net/fourG/wimax/Wimax4GDeviceInfo;
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/fourG/wimax/Wimax4GInfo;->setMacAddress(Ljava/lang/String;)V

    .line 1721
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    return-object v2
.end method

.method public resetInterface()V
    .registers 8

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 1645
    iput-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isHaveLinkInfo:Z

    .line 1646
    iput-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    .line 1647
    iput-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mObtainingIpAddress:Z

    .line 1648
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    invoke-virtual {v2, v4}, Landroid/net/fourG/wimax/Wimax4GInfo;->setIpAddress(I)V

    .line 1654
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpRenewIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1660
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

    if-eqz v2, :cond_3a

    .line 1661
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->setCancelCallback(Z)V

    .line 1662
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

    invoke-virtual {v2, v5}, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1663
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

    invoke-virtual {v2, v5}, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->removeMessages(I)V

    .line 1665
    :cond_2d
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

    invoke-virtual {v2, v6}, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 1666
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

    invoke-virtual {v2, v6}, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->removeMessages(I)V

    .line 1669
    :cond_3a
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4d

    .line 1670
    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v2, :cond_4d

    const-string v2, "WimaxStateTracker"

    const-string v3, "[resetInterface] Could not stop DHCP"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    :cond_4d
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/NetworkUtils;->disableInterface(Ljava/lang/String;)I

    .line 1682
    const-string v0, "0.0.0.0"

    .line 1683
    .local v0, EMPTY_IP:Ljava/lang/String;
    new-instance v1, Landroid/net/RouteInfo;

    new-instance v2, Landroid/net/LinkAddress;

    const-string v3, "0.0.0.0"

    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    .line 1686
    .local v1, EMPTY_ROUTE:Landroid/net/RouteInfo;
    new-instance v2, Landroid/net/DhcpResults;

    invoke-direct {v2}, Landroid/net/DhcpResults;-><init>()V

    iput-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpResults;

    .line 1687
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpResults;

    const-string v3, "0.0.0.0"

    iput-object v3, v2, Landroid/net/DhcpResults;->ipAddress:Ljava/lang/String;

    .line 1688
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpResults;

    invoke-virtual {v2, v1}, Landroid/net/DhcpResults;->addRoute(Landroid/net/RouteInfo;)V

    .line 1689
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpResults;

    iput v4, v2, Landroid/net/DhcpResults;->prefixLength:I

    .line 1690
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpResults;

    const-string v3, "0.0.0.0"

    iput-object v3, v2, Landroid/net/DhcpResults;->dns1:Ljava/lang/String;

    .line 1691
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpResults;

    const-string v3, "0.0.0.0"

    iput-object v3, v2, Landroid/net/DhcpResults;->dns2:Ljava/lang/String;

    .line 1692
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpResults;

    const-string v3, "0.0.0.0"

    iput-object v3, v2, Landroid/net/DhcpResults;->serverAddress:Ljava/lang/String;

    .line 1693
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpResults;

    iput v4, v2, Landroid/net/DhcpResults;->leaseDuration:I

    .line 1695
    return-void
.end method

.method public resetLinkStatusInfo()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1625
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    const-string v1, "00:00:00:00:00:00"

    invoke-virtual {v0, v1}, Landroid/net/fourG/wimax/Wimax4GInfo;->setBSID(Ljava/lang/String;)V

    .line 1626
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    invoke-virtual {v0, v2}, Landroid/net/fourG/wimax/Wimax4GInfo;->setFREQ(I)V

    .line 1627
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    const/16 v1, -0x270f

    invoke-virtual {v0, v1}, Landroid/net/fourG/wimax/Wimax4GInfo;->setRssi(I)V

    .line 1628
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    invoke-virtual {v0, v2}, Landroid/net/fourG/wimax/Wimax4GInfo;->setCinr(I)V

    .line 1629
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    invoke-virtual {v0, v2}, Landroid/net/fourG/wimax/Wimax4GInfo;->setTxPower(I)V

    .line 1630
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nOldSignalLevel:I

    .line 1631
    sget-object v0, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    iput-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    .line 1632
    sget-object v0, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->De_registration:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 1633
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 1634
    return-void
.end method

.method public resetOldState()V
    .registers 2

    .prologue
    .line 1637
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxMonitor:Landroid/net/fourG/wimax/WimaxMonitor;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/WimaxMonitor;->resetOldState()V

    .line 1638
    return-void
.end method

.method public declared-synchronized restart()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 2193
    monitor-enter p0

    :try_start_2
    iget v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mRunState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    .line 2194
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mRunState:I
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_15

    .line 2199
    :cond_a
    :goto_a
    monitor-exit p0

    return v2

    .line 2196
    :cond_c
    :try_start_c
    iget v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mRunState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 2197
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mRunState:I
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    goto :goto_a

    .line 2193
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method sendMruListBroadcast(I)V
    .registers 4
    .parameter "nlistSize"

    .prologue
    .line 1970
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wimax.WIMAX_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1971
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1972
    const-string v1, "MruList"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1973
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1974
    return-void
.end method

.method sendMruUpdateBroadcast(II)V
    .registers 5
    .parameter "subType"
    .parameter "ErrorValue"

    .prologue
    .line 1977
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wimax.WIMAX_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1978
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1979
    const-string v1, "subType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1980
    const-string v1, "ErrorValue"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1981
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1982
    return-void
.end method

.method sendWimaxBSListBroadcast(Ljava/util/List;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2018
    .local p1, nlist:Ljava/util/List;,"Ljava/util/List<Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.SCAN_RESULTS_AVAILABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2019
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "bs_scan_result"

    check-cast p1, Landroid/os/Parcelable;

    .end local p1           #nlist:Ljava/util/List;,"Ljava/util/List<Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;>;"
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2020
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2021
    return-void
.end method

.method sendWimaxRadioInfoResponseBroadcast()V
    .registers 5

    .prologue
    .line 1985
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->getRadioInfoTemperature()Landroid/net/fourG/net4GManager$RadioInfoTemperature;

    move-result-object v1

    check-cast v1, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;

    .line 1987
    .local v1, radioInfoObj:Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;
    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->getCurrent()I

    move-result v2

    iput v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxTemperature:I

    .line 1988
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.wimax.WIMAX_RESPONSE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1989
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "WimaxRadioInfo"

    iget v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxTemperature:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1990
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1991
    return-void
.end method

.method public sendWorkModeBroadCast(I)V
    .registers 4
    .parameter "workMode"

    .prologue
    .line 1994
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wimax.WIMAX_WORK_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1995
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "WimaxWorkMode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1996
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1997
    return-void
.end method

.method public setDataEnable(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 494
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v0, :cond_1c

    const-string v0, "WimaxStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataEnabled: IGNORING enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_1c
    return-void
.end method

.method public setDependencyMet(Z)V
    .registers 2
    .parameter "met"

    .prologue
    .line 2651
    return-void
.end method

.method public setEnableLog(Z)V
    .registers 4
    .parameter "blog"

    .prologue
    .line 2233
    iput-boolean p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    .line 2234
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    invoke-static {v0}, Landroid/net/fourG/wimax/WimaxNative;->setEnableLog(Z)V

    .line 2235
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxMonitor:Landroid/net/fourG/wimax/WimaxMonitor;

    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    invoke-virtual {v0, v1}, Landroid/net/fourG/wimax/WimaxMonitor;->setEnableLog(Z)V

    .line 2236
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    if-nez v0, :cond_18

    .line 2237
    invoke-static {}, Landroid/net/fourG/wimax/Wimax4GManager;->getInstance()Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v0

    iput-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    .line 2239
    :cond_18
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    invoke-virtual {v0, v1}, Landroid/net/fourG/wimax/Wimax4GManager;->enableLog(Z)V

    .line 2240
    return-void
.end method

.method public setHaveLinkInfo(Z)V
    .registers 2
    .parameter "mHaveLinkInfo"

    .prologue
    .line 2604
    iput-boolean p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isHaveLinkInfo:Z

    .line 2605
    return-void
.end method

.method public setIdleState(Z)V
    .registers 2
    .parameter "mIdleState"

    .prologue
    .line 2608
    iput-boolean p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isIdleState:Z

    .line 2609
    return-void
.end method

.method public setNotificationVisible(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 8
    .parameter "context"
    .parameter "iconID"
    .parameter "bodyMessage"
    .parameter "tickerMessage"

    .prologue
    .line 434
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v0, :cond_20

    const-string v0, "WimaxStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValue() within setNotificationVisible :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_20
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getValue()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 436
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNotification:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->icon:I

    .line 438
    if-eqz p4, :cond_30

    .line 439
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNotification:Landroid/app/Notification;

    iput-object p4, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 441
    :cond_30
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNotification:Landroid/app/Notification;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxSettingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v1, p3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 442
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxNotifyManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, p2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 444
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxNotifyManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 446
    :cond_44
    return-void
.end method

.method public setPolicyDataEnable(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 351
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v0, :cond_22

    const-string v0, "WimaxStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPolicyDataEnable but ignore it ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_22
    return-void
.end method

.method public setRadio(Z)Z
    .registers 6
    .parameter "turnOn"

    .prologue
    .line 2203
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v0

    .line 2204
    .local v0, nWimaxStatus:I
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_22

    const-string v1, "WimaxStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRadio]  nWimaxStatus ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    :cond_22
    const/4 v1, 0x3

    if-eq v0, v1, :cond_28

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2a

    .line 2207
    :cond_28
    const/4 v1, 0x0

    .line 2209
    :goto_29
    return v1

    :cond_2a
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1, p1}, Landroid/net/fourG/wimax/Wimax4GManager;->set4GEnabled(Z)Z

    move-result v1

    goto :goto_29
.end method

.method public setReleaseWakeLockCallback(Ljava/lang/Runnable;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 773
    iput-object p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mReleaseWakeLockCallback:Ljava/lang/Runnable;

    .line 774
    return-void
.end method

.method public setTeardownRequested(Z)V
    .registers 4
    .parameter "isRequested"

    .prologue
    .line 475
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 476
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v0, :cond_10

    const-string v0, "WimaxStateTracker"

    const-string v1, "mTeardownRequested.set(isRequested)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_10
    return-void
.end method

.method public setUSBTo(Z)V
    .registers 9
    .parameter "enable"

    .prologue
    .line 2025
    if-eqz p1, :cond_32

    .line 2026
    sget-object v0, Landroid/net/fourG/wimax/WimaxStateTracker;->WiMAX:[B

    .line 2029
    .local v0, data:[B
    :goto_4
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_20

    const-string v4, "WimaxStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setUSBTo  enable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    :cond_20
    const/4 v2, 0x0

    .line 2033
    .local v2, out:Ljava/io/FileOutputStream;
    :try_start_21
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v4, "/sys/class/sec/switch/usb_sel"

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_41
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_28} :catch_35

    .line 2034
    .end local v2           #out:Ljava/io/FileOutputStream;
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_28
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_4c
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_4f

    .line 2038
    if-eqz v3, :cond_30

    .line 2039
    :try_start_2d
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_4a

    :cond_30
    :goto_30
    move-object v2, v3

    .line 2042
    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :cond_31
    :goto_31
    return-void

    .line 2028
    .end local v0           #data:[B
    .end local v2           #out:Ljava/io/FileOutputStream;
    :cond_32
    sget-object v0, Landroid/net/fourG/wimax/WimaxStateTracker;->PDA:[B

    .restart local v0       #data:[B
    goto :goto_4

    .line 2035
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :catch_35
    move-exception v1

    .line 2036
    .local v1, e:Ljava/io/IOException;
    :goto_36
    :try_start_36
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_41

    .line 2038
    if-eqz v2, :cond_31

    .line 2039
    :try_start_3b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_31

    :catch_3f
    move-exception v4

    goto :goto_31

    .line 2038
    .end local v1           #e:Ljava/io/IOException;
    :catchall_41
    move-exception v4

    :goto_42
    if-eqz v2, :cond_47

    .line 2039
    :try_start_44
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    .line 2038
    :cond_47
    :goto_47
    throw v4

    .line 2039
    :catch_48
    move-exception v5

    goto :goto_47

    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_4a
    move-exception v4

    goto :goto_30

    .line 2038
    :catchall_4c
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_42

    .line 2035
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_4f
    move-exception v1

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_36
.end method

.method public setUsbUnPlugged()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    .line 777
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_d

    const-string v1, "WimaxStateTracker"

    const-string v2, "setUsbUnPlugged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :cond_d
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->setDeviceStateToVirtualIdle()V

    .line 780
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 781
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 784
    const-string v1, "4g_state"

    sget-object v2, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/WimaxState;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 785
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 787
    invoke-virtual {p0, v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 788
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_3d

    const-string v1, "WimaxStateTracker"

    const-string v2, "[setUsbUnPlugged] removeMessage(EVENT_VI_REQ)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :cond_3d
    invoke-virtual {p0, v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->removeMessages(I)V

    .line 791
    :cond_40
    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v3, v1, v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendEmptyMessageDelayed(IJ)Z

    .line 792
    return-void
.end method

.method public setUserDataEnable(Z)V
    .registers 6
    .parameter "enabled"

    .prologue
    .line 377
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_22

    const-string v1, "WimaxStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUserDataEnable("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_22
    monitor-enter p0

    .line 379
    :try_start_23
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getAnyDataEnabled()Z

    move-result v0

    .line 380
    .local v0, prevEnabled:Z
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mUserDataEnabled:Z

    if-eq v1, p1, :cond_5f

    .line 381
    iput-boolean p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mUserDataEnabled:Z

    .line 382
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_49

    const-string v1, "WimaxStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSetUserDataEnabled prevEnabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_49
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getAnyDataEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_5f

    .line 385
    if-nez v0, :cond_61

    .line 386
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_5c

    const-string v1, "WimaxStateTracker"

    const-string v2, "onSetUserDataEnabled reconnect "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_5c
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->reconnect()Z

    .line 395
    :cond_5f
    :goto_5f
    monitor-exit p0

    .line 396
    return-void

    .line 389
    :cond_61
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_6c

    const-string v1, "WimaxStateTracker"

    const-string v2, "onSetUserDataEnabled teardown "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_6c
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->teardown()Z

    goto :goto_5f

    .line 395
    .end local v0           #prevEnabled:Z
    :catchall_70
    move-exception v1

    monitor-exit p0
    :try_end_72
    .catchall {:try_start_23 .. :try_end_72} :catchall_70

    throw v1
.end method

.method public setWakeLock(Landroid/os/PowerManager$WakeLock;)V
    .registers 2
    .parameter "wl"

    .prologue
    .line 755
    sput-object p1, Landroid/net/fourG/wimax/WimaxStateTracker;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 756
    return-void
.end method

.method public startEventLoop()V
    .registers 2

    .prologue
    .line 606
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxMonitor:Landroid/net/fourG/wimax/WimaxMonitor;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/WimaxMonitor;->startMonitoring()V

    .line 607
    return-void
.end method

.method public startMonitoring()V
    .registers 2

    .prologue
    .line 585
    invoke-static {}, Landroid/net/fourG/wimax/Wimax4GManager;->getInstance()Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v0

    iput-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    .line 586
    return-void
.end method

.method public startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 6
    .parameter "context"
    .parameter "target"

    .prologue
    .line 593
    iput-object p2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mCsHandler:Landroid/os/Handler;

    .line 595
    invoke-static {}, Landroid/net/fourG/wimax/Wimax4GManager;->getInstance()Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v2

    iput-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    .line 597
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 598
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.net.fourG.wimax.NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 601
    new-instance v1, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateReceiver;-><init>(Landroid/net/fourG/wimax/WimaxStateTracker;Landroid/net/fourG/wimax/WimaxStateTracker$1;)V

    .line 602
    .local v1, mWimaxStateReceiver:Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateReceiver;
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 603
    return-void
.end method

.method public startUsingNetworkFeature(Ljava/lang/String;II)I
    .registers 5
    .parameter "feature"
    .parameter "callingPid"
    .parameter "callingUid"

    .prologue
    .line 2219
    const/4 v0, -0x1

    return v0
.end method

.method public stopUsingNetworkFeature(Ljava/lang/String;II)I
    .registers 5
    .parameter "feature"
    .parameter "callingPid"
    .parameter "callingUid"

    .prologue
    .line 2229
    const/4 v0, -0x1

    return v0
.end method

.method public teardown()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2048
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->isTeardownRequested()Z

    move-result v3

    if-nez v3, :cond_c0

    .line 2052
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->resetInterface()V

    .line 2053
    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    sget-object v4, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-eq v3, v4, :cond_1d

    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    sget-object v4, Landroid/net/fourG/wimax/WimaxState;->CONNECTING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v3, v4, :cond_1d

    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    sget-object v4, Landroid/net/fourG/wimax/WimaxState;->OBTAINING_IPADDR:Landroid/net/fourG/wimax/WimaxState;

    if-ne v3, v4, :cond_52

    .line 2055
    :cond_1d
    iget-boolean v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v3, :cond_41

    const-string v3, "WimaxStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[teardown] state("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") DisconnectWimax"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    :cond_41
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->disconnectAndStop()Z

    move-result v3

    if-eqz v3, :cond_c0

    .line 2057
    invoke-direct {p0, v1}, Landroid/net/fourG/wimax/WimaxStateTracker;->setTornDownByConnMgr(Z)V

    .line 2058
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2059
    iput-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bSkipEntryDelayOnce:Z

    .line 2084
    :cond_51
    :goto_51
    return v1

    .line 2063
    :cond_52
    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v3}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v0

    .line 2064
    .local v0, wimaxStatus:I
    const/4 v3, 0x3

    if-eq v0, v3, :cond_5e

    const/4 v3, 0x2

    if-ne v0, v3, :cond_b4

    .line 2066
    :cond_5e
    iput-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bPoweroff:Z

    .line 2067
    iget-boolean v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v3, :cond_84

    const-string v3, "WimaxStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[teardown] state("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") stopWimax"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    :cond_84
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->stopWimax()Z

    move-result v3

    if-nez v3, :cond_95

    .line 2069
    iget-boolean v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v3, :cond_95

    const-string v3, "WimaxStateTracker"

    const-string v4, "[teardown] fail to stop wimax.."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    :cond_95
    invoke-static {v2}, Landroid/net/fourG/wimax/WimaxNative;->loadDriver(B)Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 2072
    invoke-direct {p0, v1}, Landroid/net/fourG/wimax/WimaxStateTracker;->setTornDownByConnMgr(Z)V

    .line 2073
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2074
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->notifyDriverStopped()V

    .line 2075
    iput-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bSkipEntryDelayOnce:Z

    goto :goto_51

    .line 2078
    :cond_a9
    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v2, :cond_b4

    const-string v2, "WimaxStateTracker"

    const-string v3, "[teardown] fail to turn wimax off"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    :cond_b4
    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v2, :cond_51

    const-string v2, "WimaxStateTracker"

    const-string v3, "[teardown] already turned off"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .end local v0           #wimaxStatus:I
    :cond_c0
    move v1, v2

    .line 2084
    goto :goto_51
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2244
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2245
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "interface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2246
    const-string v1, " runState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2247
    iget v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mRunState:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_70

    iget v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mRunState:I

    sget-object v2, Landroid/net/fourG/wimax/WimaxStateTracker;->mRunStateNames:[Ljava/lang/String;

    array-length v2, v2

    if-gt v1, v2, :cond_70

    .line 2248
    sget-object v1, Landroid/net/fourG/wimax/WimaxStateTracker;->mRunStateNames:[Ljava/lang/String;

    iget v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mRunState:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2252
    :goto_2c
    sget-object v1, Landroid/net/fourG/wimax/WimaxStateTracker;->LS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Landroid/net/fourG/wimax/WimaxStateTracker;->LS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2253
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpResults;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Landroid/net/fourG/wimax/WimaxStateTracker;->LS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2254
    const-string v1, "haveIpAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", obtainingIpAddress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mObtainingIpAddress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", explicitlyDisabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mTornDownByConnMgr:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 2257
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2250
    :cond_70
    iget v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mRunState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_2c
.end method
