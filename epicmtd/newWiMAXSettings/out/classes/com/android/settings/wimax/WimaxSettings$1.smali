.class Lcom/android/settings/wimax/WimaxSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "WimaxSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wimax/WimaxSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wimax/WimaxSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wimax/WimaxSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, action:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    #getter for: Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z
    invoke-static {v2}, Lcom/android/settings/wimax/WimaxSettings;->access$000(Lcom/android/settings/wimax/WimaxSettings;)Z

    move-result v2

    if-eqz v2, :cond_24

    const-string v2, "WimaxSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onReceive] Received action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_24
    const-string v2, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    .line 70
    const-string v2, "WimaxState"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 71
    .local v1, ordinal:I
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    invoke-static {}, Landroid/net/fourG/wimax/WimaxState;->values()[Landroid/net/fourG/wimax/WimaxState;

    move-result-object v3

    aget-object v3, v3, v1

    #setter for: Lcom/android/settings/wimax/WimaxSettings;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;
    invoke-static {v2, v3}, Lcom/android/settings/wimax/WimaxSettings;->access$102(Lcom/android/settings/wimax/WimaxSettings;Landroid/net/fourG/wimax/WimaxState;)Landroid/net/fourG/wimax/WimaxState;

    .line 72
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    const-string v3, "WimaxStateDetail"

    const/16 v4, 0x8

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/android/settings/wimax/WimaxSettings;->m_nCurrentStateDetail:I
    invoke-static {v2, v3}, Lcom/android/settings/wimax/WimaxSettings;->access$202(Lcom/android/settings/wimax/WimaxSettings;I)I

    .line 73
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    iget-object v3, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    #getter for: Lcom/android/settings/wimax/WimaxSettings;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;
    invoke-static {v3}, Lcom/android/settings/wimax/WimaxSettings;->access$100(Lcom/android/settings/wimax/WimaxSettings;)Landroid/net/fourG/wimax/WimaxState;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    #getter for: Lcom/android/settings/wimax/WimaxSettings;->m_nCurrentStateDetail:I
    invoke-static {v4}, Lcom/android/settings/wimax/WimaxSettings;->access$200(Lcom/android/settings/wimax/WimaxSettings;)I

    move-result v4

    #calls: Lcom/android/settings/wimax/WimaxSettings;->handleWimaxStateChanged(Landroid/net/fourG/wimax/WimaxState;I)V
    invoke-static {v2, v3, v4}, Lcom/android/settings/wimax/WimaxSettings;->access$300(Lcom/android/settings/wimax/WimaxSettings;Landroid/net/fourG/wimax/WimaxState;I)V

    .line 74
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    #getter for: Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z
    invoke-static {v2}, Lcom/android/settings/wimax/WimaxSettings;->access$000(Lcom/android/settings/wimax/WimaxSettings;)Z

    move-result v2

    if-eqz v2, :cond_92

    const-string v2, "WimaxSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onReceive] Received wimaxstate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    #getter for: Lcom/android/settings/wimax/WimaxSettings;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;
    invoke-static {v4}, Lcom/android/settings/wimax/WimaxSettings;->access$100(Lcom/android/settings/wimax/WimaxSettings;)Landroid/net/fourG/wimax/WimaxState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", extraStateDetail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    #getter for: Lcom/android/settings/wimax/WimaxSettings;->m_nCurrentStateDetail:I
    invoke-static {v4}, Lcom/android/settings/wimax/WimaxSettings;->access$200(Lcom/android/settings/wimax/WimaxSettings;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .end local v1           #ordinal:I
    :cond_92
    :goto_92
    return-void

    .line 76
    :cond_93
    const-string v2, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_92

    .line 77
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    #getter for: Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z
    invoke-static {v2}, Lcom/android/settings/wimax/WimaxSettings;->access$000(Lcom/android/settings/wimax/WimaxSettings;)Z

    move-result v2

    if-eqz v2, :cond_aa

    const-string v2, "WimaxSettings"

    const-string v3, "[onReceive] Received broadcast WIMAX_STATUS_CHANGED_ACTION"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_aa
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    const-string v3, "4g_state"

    const/4 v4, 0x4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/android/settings/wimax/WimaxSettings;->m_nWimaxStatus:I
    invoke-static {v2, v3}, Lcom/android/settings/wimax/WimaxSettings;->access$402(Lcom/android/settings/wimax/WimaxSettings;I)I

    .line 79
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    iget-object v3, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    #getter for: Lcom/android/settings/wimax/WimaxSettings;->m_nWimaxStatus:I
    invoke-static {v3}, Lcom/android/settings/wimax/WimaxSettings;->access$400(Lcom/android/settings/wimax/WimaxSettings;)I

    move-result v3

    #calls: Lcom/android/settings/wimax/WimaxSettings;->handleWimaxStatusChanged(I)V
    invoke-static {v2, v3}, Lcom/android/settings/wimax/WimaxSettings;->access$500(Lcom/android/settings/wimax/WimaxSettings;I)V

    goto :goto_92
.end method
