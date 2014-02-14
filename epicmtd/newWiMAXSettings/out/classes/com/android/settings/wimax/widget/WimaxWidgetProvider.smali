.class public Lcom/android/settings/wimax/widget/WimaxWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "WimaxWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wimax/widget/WimaxWidgetProvider$1;,
        Lcom/android/settings/wimax/widget/WimaxWidgetProvider$WimaxStateTracker;,
        Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;
    }
.end annotation


# static fields
.field private static final BUTTON_WIMAX:I = 0x0

.field private static final DBG:Z = false

.field private static final IND_DRAWABLE_MID:I = 0x7f020006

.field private static final IND_DRAWABLE_OFF:I = 0x7f020007

.field private static final IND_DRAWABLE_ON:I = 0x7f020008

.field private static final POS_CENTER:I = 0x1

.field private static final POS_LEFT:I = 0x0

.field private static final POS_RIGHT:I = 0x2

.field private static final STATE_DISABLED:I = 0x0

.field private static final STATE_ENABLED:I = 0x1

.field private static final STATE_INTERMEDIATE:I = 0x5

.field private static final STATE_TURNING_OFF:I = 0x3

.field private static final STATE_TURNING_ON:I = 0x2

.field private static final STATE_UNKNOWN:I = 0x4

.field static final TAG:Ljava/lang/String; = "SettingsAppWidgetProvider"

.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field private static final sWimaxState:Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 48
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings.wimax"

    const-string v2, "com.android.settings.wimax.widget.WimaxWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/wimax/widget/WimaxWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    .line 75
    new-instance v0, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$WimaxStateTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$WimaxStateTracker;-><init>(Lcom/android/settings/wimax/widget/WimaxWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings/wimax/widget/WimaxWidgetProvider;->sWimaxState:Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 286
    return-void
.end method

.method static buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .registers 4
    .parameter "context"

    .prologue
    .line 387
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x7f04

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 389
    .local v0, views:Landroid/widget/RemoteViews;
    const v1, 0x7f070001

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/settings/wimax/widget/WimaxWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 392
    invoke-static {v0, p0}, Lcom/android/settings/wimax/widget/WimaxWidgetProvider;->updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 393
    return-object v0
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .registers 7
    .parameter "context"
    .parameter "buttonId"

    .prologue
    const/4 v4, 0x0

    .line 426
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 427
    .local v0, launchIntent:Landroid/content/Intent;
    const-class v2, Lcom/android/settings/wimax/widget/WimaxWidgetProvider;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 428
    const-string v2, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "custom:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 430
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 432
    .local v1, pi:Landroid/app/PendingIntent;
    return-object v1
.end method

.method private isAirplaneModeOn(Landroid/content/Context;)Z
    .registers 6
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 487
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_f

    :goto_e
    return v0

    :cond_f
    move v0, v1

    goto :goto_e
.end method

.method private isDataDisabledExternally()Z
    .registers 3

    .prologue
    .line 492
    invoke-static {}, Landroid/net/fourG/wimax/Wimax4GManager;->getInstance()Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v0

    .line 493
    .local v0, mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;
    if-nez v0, :cond_8

    .line 494
    const/4 v1, 0x0

    .line 496
    :goto_7
    return v1

    :cond_8
    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GManager;->isDataDisabledExternally()Z

    move-result v1

    goto :goto_7
.end method

.method private static updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .registers 3
    .parameter "views"
    .parameter "context"

    .prologue
    .line 415
    sget-object v0, Lcom/android/settings/wimax/widget/WimaxWidgetProvider;->sWimaxState:Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;

    invoke-virtual {v0, p1, p0}, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 416
    return-void
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 402
    invoke-static {p0}, Lcom/android/settings/wimax/widget/WimaxWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 404
    .local v1, views:Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 405
    .local v0, gm:Landroid/appwidget/AppWidgetManager;
    sget-object v2, Lcom/android/settings/wimax/widget/WimaxWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 406
    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 375
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 376
    .local v0, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings.wimax"

    const-string v3, ".widget.WimaxWidgetProvider"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 381
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 365
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 366
    .local v0, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings.wimax"

    const-string v3, ".widget.WimaxWidgetProvider"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 370
    invoke-static {p1}, Lcom/android/settings/wimax/widget/WimaxWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 371
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 443
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 444
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_70

    .line 446
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 447
    .local v3, data:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 448
    .local v2, buttonId:I
    if-nez v2, :cond_6c

    .line 449
    invoke-direct {p0, p1}, Lcom/android/settings/wimax/widget/WimaxWidgetProvider;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    .line 450
    .local v1, airplaneModeOn:Z
    invoke-direct {p0}, Lcom/android/settings/wimax/widget/WimaxWidgetProvider;->isDataDisabledExternally()Z

    move-result v4

    .line 451
    .local v4, dataDisabled:Z
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "airplaneModeOn "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  dataDisabled "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 453
    if-nez v1, :cond_4b

    if-eqz v4, :cond_67

    .line 455
    :cond_4b
    if-nez v1, :cond_5b

    if-eqz v4, :cond_5b

    .line 456
    const v6, 0x7f060002

    .line 463
    .local v6, msg:I
    :goto_52
    const/4 v7, 0x1

    invoke-static {p1, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 484
    .end local v1           #airplaneModeOn:Z
    .end local v2           #buttonId:I
    .end local v3           #data:Landroid/net/Uri;
    .end local v4           #dataDisabled:Z
    .end local v6           #msg:I
    :cond_5a
    :goto_5a
    return-void

    .line 457
    .restart local v1       #airplaneModeOn:Z
    .restart local v2       #buttonId:I
    .restart local v3       #data:Landroid/net/Uri;
    .restart local v4       #dataDisabled:Z
    :cond_5b
    if-eqz v1, :cond_63

    if-nez v4, :cond_63

    .line 458
    const v6, 0x7f060001

    .restart local v6       #msg:I
    goto :goto_52

    .line 460
    .end local v6           #msg:I
    :cond_63
    const v6, 0x7f060003

    .restart local v6       #msg:I
    goto :goto_52

    .line 466
    .end local v6           #msg:I
    :cond_67
    sget-object v7, Lcom/android/settings/wimax/widget/WimaxWidgetProvider;->sWimaxState:Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;

    invoke-virtual {v7, p1}, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    .line 483
    .end local v1           #airplaneModeOn:Z
    .end local v2           #buttonId:I
    .end local v3           #data:Landroid/net/Uri;
    .end local v4           #dataDisabled:Z
    :cond_6c
    :goto_6c
    invoke-static {p1}, Lcom/android/settings/wimax/widget/WimaxWidgetProvider;->updateWidget(Landroid/content/Context;)V

    goto :goto_5a

    .line 469
    :cond_70
    const-string v7, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5a

    .line 470
    const-string v7, "4g_state"

    const/4 v8, 0x4

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 472
    .local v5, m_nWimaxStatus:I
    sget-object v7, Lcom/android/settings/wimax/widget/WimaxWidgetProvider;->sWimaxState:Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;

    invoke-virtual {v7, p1, p2}, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_6c
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 7
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 357
    invoke-static {p1}, Lcom/android/settings/wimax/widget/WimaxWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 359
    .local v1, view:Landroid/widget/RemoteViews;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    array-length v2, p3

    if-ge v0, v2, :cond_10

    .line 360
    aget v2, p3, v0

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 362
    :cond_10
    return-void
.end method
