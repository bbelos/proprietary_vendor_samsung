.class public Lcom/android/settings/wimax/WimaxSettings;
.super Landroid/preference/PreferenceActivity;
.source "WimaxSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wimax/WimaxSettings$3;,
        Lcom/android/settings/wimax/WimaxSettings$onPreferenceClickListener;
    }
.end annotation


# static fields
.field private static final KEY_OPEN_NETWORK_NOTIFICATIONS_ENABLED:Ljava/lang/String; = "open_network_notifications_enabled"

.field private static final KEY_WIMAX_ENABLED:Ljava/lang/String; = "wimax_enabled"

.field private static final KEY_WIMAX_SETTINGS:Ljava/lang/String; = "wimax_settings"

.field private static final MENU_ID_SCAN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WimaxSettings"


# instance fields
.field private currentWimaxState:Landroid/net/fourG/wimax/WimaxState;

.field private mAlert:Landroid/app/AlertDialog;

.field private mConnectedNspInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

.field private mContext:Landroid/content/Context;

.field private mFilter:Landroid/content/IntentFilter;

.field private mOpenNetworkNotificationsEnabled:Landroid/preference/CheckBoxPreference;

.field private mPreference:Landroid/preference/Preference;

.field private mPreferenceClickListener:Lcom/android/settings/wimax/WimaxSettings$onPreferenceClickListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mWimaxCategory:Landroid/preference/PreferenceCategory;

.field private mWimaxEnabled:Landroid/preference/CheckBoxPreference;

.field private mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

.field private mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

.field private mWimaxState:Landroid/net/fourG/wimax/WimaxState;

.field private m_bLog:Z

.field private m_nCurrentStateDetail:I

.field private m_nWimaxStatus:I

