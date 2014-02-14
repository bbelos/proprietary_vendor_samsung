.class Lcom/samsung/wimax/DM/DM$2;
.super Landroid/content/BroadcastReceiver;
.source "DM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/DM/DM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/DM/DM;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/DM/DM;)V
    .registers 2
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/samsung/wimax/DM/DM$2;->this$0:Lcom/samsung/wimax/DM/DM;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v5, 0x8

    .line 125
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, action:Ljava/lang/String;
    const-string v2, "WiMAX_DM_APP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRecieve intent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v2, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 132
    const-string v2, "WimaxState"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 133
    .local v1, ordinal:I
    iget-object v2, p0, Lcom/samsung/wimax/DM/DM$2;->this$0:Lcom/samsung/wimax/DM/DM;

    invoke-static {}, Landroid/net/fourG/wimax/WimaxState;->values()[Landroid/net/fourG/wimax/WimaxState;

    move-result-object v3

    aget-object v3, v3, v1

    const-string v4, "WimaxStateDetail"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    #calls: Lcom/samsung/wimax/DM/DM;->handleWimaxStateChanged(Landroid/net/fourG/wimax/WimaxState;I)V
    invoke-static {v2, v3, v4}, Lcom/samsung/wimax/DM/DM;->access$600(Lcom/samsung/wimax/DM/DM;Landroid/net/fourG/wimax/WimaxState;I)V

    .line 146
    .end local v1           #ordinal:I
    :cond_3e
    :goto_3e
    return-void

    .line 138
    :cond_3f
    const-string v2, "WimaxStateDetail"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 140
    iget-object v2, p0, Lcom/samsung/wimax/DM/DM$2;->this$0:Lcom/samsung/wimax/DM/DM;

    const-string v3, "WimaxStateDetail"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    #calls: Lcom/samsung/wimax/DM/DM;->handleWimaxStateDetailChanged(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/samsung/wimax/DM/DM;->access$700(Lcom/samsung/wimax/DM/DM;I)Ljava/lang/String;

    goto :goto_3e
.end method
