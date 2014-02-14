.class public Lcom/android/server/WimaxService;
.super Landroid/net/fourG/wimax/IWimax4GManager$Stub;
.source "WimaxService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WimaxService$Multicaster;,
        Lcom/android/server/WimaxService$DeathRecipient;,
        Lcom/android/server/WimaxService$LockList;,
        Lcom/android/server/WimaxService$Lock;,
        Lcom/android/server/WimaxService$WimaxHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_IDLE_MILLIS:J = 0xdbba0L

.field private static final DEFAULT_WAKELOCK_TIMEOUT:I = 0x1f40

.field private static final MESSAGE_DISABLE_WIMAX:I = 0x1

.field private static final MESSAGE_ENABLE_WIMAX:I = 0x0

.field private static final MESSAGE_RELEASE_WAKELOCK:I = 0x4

.field private static final MESSAGE_START_WIMAX:I = 0x3

.field private static final MESSAGE_STOP_WIMAX:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WimaxService"

.field private static final USB_CONNECTED:[B = null

.field private static final USB_STATE:Ljava/lang/String; = "/sys/class/sec/switch/usb_state"

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "WimaxService"

.field private static mIsBackhaulMode:Z

.field private static mIsDMmode:Z

.field private static mIsTetheredmode:Z

.field private static mModeWhieAPsleep:B

.field private static mbUSBTethered:Z

.field private static sDriverStopWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field m4GConfiguration:Landroid/net/fourG/wimax/Wimax4GConfiguration;

.field private mAirplaneModeOverwridden:Z

.field private mAvailableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/fourG/wimax/Wimax4GConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field mConnected4GBaseStationInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

.field mConnectionStatistics:Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;

.field private mContext:Landroid/content/Context;

.field mDeviceInfo:Landroid/net/fourG/wimax/Wimax4GDeviceInfo;

.field private mDiffRxsize:J

.field private mDiffTime:I

.field private mEndTime:J

.field private mFullLocksAcquired:I

.field private mFullLocksReleased:I

.field private mLastEnableUid:I

.field private final mLocks:Lcom/android/server/WimaxService$LockList;

.field private mMulticastDisabled:I

.field private mMulticastEnabled:I

.field private final mMulticasters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/WimaxService$Multicaster;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRxEnd:J

.field private mRxStart:J

.field private mStartTime:J

.field private mThroughput:I

.field private mWimax4GState:I

.field private final mWimaxHandler:Lcom/android/server/WimaxService$WimaxHandler;

.field private mWimaxMonitor:Landroid/net/fourG/wimax/WimaxMonitor;

.field private final mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

.field private m_bLog:Z

.field private m_nPluggedType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 193
    sput-boolean v0, Lcom/android/server/WimaxService;->mIsTetheredmode:Z

    .line 194
    sput-boolean v0, Lcom/android/server/WimaxService;->mIsDMmode:Z

    .line 195
    sput-boolean v0, Lcom/android/server/WimaxService;->mIsBackhaulMode:Z

    .line 196
    sput-boolean v0, Lcom/android/server/WimaxService;->mbUSBTethered:Z

    .line 199
    const/4 v0, 0x1

    sput-byte v0, Lcom/android/server/WimaxService;->mModeWhieAPsleep:B

    .line 202
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    sput-object v0, Lcom/android/server/WimaxService;->USB_CONNECTED:[B

    return-void

    :array_16
    .array-data 0x1
        0x55t
        0x53t
        0x42t
        0x5ft
        0x53t
        0x54t
        0x41t
        0x54t
        0x45t
        0x5ft
        0x43t
        0x4ft
        0x4et
        0x46t
        0x49t
        0x47t
        0x55t
        0x52t
        0x45t
        0x44t
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/fourG/wimax/WimaxStateTracker;)V
    .registers 12
    .parameter "context"
    .parameter "tracker"

    .prologue
    const/4 v5, 0x1

    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    .line 212
    invoke-direct {p0}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;-><init>()V

    .line 118
    iput-boolean v6, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    .line 130
    new-instance v3, Lcom/android/server/WimaxService$LockList;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/WimaxService$LockList;-><init>(Lcom/android/server/WimaxService;Lcom/android/server/WimaxService$1;)V

    iput-object v3, p0, Lcom/android/server/WimaxService;->mLocks:Lcom/android/server/WimaxService$LockList;

    .line 135
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/WimaxService;->mMulticasters:Ljava/util/List;

    .line 139
    iput-wide v7, p0, Lcom/android/server/WimaxService;->mStartTime:J

    .line 140
    iput-wide v7, p0, Lcom/android/server/WimaxService;->mEndTime:J

    .line 141
    iput v6, p0, Lcom/android/server/WimaxService;->mDiffTime:I

    .line 143
    iput-wide v7, p0, Lcom/android/server/WimaxService;->mRxStart:J

    .line 144
    iput-wide v7, p0, Lcom/android/server/WimaxService;->mRxEnd:J

    .line 145
    iput-wide v7, p0, Lcom/android/server/WimaxService;->mDiffRxsize:J

    .line 146
    iput v6, p0, Lcom/android/server/WimaxService;->mThroughput:I

    .line 186
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/WimaxService;->mAvailableList:Ljava/util/List;

    .line 187
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/WimaxService;->mNetworkList:Ljava/util/List;

    .line 188
    new-instance v3, Landroid/net/fourG/wimax/Wimax4GConfiguration;

    invoke-direct {v3}, Landroid/net/fourG/wimax/Wimax4GConfiguration;-><init>()V

    iput-object v3, p0, Lcom/android/server/WimaxService;->m4GConfiguration:Landroid/net/fourG/wimax/Wimax4GConfiguration;

    .line 189
    new-instance v3, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    invoke-direct {v3}, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;-><init>()V

    iput-object v3, p0, Lcom/android/server/WimaxService;->mConnected4GBaseStationInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    .line 190
    new-instance v3, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;

    invoke-direct {v3}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;-><init>()V

    iput-object v3, p0, Lcom/android/server/WimaxService;->mConnectionStatistics:Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;

    .line 191
    new-instance v3, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;

    invoke-direct {v3}, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;-><init>()V

    iput-object v3, p0, Lcom/android/server/WimaxService;->mDeviceInfo:Landroid/net/fourG/wimax/Wimax4GDeviceInfo;

    .line 207
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    iput v3, p0, Lcom/android/server/WimaxService;->mLastEnableUid:I

    .line 1152
    new-instance v3, Lcom/android/server/WimaxService$4;

    invoke-direct {v3, p0}, Lcom/android/server/WimaxService$4;-><init>(Lcom/android/server/WimaxService;)V

    iput-object v3, p0, Lcom/android/server/WimaxService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 213
    iput-object p1, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    .line 214
    iput-object p2, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    .line 215
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/WimaxService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 217
    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "WimaxService"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 218
    .local v1, WimaxThread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 219
    new-instance v3, Lcom/android/server/WimaxService$WimaxHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/WimaxService$WimaxHandler;-><init>(Lcom/android/server/WimaxService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/WimaxService;->mWimaxHandler:Lcom/android/server/WimaxService$WimaxHandler;

    .line 221
    iput v5, p0, Lcom/android/server/WimaxService;->mWimax4GState:I

    .line 222
    invoke-virtual {p0}, Lcom/android/server/WimaxService;->getPersistedWimaxEnabled()Z

    move-result v0

    .line 223
    .local v0, WimaxEnabled:Z
    iget-object v3, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    iput-boolean v6, v3, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bPoweroff:Z

    .line 227
    iget-object v3, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 228
    .local v2, powerManager:Landroid/os/PowerManager;
    const-string v3, "WimaxService"

    invoke-virtual {v2, v5, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    sput-object v3, Lcom/android/server/WimaxService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 229
    const-string v3, "WimaxService"

    invoke-virtual {v2, v5, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    sput-object v3, Lcom/android/server/WimaxService;->sDriverStopWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 230
    iget-object v3, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    new-instance v4, Lcom/android/server/WimaxService$1;

    invoke-direct {v4, p0}, Lcom/android/server/WimaxService$1;-><init>(Lcom/android/server/WimaxService;)V

    invoke-virtual {v3, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->setReleaseWakeLockCallback(Ljava/lang/Runnable;)V

    .line 244
    iget-boolean v3, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v3, :cond_ca

    const-string v4, "WimaxService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WimaxService starting up with Wimax"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_ff

    const-string v3, "enabled"

    :goto_bf
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_ca
    iget-object v3, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v3, v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->isBootCompleted(Z)V

    .line 247
    iget-object v3, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    sget-object v4, Lcom/android/server/WimaxService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->setWakeLock(Landroid/os/PowerManager$WakeLock;)V

    .line 248
    iget-object v3, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/WimaxService$2;

    invoke-direct {v4, p0}, Lcom/android/server/WimaxService$2;-><init>(Lcom/android/server/WimaxService;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 303
    iget-object v3, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/WimaxService$3;

    invoke-direct {v4, p0}, Lcom/android/server/WimaxService$3;-><init>(Lcom/android/server/WimaxService;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 316
    invoke-direct {p0}, Lcom/android/server/WimaxService;->getEnableLog()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    .line 351
    return-void

    .line 244
    :cond_ff
    const-string v3, "disabled"

    goto :goto_bf
.end method

.method static synthetic access$100(Lcom/android/server/WimaxService;)Lcom/android/server/WimaxService$WimaxHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxHandler:Lcom/android/server/WimaxService$WimaxHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/WimaxService;Landroid/os/PowerManager$WakeLock;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/WimaxService;->acquire_WakeLock(Landroid/os/PowerManager$WakeLock;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/WimaxService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/server/WimaxService;->m_nPluggedType:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/WimaxService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/server/WimaxService;->m_nPluggedType:I

    return p1
.end method

.method static synthetic access$1200()Z
    .registers 1

    .prologue
    .line 116
    sget-boolean v0, Lcom/android/server/WimaxService;->mbUSBTethered:Z

    return v0
.end method

.method static synthetic access$1202(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 116
    sput-boolean p0, Lcom/android/server/WimaxService;->mbUSBTethered:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/android/server/WimaxService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/server/WimaxService;->getEnableLog()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/WimaxService;)Lcom/android/server/WimaxService$LockList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/server/WimaxService;->mLocks:Lcom/android/server/WimaxService$LockList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/WimaxService;Landroid/os/IBinder;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/WimaxService;->releaseLockLocked(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/WimaxService;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/server/WimaxService;->mMulticasters:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200()Landroid/os/PowerManager$WakeLock;
    .registers 1

    .prologue
    .line 116
    sget-object v0, Lcom/android/server/WimaxService;->sDriverStopWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/WimaxService;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/android/server/WimaxService;->removeMulticasterLocked(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/WimaxService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/WimaxService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/server/WimaxService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/server/WimaxService;->mAirplaneModeOverwridden:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/WimaxService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/server/WimaxService;->updateWimaxStatus()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/WimaxService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/server/WimaxService;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/WimaxService;)Landroid/net/fourG/wimax/WimaxStateTracker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/WimaxService;ZZI)Z
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WimaxService;->setWimaxEnabledBlocking(ZZI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900()Landroid/os/PowerManager$WakeLock;
    .registers 1

    .prologue
    .line 116
    sget-object v0, Lcom/android/server/WimaxService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private acquireLockLocked(Lcom/android/server/WimaxService$Lock;)Z
    .registers 8
    .parameter "Lock"

    .prologue
    .line 1608
    iget-boolean v3, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v3, :cond_1c

    const-string v3, "WimaxService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "acquireLockLocked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    :cond_1c
    iget-object v3, p0, Lcom/android/server/WimaxService;->mLocks:Lcom/android/server/WimaxService$LockList;

    #calls: Lcom/android/server/WimaxService$LockList;->addLock(Lcom/android/server/WimaxService$Lock;)V
    invoke-static {v3, p1}, Lcom/android/server/WimaxService$LockList;->access$1700(Lcom/android/server/WimaxService$LockList;Lcom/android/server/WimaxService$Lock;)V

    .line 1611
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1612
    .local v2, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1613
    .local v0, ident:J
    iget v3, p1, Lcom/android/server/WimaxService$Lock;->mMode:I

    packed-switch v3, :pswitch_data_3a

    .line 1618
    :goto_2e
    invoke-direct {p0}, Lcom/android/server/WimaxService;->updateWimaxStatus()V

    .line 1619
    const/4 v3, 0x1

    return v3

    .line 1615
    :pswitch_33
    iget v3, p0, Lcom/android/server/WimaxService;->mFullLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/WimaxService;->mFullLocksAcquired:I

    goto :goto_2e

    .line 1613
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_33
    .end packed-switch
.end method

.method private acquire_WakeLock(Landroid/os/PowerManager$WakeLock;)V
    .registers 4
    .parameter "wl"

    .prologue
    .line 641
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceAccessPermission()V

    .line 642
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 643
    iget-boolean v0, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v0, :cond_14

    const-string v0, "WimaxService"

    const-string v1, "------WakeLock already acquired----------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_14
    :goto_14
    return-void

    .line 645
    :cond_15
    iget-boolean v0, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v0, :cond_20

    const-string v0, "WimaxService"

    const-string v1, "------WakeLock will be acquired----------------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :cond_20
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_14
.end method

.method private enforceAccessPermission()V
    .registers 4

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_4G_STATE"

    const-string v2, "WimaxService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    return-void
.end method

.method private enforceChangePermission()V
    .registers 4

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_4G_STATE"

    const-string v2, "WimaxService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    return-void
.end method

.method private enforceMulticastChangePermission()V
    .registers 4

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIMAX_MULTICAST_STATE"

    const-string v2, "WimaxService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    return-void
.end method

.method private enforceRadioDisablePermission()V
    .registers 4

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_4G_RADIO_DISABLE"

    const-string v2, "WimaxService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    return-void
.end method

.method private getEnableLog()Z
    .registers 14

    .prologue
    const/4 v9, 0x0

    .line 1756
    const/4 v8, 0x0

    .line 1758
    .local v8, msg:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1759
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 1761
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_4
    new-instance v4, Ljava/io/FileInputStream;

    const-string v10, "/data/4G.txt"

    invoke-direct {v4, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_b} :catch_38

    .line 1767
    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_b
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_5f
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_15} :catch_3a

    .line 1768
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_15
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_a0
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_a3

    move-result-object v8

    .line 1774
    :try_start_19
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1775
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1f} :catch_8e

    .line 1783
    const/4 v6, 0x0

    .local v6, i:I
    :goto_20
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v6, v10, :cond_6a

    .line 1784
    add-int/lit8 v10, v6, 0x1

    invoke-virtual {v8, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string v11, "F"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_67

    .line 1785
    const/4 v9, 0x1

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    move-object v0, v1

    .line 1787
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v6           #i:I
    .restart local v0       #br:Ljava/io/BufferedReader;
    :goto_37
    return v9

    .line 1762
    :catch_38
    move-exception v5

    .line 1763
    .local v5, fnfe:Ljava/io/FileNotFoundException;
    goto :goto_37

    .line 1769
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v5           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_3a
    move-exception v2

    .line 1770
    .local v2, e:Ljava/io/IOException;
    :goto_3b
    :try_start_3b
    iget-boolean v10, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v10, :cond_57

    const-string v10, "WimaxService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "File error : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_3b .. :try_end_57} :catchall_5f

    .line 1774
    :cond_57
    :try_start_57
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1775
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5d} :catch_7e

    move-object v3, v4

    .line 1771
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_37

    .line 1773
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catchall_5f
    move-exception v10

    .line 1774
    :goto_60
    :try_start_60
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1775
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_66} :catch_6d

    .line 1773
    throw v10

    .line 1783
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v6       #i:I
    :cond_67
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    :cond_6a
    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    move-object v0, v1

    .line 1787
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_37

    .line 1776
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v6           #i:I
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_6d
    move-exception v7

    .line 1777
    .local v7, ioe:Ljava/io/IOException;
    iget-boolean v10, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v10, :cond_79

    const-string v10, "WimaxService"

    const-string v11, "file close error"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    :cond_79
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    :goto_7c
    move-object v3, v4

    .line 1779
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_37

    .line 1776
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v7           #ioe:Ljava/io/IOException;
    .restart local v2       #e:Ljava/io/IOException;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_7e
    move-exception v7

    .line 1777
    .restart local v7       #ioe:Ljava/io/IOException;
    iget-boolean v10, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v10, :cond_8a

    const-string v10, "WimaxService"

    const-string v11, "file close error"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    :cond_8a
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7c

    .line 1776
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .end local v7           #ioe:Ljava/io/IOException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_8e
    move-exception v7

    .line 1777
    .restart local v7       #ioe:Ljava/io/IOException;
    iget-boolean v10, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v10, :cond_9a

    const-string v10, "WimaxService"

    const-string v11, "file close error"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    :cond_9a
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    move-object v0, v1

    .line 1779
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_37

    .line 1773
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v7           #ioe:Ljava/io/IOException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catchall_a0
    move-exception v10

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_60

    .line 1769
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_a3
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_3b
.end method

.method private getPersistedNetworkConnectionEnabled()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 375
    iget-object v3, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 377
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_7
    const-string v3, "wimax_network_connection"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_7 .. :try_end_c} :catch_12

    move-result v3

    if-ne v3, v2, :cond_10

    .line 380
    :goto_f
    return v2

    .line 377
    :cond_10
    const/4 v2, 0x0

    goto :goto_f

    .line 378
    :catch_12
    move-exception v1

    .line 379
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "wimax_network_connection"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_f
.end method

.method private isAirplaneModeOn()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1438
    invoke-direct {p0}, Lcom/android/server/WimaxService;->isAirplaneSensitive()Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_17

    :goto_16
    return v0

    :cond_17
    move v0, v1

    goto :goto_16
.end method

.method private isAirplaneSensitive()Z
    .registers 4

    .prologue
    .line 1418
    iget-object v1, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1421
    .local v0, airplaneModeRadios:Ljava/lang/String;
    if-eqz v0, :cond_16

    const-string v1, "wimax"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_16
    const/4 v1, 0x1

    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method private isAirplaneToggleable()Z
    .registers 4

    .prologue
    .line 1426
    iget-object v1, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_toggleable_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1428
    .local v0, toggleableRadios:Ljava/lang/String;
    if-eqz v0, :cond_18

    const-string v1, "wimax"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method private persistNetworkConnectionEnabled(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 385
    iget-object v1, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 386
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "wimax_network_connection"

    if-eqz p1, :cond_f

    const/4 v1, 0x1

    :goto_b
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 387
    return-void

    .line 386
    :cond_f
    const/4 v1, 0x0

    goto :goto_b
.end method

.method private persistWimaxEnabled(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 370
    iget-object v1, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 371
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "wimax_on"

    if-eqz p1, :cond_f

    const/4 v1, 0x1

    :goto_b
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 372
    return-void

    .line 371
    :cond_f
    const/4 v1, 0x0

    goto :goto_b
.end method

.method private registerForBroadcasts()V
    .registers 4

    .prologue
    .line 1404
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1405
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1406
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1407
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1410
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1411
    iget-object v1, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    const-string v1, "com.android.server.Wimax4GManager.action.WIMAX_DHCP_RENEW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1414
    iget-object v1, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/WimaxService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1415
    return-void
.end method

.method private releaseLockLocked(Landroid/os/IBinder;)Z
    .registers 10
    .parameter "lock"

    .prologue
    .line 1632
    iget-object v5, p0, Lcom/android/server/WimaxService;->mLocks:Lcom/android/server/WimaxService$LockList;

    #calls: Lcom/android/server/WimaxService$LockList;->removeLock(Landroid/os/IBinder;)Lcom/android/server/WimaxService$Lock;
    invoke-static {v5, p1}, Lcom/android/server/WimaxService$LockList;->access$1800(Lcom/android/server/WimaxService$LockList;Landroid/os/IBinder;)Lcom/android/server/WimaxService$Lock;

    move-result-object v4

    .line 1634
    .local v4, wimaxLock:Lcom/android/server/WimaxService$Lock;
    iget-boolean v5, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v5, :cond_22

    const-string v5, "WimaxService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseLockLocked: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    :cond_22
    if-eqz v4, :cond_38

    const/4 v0, 0x1

    .line 1637
    .local v0, hadLock:Z
    :goto_25
    if-eqz v0, :cond_34

    .line 1638
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1639
    .local v3, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1640
    .local v1, ident:J
    iget v5, v4, Lcom/android/server/WimaxService$Lock;->mMode:I

    packed-switch v5, :pswitch_data_42

    .line 1647
    .end local v1           #ident:J
    .end local v3           #uid:I
    :cond_34
    :goto_34
    invoke-direct {p0}, Lcom/android/server/WimaxService;->updateWimaxStatus()V

    .line 1648
    return v0

    .line 1635
    .end local v0           #hadLock:Z
    :cond_38
    const/4 v0, 0x0

    goto :goto_25

    .line 1642
    .restart local v0       #hadLock:Z
    .restart local v1       #ident:J
    .restart local v3       #uid:I
    :pswitch_3a
    iget v5, p0, Lcom/android/server/WimaxService;->mFullLocksReleased:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/WimaxService;->mFullLocksReleased:I

    goto :goto_34

    .line 1640
    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_3a
    .end packed-switch
.end method

.method private removeMulticasterLocked(II)V
    .registers 7
    .parameter "i"
    .parameter "uid"

    .prologue
    .line 1740
    iget-object v2, p0, Lcom/android/server/WimaxService;->mMulticasters:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WimaxService$Multicaster;

    .line 1741
    .local v1, removed:Lcom/android/server/WimaxService$Multicaster;
    if-eqz v1, :cond_d

    .line 1742
    invoke-virtual {v1}, Lcom/android/server/WimaxService$Multicaster;->unlinkDeathRecipient()V

    .line 1744
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1745
    .local v0, ident:Ljava/lang/Long;
    return-void
.end method

.method private sendEnableMessage(ZZI)V
    .registers 9
    .parameter "enable"
    .parameter "persist"
    .parameter "uid"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1376
    iget-object v4, p0, Lcom/android/server/WimaxService;->mWimaxHandler:Lcom/android/server/WimaxService$WimaxHandler;

    if-eqz p1, :cond_11

    move v3, v2

    :goto_7
    if-eqz p2, :cond_13

    :goto_9
    invoke-static {v4, v3, v1, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 1379
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1380
    return-void

    .end local v0           #msg:Landroid/os/Message;
    :cond_11
    move v3, v1

    .line 1376
    goto :goto_7

    :cond_13
    move v1, v2

    goto :goto_9
.end method

.method private setWimaxEnabledBlocking(ZZI)Z
    .registers 14
    .parameter "enable"
    .parameter "persist"
    .parameter "uid"

    .prologue
    const/4 v9, 0x4

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 449
    iget-object v3, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->isDataDisabledExternally()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 450
    iget-boolean v3, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v3, :cond_17

    const-string v3, "WimaxService"

    const-string v4, "[setWimaxEnabledBlocking] isDataDisabledExternally is true"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_17
    :goto_17
    return v5

    .line 455
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/WimaxService;->get4GState()I

    move-result v0

    .line 456
    .local v0, nWimaxEnabledState:I
    if-nez p1, :cond_2f

    if-eq v0, v4, :cond_22

    if-nez v0, :cond_2f

    .line 458
    :cond_22
    iget-boolean v3, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v3, :cond_2d

    const-string v3, "WimaxService"

    const-string v5, "[setWimaxEnabledBlocking] already disabled"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    move v5, v4

    .line 459
    goto :goto_17

    .line 463
    :cond_2f
    if-eqz p1, :cond_58

    invoke-direct {p0}, Lcom/android/server/WimaxService;->isAirplaneModeOn()Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-direct {p0}, Lcom/android/server/WimaxService;->isAirplaneToggleable()Z

    move-result v3

    if-eqz v3, :cond_58

    move v3, v4

    :goto_3e
    iput-boolean v3, p0, Lcom/android/server/WimaxService;->mAirplaneModeOverwridden:Z

    .line 464
    if-eqz p1, :cond_5a

    invoke-direct {p0}, Lcom/android/server/WimaxService;->isAirplaneModeOn()Z

    move-result v3

    if-eqz v3, :cond_5a

    iget-boolean v3, p0, Lcom/android/server/WimaxService;->mAirplaneModeOverwridden:Z

    if-nez v3, :cond_5a

    .line 465
    iget-boolean v3, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v3, :cond_17

    const-string v3, "WimaxService"

    const-string v4, "[set4GEnabled] can\'t enable 4G because isAirplaneModeOn() is true"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    :cond_58
    move v3, v5

    .line 463
    goto :goto_3e

    .line 469
    :cond_5a
    iget-object v3, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    iget-boolean v3, v3, Landroid/net/fourG/wimax/WimaxStateTracker;->mModemReset:Z

    if-nez v3, :cond_74

    .line 470
    if-ne p1, v4, :cond_74

    const/4 v3, 0x3

    if-eq v0, v3, :cond_67

    if-ne v0, v6, :cond_74

    .line 472
    :cond_67
    iget-boolean v3, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v3, :cond_72

    const-string v3, "WimaxService"

    const-string v5, "[setWimaxEnabledBlocking] already enabled"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_72
    move v5, v4

    .line 473
    goto :goto_17

    .line 478
    :cond_74
    invoke-virtual {p0}, Lcom/android/server/WimaxService;->getWorkModeState()I

    move-result v1

    .line 479
    .local v1, nWorkModeState:I
    iget-boolean v3, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v3, :cond_94

    const-string v3, "WimaxService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[setWimaxEnabledBlocking] Workmode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_94
    if-eqz p1, :cond_195

    move v3, v6

    :goto_97
    invoke-direct {p0, v3, p3}, Lcom/android/server/WimaxService;->setWimaxEnabledState(II)V

    .line 489
    iget-object v7, p0, Lcom/android/server/WimaxService;->mWimaxHandler:Lcom/android/server/WimaxService$WimaxHandler;

    monitor-enter v7

    .line 490
    if-eqz p1, :cond_1b6

    .line 491
    :try_start_9f
    iget-boolean v3, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v3, :cond_fd

    const-string v3, "WimaxService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "wimax ON ---mModeWhieAPsleep = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-byte v9, Lcom/android/server/WimaxService;->mModeWhieAPsleep:B

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mModemReset = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    iget-boolean v9, v9, Landroid/net/fourG/wimax/WimaxStateTracker;->mModemReset:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mIsDMmode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/server/WimaxService;->mIsDMmode:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mbUSBTethered = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/server/WimaxService;->mbUSBTethered:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " m_nPluggedType : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/WimaxService;->m_nPluggedType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "getWimaxMode() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/server/WimaxService;->getWimaxMode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_fd
    invoke-direct {p0}, Lcom/android/server/WimaxService;->getPersistedNetworkConnectionEnabled()Z

    move-result v3

    if-eqz v3, :cond_198

    .line 494
    const/4 v3, 0x1

    sput-byte v3, Lcom/android/server/WimaxService;->mModeWhieAPsleep:B

    .line 499
    :goto_106
    iget-object v3, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    iget-boolean v3, v3, Landroid/net/fourG/wimax/WimaxStateTracker;->mModemReset:Z

    if-nez v3, :cond_19d

    .line 500
    invoke-direct {p0}, Lcom/android/server/WimaxService;->registerForBroadcasts()V

    .line 501
    iget-object v3, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->startEventLoop()V

    .line 505
    :goto_114
    sget-byte v3, Lcom/android/server/WimaxService;->mModeWhieAPsleep:B

    invoke-static {v3}, Landroid/net/fourG/wimax/WimaxNative;->setVirtualIdleWhileAPsleep(B)Z

    .line 506
    sget-boolean v3, Lcom/android/server/WimaxService;->mbUSBTethered:Z

    if-eqz v3, :cond_1a4

    iget v3, p0, Lcom/android/server/WimaxService;->m_nPluggedType:I

    if-ne v3, v6, :cond_1a4

    .line 507
    const/4 v3, 0x1

    const/4 v6, 0x1

    invoke-virtual {p0, v3, v6}, Lcom/android/server/WimaxService;->setWimaxMode(IZ)I

    .line 511
    :goto_126
    sget-boolean v3, Lcom/android/server/WimaxService;->mIsDMmode:Z

    if-eqz v3, :cond_1ab

    .line 512
    const/4 v3, 0x4

    invoke-static {v3}, Landroid/net/fourG/wimax/WimaxNative;->setWimaxTethered(B)Z

    .line 517
    :goto_12e
    iget-object v3, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    const/4 v6, 0x0

    iput-boolean v6, v3, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bPoweroff:Z

    .line 518
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->startWimax()Z

    move-result v3

    if-nez v3, :cond_212

    .line 519
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/net/fourG/wimax/WimaxNative;->loadDriver(B)Z

    .line 520
    iget-boolean v3, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v3, :cond_15d

    const-string v3, "WimaxService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to start Wimax. m_bPoweroff = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    iget-boolean v6, v6, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bPoweroff:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_15d
    iget-object v3, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/WimaxService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 522
    iget-object v3, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    iget-boolean v3, v3, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bPoweroff:Z

    if-eqz v3, :cond_1b1

    .line 523
    iget-boolean v3, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v3, :cond_188

    const-string v3, "WimaxService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWimax4GState = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/server/WimaxService;->mWimax4GState:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_188
    const/4 v3, 0x1

    invoke-direct {p0, v3, p3}, Lcom/android/server/WimaxService;->setWimaxEnabledState(II)V

    .line 527
    :goto_18c
    invoke-virtual {p0}, Lcom/android/server/WimaxService;->release_sWakeLock()V

    .line 528
    monitor-exit v7

    goto/16 :goto_17

    .line 570
    :catchall_192
    move-exception v3

    monitor-exit v7
    :try_end_194
    .catchall {:try_start_9f .. :try_end_194} :catchall_192

    throw v3

    :cond_195
    move v3, v5

    .line 488
    goto/16 :goto_97

    .line 496
    :cond_198
    const/4 v3, 0x0

    :try_start_199
    sput-byte v3, Lcom/android/server/WimaxService;->mModeWhieAPsleep:B

    goto/16 :goto_106

    .line 503
    :cond_19d
    iget-object v3, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    const/4 v8, 0x0

    iput-boolean v8, v3, Landroid/net/fourG/wimax/WimaxStateTracker;->mModemReset:Z

    goto/16 :goto_114

    .line 509
    :cond_1a4
    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v6}, Lcom/android/server/WimaxService;->setWimaxMode(IZ)I

    goto/16 :goto_126

    .line 514
    :cond_1ab
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/net/fourG/wimax/WimaxNative;->setWimaxTethered(B)Z

    goto/16 :goto_12e

    .line 526
    :cond_1b1
    const/4 v3, 0x4

    invoke-direct {p0, v3, p3}, Lcom/android/server/WimaxService;->setWimaxEnabledState(II)V

    goto :goto_18c

    .line 538
    :cond_1b6
    iget-object v3, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bPoweroff:Z

    .line 539
    iget-object v3, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    const/4 v5, 0x0

    iput v5, v3, Landroid/net/fourG/wimax/WimaxStateTracker;->nRetryFlag:I

    .line 540
    iget-object v3, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->resetOldState()V
    :try_end_1c5
    .catchall {:try_start_199 .. :try_end_1c5} :catchall_192

    .line 542
    if-eq v9, v0, :cond_1ce

    .line 544
    :try_start_1c7
    iget-object v3, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/WimaxService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1ce
    .catchall {:try_start_1c7 .. :try_end_1ce} :catchall_192
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c7 .. :try_end_1ce} :catch_27d

    .line 548
    :cond_1ce
    :goto_1ce
    :try_start_1ce
    iget-object v3, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->getCurrentWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v2

    .line 549
    .local v2, wimaxState:Landroid/net/fourG/wimax/WimaxState;
    sget-object v3, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-eq v2, v3, :cond_1e0

    sget-object v3, Landroid/net/fourG/wimax/WimaxState;->CONNECTING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v2, v3, :cond_1e0

    sget-object v3, Landroid/net/fourG/wimax/WimaxState;->OBTAINING_IPADDR:Landroid/net/fourG/wimax/WimaxState;

    if-ne v2, v3, :cond_237

    .line 551
    :cond_1e0
    iget-boolean v3, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v3, :cond_202

    const-string v3, "WimaxService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "state("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") :  DisconnectWimax before turn off"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_202
    iget-object v3, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->resetInterface()V

    .line 553
    iget-object v3, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    sget-boolean v5, Lcom/android/server/WimaxService;->mIsTetheredmode:Z

    iput-boolean v5, v3, Landroid/net/fourG/wimax/WimaxStateTracker;->mIsTetheredmode:Z

    .line 554
    iget-object v3, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->disconnectAndStop()Z

    .line 566
    .end local v2           #wimaxState:Landroid/net/fourG/wimax/WimaxState;
    :cond_212
    :goto_212
    if-eqz p2, :cond_233

    .line 567
    iget-boolean v3, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v3, :cond_230

    const-string v3, "WimaxService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setWimaxEnabledBlocking] persist = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_230
    invoke-direct {p0, p1}, Lcom/android/server/WimaxService;->persistWimaxEnabled(Z)V

    .line 570
    :cond_233
    monitor-exit v7

    move v5, v4

    .line 571
    goto/16 :goto_17

    .line 556
    .restart local v2       #wimaxState:Landroid/net/fourG/wimax/WimaxState;
    :cond_237
    iget-boolean v3, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v3, :cond_259

    const-string v3, "WimaxService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "state("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") : stopWimax"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_259
    iget-object v3, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    sget-boolean v5, Lcom/android/server/WimaxService;->mIsTetheredmode:Z

    iput-boolean v5, v3, Landroid/net/fourG/wimax/WimaxStateTracker;->mIsTetheredmode:Z

    .line 558
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->stopWimax()Z

    move-result v3

    if-nez v3, :cond_270

    .line 559
    iget-boolean v3, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v3, :cond_270

    const-string v3, "WimaxService"

    const-string v5, "fail to stop wimax.."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_270
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/net/fourG/wimax/WimaxNative;->loadDriver(B)Z

    move-result v3

    if-eqz v3, :cond_212

    .line 562
    iget-object v3, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->notifyDriverStopped()V
    :try_end_27c
    .catchall {:try_start_1ce .. :try_end_27c} :catchall_192

    goto :goto_212

    .line 545
    .end local v2           #wimaxState:Landroid/net/fourG/wimax/WimaxState;
    :catch_27d
    move-exception v3

    goto/16 :goto_1ce
.end method

.method private setWimaxEnabledState(II)V
    .registers 9
    .parameter "Wimax4GState"
    .parameter "uid"

    .prologue
    .line 575
    iget v3, p0, Lcom/android/server/WimaxService;->mWimax4GState:I

    .line 576
    .local v3, previousWimaxStatus:I
    iget-boolean v4, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v4, :cond_d

    const-string v4, "WimaxService"

    const-string v5, "[setWimaxEnabledState] "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 580
    .local v0, ident:J
    iput p1, p0, Lcom/android/server/WimaxService;->mWimax4GState:I

    .line 582
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 583
    .local v2, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 584
    const-string v4, "4g_state"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 585
    const-string v4, "4G_previous_state"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 586
    iget-object v4, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 587
    return-void
.end method

.method private static stateName(I)Ljava/lang/String;
    .registers 2
    .parameter "net4GState"

    .prologue
    .line 1508
    packed-switch p0, :pswitch_data_16

    .line 1520
    const-string v0, "[invalid state]"

    :goto_5
    return-object v0

    .line 1510
    :pswitch_6
    const-string v0, "disabling"

    goto :goto_5

    .line 1512
    :pswitch_9
    const-string v0, "disabled"

    goto :goto_5

    .line 1514
    :pswitch_c
    const-string v0, "enabling"

    goto :goto_5

    .line 1516
    :pswitch_f
    const-string v0, "enabled"

    goto :goto_5

    .line 1518
    :pswitch_12
    const-string v0, "unknown 4G state"

    goto :goto_5

    .line 1508
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method

.method private updateWimaxStatus()V
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1383
    invoke-virtual {p0}, Lcom/android/server/WimaxService;->getPersistedWimaxEnabled()Z

    move-result v0

    .line 1384
    .local v0, WimaxEnabled:Z
    invoke-direct {p0}, Lcom/android/server/WimaxService;->isAirplaneModeOn()Z

    move-result v4

    if-eqz v4, :cond_2c

    iget-boolean v4, p0, Lcom/android/server/WimaxService;->mAirplaneModeOverwridden:Z

    if-nez v4, :cond_2c

    move v2, v1

    .line 1385
    .local v2, airplaneMode:Z
    :goto_11
    if-eqz v0, :cond_2e

    if-nez v2, :cond_2e

    .line 1386
    .local v1, WimaxShouldBeEnabled:Z
    :goto_15
    iget-object v4, p0, Lcom/android/server/WimaxService;->mWimaxHandler:Lcom/android/server/WimaxService$WimaxHandler;

    monitor-enter v4

    .line 1387
    :try_start_18
    iget v3, p0, Lcom/android/server/WimaxService;->mWimax4GState:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_30

    if-nez v2, :cond_30

    .line 1388
    iget-boolean v3, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v3, :cond_2a

    const-string v3, "WimaxService"

    const-string v5, "[updateWimaxStatus] mWimax4GState == NET_4G_STATE_ENABLING && !airplaneMode return ;"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    :cond_2a
    monitor-exit v4

    .line 1401
    :goto_2b
    return-void

    .end local v1           #WimaxShouldBeEnabled:Z
    .end local v2           #airplaneMode:Z
    :cond_2c
    move v2, v3

    .line 1384
    goto :goto_11

    .restart local v2       #airplaneMode:Z
    :cond_2e
    move v1, v3

    .line 1385
    goto :goto_15

    .line 1391
    .restart local v1       #WimaxShouldBeEnabled:Z
    :cond_30
    if-eqz v1, :cond_4e

    .line 1392
    iget-boolean v3, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v3, :cond_3d

    const-string v3, "WimaxService"

    const-string v5, "[updateWimaxStatus] WimaxShouldBeEnabled == true"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    :cond_3d
    sget-object v3, Lcom/android/server/WimaxService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0, v3}, Lcom/android/server/WimaxService;->acquire_WakeLock(Landroid/os/PowerManager$WakeLock;)V

    .line 1394
    const/4 v3, 0x1

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/server/WimaxService;->mLastEnableUid:I

    invoke-direct {p0, v3, v5, v6}, Lcom/android/server/WimaxService;->sendEnableMessage(ZZI)V

    .line 1400
    :goto_49
    monitor-exit v4

    goto :goto_2b

    :catchall_4b
    move-exception v3

    monitor-exit v4
    :try_end_4d
    .catchall {:try_start_18 .. :try_end_4d} :catchall_4b

    throw v3

    .line 1396
    :cond_4e
    :try_start_4e
    iget-boolean v3, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v3, :cond_59

    const-string v3, "WimaxService"

    const-string v5, "[updateWiMAXState] WimaxShouldBeEnabled == false acquire sWakeLock"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    :cond_59
    sget-object v3, Lcom/android/server/WimaxService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0, v3}, Lcom/android/server/WimaxService;->acquire_WakeLock(Landroid/os/PowerManager$WakeLock;)V

    .line 1398
    const/4 v3, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/server/WimaxService;->mLastEnableUid:I

    invoke-direct {p0, v3, v5, v6}, Lcom/android/server/WimaxService;->sendEnableMessage(ZZI)V
    :try_end_65
    .catchall {:try_start_4e .. :try_end_65} :catchall_4b

    goto :goto_49
.end method


# virtual methods
.method public CheckWimaxState()Z
    .registers 2

    .prologue
    .line 939
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceAccessPermission()V

    .line 940
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->getLinkState()Z

    move-result v0

    return v0
.end method

.method public OdbAddReq([B)I
    .registers 3
    .parameter "tlvDataArray"

    .prologue
    .line 1122
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceChangePermission()V

    .line 1123
    invoke-static {p1}, Landroid/net/fourG/wimax/WimaxNative;->OdbAddReq([B)I

    move-result v0

    return v0
.end method

.method public OdbDeleteReq([B)I
    .registers 3
    .parameter "tlvDataArray"

    .prologue
    .line 1127
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceChangePermission()V

    .line 1128
    invoke-static {p1}, Landroid/net/fourG/wimax/WimaxNative;->OdbDeleteReq([B)I

    move-result v0

    return v0
.end method

.method public OdbReadReq([B)I
    .registers 3
    .parameter "tlvDataArray"

    .prologue
    .line 1107
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceChangePermission()V

    .line 1108
    invoke-static {p1}, Landroid/net/fourG/wimax/WimaxNative;->OdbReadReq([B)I

    move-result v0

    return v0
.end method

.method public OdbUpdateReq()I
    .registers 2

    .prologue
    .line 1117
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceChangePermission()V

    .line 1118
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->OdbUpdateReq()I

    move-result v0

    return v0
.end method

.method public OdbWriteReq([B)I
    .registers 3
    .parameter "tlvDataArray"

    .prologue
    .line 1112
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceChangePermission()V

    .line 1113
    invoke-static {p1}, Landroid/net/fourG/wimax/WimaxNative;->OdbWriteReq([B)I

    move-result v0

    return v0
.end method

.method public acquireLock(Landroid/os/IBinder;ILjava/lang/String;)Z
    .registers 8
    .parameter "binder"
    .parameter "lockMode"
    .parameter "tag"

    .prologue
    .line 1597
    iget-object v1, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WAKE_LOCK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    const/4 v1, 0x1

    if-eq p2, v1, :cond_10

    const/4 v1, 0x2

    if-eq p2, v1, :cond_10

    .line 1599
    const/4 v1, 0x0

    .line 1603
    :goto_f
    return v1

    .line 1601
    :cond_10
    new-instance v0, Lcom/android/server/WimaxService$Lock;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/server/WimaxService$Lock;-><init>(Lcom/android/server/WimaxService;ILjava/lang/String;Landroid/os/IBinder;)V

    .line 1602
    .local v0, Lock:Lcom/android/server/WimaxService$Lock;
    iget-object v2, p0, Lcom/android/server/WimaxService;->mLocks:Lcom/android/server/WimaxService$LockList;

    monitor-enter v2

    .line 1603
    :try_start_18
    invoke-direct {p0, v0}, Lcom/android/server/WimaxService;->acquireLockLocked(Lcom/android/server/WimaxService$Lock;)Z

    move-result v1

    monitor-exit v2

    goto :goto_f

    .line 1604
    :catchall_1e
    move-exception v1

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 8
    .parameter "binder"
    .parameter "tag"

    .prologue
    .line 1699
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceMulticastChangePermission()V

    .line 1701
    iget-object v3, p0, Lcom/android/server/WimaxService;->mMulticasters:Ljava/util/List;

    monitor-enter v3

    .line 1702
    :try_start_6
    iget v2, p0, Lcom/android/server/WimaxService;->mMulticastEnabled:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/WimaxService;->mMulticastEnabled:I

    .line 1703
    iget-object v2, p0, Lcom/android/server/WimaxService;->mMulticasters:Ljava/util/List;

    new-instance v4, Lcom/android/server/WimaxService$Multicaster;

    invoke-direct {v4, p0, p2, p1}, Lcom/android/server/WimaxService$Multicaster;-><init>(Lcom/android/server/WimaxService;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1708
    iget-object v4, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    monitor-enter v4
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_37

    .line 1710
    :try_start_19
    monitor-exit v4
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_34

    .line 1711
    :try_start_1a
    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_37

    .line 1713
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1714
    .local v1, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1716
    .local v0, ident:Ljava/lang/Long;
    :try_start_27
    iget-object v2, p0, Lcom/android/server/WimaxService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, v1}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastEnabled(I)V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_3a
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2c} :catch_43

    .line 1719
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_30
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1721
    return-void

    .line 1710
    .end local v0           #ident:Ljava/lang/Long;
    .end local v1           #uid:I
    :catchall_34
    move-exception v2

    :try_start_35
    monitor-exit v4
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    :try_start_36
    throw v2

    .line 1711
    :catchall_37
    move-exception v2

    monitor-exit v3
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_37

    throw v2

    .line 1719
    .restart local v0       #ident:Ljava/lang/Long;
    .restart local v1       #uid:I
    :catchall_3a
    move-exception v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1717
    :catch_43
    move-exception v2

    .line 1719
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_30
.end method

.method public calWiMAXThroughput(Z)V
    .registers 9
    .parameter "bstart"

    .prologue
    const-wide/16 v5, 0x8

    .line 1867
    if-eqz p1, :cond_42

    .line 1868
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/WimaxService;->mStartTime:J

    .line 1869
    iget-object v1, p0, Lcom/android/server/WimaxService;->mConnectionStatistics:Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->getTotalRxBytes()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/WimaxService;->mRxStart:J

    .line 1870
    iget-boolean v1, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v1, :cond_41

    const-string v1, "WimaxService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start Calculate WiMAX Throughput, StartTime is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/WimaxService;->mStartTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " RxSize is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/WimaxService;->mRxStart:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    :cond_41
    :goto_41
    return-void

    .line 1872
    :cond_42
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/WimaxService;->mEndTime:J

    .line 1873
    iget-object v1, p0, Lcom/android/server/WimaxService;->mConnectionStatistics:Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->getTotalRxBytes()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/WimaxService;->mRxEnd:J

    .line 1874
    iget-boolean v1, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v1, :cond_7f

    const-string v1, "WimaxService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End Calculate WiMAX Throughput, EndTime is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/WimaxService;->mEndTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " RxSize is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/WimaxService;->mRxEnd:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    :cond_7f
    iget-wide v1, p0, Lcom/android/server/WimaxService;->mEndTime:J

    iget-wide v3, p0, Lcom/android/server/WimaxService;->mStartTime:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/android/server/WimaxService;->mDiffTime:I

    .line 1877
    iget-wide v1, p0, Lcom/android/server/WimaxService;->mRxEnd:J

    iget-wide v3, p0, Lcom/android/server/WimaxService;->mRxStart:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/WimaxService;->mDiffRxsize:J

    .line 1879
    iget-wide v1, p0, Lcom/android/server/WimaxService;->mDiffRxsize:J

    mul-long/2addr v1, v5

    long-to-int v1, v1

    iget v2, p0, Lcom/android/server/WimaxService;->mDiffTime:I

    div-int/lit16 v2, v2, 0x3e8

    div-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/WimaxService;->mThroughput:I

    .line 1880
    iget-boolean v1, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v1, :cond_d8

    const-string v1, "WimaxService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DiffTime is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/WimaxService;->mDiffTime:I

    div-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s, DiffRxsize is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/WimaxService;->mDiffRxsize:J

    mul-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bit, Throughput is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/WimaxService;->mThroughput:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bps"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    :cond_d8
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wimax.WIMAX_DATA_THROUGHPUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1884
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1885
    const-string v1, "android.net.wimax.EXTRA_TIME"

    iget v2, p0, Lcom/android/server/WimaxService;->mDiffTime:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1886
    const-string v1, "android.net.wimax.EXTRA_DATA"

    iget-wide v2, p0, Lcom/android/server/WimaxService;->mDiffRxsize:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1887
    const-string v1, "android.net.wimax.EXTRA_THROUGHPUT"

    iget v2, p0, Lcom/android/server/WimaxService;->mThroughput:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1888
    iget-object v1, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_41
.end method

.method public checkUSBstate()Z
    .registers 13

    .prologue
    const/4 v8, 0x0

    .line 778
    const/4 v7, 0x0

    .line 780
    .local v7, msg:Ljava/lang/String;
    const/4 v0, 0x0

    .line 781
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 783
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_4
    new-instance v4, Ljava/io/FileInputStream;

    const-string v9, "/sys/class/sec/switch/usb_state"

    invoke-direct {v4, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_b} :catch_30

    .line 790
    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_b
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_57
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_15} :catch_32

    .line 791
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_15
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_98
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_9b

    move-result-object v7

    .line 797
    :try_start_19
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 798
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1f} :catch_86

    .line 806
    const-string v9, "USB_STATE_CONFIGURED"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_62

    .line 807
    iget v9, p0, Lcom/android/server/WimaxService;->m_nPluggedType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_5f

    .line 808
    const/4 v8, 0x1

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    move-object v0, v1

    .line 812
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :goto_2f
    return v8

    .line 784
    :catch_30
    move-exception v5

    .line 786
    .local v5, fnfe:Ljava/io/FileNotFoundException;
    goto :goto_2f

    .line 792
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v5           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_32
    move-exception v2

    .line 793
    .local v2, e:Ljava/io/IOException;
    :goto_33
    :try_start_33
    iget-boolean v9, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v9, :cond_4f

    const-string v9, "WimaxService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "File error : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_33 .. :try_end_4f} :catchall_57

    .line 797
    :cond_4f
    :try_start_4f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 798
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_55} :catch_76

    move-object v3, v4

    .line 794
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_2f

    .line 796
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catchall_57
    move-exception v9

    .line 797
    :goto_58
    :try_start_58
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 798
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5e} :catch_65

    .line 796
    throw v9

    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :cond_5f
    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    move-object v0, v1

    .line 810
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2f

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :cond_62
    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    move-object v0, v1

    .line 812
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2f

    .line 799
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_65
    move-exception v6

    .line 800
    .local v6, ioe:Ljava/io/IOException;
    iget-boolean v9, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v9, :cond_71

    const-string v9, "WimaxService"

    const-string v10, "file close error"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :cond_71
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    :goto_74
    move-object v3, v4

    .line 802
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_2f

    .line 799
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v6           #ioe:Ljava/io/IOException;
    .restart local v2       #e:Ljava/io/IOException;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_76
    move-exception v6

    .line 800
    .restart local v6       #ioe:Ljava/io/IOException;
    iget-boolean v9, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v9, :cond_82

    const-string v9, "WimaxService"

    const-string v10, "file close error"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :cond_82
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_74

    .line 799
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .end local v6           #ioe:Ljava/io/IOException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_86
    move-exception v6

    .line 800
    .restart local v6       #ioe:Ljava/io/IOException;
    iget-boolean v9, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v9, :cond_92

    const-string v9, "WimaxService"

    const-string v10, "file close error"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :cond_92
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    move-object v0, v1

    .line 802
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2f

    .line 796
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v6           #ioe:Ljava/io/IOException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catchall_98
    move-exception v9

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_58

    .line 792
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_9b
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_33
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 11
    .parameter "homeNspName"
    .parameter "roamingNspName"
    .parameter "userName"
    .parameter "passWord"

    .prologue
    const/4 v5, 0x0

    .line 880
    iget-boolean v2, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v2, :cond_1d

    const-string v2, "WimaxService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[connect] homeNspName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    :cond_1d
    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    invoke-static {p1, v2, v3, v5, v4}, Landroid/net/fourG/wimax/WimaxNative;->connectmWimax(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 883
    .local v0, result:I
    if-nez v0, :cond_42

    .line 884
    iget-boolean v2, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v2, :cond_34

    const-string v2, "WimaxService"

    const-string v3, "^^^^^ Connection req. is success ^^^^^"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_34
    const/4 v0, 0x0

    .line 892
    iget-object v2, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->setHaveLinkInfo(Z)V

    .line 893
    iget-object v2, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v2, v5}, Landroid/net/fourG/wimax/WimaxStateTracker;->setIdleState(Z)V

    move v1, v0

    .line 895
    .end local v0           #result:I
    .local v1, result:I
    :goto_41
    return v1

    .line 887
    .end local v1           #result:I
    .restart local v0       #result:I
    :cond_42
    iget-boolean v2, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v2, :cond_4d

    const-string v2, "WimaxService"

    const-string v3, "connectmWimax() returns fail."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_4d
    const/4 v0, -0x1

    move v1, v0

    .line 889
    .end local v0           #result:I
    .restart local v1       #result:I
    goto :goto_41
.end method

.method public createConnectionStatistics()Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;
    .registers 2

    .prologue
    .line 848
    iget-object v0, p0, Lcom/android/server/WimaxService;->mConnectionStatistics:Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->getTotalRxBytes()J

    .line 849
    iget-object v0, p0, Lcom/android/server/WimaxService;->mConnectionStatistics:Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->getTotalRxPackets()J

    .line 850
    iget-object v0, p0, Lcom/android/server/WimaxService;->mConnectionStatistics:Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->getTotalTxBytes()J

    .line 851
    iget-object v0, p0, Lcom/android/server/WimaxService;->mConnectionStatistics:Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->getTotalTxPackets()J

    .line 852
    iget-object v0, p0, Lcom/android/server/WimaxService;->mConnectionStatistics:Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;

    return-object v0
.end method

.method public deleteStaticIP()I
    .registers 7

    .prologue
    .line 1850
    const/4 v1, 0x0

    .line 1852
    .local v1, fOut:Ljava/io/FileWriter;
    :try_start_1
    new-instance v2, Ljava/io/FileWriter;

    const-string v4, "/data/wimax_ip.txt"

    invoke-direct {v2, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_1b

    .line 1853
    .end local v1           #fOut:Ljava/io/FileWriter;
    .local v2, fOut:Ljava/io/FileWriter;
    :try_start_8
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 1854
    .local v3, osw:Ljava/io/BufferedWriter;
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1856
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 1857
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_18} :catch_25

    .line 1858
    const/4 v4, 0x1

    move-object v1, v2

    .line 1861
    .end local v2           #fOut:Ljava/io/FileWriter;
    .end local v3           #osw:Ljava/io/BufferedWriter;
    .restart local v1       #fOut:Ljava/io/FileWriter;
    :goto_1a
    return v4

    .line 1859
    :catch_1b
    move-exception v0

    .line 1860
    .local v0, e:Ljava/io/IOException;
    :goto_1c
    const-string v4, "WimaxService"

    const-string v5, "File wimax_ip.txt not reset"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    const/4 v4, -0x1

    goto :goto_1a

    .line 1859
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fOut:Ljava/io/FileWriter;
    .restart local v2       #fOut:Ljava/io/FileWriter;
    :catch_25
    move-exception v0

    move-object v1, v2

    .end local v2           #fOut:Ljava/io/FileWriter;
    .restart local v1       #fOut:Ljava/io/FileWriter;
    goto :goto_1c
.end method

.method public disconnect()Z
    .registers 2

    .prologue
    .line 902
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/WimaxStateTracker;->resetInterface()V

    .line 903
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->disconnectWimax()Z

    move-result v0

    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_33

    .line 1486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump WimaxService from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1505
    :goto_32
    return-void

    .line 1491
    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wimax is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/WimaxService;->mWimax4GState:I

    invoke-static {v1}, Lcom/android/server/WimaxService;->stateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stay-awake conditions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "stay_on_while_plugged_in"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1495
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1497
    const-string v0, "Internal state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1498
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1499
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Locks acquired: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/WimaxService;->mFullLocksAcquired:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " full"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Locks released: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/WimaxService;->mFullLocksReleased:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " full"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1502
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1503
    const-string v0, "Locks held:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1504
    iget-object v0, p0, Lcom/android/server/WimaxService;->mLocks:Lcom/android/server/WimaxService$LockList;

    #calls: Lcom/android/server/WimaxService$LockList;->dump(Ljava/io/PrintWriter;)V
    invoke-static {v0, p2}, Lcom/android/server/WimaxService$LockList;->access$1400(Lcom/android/server/WimaxService$LockList;Ljava/io/PrintWriter;)V

    goto/16 :goto_32
.end method

.method public enableLogLevel(I)V
    .registers 3
    .parameter "nLoglevel"

    .prologue
    .line 945
    packed-switch p1, :pswitch_data_10

    .line 959
    const/4 v0, 0x1

    .line 962
    .local v0, Loglevel:C
    :goto_4
    invoke-static {v0}, Landroid/net/fourG/wimax/WimaxNative;->setEnableLogLevel(C)V

    .line 963
    return-void

    .line 947
    .end local v0           #Loglevel:C
    :pswitch_8
    const/4 v0, 0x1

    .line 948
    .restart local v0       #Loglevel:C
    goto :goto_4

    .line 950
    .end local v0           #Loglevel:C
    :pswitch_a
    const/4 v0, 0x2

    .line 951
    .restart local v0       #Loglevel:C
    goto :goto_4

    .line 953
    .end local v0           #Loglevel:C
    :pswitch_c
    const/4 v0, 0x3

    .line 954
    .restart local v0       #Loglevel:C
    goto :goto_4

    .line 956
    .end local v0           #Loglevel:C
    :pswitch_e
    const/4 v0, 0x4

    .line 957
    .restart local v0       #Loglevel:C
    goto :goto_4

    .line 945
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_8
        :pswitch_a
        :pswitch_c
        :pswitch_e
    .end packed-switch
.end method

.method public get4GState()I
    .registers 2

    .prologue
    .line 618
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceAccessPermission()V

    .line 619
    iget v0, p0, Lcom/android/server/WimaxService;->mWimax4GState:I

    return v0
.end method

.method public getAvailableNetworks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/fourG/wimax/Wimax4GConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 836
    iget-object v0, p0, Lcom/android/server/WimaxService;->mAvailableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 837
    iget-object v0, p0, Lcom/android/server/WimaxService;->mAvailableList:Ljava/util/List;

    invoke-static {v0}, Landroid/net/fourG/wimax/WimaxNative;->setAvailableList(Ljava/util/List;)V

    .line 838
    iget-object v0, p0, Lcom/android/server/WimaxService;->m4GConfiguration:Landroid/net/fourG/wimax/Wimax4GConfiguration;

    invoke-static {v0}, Landroid/net/fourG/wimax/WimaxNative;->getAvailableNetworks(Landroid/net/fourG/wimax/Wimax4GConfiguration;)Z

    .line 839
    iget-object v0, p0, Lcom/android/server/WimaxService;->mAvailableList:Ljava/util/List;

    return-object v0
.end method

.method public getConnectedNSP()Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;
    .registers 2

    .prologue
    .line 843
    iget-object v0, p0, Lcom/android/server/WimaxService;->mConnected4GBaseStationInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    invoke-static {v0}, Landroid/net/fourG/wimax/WimaxNative;->getConnectedNSP(Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;)I

    .line 844
    iget-object v0, p0, Lcom/android/server/WimaxService;->mConnected4GBaseStationInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    return-object v0
.end method

.method public getConnectionInfo()Landroid/net/fourG/wimax/Wimax4GInfo;
    .registers 2

    .prologue
    .line 865
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceAccessPermission()V

    .line 870
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/WimaxStateTracker;->requestConnectionInfo()Landroid/net/fourG/wimax/Wimax4GInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInformation()Landroid/net/fourG/wimax/Wimax4GDeviceInfo;
    .registers 2

    .prologue
    .line 856
    iget-object v0, p0, Lcom/android/server/WimaxService;->mDeviceInfo:Landroid/net/fourG/wimax/Wimax4GDeviceInfo;

    invoke-static {v0}, Landroid/net/fourG/wimax/WimaxNative;->getDeviceInformation(Landroid/net/fourG/wimax/Wimax4GDeviceInfo;)Z

    .line 857
    iget-object v0, p0, Lcom/android/server/WimaxService;->mDeviceInfo:Landroid/net/fourG/wimax/Wimax4GDeviceInfo;

    return-object v0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .registers 2

    .prologue
    .line 971
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceAccessPermission()V

    .line 972
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    return-object v0
.end method

.method public getMaxTemperature()I
    .registers 5

    .prologue
    const/16 v2, -0x64

    .line 2151
    iget-object v3, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2153
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_8
    const-string v3, "wimax_max_radio_temperature"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_d} :catch_f

    move-result v2

    .line 2156
    :goto_e
    return v2

    .line 2154
    :catch_f
    move-exception v1

    .line 2155
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "wimax_max_radio_temperature"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_e
.end method

.method public getMinTemperature()I
    .registers 5

    .prologue
    const/16 v2, 0x3e8

    .line 2141
    iget-object v3, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2143
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_8
    const-string v3, "wimax_min_radio_temperature"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_d} :catch_f

    move-result v2

    .line 2146
    :goto_e
    return v2

    .line 2144
    :catch_f
    move-exception v1

    .line 2145
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "wimax_min_radio_temperature"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_e
.end method

.method public getMruList()V
    .registers 2

    .prologue
    .line 1043
    sget-object v0, Landroid/net/fourG/wimax/WimaxNative;->mMruListRsp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1044
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->getMruList()Z

    .line 1045
    return-void
.end method

.method public getMruListRsp()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/fourG/wimax/MruList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1048
    sget-object v0, Landroid/net/fourG/wimax/WimaxNative;->mMruListRsp:Ljava/util/List;

    return-object v0
.end method

.method public getMruUpdate(Ljava/lang/String;I)Z
    .registers 14
    .parameter "strUpdate"
    .parameter "nSize"

    .prologue
    const/4 v10, 0x0

    .line 1052
    iget-boolean v7, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v7, :cond_1d

    const-string v7, "WimaxService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getMruUpdate nSize: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    :cond_1d
    if-nez p2, :cond_24

    .line 1054
    invoke-static {v10, v10, v10, p2}, Landroid/net/fourG/wimax/WimaxNative;->getMruUpdate([I[B[BI)Z

    move-result v7

    .line 1078
    :goto_23
    return v7

    .line 1056
    :cond_24
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v7, "@"

    invoke-direct {v4, p1, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    .local v4, st:Ljava/util/StringTokenizer;
    new-array v1, p2, [I

    .line 1059
    .local v1, arCF:[I
    new-array v0, p2, [B

    .line 1060
    .local v0, arBW:[B
    new-array v2, p2, [B

    .line 1061
    .local v2, arFFT:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_32
    if-ge v3, p2, :cond_7a

    .line 1062
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_77

    .line 1063
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 1064
    .local v6, temp:Ljava/lang/String;
    if-eqz v6, :cond_77

    .line 1065
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v7, "#"

    invoke-direct {v5, v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    .local v5, stList:Ljava/util/StringTokenizer;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_77

    .line 1067
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v1, v3

    .line 1068
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_77

    .line 1069
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v7

    aput-byte v7, v0, v3

    .line 1070
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_77

    .line 1071
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v7

    aput-byte v7, v2, v3

    .line 1061
    .end local v5           #stList:Ljava/util/StringTokenizer;
    .end local v6           #temp:Ljava/lang/String;
    :cond_77
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 1078
    :cond_7a
    invoke-static {v1, v0, v2, p2}, Landroid/net/fourG/wimax/WimaxNative;->getMruUpdate([I[B[BI)Z

    move-result v7

    goto :goto_23
.end method

.method public getNeighborList()V
    .registers 1

    .prologue
    .line 976
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->getNeighborList()Z

    .line 977
    return-void
.end method

.method public getNetworkConnectionSetting()I
    .registers 2

    .prologue
    .line 394
    sget-byte v0, Lcom/android/server/WimaxService;->mModeWhieAPsleep:B

    return v0
.end method

.method public getNetworkEntryCompleteTimes()[I
    .registers 2

    .prologue
    .line 874
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceAccessPermission()V

    .line 876
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->getNetworkEntryCompleteTimes()[I

    move-result-object v0

    return-object v0
.end method

.method getNetworkStateTracker()Landroid/net/NetworkStateTracker;
    .registers 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    return-object v0
.end method

.method public getPersistedWimaxEnabled()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 354
    iget-object v4, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 362
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_8
    const-string v4, "wimax_on"

    invoke-static {v0, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_d} :catch_13

    move-result v4

    if-ne v4, v2, :cond_11

    .line 365
    :goto_10
    return v2

    :cond_11
    move v2, v3

    .line 362
    goto :goto_10

    .line 363
    :catch_13
    move-exception v1

    .line 364
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "wimax_on"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v2, v3

    .line 365
    goto :goto_10
.end method

.method public getRadioInfoTemperature()V
    .registers 1

    .prologue
    .line 980
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->getRadioInfo()Z

    .line 981
    return-void
.end method

.method public getRadioInfoTemperatureResponse()Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;
    .registers 2

    .prologue
    .line 984
    sget-object v0, Landroid/net/fourG/wimax/WimaxNative;->radioInfo:Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;

    return-object v0
.end method

.method public getWimaxMode()I
    .registers 3

    .prologue
    .line 714
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceAccessPermission()V

    .line 715
    const/4 v0, 0x0

    .line 717
    .local v0, nMode:I
    sget-boolean v1, Lcom/android/server/WimaxService;->mIsTetheredmode:Z

    if-eqz v1, :cond_a

    .line 718
    const/4 v0, 0x1

    .line 734
    :goto_9
    return v0

    .line 720
    :cond_a
    sget-boolean v1, Lcom/android/server/WimaxService;->mIsDMmode:Z

    if-eqz v1, :cond_16

    .line 721
    sget-boolean v1, Lcom/android/server/WimaxService;->mIsBackhaulMode:Z

    if-eqz v1, :cond_14

    .line 722
    const/4 v0, 0x4

    goto :goto_9

    .line 724
    :cond_14
    const/4 v0, 0x3

    goto :goto_9

    .line 727
    :cond_16
    sget-boolean v1, Lcom/android/server/WimaxService;->mIsBackhaulMode:Z

    if-eqz v1, :cond_1c

    .line 728
    const/4 v0, 0x2

    goto :goto_9

    .line 730
    :cond_1c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public getWimaxState()Landroid/net/fourG/wimax/WimaxState;
    .registers 2

    .prologue
    .line 631
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceAccessPermission()V

    .line 632
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getCurrentWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v0

    return-object v0
.end method

.method public getWimaxStateDetail()I
    .registers 2

    .prologue
    .line 636
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceAccessPermission()V

    .line 637
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getCurrentWimaxStateDetail()I

    move-result v0

    return v0
.end method

.method public getWorkModeState()I
    .registers 3

    .prologue
    .line 988
    const/4 v1, 0x0

    .line 989
    .local v1, selectedMode:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1003
    .local v0, mode:I
    return v0
.end method

.method public isDataDisabledExternally()Z
    .registers 2

    .prologue
    .line 2185
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/WimaxStateTracker;->isDataDisabledExternally()Z

    move-result v0

    return v0
.end method

.method public isMulticastEnabled()Z
    .registers 3

    .prologue
    .line 1748
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceAccessPermission()V

    .line 1750
    iget-object v1, p0, Lcom/android/server/WimaxService;->mMulticasters:Ljava/util/List;

    monitor-enter v1

    .line 1751
    :try_start_6
    iget-object v0, p0, Lcom/android/server/WimaxService;->mMulticasters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_11

    const/4 v0, 0x1

    :goto_f
    monitor-exit v1

    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_f

    .line 1752
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public isRoamingEnabled()Z
    .registers 2

    .prologue
    .line 2181
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->isRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public makeOdbTlvData([BIIII[B)I
    .registers 11
    .parameter "pBuffer"
    .parameter "nBufferIndex"
    .parameter "wBufferLen"
    .parameter "wTag"
    .parameter "wLength"
    .parameter "pbValue"

    .prologue
    .line 1087
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceAccessPermission()V

    .line 1089
    shr-int/lit8 v2, p4, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v0, v2

    .line 1090
    .local v0, highByte:B
    shr-int/lit8 v2, p4, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v1, v2

    .line 1092
    .local v1, lowByte:B
    add-int/lit8 v2, p2, 0x0

    aput-byte v0, p1, v2

    .line 1093
    add-int/lit8 v2, p2, 0x1

    aput-byte v1, p1, v2

    .line 1095
    shr-int/lit8 v2, p5, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v0, v2

    .line 1096
    shr-int/lit8 v2, p5, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v1, v2

    .line 1098
    add-int/lit8 v2, p2, 0x2

    aput-byte v0, p1, v2

    .line 1099
    add-int/lit8 v2, p2, 0x3

    aput-byte v1, p1, v2

    .line 1101
    const/4 v2, 0x0

    add-int/lit8 v3, p2, 0x4

    invoke-static {p6, v2, p1, v3, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1103
    add-int/lit8 v2, p5, 0x4

    int-to-short v2, v2

    return v2
.end method

.method public readStaticIP(I)Ljava/lang/String;
    .registers 14
    .parameter "nIndex"

    .prologue
    .line 1817
    const/4 v7, 0x0

    .line 1819
    .local v7, msg:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1820
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 1822
    .local v3, fis:Ljava/io/FileReader;
    :try_start_3
    new-instance v4, Ljava/io/FileReader;

    const-string v9, "/data/wimax_ip.txt"

    invoke-direct {v4, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_a} :catch_22

    .line 1829
    .end local v3           #fis:Ljava/io/FileReader;
    .local v4, fis:Ljava/io/FileReader;
    :try_start_a
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_61
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_3e

    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    move v8, p1

    .line 1831
    .end local p1
    .local v8, nIndex:I
    :goto_10
    :try_start_10
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_96
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_9a

    move-result-object v7

    .line 1832
    add-int/lit8 p1, v8, -0x1

    .end local v8           #nIndex:I
    .restart local p1
    if-gtz v8, :cond_9e

    .line 1838
    :try_start_18
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1839
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1e} :catch_86

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileReader;
    .restart local v3       #fis:Ljava/io/FileReader;
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v9, v7

    .line 1846
    :goto_21
    return-object v9

    .line 1823
    :catch_22
    move-exception v5

    .line 1824
    .local v5, fnfe:Ljava/io/FileNotFoundException;
    const-string v9, "WimaxService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "File Not found exception"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    const-string v9, "no file error"

    goto :goto_21

    .line 1833
    .end local v3           #fis:Ljava/io/FileReader;
    .end local v5           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v4       #fis:Ljava/io/FileReader;
    :catch_3e
    move-exception v2

    .line 1834
    .local v2, e:Ljava/io/IOException;
    :goto_3f
    :try_start_3f
    const-string v9, "WimaxService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Read file error : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    const-string v9, "read file error"
    :try_end_59
    .catchall {:try_start_3f .. :try_end_59} :catchall_61

    .line 1838
    :try_start_59
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1839
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5f} :catch_78

    move-object v3, v4

    .line 1835
    .end local v4           #fis:Ljava/io/FileReader;
    .restart local v3       #fis:Ljava/io/FileReader;
    goto :goto_21

    .line 1837
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fis:Ljava/io/FileReader;
    .restart local v4       #fis:Ljava/io/FileReader;
    :catchall_61
    move-exception v9

    .line 1838
    :goto_62
    :try_start_62
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1839
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_68} :catch_69

    .line 1837
    throw v9

    .line 1840
    :catch_69
    move-exception v6

    .line 1841
    .local v6, ioe:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 1842
    const-string v9, "WimaxService"

    const-string v10, "Close error"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    const-string v9, "close error"

    :goto_76
    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileReader;
    .restart local v3       #fis:Ljava/io/FileReader;
    goto :goto_21

    .line 1840
    .end local v3           #fis:Ljava/io/FileReader;
    .end local v6           #ioe:Ljava/io/IOException;
    .restart local v2       #e:Ljava/io/IOException;
    .restart local v4       #fis:Ljava/io/FileReader;
    :catch_78
    move-exception v6

    .line 1841
    .restart local v6       #ioe:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 1842
    const-string v9, "WimaxService"

    const-string v10, "Close error"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    const-string v9, "close error"

    goto :goto_76

    .line 1840
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .end local v6           #ioe:Ljava/io/IOException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_86
    move-exception v6

    .line 1841
    .restart local v6       #ioe:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 1842
    const-string v9, "WimaxService"

    const-string v10, "Close error"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    const-string v9, "close error"

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileReader;
    .restart local v3       #fis:Ljava/io/FileReader;
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_21

    .line 1837
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fis:Ljava/io/FileReader;
    .end local v6           #ioe:Ljava/io/IOException;
    .end local p1
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fis:Ljava/io/FileReader;
    .restart local v8       #nIndex:I
    :catchall_96
    move-exception v9

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move p1, v8

    .end local v8           #nIndex:I
    .restart local p1
    goto :goto_62

    .line 1833
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local p1
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v8       #nIndex:I
    :catch_9a
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move p1, v8

    .end local v8           #nIndex:I
    .restart local p1
    goto :goto_3f

    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :cond_9e
    move v8, p1

    .end local p1
    .restart local v8       #nIndex:I
    goto/16 :goto_10
.end method

.method public reassociate()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 907
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/WimaxStateTracker;->resetInterface()V

    .line 908
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->disconnectWimax()Z

    move-result v0

    if-ne v0, v1, :cond_11

    .line 909
    invoke-virtual {p0, v1}, Lcom/android/server/WimaxService;->set4GEnabled(Z)Z

    move-result v0

    .line 911
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public reconnect()Z
    .registers 2

    .prologue
    .line 2173
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/WimaxStateTracker;->reconnect()Z

    move-result v0

    return v0
.end method

.method public releaseLock(Landroid/os/IBinder;)Z
    .registers 5
    .parameter "lock"

    .prologue
    .line 1623
    iget-object v0, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WAKE_LOCK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1624
    iget-object v1, p0, Lcom/android/server/WimaxService;->mLocks:Lcom/android/server/WimaxService$LockList;

    monitor-enter v1

    .line 1625
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/WimaxService;->releaseLockLocked(Landroid/os/IBinder;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1626
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_11

    throw v0
.end method

.method public releaseMulticastLock()V
    .registers 7

    .prologue
    .line 1724
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceMulticastChangePermission()V

    .line 1726
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1727
    .local v3, uid:I
    iget-object v5, p0, Lcom/android/server/WimaxService;->mMulticasters:Ljava/util/List;

    monitor-enter v5

    .line 1728
    :try_start_a
    iget v4, p0, Lcom/android/server/WimaxService;->mMulticastDisabled:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/WimaxService;->mMulticastDisabled:I

    .line 1729
    iget-object v4, p0, Lcom/android/server/WimaxService;->mMulticasters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 1730
    .local v2, size:I
    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_18
    if-ltz v0, :cond_30

    .line 1731
    iget-object v4, p0, Lcom/android/server/WimaxService;->mMulticasters:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WimaxService$Multicaster;

    .line 1732
    .local v1, m:Lcom/android/server/WimaxService$Multicaster;
    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Lcom/android/server/WimaxService$Multicaster;->getUid()I

    move-result v4

    if-ne v4, v3, :cond_2d

    .line 1733
    invoke-direct {p0, v0, v3}, Lcom/android/server/WimaxService;->removeMulticasterLocked(II)V

    .line 1730
    :cond_2d
    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    .line 1736
    .end local v1           #m:Lcom/android/server/WimaxService$Multicaster;
    :cond_30
    monitor-exit v5

    .line 1737
    return-void

    .line 1736
    .end local v0           #i:I
    .end local v2           #size:I
    :catchall_32
    move-exception v4

    monitor-exit v5
    :try_end_34
    .catchall {:try_start_a .. :try_end_34} :catchall_32

    throw v4
.end method

.method public release_sWakeLock()V
    .registers 3

    .prologue
    .line 651
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceAccessPermission()V

    .line 652
    sget-object v0, Lcom/android/server/WimaxService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 653
    iget-boolean v0, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v0, :cond_16

    const-string v0, "WimaxService"

    const-string v1, "------release WakeLock----------------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_16
    sget-object v0, Lcom/android/server/WimaxService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 656
    :cond_1b
    return-void
.end method

.method public saveStaticIP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 13
    .parameter "ip"
    .parameter "gateway"
    .parameter "netmask"
    .parameter "dns1"
    .parameter "dns2"

    .prologue
    .line 1791
    const/4 v1, 0x0

    .line 1793
    .local v1, fOut:Ljava/io/FileWriter;
    :try_start_1
    new-instance v2, Ljava/io/FileWriter;

    const-string v4, "/data/wimax_ip.txt"

    invoke-direct {v2, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_74

    .line 1799
    .end local v1           #fOut:Ljava/io/FileWriter;
    .local v2, fOut:Ljava/io/FileWriter;
    :try_start_8
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 1800
    .local v3, osw:Ljava/io/BufferedWriter;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1801
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1802
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1803
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1804
    invoke-virtual {v3, p5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1806
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 1807
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 1808
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_71} :catch_8f

    .line 1809
    const/4 v4, 0x1

    move-object v1, v2

    .line 1812
    .end local v2           #fOut:Ljava/io/FileWriter;
    .end local v3           #osw:Ljava/io/BufferedWriter;
    .restart local v1       #fOut:Ljava/io/FileWriter;
    :goto_73
    return v4

    .line 1794
    :catch_74
    move-exception v0

    .line 1795
    .local v0, e:Ljava/io/IOException;
    const-string v4, "WimaxService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File wimax_ip.txt not created "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    const/4 v4, -0x1

    goto :goto_73

    .line 1810
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fOut:Ljava/io/FileWriter;
    .restart local v2       #fOut:Ljava/io/FileWriter;
    :catch_8f
    move-exception v0

    .line 1811
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "WimaxService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File write error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    const/4 v4, -0x2

    move-object v1, v2

    .end local v2           #fOut:Ljava/io/FileWriter;
    .restart local v1       #fOut:Ljava/io/FileWriter;
    goto :goto_73
.end method

.method public set4GEnabled(Z)Z
    .registers 10
    .parameter "enable"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 404
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceChangePermission()V

    .line 405
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceRadioDisablePermission()V

    .line 406
    iget-object v4, p0, Lcom/android/server/WimaxService;->mWimaxHandler:Lcom/android/server/WimaxService$WimaxHandler;

    if-nez v4, :cond_d

    .line 437
    :goto_c
    return v2

    .line 408
    :cond_d
    iget-object v5, p0, Lcom/android/server/WimaxService;->mWimaxHandler:Lcom/android/server/WimaxService$WimaxHandler;

    monitor-enter v5

    .line 410
    :try_start_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 411
    .local v0, ident:J
    iget-boolean v4, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v4, :cond_1f

    const-string v4, "WimaxService"

    const-string v6, "acquire sWakeLock----------------------"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_1f
    sget-object v4, Lcom/android/server/WimaxService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0, v4}, Lcom/android/server/WimaxService;->acquire_WakeLock(Landroid/os/PowerManager$WakeLock;)V

    .line 413
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 418
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    iput v4, p0, Lcom/android/server/WimaxService;->mLastEnableUid:I

    .line 421
    iget-boolean v4, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v4, :cond_4f

    const-string v4, "WimaxService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[set4GEnabled] can\'t enable 4G because isDataDisabledExternally() is true "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->isDataDisabledExternally()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_4f
    iget-object v4, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->isDataDisabledExternally()Z

    move-result v4

    if-eqz v4, :cond_67

    .line 423
    iget-boolean v3, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v3, :cond_62

    const-string v3, "WimaxService"

    const-string v4, "[set4GEnabled] can\'t enable 4G because isDataDisabledExternally() is true"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_62
    monitor-exit v5

    goto :goto_c

    .line 436
    .end local v0           #ident:J
    :catchall_64
    move-exception v2

    monitor-exit v5
    :try_end_66
    .catchall {:try_start_10 .. :try_end_66} :catchall_64

    throw v2

    .line 429
    .restart local v0       #ident:J
    :cond_67
    if-eqz p1, :cond_92

    :try_start_69
    invoke-direct {p0}, Lcom/android/server/WimaxService;->isAirplaneModeOn()Z

    move-result v4

    if-eqz v4, :cond_92

    invoke-direct {p0}, Lcom/android/server/WimaxService;->isAirplaneToggleable()Z

    move-result v4

    if-eqz v4, :cond_92

    move v4, v3

    :goto_76
    iput-boolean v4, p0, Lcom/android/server/WimaxService;->mAirplaneModeOverwridden:Z

    .line 430
    if-eqz p1, :cond_94

    invoke-direct {p0}, Lcom/android/server/WimaxService;->isAirplaneModeOn()Z

    move-result v4

    if-eqz v4, :cond_94

    iget-boolean v4, p0, Lcom/android/server/WimaxService;->mAirplaneModeOverwridden:Z

    if-nez v4, :cond_94

    .line 431
    iget-boolean v3, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v3, :cond_8f

    const-string v3, "WimaxService"

    const-string v4, "[set4GEnabled] can\'t enable 4G because isAirplaneModeOn() is true"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_8f
    monitor-exit v5

    goto/16 :goto_c

    :cond_92
    move v4, v2

    .line 429
    goto :goto_76

    .line 435
    :cond_94
    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {p0, p1, v2, v4}, Lcom/android/server/WimaxService;->sendEnableMessage(ZZI)V

    .line 436
    monitor-exit v5
    :try_end_9d
    .catchall {:try_start_69 .. :try_end_9d} :catchall_64

    move v2, v3

    .line 437
    goto/16 :goto_c
.end method

.method public setFactoryDefault(I)Z
    .registers 3
    .parameter "nType"

    .prologue
    .line 1132
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceChangePermission()V

    .line 1134
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 1135
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->OdbDefaultReq()Z

    move-result v0

    .line 1137
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setMaxTemperature(I)Z
    .registers 4
    .parameter "temp"

    .prologue
    .line 2167
    iget-object v1, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2168
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "wimax_max_radio_temperature"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2169
    const/4 v1, 0x1

    return v1
.end method

.method public setMinTemperature(I)Z
    .registers 4
    .parameter "temp"

    .prologue
    .line 2161
    iget-object v1, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2162
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "wimax_min_radio_temperature"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2163
    const/4 v1, 0x1

    return v1
.end method

.method public setMruWorking(Z)V
    .registers 3
    .parameter "bWorking"

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    iput-boolean p1, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bMruWorking:Z

    .line 1084
    return-void
.end method

.method public setRoamingEnabled(Z)Z
    .registers 3
    .parameter "enabled"

    .prologue
    .line 2177
    invoke-static {p1}, Landroid/net/fourG/wimax/WimaxNative;->setRoamingEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setVirtualIdleWhileAPsleep(B)I
    .registers 4
    .parameter "bMode"

    .prologue
    .line 1142
    const/4 v1, 0x1

    if-ne p1, v1, :cond_b

    .line 1143
    const/4 v0, 0x1

    .line 1147
    .local v0, enable:Z
    :goto_4
    invoke-direct {p0, v0}, Lcom/android/server/WimaxService;->persistNetworkConnectionEnabled(Z)V

    .line 1148
    sput-byte p1, Lcom/android/server/WimaxService;->mModeWhieAPsleep:B

    .line 1149
    const/4 v1, 0x0

    return v1

    .line 1145
    .end local v0           #enable:Z
    :cond_b
    const/4 v0, 0x0

    .restart local v0       #enable:Z
    goto :goto_4
.end method

.method public setWimaxMode(IZ)I
    .registers 7
    .parameter "nMode"
    .parameter "enable"

    .prologue
    .line 746
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceChangePermission()V

    .line 747
    iget-boolean v1, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v1, :cond_29

    const-string v1, "WimaxService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWimaxMode nMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_29
    const/4 v0, -0x1

    .line 751
    .local v0, nRet:I
    packed-switch p1, :pswitch_data_56

    .line 773
    :cond_2d
    :goto_2d
    return v0

    .line 753
    :pswitch_2e
    iget-object v1, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/WimaxStateTracker;->getNoBackoff()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 754
    iget-object v1, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->SetNoBackOff(Z)V

    goto :goto_2d

    .line 757
    :pswitch_3d
    sput-boolean p2, Lcom/android/server/WimaxService;->mIsTetheredmode:Z

    .line 758
    const/4 v0, 0x0

    .line 759
    invoke-static {p2}, Landroid/net/fourG/wimax/WimaxNative;->setBackhaulMode(Z)V

    goto :goto_2d

    .line 762
    :pswitch_44
    sput-boolean p2, Lcom/android/server/WimaxService;->mIsBackhaulMode:Z

    .line 763
    invoke-static {p2}, Landroid/net/fourG/wimax/WimaxNative;->setBackhaulMode(Z)V

    goto :goto_2d

    .line 767
    :pswitch_4a
    invoke-virtual {p0}, Lcom/android/server/WimaxService;->get4GState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2d

    .line 768
    sput-boolean p2, Lcom/android/server/WimaxService;->mIsDMmode:Z

    .line 769
    const/4 v0, 0x0

    goto :goto_2d

    .line 751
    nop

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_3d
        :pswitch_44
        :pswitch_4a
        :pswitch_4a
    .end packed-switch
.end method

.method public setWimaxStatus(I)V
    .registers 3
    .parameter "wimaxStatus"

    .prologue
    .line 623
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceChangePermission()V

    .line 624
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/WimaxService;->setWimaxEnabledState(II)V

    .line 625
    return-void
.end method

.method public setWorkModeState(I)Z
    .registers 3
    .parameter "workMode"

    .prologue
    .line 1039
    const/4 v0, 0x1

    return v0
.end method

.method public startScan(Z)Z
    .registers 5
    .parameter "bUserReq"

    .prologue
    .line 918
    iget-boolean v0, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v0, :cond_2a

    const-string v0, "WimaxService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[startScan] bUserReq : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nScanAttempt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    iget v2, v2, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    :cond_2a
    sget-object v0, Lcom/android/server/WimaxService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0, v0}, Lcom/android/server/WimaxService;->acquire_WakeLock(Landroid/os/PowerManager$WakeLock;)V

    .line 921
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    sget-object v1, Landroid/net/fourG/wimax/WimaxState;->SCANNING:Landroid/net/fourG/wimax/WimaxState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->notifyStateChange(Landroid/net/fourG/wimax/WimaxState;Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V

    .line 922
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->scanCommand()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 923
    if-eqz p1, :cond_44

    .line 924
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/WimaxStateTracker;->clearRetryFlag()V

    .line 930
    :cond_44
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    iget v1, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    .line 931
    const/4 v0, 0x1

    .line 935
    :goto_4d
    return v0

    .line 933
    :cond_4e
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    sget-object v1, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    sget-object v2, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Syncup_PHY:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    invoke-virtual {v0, v1, v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->notifyStateChange(Landroid/net/fourG/wimax/WimaxState;Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V

    .line 934
    invoke-virtual {p0}, Lcom/android/server/WimaxService;->release_sWakeLock()V

    .line 935
    const/4 v0, 0x0

    goto :goto_4d
.end method
