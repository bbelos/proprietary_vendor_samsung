.class Lcom/android/settings/wimax/WimaxEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "WimaxEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wimax/WimaxEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wimax/WimaxEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/wimax/WimaxEnabler;)V
    .registers 2
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 98
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 100
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    const-string v3, "4g_state"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "4G_previous_state"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    #calls: Lcom/android/settings/wimax/WimaxEnabler;->handleWimaxStatusChanged(II)V
    invoke-static {v2, v3, v4}, Lcom/android/settings/wimax/WimaxEnabler;->access$000(Lcom/android/settings/wimax/WimaxEnabler;II)V

    .line 120
    :cond_21
    :goto_21
    return-void

    .line 103
    :cond_22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 105
    const-string v2, "WimaxState"

    sget-object v3, Landroid/net/fourG/wimax/WimaxState;->UNKNOWN:Landroid/net/fourG/wimax/WimaxState;

    invoke-virtual {v3}, Landroid/net/fourG/wimax/WimaxState;->ordinal()I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 107
    .local v1, ordinal:I
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    invoke-static {}, Landroid/net/fourG/wimax/WimaxState;->values()[Landroid/net/fourG/wimax/WimaxState;

    move-result-object v3

    aget-object v3, v3, v1

    #setter for: Lcom/android/settings/wimax/WimaxEnabler;->currentWimaxState:Landroid/net/fourG/wimax/WimaxState;
    invoke-static {v2, v3}, Lcom/android/settings/wimax/WimaxEnabler;->access$102(Lcom/android/settings/wimax/WimaxEnabler;Landroid/net/fourG/wimax/WimaxState;)Landroid/net/fourG/wimax/WimaxState;

    .line 108
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    const-string v3, "WimaxStateDetail"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/android/settings/wimax/WimaxEnabler;->m_nCurrentStateDetail:I
    invoke-static {v2, v3}, Lcom/android/settings/wimax/WimaxEnabler;->access$202(Lcom/android/settings/wimax/WimaxEnabler;I)I

    .line 109
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    #getter for: Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z
    invoke-static {v2}, Lcom/android/settings/wimax/WimaxEnabler;->access$300(Lcom/android/settings/wimax/WimaxEnabler;)Z

    move-result v2

    if-eqz v2, :cond_86

    const-string v2, "WimaxEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "received WimaxState 33 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    #getter for: Lcom/android/settings/wimax/WimaxEnabler;->mWimaxState:I
    invoke-static {v4}, Lcom/android/settings/wimax/WimaxEnabler;->access$400(Lcom/android/settings/wimax/WimaxEnabler;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", extraStateDetail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    #getter for: Lcom/android/settings/wimax/WimaxEnabler;->m_nCurrentStateDetail:I
    invoke-static {v4}, Lcom/android/settings/wimax/WimaxEnabler;->access$200(Lcom/android/settings/wimax/WimaxEnabler;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_86
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    iget-object v3, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    #getter for: Lcom/android/settings/wimax/WimaxEnabler;->currentWimaxState:Landroid/net/fourG/wimax/WimaxState;
    invoke-static {v3}, Lcom/android/settings/wimax/WimaxEnabler;->access$100(Lcom/android/settings/wimax/WimaxEnabler;)Landroid/net/fourG/wimax/WimaxState;

    move-result-object v3

    const-string v4, "WimaxStateDetail"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    #calls: Lcom/android/settings/wimax/WimaxEnabler;->handleWimaxStateChanged(Landroid/net/fourG/wimax/WimaxState;I)V
    invoke-static {v2, v3, v4}, Lcom/android/settings/wimax/WimaxEnabler;->access$500(Lcom/android/settings/wimax/WimaxEnabler;Landroid/net/fourG/wimax/WimaxState;I)V

    goto :goto_21

    .line 111
    .end local v1           #ordinal:I
    :cond_98
    const-string v2, "android.net.wimax.WIMAX_AUTH_ERROR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 112
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    #getter for: Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z
    invoke-static {v2}, Lcom/android/settings/wimax/WimaxEnabler;->access$300(Lcom/android/settings/wimax/WimaxEnabler;)Z

    move-result v2

    if-eqz v2, :cond_af

    const-string v2, "WimaxEnabler"

    const-string v3, "Received broadcast WIMAX_AUTH_ERROR"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_af
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    const-string v3, "auth_error"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    #calls: Lcom/android/settings/wimax/WimaxEnabler;->handleErrorAuth(I)V
    invoke-static {v2, v3}, Lcom/android/settings/wimax/WimaxEnabler;->access$600(Lcom/android/settings/wimax/WimaxEnabler;I)V

    goto/16 :goto_21

    .line 115
    :cond_bc
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 117
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    const-string v3, "state"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    #setter for: Lcom/android/settings/wimax/WimaxEnabler;->mAirplaneMode:Z
    invoke-static {v2, v3}, Lcom/android/settings/wimax/WimaxEnabler;->access$702(Lcom/android/settings/wimax/WimaxEnabler;Z)Z

    .line 118
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    iget-object v3, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    #getter for: Lcom/android/settings/wimax/WimaxEnabler;->mAirplaneMode:Z
    invoke-static {v3}, Lcom/android/settings/wimax/WimaxEnabler;->access$700(Lcom/android/settings/wimax/WimaxEnabler;)Z

    move-result v3

    #calls: Lcom/android/settings/wimax/WimaxEnabler;->handleAirplaneMode(Z)V
    invoke-static {v2, v3}, Lcom/android/settings/wimax/WimaxEnabler;->access$800(Lcom/android/settings/wimax/WimaxEnabler;Z)V

    goto/16 :goto_21
.end method
