.class Lcom/android/server/WimaxService$2;
.super Landroid/content/BroadcastReceiver;
.source "WimaxService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WimaxService;-><init>(Landroid/content/Context;Landroid/net/fourG/wimax/WimaxStateTracker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WimaxService;


# direct methods
.method constructor <init>(Lcom/android/server/WimaxService;)V
    .registers 2
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/server/WimaxService$2;->this$0:Lcom/android/server/WimaxService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 255
    iget-object v0, p0, Lcom/android/server/WimaxService$2;->this$0:Lcom/android/server/WimaxService;

    #setter for: Lcom/android/server/WimaxService;->mAirplaneModeOverwridden:Z
    invoke-static {v0, v3}, Lcom/android/server/WimaxService;->access$402(Lcom/android/server/WimaxService;Z)Z

    .line 256
    iget-object v0, p0, Lcom/android/server/WimaxService$2;->this$0:Lcom/android/server/WimaxService;

    #calls: Lcom/android/server/WimaxService;->updateWimaxStatus()V
    invoke-static {v0}, Lcom/android/server/WimaxService;->access$500(Lcom/android/server/WimaxService;)V

    .line 258
    iget-object v0, p0, Lcom/android/server/WimaxService$2;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v0}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v0

    if-eqz v0, :cond_42

    const-string v0, "WimaxService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Airplane **** getWimaxMode state .. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/WimaxService$2;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v2}, Lcom/android/server/WimaxService;->getWimaxMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isAirplaneModeOn ** "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/WimaxService$2;->this$0:Lcom/android/server/WimaxService;

    #calls: Lcom/android/server/WimaxService;->isAirplaneModeOn()Z
    invoke-static {v2}, Lcom/android/server/WimaxService;->access$600(Lcom/android/server/WimaxService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_42
    iget-object v0, p0, Lcom/android/server/WimaxService$2;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v0}, Lcom/android/server/WimaxService;->getWimaxMode()I

    move-result v0

    if-eq v0, v4, :cond_53

    iget-object v0, p0, Lcom/android/server/WimaxService$2;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v0}, Lcom/android/server/WimaxService;->getWimaxMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6f

    :cond_53
    iget-object v0, p0, Lcom/android/server/WimaxService$2;->this$0:Lcom/android/server/WimaxService;

    #calls: Lcom/android/server/WimaxService;->isAirplaneModeOn()Z
    invoke-static {v0}, Lcom/android/server/WimaxService;->access$600(Lcom/android/server/WimaxService;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 260
    iget-object v0, p0, Lcom/android/server/WimaxService$2;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v0}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v0

    if-eqz v0, :cond_6a

    const-string v0, "WimaxService"

    const-string v1, "Forcing Backhaul disable.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_6a
    iget-object v0, p0, Lcom/android/server/WimaxService$2;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v0, v4, v3}, Lcom/android/server/WimaxService;->setWimaxMode(IZ)I

    .line 263
    :cond_6f
    return-void
.end method
