.class abstract Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;
.super Ljava/lang/Object;
.source "WimaxWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wimax/widget/WimaxWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "StateTracker"
.end annotation


# instance fields
.field private mActualState:Ljava/lang/Boolean;

.field private mDeferredStateChangeRequestNeeded:Z

.field private mInTransition:Z

.field private mIntendedState:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-boolean v0, p0, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;->mInTransition:Z

    .line 88
    iput-object v1, p0, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    .line 89
    iput-object v1, p0, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 95
    iput-boolean v0, p0, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wimax/widget/WimaxWidgetProvider$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getActualState(Landroid/content/Context;)I
.end method

.method public abstract getButtonId()I
.end method

.method public abstract getButtonImageId(Z)I
.end method

.method public abstract getIndicatorId()I
.end method

.method public final getTriState(Landroid/content/Context;)I
    .registers 4
    .parameter "context"

    .prologue
    const/4 v0, 0x5

    .line 247
    iget-boolean v1, p0, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;->mInTransition:Z

    if-eqz v1, :cond_6

    .line 263
    :goto_5
    return v0

    .line 257
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_12

    goto :goto_5

    .line 259
    :pswitch_e
    const/4 v0, 0x0

    goto :goto_5

    .line 261
    :pswitch_10
    const/4 v0, 0x1

    goto :goto_5

    .line 257
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_10
    .end packed-switch
.end method

.method public final isTurningOn()Z
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public abstract onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method protected abstract requestStateChange(Landroid/content/Context;Z)V
.end method

.method protected final setCurrentState(Landroid/content/Context;I)V
    .registers 8
    .parameter "context"
    .parameter "newState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 196
    iget-boolean v0, p0, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;->mInTransition:Z

    .line 197
    .local v0, wasInTransition:Z
    packed-switch p2, :pswitch_data_5a

    .line 216
    :goto_7
    if-eqz v0, :cond_25

    iget-boolean v1, p0, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;->mInTransition:Z

    if-nez v1, :cond_25

    .line 217
    iget-boolean v1, p0, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    if-eqz v1, :cond_25

    .line 219
    iget-object v1, p0, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 226
    :cond_23
    :goto_23
    iput-boolean v3, p0, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 229
    :cond_25
    return-void

    .line 199
    :pswitch_26
    iput-boolean v3, p0, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;->mInTransition:Z

    .line 200
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_7

    .line 203
    :pswitch_2f
    iput-boolean v3, p0, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;->mInTransition:Z

    .line 204
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_7

    .line 207
    :pswitch_38
    iput-boolean v4, p0, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;->mInTransition:Z

    .line 208
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_7

    .line 211
    :pswitch_41
    iput-boolean v4, p0, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;->mInTransition:Z

    .line 212
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_7

    .line 222
    :cond_4a
    iget-object v1, p0, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_23

    .line 223
    iput-boolean v4, p0, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;->mInTransition:Z

    .line 224
    iget-object v1, p0, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_23

    .line 197
    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_26
        :pswitch_2f
        :pswitch_38
        :pswitch_41
    .end packed-switch
.end method

.method public final setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .registers 9
    .parameter "context"
    .parameter "views"

    .prologue
    const v5, 0x7f020007

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;->getButtonId()I

    move-result v0

    .line 153
    .local v0, buttonId:I
    invoke-virtual {p0}, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;->getIndicatorId()I

    move-result v1

    .line 154
    .local v1, indicatorId:I
    invoke-virtual {p0, p1}, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v2

    packed-switch v2, :pswitch_data_4e

    .line 182
    :goto_14
    :pswitch_14
    return-void

    .line 156
    :pswitch_15
    invoke-virtual {p0, v3}, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;->getButtonImageId(Z)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 157
    invoke-virtual {p2, v1, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_14

    .line 161
    :pswitch_20
    invoke-virtual {p0, v4}, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;->getButtonImageId(Z)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 162
    const v2, 0x7f020008

    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_14

    .line 171
    :pswitch_2e
    invoke-virtual {p0}, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;->isTurningOn()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 172
    invoke-virtual {p0, v4}, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;->getButtonImageId(Z)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 173
    const v2, 0x7f020006

    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_14

    .line 176
    :cond_42
    invoke-virtual {p0, v3}, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;->getButtonImageId(Z)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 177
    invoke-virtual {p2, v1, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_14

    .line 154
    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_15
        :pswitch_20
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_2e
    .end packed-switch
.end method

.method public final toggleState(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    .line 104
    .local v0, currentState:I
    const/4 v1, 0x0

    .line 105
    .local v1, newState:Z
    packed-switch v0, :pswitch_data_30

    .line 118
    :cond_9
    :goto_9
    :pswitch_9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 119
    iget-boolean v3, p0, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;->mInTransition:Z

    if-eqz v3, :cond_2a

    .line 124
    iput-boolean v2, p0, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 129
    :goto_15
    return-void

    .line 107
    :pswitch_16
    const/4 v1, 0x0

    .line 108
    goto :goto_9

    .line 110
    :pswitch_18
    const/4 v1, 0x1

    .line 111
    goto :goto_9

    .line 113
    :pswitch_1a
    iget-object v3, p0, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v3, :cond_9

    .line 114
    iget-object v3, p0, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_28

    move v1, v2

    :goto_27
    goto :goto_9

    :cond_28
    const/4 v1, 0x0

    goto :goto_27

    .line 126
    :cond_2a
    iput-boolean v2, p0, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;->mInTransition:Z

    .line 127
    invoke-virtual {p0, p1, v1}, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_15

    .line 105
    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_18
        :pswitch_16
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_1a
    .end packed-switch
.end method
