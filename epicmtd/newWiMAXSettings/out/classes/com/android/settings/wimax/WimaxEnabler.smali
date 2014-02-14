.class public Lcom/android/settings/wimax/WimaxEnabler;
.super Ljava/lang/Object;
.source "WimaxEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wimax/WimaxEnabler$MyHandler;
    }
.end annotation


# static fields
.field private static final EVENT_WIMAX_ENABLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WimaxEnabler"

.field private static m_bIsWifiConnected:Z


# instance fields
.field private final WIMAX_STATE_CONNECTED:I

.field private final WIMAX_STATE_CONNECTING:I

.field private final WIMAX_STATE_DISCONNECTED:I

.field private final WIMAX_STATE_DISCONNECTING:I

.field private final WIMAX_STATE_INITIALIZED:I

.field private final WIMAX_STATE_INITIALIZING:I

.field private final WIMAX_STATE_OBTAINING_IPADDR:I

.field private final WIMAX_STATE_READY:I

.field private final WIMAX_STATE_SCANNING:I

.field private final WIMAX_STATE_UNKNOWN:I

.field private ad:Landroid/app/AlertDialog;

.field private alert:Landroid/app/AlertDialog;

.field private currentWimaxState:Landroid/net/fourG/wimax/WimaxState;

.field private mAirplaneMode:Z

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mOriginalSummary:Ljava/lang/CharSequence;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

.field private mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

.field private mWimaxState:I

.field private m_bLog:Z

.field private m_bNewValue:Z

.field private m_nCurrentStateDetail:I