.field private m_strNapId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 46
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_nWimaxStatus:I

    .line 47
    iput v1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_nCurrentStateDetail:I

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_strNapId:Ljava/lang/String;

    .line 49
    iput-boolean v1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    .line 59
    new-instance v0, Lcom/android/settings/wimax/WimaxSettings$onPreferenceClickListener;

    invoke-direct {v0, p0}, Lcom/android/settings/wimax/WimaxSettings$onPreferenceClickListener;-><init>(Lcom/android/settings/wimax/WimaxSettings;)V

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreferenceClickListener:Lcom/android/settings/wimax/WimaxSettings$onPreferenceClickListener;

    .line 64
    new-instance v0, Lcom/android/settings/wimax/WimaxSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wimax/WimaxSettings$1;-><init>(Lcom/android/settings/wimax/WimaxSettings;)V

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 406
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wimax/WimaxSettings;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/wimax/WimaxSettings;)Landroid/net/fourG/wimax/WimaxState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/wimax/WimaxSettings;Landroid/net/fourG/wimax/WimaxState;)Landroid/net/fourG/wimax/WimaxState;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/wimax/WimaxSettings;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_nCurrentStateDetail:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/wimax/WimaxSettings;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_nCurrentStateDetail:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/wimax/WimaxSettings;Landroid/net/fourG/wimax/WimaxState;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wimax/WimaxSettings;->handleWimaxStateChanged(Landroid/net/fourG/wimax/WimaxState;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wimax/WimaxSettings;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_nWimaxStatus:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/wimax/WimaxSettings;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_nWimaxStatus:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/wimax/WimaxSettings;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/settings/wimax/WimaxSettings;->handleWimaxStatusChanged(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/wimax/WimaxSettings;Landroid/preference/Preference;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/settings/wimax/WimaxSettings;->buildDialogConnected(Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method private buildDialogConnected(Landroid/preference/Preference;)Z
    .registers 5
    .parameter "preference"

    .prologue
    .line 419
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f060019

    invoke-virtual {p0, v2}, Lcom/android/settings/wimax/WimaxSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wimax/WimaxSettings;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06001e

    new-instance v2, Lcom/android/settings/wimax/WimaxSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/wimax/WimaxSettings$2;-><init>(Lcom/android/settings/wimax/WimaxSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mAlert:Landroid/app/AlertDialog;

    .line 425
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 426
    const/4 v0, 0x1

    return v0
.end method

.method private createPreference(Ljava/lang/String;)V
    .registers 5
    .parameter "napId"

    .prologue
    .line 377
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    .line 378
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    const-string v0, "000002"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "000004"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    :cond_19
    const v0, 0x7f060016

    :goto_1c
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 379
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreferenceClickListener:Lcom/android/settings/wimax/WimaxSettings$onPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 380
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v0, :cond_48

    const-string v0, "WimaxSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createPreference called adding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_48
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-lez v0, :cond_55

    .line 384
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 386
    :cond_55
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 389
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 390
    return-void

    .line 378
    :cond_62
    const v0, 0x7f060017

    goto :goto_1c
.end method

.method private deletePreference()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 396
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_e

    .line 397
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 398
    iput-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    .line 399
    iput-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mConnectedNspInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    .line 401
    :cond_e
    return-void
.end method

.method private getConnectedNSP()V
    .registers 4

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v0, :cond_b

    const-string v0, "WimaxSettings"

    const-string v1, "[getConnectedNSP] Called11"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_b
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GManager;->getConnectedNSP()Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mConnectedNspInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    .line 359
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mConnectedNspInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->getNapId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_strNapId:Ljava/lang/String;

    .line 360
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_strNapId:Ljava/lang/String;

    if-nez v0, :cond_35

    .line 362
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v0, :cond_2a

    const-string v0, "WimaxSettings"

    const-string v1, "[getConnectedNSP]  napId of mConnectedNspInfo is null. It will be changed to 000000."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_2a
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mConnectedNspInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    const-string v1, "000000"

    invoke-virtual {v0, v1}, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->setNapId(Ljava/lang/String;)V

    .line 364
    const-string v0, "000000"

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_strNapId:Ljava/lang/String;

    .line 367
    :cond_35
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_strNapId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/wimax/WimaxSettings;->updateNapId(Ljava/lang/String;)V

    .line 369
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v0, :cond_58

    const-string v0, "WimaxSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getConnectedNSP]  m_strNapId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->m_strNapId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_58
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_strNapId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/wimax/WimaxSettings;->createPreference(Ljava/lang/String;)V

    .line 371
    return-void
.end method

.method private getDataEnabled()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/wimax/WimaxSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private handleWimaxStateChanged(Landroid/net/fourG/wimax/WimaxState;I)V
    .registers 11
    .parameter "wimaxState"
    .parameter "wimaxStateDetail"

    .prologue
    const v7, 0x7f06001f

    const v6, 0x7f06000d

    const/4 v5, 0x6

    .line 255
    iget-boolean v1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v1, :cond_23

    const-string v1, "WimaxSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[handleWimaxStateChanged]  Received Wimax state changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_23
    iget-boolean v1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v1, :cond_51

    const-string v1, "WimaxSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[handleWimaxStateChanged]  pre and now r same 1 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wimax/WimaxSettings;->mConnectedNspInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " 2 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v3}, Landroid/net/fourG/wimax/Wimax4GManager;->getConnectedNSP()Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_51
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mConnectedNspInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    if-eqz v1, :cond_85

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->getConnectedNSP()Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    move-result-object v1

    if-eqz v1, :cond_85

    .line 259
    iget-boolean v1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v1, :cond_85

    const-string v1, "WimaxSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[handleWimaxStateChanged]  pre and now r same111 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v3}, Landroid/net/fourG/wimax/Wimax4GManager;->getConnectedNSP()Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wimax/WimaxSettings;->mConnectedNspInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    invoke-virtual {v3, v4}, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->equals(Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_85
    sget-object v1, Lcom/android/settings/wimax/WimaxSettings$3;->$SwitchMap$android$net$fourG$wimax$WimaxState:[I

    invoke-virtual {p1}, Landroid/net/fourG/wimax/WimaxState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1c8

    .line 319
    invoke-direct {p0}, Lcom/android/settings/wimax/WimaxSettings;->deletePreference()V

    .line 323
    :cond_93
    :goto_93
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_ab

    invoke-direct {p0}, Lcom/android/settings/wimax/WimaxSettings;->getDataEnabled()Z

    move-result v1

    if-nez v1, :cond_ab

    .line 324
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabled:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f060015

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 325
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabled:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 327
    :cond_ab
    :goto_ab
    return-void

    .line 263
    :pswitch_ac
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mConnectedNspInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    if-eqz v1, :cond_e3

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->getConnectedNSP()Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    move-result-object v1

    if-eqz v1, :cond_e3

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->getConnectedNSP()Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mConnectedNspInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    invoke-virtual {v1, v2}, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->equals(Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;)Z

    move-result v1

    if-eqz v1, :cond_e3

    .line 264
    iget-boolean v1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v1, :cond_d1

    const-string v1, "WimaxSettings"

    const-string v2, "duplicate return here"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_d1
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_ab

    .line 267
    if-ne p2, v5, :cond_dd

    .line 268
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_ab

    .line 270
    :cond_dd
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_ab

    .line 274
    :cond_e3
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    if-nez v1, :cond_101

    .line 275
    iget-boolean v1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v1, :cond_f2

    const-string v1, "WimaxSettings"

    const-string v2, "[handleWimaxStateChanged]  preference == null, create preference"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_f2
    invoke-direct {p0}, Lcom/android/settings/wimax/WimaxSettings;->getConnectedNSP()V

    .line 300
    :cond_f5
    :goto_f5
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_93

    .line 301
    if-ne p2, v5, :cond_1c1

    .line 302
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_93

    .line 278
    :cond_101
    if-eq p2, v5, :cond_f5

    .line 279
    iget-boolean v1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v1, :cond_10e

    const-string v1, "WimaxSettings"

    const-string v2, "[handleWimaxStateChanged]  preference != null, check napid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_10e
    invoke-direct {p0}, Lcom/android/settings/wimax/WimaxSettings;->getConnectedNSP()V

    .line 282
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mConnectedNspInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->getNapId()Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, tempNapId:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->getConnectedNSP()Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mConnectedNspInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    .line 285
    iget-boolean v1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v1, :cond_147

    const-string v1, "WimaxSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[handleWimaxStateChanged]  settings napId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wimax/WimaxSettings;->m_strNapId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", framework napid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_147
    const-string v1, "000000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_151

    if-eqz v0, :cond_1a3

    .line 287
    :cond_151
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_strNapId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_185

    .line 288
    iget-boolean v1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v1, :cond_175

    const-string v1, "WimaxSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[handleWimaxStateChanged] napid changed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_175
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mConnectedNspInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->getNspName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 290
    invoke-direct {p0, v0}, Lcom/android/settings/wimax/WimaxSettings;->updateNapId(Ljava/lang/String;)V

    goto/16 :goto_f5

    .line 292
    :cond_185
    iget-boolean v1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v1, :cond_f5

    const-string v1, "WimaxSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[handleWimaxStateChanged]  Dont update same napid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f5

    .line 295
    :cond_1a3
    iget-boolean v1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v1, :cond_f5

    const-string v1, "WimaxSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignore napid 0 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f5

    .line 304
    .end local v0           #tempNapId:Ljava/lang/String;
    :cond_1c1
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_93

    .line 260
    :pswitch_data_1c8
    .packed-switch 0x1
        :pswitch_ac
    .end packed-switch
.end method

.method private handleWimaxStatusChanged(I)V
    .registers 5
    .parameter "mWimaxStatus"

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v0, :cond_1c

    const-string v0, "WimaxSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleWimaxStatusChanged]  Received Wimax status changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_1c
    packed-switch p1, :pswitch_data_4a

    .line 346
    :goto_1f
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_37

    invoke-direct {p0}, Lcom/android/settings/wimax/WimaxSettings;->getDataEnabled()Z

    move-result v0

    if-nez v0, :cond_37

    .line 347
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabled:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f060015

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 348
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabled:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 350
    :cond_37
    return-void

    .line 336
    :pswitch_38
    invoke-direct {p0}, Lcom/android/settings/wimax/WimaxSettings;->deletePreference()V

    goto :goto_1f

    .line 339
    :pswitch_3c
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_46

    .line 340
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabled:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 342
    :cond_46
    invoke-direct {p0}, Lcom/android/settings/wimax/WimaxSettings;->deletePreference()V

    goto :goto_1f

    .line 334
    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_38
        :pswitch_3c
    .end packed-switch
.end method

.method private onCreatePreferences()V
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 110
    const v1, 0x7f050001

    invoke-virtual {p0, v1}, Lcom/android/settings/wimax/WimaxSettings;->addPreferencesFromResource(I)V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/wimax/WimaxSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 114
    .local v0, preferenceScreen:Landroid/preference/PreferenceScreen;
    const-string v1, "wimax_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxCategory:Landroid/preference/PreferenceCategory;

    .line 115
    const-string v1, "wimax_enabled"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabled:Landroid/preference/CheckBoxPreference;

    .line 116
    new-instance v1, Lcom/android/settings/wimax/WimaxEnabler;

    invoke-static {}, Landroid/net/fourG/wimax/Wimax4GManager;->getInstance()Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabled:Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, p0, v4, v5}, Lcom/android/settings/wimax/WimaxEnabler;-><init>(Landroid/content/Context;Landroid/net/fourG/wimax/Wimax4GManager;Landroid/preference/CheckBoxPreference;)V

    iput-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    .line 117
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    if-eqz v1, :cond_39

    .line 118
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    invoke-virtual {v1}, Lcom/android/settings/wimax/WimaxEnabler;->getEnableLog()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    .line 121
    :cond_39
    const-string v1, "open_network_notifications_enabled"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mOpenNetworkNotificationsEnabled:Landroid/preference/CheckBoxPreference;

    .line 122
    const-string v1, "WimaxSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mOpenNetworkNotificationsEnabled called     "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wimax/WimaxSettings;->mOpenNetworkNotificationsEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v4, p0, Lcom/android/settings/wimax/WimaxSettings;->mOpenNetworkNotificationsEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/wimax/WimaxSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "wimax_networks_available_notification_on"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_8e

    move v1, v2

    :goto_6c
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/wimax/WimaxSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wimax/WimaxSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 134
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_8d

    invoke-direct {p0}, Lcom/android/settings/wimax/WimaxSettings;->getDataEnabled()Z

    move-result v1

    if-nez v1, :cond_8d

    .line 135
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabled:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f060015

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 136
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 138
    :cond_8d
    return-void

    :cond_8e
    move v1, v3

    .line 129
    goto :goto_6c
.end method

.method private static putAddress(Ljava/lang/StringBuffer;I)V
    .registers 5
    .parameter "buf"
    .parameter "addr"

    .prologue
    const/16 v2, 0x2e

    .line 449
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

    .line 451
    return-void
.end method

.method private updateNapId(Ljava/lang/String;)V
    .registers 5
    .parameter "strNapId"

    .prologue
    .line 454
    iput-object p1, p0, Lcom/android/settings/wimax/WimaxSettings;->m_strNapId:Ljava/lang/String;

    .line 455
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v0, :cond_1e

    const-string v0, "WimaxSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateNapId]  Calling WimaxStatus.updateNapId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
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

    .line 457
    return-void

    .line 456
    :cond_33
    const/4 v0, 0x0

    goto :goto_2f
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-static {}, Landroid/net/fourG/wimax/Wimax4GManager;->getInstance()Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    .line 95
    invoke-direct {p0}, Lcom/android/settings/wimax/WimaxSettings;->onCreatePreferences()V

    .line 96
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v0, :cond_17

    const-string v0, "WimaxSettings"

    const-string v1, "on create called .."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_17
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mFilter:Landroid/content/IntentFilter;

    .line 99
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    iput-object p0, p0, Lcom/android/settings/wimax/WimaxSettings;->mContext:Landroid/content/Context;

    .line 104
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 188
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 190
    const v0, 0x7f060020

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020004

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 191
    return v2
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 173
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 174
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v0, :cond_e

    const-string v0, "WimaxSettings"

    const-string v1, "[onDestroy] Called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_e
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_22

    .line 176
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 177
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v0, :cond_22

    const-string v0, "WimaxSettings"

    const-string v1, "[onDestroy] Called to dismiss pop-ups"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_22
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    if-eqz v0, :cond_2b

    .line 180
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wimax/WimaxEnabler;->destroy()V

    .line 181
    :cond_2b
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 206
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 208
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_14

    .line 214
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 210
    :pswitch_d
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1, v0}, Landroid/net/fourG/wimax/Wimax4GManager;->startScan(Z)Z

    goto :goto_c

    .line 208
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_d
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 163
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 164
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v0, :cond_e

    const-string v0, "WimaxSettings"

    const-string v1, "[onPause] Called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_e
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wimax/WimaxSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 166
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    if-eqz v0, :cond_1c

    .line 167
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wimax/WimaxEnabler;->pause()V

    .line 169
    :cond_1c
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 10
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 223
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 225
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v0, :cond_25

    const-string v0, "WimaxSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceTreeClick called for Preference: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_25
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mOpenNetworkNotificationsEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_65

    .line 227
    const-string v3, "WimaxSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceTreeClick called for Preference: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/wimax/WimaxSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wimax_networks_available_notification_on"

    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mOpenNetworkNotificationsEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_66

    move v0, v1

    :goto_45
    invoke-static {v5, v6, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/wimax/WimaxSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wimax_networks_available_notification_on"

    iget-object v4, p0, Lcom/android/settings/wimax/WimaxSettings;->mOpenNetworkNotificationsEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_68

    :goto_62
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 231
    :cond_65
    return v2

    :cond_66
    move v0, v2

    .line 227
    goto :goto_45

    :cond_68
    move v1, v2

    .line 228
    goto :goto_62
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 196
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    sget-object v3, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v2, v3, :cond_15

    iget v2, p0, Lcom/android/settings/wimax/WimaxSettings;->m_nWimaxStatus:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_15

    .line 197
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 201
    :goto_14
    return v0

    .line 200
    :cond_15
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move v0, v1

    .line 201
    goto :goto_14
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 142
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 143
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v0, :cond_e

    const-string v0, "WimaxSettings"

    const-string v1, "[onResume] called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_e
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wimax/WimaxSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    if-eqz v0, :cond_36

    .line 148
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabler:Lcom/android/settings/wimax/WimaxEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wimax/WimaxEnabler;->resume()V

    .line 150
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_36

    invoke-direct {p0}, Lcom/android/settings/wimax/WimaxSettings;->getDataEnabled()Z

    move-result v0

    if-nez v0, :cond_36

    .line 151
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabled:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f060015

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxEnabled:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 155
    :cond_36
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GManager;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    .line 156
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->getWimaxStateDetail()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wimax/WimaxSettings;->handleWimaxStateChanged(Landroid/net/fourG/wimax/WimaxState;I)V

    .line 157
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wimax/WimaxSettings;->handleWimaxStatusChanged(I)V

    .line 159
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 430
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 431
    .local v0, info:Landroid/net/DhcpInfo;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 433
    .local v1, str:Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f06001a

    invoke-virtual {p0, v3}, Lcom/android/settings/wimax/WimaxSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 434
    iget v2, v0, Landroid/net/DhcpInfo;->ipAddress:I

    invoke-static {v1, v2}, Lcom/android/settings/wimax/WimaxSettings;->putAddress(Ljava/lang/StringBuffer;I)V

    .line 435
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f06001b

    invoke-virtual {p0, v3}, Lcom/android/settings/wimax/WimaxSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    iget v2, v0, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v1, v2}, Lcom/android/settings/wimax/WimaxSettings;->putAddress(Ljava/lang/StringBuffer;I)V

    .line 437
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f06001c

    invoke-virtual {p0, v3}, Lcom/android/settings/wimax/WimaxSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 438
    iget v2, v0, Landroid/net/DhcpInfo;->dns1:I

    invoke-static {v1, v2}, Lcom/android/settings/wimax/WimaxSettings;->putAddress(Ljava/lang/StringBuffer;I)V

    .line 439
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f06001d

    invoke-virtual {p0, v3}, Lcom/android/settings/wimax/WimaxSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 440
    iget v2, v0, Landroid/net/DhcpInfo;->dns2:I

    invoke-static {v1, v2}, Lcom/android/settings/wimax/WimaxSettings;->putAddress(Ljava/lang/StringBuffer;I)V

    .line 441
    iget-boolean v2, p0, Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z

    if-eqz v2, :cond_c5

    const-string v2, "WimaxSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wimax Connected getDhcpInfo toString :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_c5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
