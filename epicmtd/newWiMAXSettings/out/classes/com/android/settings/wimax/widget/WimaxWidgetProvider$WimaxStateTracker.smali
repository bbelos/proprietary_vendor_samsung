.class final Lcom/android/settings/wimax/widget/WimaxWidgetProvider$WimaxStateTracker;
.super Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;
.source "WimaxWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wimax/widget/WimaxWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WimaxStateTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 286
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;-><init>(Lcom/android/settings/wimax/widget/WimaxWidgetProvider$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wimax/widget/WimaxWidgetProvider$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$WimaxStateTracker;-><init>()V

    return-void
.end method

.method private static wimaxStateToFiveState(I)I
    .registers 2
    .parameter "state"

    .prologue
    .line 337
    packed-switch p0, :pswitch_data_e

    .line 347
    const/4 v0, 0x4

    :goto_4
    return v0

    .line 339
    :pswitch_5
    const/4 v0, 0x0

    goto :goto_4

    .line 341
    :pswitch_7
    const/4 v0, 0x1

    goto :goto_4

    .line 343
    :pswitch_9
    const/4 v0, 0x3

    goto :goto_4

    .line 345
    :pswitch_b
    const/4 v0, 0x2

    goto :goto_4

    .line 337
    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_9
        :pswitch_5
        :pswitch_b
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .registers 4
    .parameter "context"

    .prologue
    .line 296
    invoke-static {}, Landroid/net/fourG/wimax/Wimax4GManager;->getInstance()Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v0

    .line 297
    .local v0, mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;
    if-eqz v0, :cond_f

    .line 298
    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v1

    invoke-static {v1}, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$WimaxStateTracker;->wimaxStateToFiveState(I)I

    move-result v1

    .line 300
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x4

    goto :goto_e
.end method

.method public getButtonId()I
    .registers 2

    .prologue
    .line 287
    const v0, 0x7f070002

    return v0
.end method

.method public getButtonImageId(Z)I
    .registers 3
    .parameter "on"

    .prologue
    .line 290
    if-eqz p1, :cond_6

    const v0, 0x7f020003

    :goto_5
    return v0

    :cond_6
    const v0, 0x7f020002

    goto :goto_5
.end method

.method public getIndicatorId()I
    .registers 2

    .prologue
    .line 288
    const v0, 0x7f070003

    return v0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 325
    const-string v1, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 330
    :goto_c
    return-void

    .line 328
    :cond_d
    const-string v1, "4g_state"

    const/4 v2, 0x4

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 329
    .local v0, m_nWimaxStatus:I
    invoke-static {v0}, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$WimaxStateTracker;->wimaxStateToFiveState(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$WimaxStateTracker;->setCurrentState(Landroid/content/Context;I)V

    goto :goto_c
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .registers 6
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 305
    invoke-static {}, Landroid/net/fourG/wimax/Wimax4GManager;->getInstance()Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v0

    .line 307
    .local v0, wimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;
    if-nez v0, :cond_e

    .line 308
    const-string v1, "SettingsAppWidgetProvider"

    const-string v2, "No wimaxManager."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :goto_d
    return-void

    .line 312
    :cond_e
    new-instance v1, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$WimaxStateTracker$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$WimaxStateTracker$1;-><init>(Lcom/android/settings/wimax/widget/WimaxWidgetProvider$WimaxStateTracker;Landroid/net/fourG/wimax/Wimax4GManager;Z)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$WimaxStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_d
.end method