.field private m_strNapId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 76
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wimax/WimaxEnabler;->m_bIsWifiConnected:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/fourG/wimax/Wimax4GManager;Landroid/preference/CheckBoxPreference;)V
    .registers 8
    .parameter "context"
    .parameter "WimaxManager"
    .parameter "checkBox"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput v2, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_nCurrentStateDetail:I

    .line 69
    iput-object v3, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_strNapId:Ljava/lang/String;

    .line 70
    iput-boolean v2, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    .line 71
    iput-boolean v2, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bNewValue:Z

    .line 72
    iput-boolean v2, p0, Lcom/android/settings/wimax/WimaxEnabler;->mAirplaneMode:Z

    .line 82
    iput v2, p0, Lcom/android/settings/wimax/WimaxEnabler;->WIMAX_STATE_UNKNOWN:I

    .line 83
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->WIMAX_STATE_INITIALIZING:I

    .line 84
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->WIMAX_STATE_INITIALIZED:I

    .line 85
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->WIMAX_STATE_SCANNING:I

    .line 86
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->WIMAX_STATE_READY:I

    .line 87
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->WIMAX_STATE_CONNECTING:I

    .line 88
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->WIMAX_STATE_OBTAINING_IPADDR:I

    .line 89
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->WIMAX_STATE_CONNECTED:I

    .line 90
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->WIMAX_STATE_DISCONNECTING:I

    .line 91
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->WIMAX_STATE_DISCONNECTED:I

    .line 92
    iput v2, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxState:I

    .line 93
    sget-object v0, Landroid/net/fourG/wimax/WimaxState;->UNKNOWN:Landroid/net/fourG/wimax/WimaxState;

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->currentWimaxState:Landroid/net/fourG/wimax/WimaxState;

    .line 95
    new-instance v0, Lcom/android/settings/wimax/WimaxEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wimax/WimaxEnabler$1;-><init>(Lcom/android/settings/wimax/WimaxEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 165
    iput-object p1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    .line 166
    iput-object p2, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    .line 168
    iput-object p3, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    .line 169
    invoke-virtual {p3}, Landroid/preference/CheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    .line 170
    invoke-virtual {p3, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 174
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 175
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wimax.WIMAX_AUTH_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 179
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    new-instance v0, Lcom/android/settings/wimax/WimaxEnabler$MyHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/settings/wimax/WimaxEnabler$MyHandler;-><init>(Lcom/android/settings/wimax/WimaxEnabler;Lcom/android/settings/wimax/WimaxEnabler$1;)V

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mHandler:Landroid/os/Handler;

    .line 187
    invoke-direct {p0}, Lcom/android/settings/wimax/WimaxEnabler;->isMobileDataEnabled()Z

    move-result v0

    if-nez v0, :cond_9e

    .line 188
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f060015

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 189
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 191
    :cond_9e
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wimax/WimaxEnabler;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wimax/WimaxEnabler;->handleWimaxStatusChanged(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wimax/WimaxEnabler;)Landroid/net/fourG/wimax/WimaxState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->currentWimaxState:Landroid/net/fourG/wimax/WimaxState;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/wimax/WimaxEnabler;Landroid/net/fourG/wimax/WimaxState;)Landroid/net/fourG/wimax/WimaxState;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settings/wimax/WimaxEnabler;->currentWimaxState:Landroid/net/fourG/wimax/WimaxState;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/wimax/WimaxEnabler;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_nCurrentStateDetail:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/wimax/WimaxEnabler;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_nCurrentStateDetail:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/wimax/WimaxEnabler;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/wimax/WimaxEnabler;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxState:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/wimax/WimaxEnabler;Landroid/net/fourG/wimax/WimaxState;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wimax/WimaxEnabler;->handleWimaxStateChanged(Landroid/net/fourG/wimax/WimaxState;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/wimax/WimaxEnabler;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/wimax/WimaxEnabler;->handleErrorAuth(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/wimax/WimaxEnabler;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mAirplaneMode:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/settings/wimax/WimaxEnabler;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mAirplaneMode:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/wimax/WimaxEnabler;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/wimax/WimaxEnabler;->handleAirplaneMode(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/wimax/WimaxEnabler;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/wimax/WimaxEnabler;->setWimaxEnabled(Z)V

    return-void
.end method

.method private static getHumanReadableWimaxStatus(I)Ljava/lang/String;
    .registers 2
    .parameter "nWimaxStatus"

    .prologue
    .line 361
    packed-switch p0, :pswitch_data_16

    .line 373
    const-string v0, "Some other status!"

    :goto_5
    return-object v0

    .line 363
    :pswitch_6
    const-string v0, "Disabled"

    goto :goto_5

    .line 365
    :pswitch_9
    const-string v0, "Disabling"

    goto :goto_5

    .line 367
    :pswitch_c
    const-string v0, "Enabled"

    goto :goto_5

    .line 369
    :pswitch_f
    const-string v0, "Enabling"

    goto :goto_5

    .line 371
    :pswitch_12
    const-string v0, "Unknown"

    goto :goto_5

    .line 361
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_9
        :pswitch_6
        :pswitch_f
        :pswitch_c
        :pswitch_12
    .end packed-switch
.end method

.method private handleAirplaneMode(Z)V
    .registers 6
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    .line 144
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    if-eqz v0, :cond_1d

    const-string v0, "WimaxEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAirplaneMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_1d
    if-eqz p1, :cond_25

    .line 148
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 162
    :goto_24
    return-void

    .line 153
    :cond_25
    invoke-direct {p0}, Lcom/android/settings/wimax/WimaxEnabler;->isMobileDataEnabled()Z

    move-result v0

    if-nez v0, :cond_39

    .line 154
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f060015

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 155
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_24

    .line 157
    :cond_39
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_24
.end method

.method private handleErrorAuth(I)V
    .registers 5
    .parameter "nErrorMsg"

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    if-eqz v0, :cond_1c

    const-string v0, "WimaxEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleErrorAuth]  Error Authentication Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_1c
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060030

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060031

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06001e

    new-instance v2, Lcom/android/settings/wimax/WimaxEnabler$2;

    invoke-direct {v2, p0}, Lcom/android/settings/wimax/WimaxEnabler$2;-><init>(Lcom/android/settings/wimax/WimaxEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->alert:Landroid/app/AlertDialog;

    .line 387
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 388
    return-void
.end method

.method private handleWimaxStateChanged(Landroid/net/fourG/wimax/WimaxState;I)V
    .registers 9
    .parameter "wimaxState"
    .parameter "nWimaxStateDetail"

    .prologue
    .line 294
    iget-boolean v3, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    if-eqz v3, :cond_1c

    .line 295
    const-string v3, "WimaxEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[handleWimaxStateChanged]  Received Wimax network state changed to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_1c
    invoke-virtual {p1}, Landroid/net/fourG/wimax/WimaxState;->ordinal()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_a0

    .line 298
    iget-object v3, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v3}, Landroid/net/fourG/wimax/Wimax4GManager;->getConnectedNSP()Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    move-result-object v0

    .line 299
    .local v0, ConnectedNspInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;
    const/4 v1, 0x0

    .line 301
    .local v1, strTempNapId:Ljava/lang/String;
    if-nez v0, :cond_e6

    .line 302
    const-string v3, "000000"

    invoke-virtual {v0, v3}, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->setNapId(Ljava/lang/String;)V

    .line 303
    const-string v1, "000000"

    .line 309
    :goto_33
    iget-boolean v3, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    if-eqz v3, :cond_5b

    const-string v3, "WimaxEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[handleWimaxStateChanged]  enabler napId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_strNapId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", framework napid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_5b
    if-nez v1, :cond_6f

    .line 312
    iget-boolean v3, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    if-eqz v3, :cond_68

    const-string v3, "WimaxEnabler"

    const-string v4, "[getConnectedNSP]  framework napId is null. It will be changed to 000000."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_68
    const-string v3, "000000"

    invoke-virtual {v0, v3}, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->setNapId(Ljava/lang/String;)V

    .line 314
    const-string v1, "000000"

    .line 317
    :cond_6f
    iget-object v3, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_strNapId:Ljava/lang/String;

    if-eqz v3, :cond_7b

    iget-object v3, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_strNapId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a0

    .line 318
    :cond_7b
    iput-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_strNapId:Ljava/lang/String;

    .line 319
    iget-boolean v3, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    if-eqz v3, :cond_9b

    const-string v3, "WimaxEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[handleWimaxStateChanged]  napid changed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_strNapId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_9b
    iget-object v3, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_strNapId:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settings/wimax/WimaxEnabler;->updateNapId(Ljava/lang/String;)V

    .line 324
    .end local v0           #ConnectedNspInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;
    .end local v1           #strTempNapId:Ljava/lang/String;
    :cond_a0
    iget-object v3, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v3}, Landroid/net/fourG/wimax/Wimax4GManager;->is4GEnabled()Z

    move-result v3

    if-eqz v3, :cond_d1

    .line 325
    iget-boolean v3, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    if-eqz v3, :cond_c4

    const-string v3, "WimaxEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[handleWimaxStateChanged]  WimaxState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_c4
    iget-object v3, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, p2}, Lcom/android/settings/wimax/WimaxStatus;->getStatus(Landroid/content/Context;Landroid/net/fourG/wimax/WimaxState;I)Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, summary:Ljava/lang/String;
    if-eqz v2, :cond_d1

    .line 329
    iget-object v3, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 332
    .end local v2           #summary:Ljava/lang/String;
    :cond_d1
    invoke-direct {p0}, Lcom/android/settings/wimax/WimaxEnabler;->isMobileDataEnabled()Z

    move-result v3

    if-nez v3, :cond_e5

    .line 333
    iget-object v3, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f060015

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 334
    iget-object v3, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 336
    :cond_e5
    return-void

    .line 306
    .restart local v0       #ConnectedNspInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;
    .restart local v1       #strTempNapId:Ljava/lang/String;
    :cond_e6
    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->getNapId()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_33
.end method

.method private handleWimaxStatusChanged(II)V
    .registers 8
    .parameter "nWimaxStatus"
    .parameter "nPreviousWimaxStatus"

    .prologue
    const/4 v4, 0x0

    .line 244
    iget-boolean v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    if-eqz v1, :cond_2f

    .line 245
    const-string v1, "WimaxEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[handleWimaxStatusChanged]\tReceived Wimax Status changed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/android/settings/wimax/WimaxEnabler;->getHumanReadableWimaxStatus(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/settings/wimax/WimaxEnabler;->getHumanReadableWimaxStatus(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_2f
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    if-nez v1, :cond_34

    .line 287
    :cond_33
    :goto_33
    return-void

    .line 251
    :cond_34
    packed-switch p1, :pswitch_data_bc

    .line 273
    const v0, 0x7f060022

    .line 274
    .local v0, nMessage:I
    const/4 v1, 0x2

    if-ne p2, v1, :cond_b5

    const v0, 0x7f06002e

    .line 277
    :cond_40
    :goto_40
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 278
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 279
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/wimax/WimaxEnabler;->isWimaxAllowed(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 283
    .end local v0           #nMessage:I
    :goto_55
    invoke-direct {p0}, Lcom/android/settings/wimax/WimaxEnabler;->isMobileDataEnabled()Z

    move-result v1

    if-nez v1, :cond_33

    .line 284
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f060015

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 285
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_33

    .line 253
    :pswitch_69
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f06002c

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 254
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_55

    .line 257
    :pswitch_77
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 259
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/wimax/WimaxEnabler;->isWimaxAllowed(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_55

    .line 262
    :pswitch_8f
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f06002d

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 263
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_55

    .line 266
    :pswitch_9d
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 268
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/wimax/WimaxEnabler;->isWimaxAllowed(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_55

    .line 275
    .restart local v0       #nMessage:I
    :cond_b5
    if-nez p2, :cond_40

    const v0, 0x7f06002f

    goto :goto_40

    .line 251
    nop

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_69
        :pswitch_77
        :pswitch_8f
        :pswitch_9d
    .end packed-switch
.end method

.method private isMobileDataEnabled()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 128
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static isWimaxAllowed(Landroid/content/Context;)Z
    .registers 6
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 343
    invoke-static {p0}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 354
    :cond_7
    :goto_7
    return v1

    .line 347
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_radios"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, radios:Ljava/lang/String;
    if-eqz v0, :cond_1c

    const-string v2, "wimax"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 349
    :cond_1c
    const-string v2, "WimaxEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[handleWimaxStateChanged]  radios: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 353
    :cond_35
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_toggable_radio"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 354
    if-eqz v0, :cond_49

    const-string v2, "wimax"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_49
    const/4 v1, 0x0

    goto :goto_7
.end method

.method private setWimaxEnabled(Z)V
    .registers 5
    .parameter "bEnable"

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    if-eqz v0, :cond_1c

    const-string v0, "WimaxEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWimaxEnabled called with enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_1c
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0, p1}, Landroid/net/fourG/wimax/Wimax4GManager;->set4GEnabled(Z)Z

    .line 237
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 3

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    if-eqz v0, :cond_b

    const-string v0, "WimaxEnabler"

    const-string v1, "[on destroy] was called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_b
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->alert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_14

    .line 393
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 394
    :cond_14
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->ad:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1d

    .line 395
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->ad:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 396
    :cond_1d
    return-void
.end method

.method public getEnableLog()Z
    .registers 14

    .prologue
    const/4 v9, 0x0

    .line 408
    const/4 v8, 0x0

    .line 410
    .local v8, strMsg:Ljava/lang/String;
    const/4 v0, 0x0

    .line 411
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 413
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_4
    new-instance v4, Ljava/io/FileInputStream;

    const-string v10, "/data/4G.txt"

    invoke-direct {v4, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_b} :catch_38

    .line 420
    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_b
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_76
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_15} :catch_48

    .line 421
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_15
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_91
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_94

    move-result-object v8

    .line 427
    :try_start_19
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 428
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1f} :catch_3a

    .line 435
    const/4 v6, 0x0

    .local v6, i:I
    :goto_20
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v6, v10, :cond_8e

    .line 436
    add-int/lit8 v10, v6, 0x1

    invoke-virtual {v8, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string v11, "S"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8b

    .line 437
    const/4 v9, 0x1

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    move-object v0, v1

    .line 439
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v6           #i:I
    .restart local v0       #br:Ljava/io/BufferedReader;
    :goto_37
    return v9

    .line 414
    :catch_38
    move-exception v5

    .line 416
    .local v5, fnfe:Ljava/io/FileNotFoundException;
    goto :goto_37

    .line 429
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v5           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_3a
    move-exception v7

    .line 430
    .local v7, ioe:Ljava/io/IOException;
    const-string v10, "WimaxEnabler"

    const-string v11, "[getEnableLog]\tFile close error"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    move-object v0, v1

    .line 432
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_37

    .line 422
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v7           #ioe:Ljava/io/IOException;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_48
    move-exception v2

    .line 423
    .local v2, e:Ljava/io/IOException;
    :goto_49
    :try_start_49
    const-string v10, "WimaxEnabler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[getEnableLog]\tFile error : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_49 .. :try_end_61} :catchall_76

    .line 427
    :try_start_61
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 428
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_67} :catch_69

    move-object v3, v4

    .line 432
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_37

    .line 429
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_69
    move-exception v7

    .line 430
    .restart local v7       #ioe:Ljava/io/IOException;
    const-string v10, "WimaxEnabler"

    const-string v11, "[getEnableLog]\tFile close error"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 432
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_37

    .line 426
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v7           #ioe:Ljava/io/IOException;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catchall_76
    move-exception v10

    .line 427
    :goto_77
    :try_start_77
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 428
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7d} :catch_7e

    .line 432
    throw v10

    .line 429
    :catch_7e
    move-exception v7

    .line 430
    .restart local v7       #ioe:Ljava/io/IOException;
    const-string v10, "WimaxEnabler"

    const-string v11, "[getEnableLog]\tFile close error"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 432
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_37

    .line 435
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v7           #ioe:Ljava/io/IOException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    .restart local v6       #i:I
    :cond_8b
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    :cond_8e
    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    move-object v0, v1

    .line 439
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_37

    .line 426
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v6           #i:I
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catchall_91
    move-exception v10

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_77

    .line 422
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_94
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_49
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 6
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    if-eqz v0, :cond_2d

    const-string v1, "WimaxEnabler"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange called for Preference: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " value: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_2d
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 227
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bNewValue:Z

    .line 228
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bNewValue:Z

    invoke-direct {p0, v0}, Lcom/android/settings/wimax/WimaxEnabler;->setWimaxEnabled(Z)V

    .line 231
    :cond_4a
    const/4 v0, 0x1

    return v0
.end method

.method public pause()V
    .registers 3

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    if-eqz v0, :cond_b

    const-string v0, "WimaxEnabler"

    const-string v1, "pause called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_b
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 220
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 221
    return-void
.end method

.method public resume()V
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 194
    iget-boolean v3, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    if-eqz v3, :cond_e

    const-string v3, "WimaxEnabler"

    const-string v4, "resume called"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_e
    iget-object v3, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v3}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v0

    .line 197
    .local v0, status:I
    invoke-virtual {p0}, Lcom/android/settings/wimax/WimaxEnabler;->getEnableLog()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    .line 198
    iget-boolean v3, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    invoke-static {v3}, Lcom/android/settings/wimax/WimaxStatus;->setEnableLog(Z)V

    .line 199
    iget-object v3, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_2f

    .line 201
    iget-object v3, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2c

    if-eq v0, v1, :cond_2c

    if-ne v0, v5, :cond_51

    :cond_2c
    :goto_2c
    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 203
    :cond_2f
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/wimax/WimaxEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/settings/wimax/WimaxEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 205
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 207
    invoke-direct {p0}, Lcom/android/settings/wimax/WimaxEnabler;->isMobileDataEnabled()Z

    move-result v1

    if-nez v1, :cond_53

    .line 208
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f060015

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 209
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 215
    :goto_50
    return-void

    :cond_51
    move v1, v2

    .line 201
    goto :goto_2c

    .line 211
    :cond_53
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v1

    invoke-direct {p0, v1, v5}, Lcom/android/settings/wimax/WimaxEnabler;->handleWimaxStatusChanged(II)V

    .line 212
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->getWimaxStateDetail()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wimax/WimaxEnabler;->handleWimaxStateChanged(Landroid/net/fourG/wimax/WimaxState;I)V

    goto :goto_50
.end method

.method public updateNapId(Ljava/lang/String;)V
    .registers 5
    .parameter "strNapId"

    .prologue
    .line 399
    iput-object p1, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_strNapId:Ljava/lang/String;

    .line 400
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    if-eqz v0, :cond_1e

    const-string v0, "WimaxEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateNapId]  calling WimaxStatus.updateNapId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_1e
    const-string v0, "000002"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "000004"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    :cond_2e
    const/4 v0, 0x1

    :goto_2f
    invoke-static {v0}, Lcom/android/settings/wimax/WimaxStatus;->updateNapId(Z)V

    .line 402
    return-void

    .line 401
    :cond_33
    const/4 v0, 0x0

    goto :goto_2f
.end method
