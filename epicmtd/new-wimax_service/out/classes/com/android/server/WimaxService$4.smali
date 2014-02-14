.class Lcom/android/server/WimaxService$4;
.super Landroid/content/BroadcastReceiver;
.source "WimaxService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WimaxService;
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
    .line 1152
    iput-object p1, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1155
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1157
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 1158
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_1b

    const-string v6, "WimaxService"

    const-string v7, "ACTION_SCREEN_ON"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    :cond_1b
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$700(Lcom/android/server/WimaxService;)Landroid/net/fourG/wimax/WimaxStateTracker;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->SetScreenOff(Z)V

    .line 1160
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->getLinkState()Z

    .line 1372
    :cond_28
    :goto_28
    return-void

    .line 1162
    :cond_29
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 1163
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_40

    const-string v6, "WimaxService"

    const-string v7, "ACTION_SCREEN_OFF"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    :cond_40
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$700(Lcom/android/server/WimaxService;)Landroid/net/fourG/wimax/WimaxStateTracker;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->SetScreenOff(Z)V

    goto :goto_28

    .line 1173
    :cond_4b
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$700(Lcom/android/server/WimaxService;)Landroid/net/fourG/wimax/WimaxStateTracker;

    const-string v6, "com.android.server.Wimax4GManager.action.WIMAX_DHCP_RENEW"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7a

    .line 1174
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_67

    const-string v6, "WimaxService"

    const-string v7, "-----------ACTION_WIMAX_DHCP_RENEW------------"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    :cond_67
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-static {}, Lcom/android/server/WimaxService;->access$900()Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    #calls: Lcom/android/server/WimaxService;->acquire_WakeLock(Landroid/os/PowerManager$WakeLock;)V
    invoke-static {v6, v7}, Lcom/android/server/WimaxService;->access$1000(Lcom/android/server/WimaxService;Landroid/os/PowerManager$WakeLock;)V

    .line 1176
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$700(Lcom/android/server/WimaxService;)Landroid/net/fourG/wimax/WimaxStateTracker;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->notifyIpRenew()V

    goto :goto_28

    .line 1178
    :cond_7a
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_268

    .line 1179
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_91

    const-string v6, "WimaxService"

    const-string v7, "ACTION_BATTERY_CHANGED"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    :cond_91
    const-string v6, "plugged"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1182
    .local v4, nPluggedType:I
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_e6

    const-string v6, "WimaxService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[nPluggedType] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " getWimaxMode() :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v8}, Lcom/android/server/WimaxService;->getWimaxMode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " m_nPluggedType : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_nPluggedType:I
    invoke-static {v8}, Lcom/android/server/WimaxService;->access$1100(Lcom/android/server/WimaxService;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mbUSBTethered : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/server/WimaxService;->access$1200()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    :cond_e6
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_nPluggedType:I
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$1100(Lcom/android/server/WimaxService;)I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1a8

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1a8

    .line 1185
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #setter for: Lcom/android/server/WimaxService;->m_nPluggedType:I
    invoke-static {v6, v4}, Lcom/android/server/WimaxService;->access$1102(Lcom/android/server/WimaxService;I)I

    .line 1186
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_106

    const-string v6, "WimaxService"

    const-string v7, "ACTION_BATTERY_CHANGED : USB CABLE IS PLUGGED"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    :cond_106
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxMode()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_120

    .line 1188
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_28

    const-string v6, "WimaxService"

    const-string v7, "discard - already tethered mode"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28

    .line 1190
    :cond_120
    invoke-static {}, Lcom/android/server/WimaxService;->access$1200()Z

    move-result v6

    if-eqz v6, :cond_28

    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->get4GState()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_28

    .line 1191
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/android/server/WimaxService;->setWimaxMode(IZ)I

    .line 1192
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$700(Lcom/android/server/WimaxService;)Landroid/net/fourG/wimax/WimaxStateTracker;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->clearRetryFlag()V

    .line 1193
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v6

    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v6, v7, :cond_160

    .line 1194
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_158

    const-string v6, "WimaxService"

    const-string v7, "it will connect as tethered mode"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    :cond_158
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/WimaxService;->startScan(Z)Z

    goto/16 :goto_28

    .line 1196
    :cond_160
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v6

    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->SCANNING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v6, v7, :cond_192

    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v6

    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->READY:Landroid/net/fourG/wimax/WimaxState;

    if-eq v6, v7, :cond_192

    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v6

    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->CONNECTING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v6, v7, :cond_192

    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v6

    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->OBTAINING_IPADDR:Landroid/net/fourG/wimax/WimaxState;

    if-eq v6, v7, :cond_192

    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v6

    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v6, v7, :cond_28

    .line 1201
    :cond_192
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_1a1

    const-string v6, "WimaxService"

    const-string v7, "it will disconnect for re-connecting as tethered mode"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    :cond_1a1
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->disconnect()Z

    goto/16 :goto_28

    .line 1206
    :cond_1a8
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_nPluggedType:I
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$1100(Lcom/android/server/WimaxService;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_28

    const/4 v6, 0x2

    if-eq v4, v6, :cond_28

    .line 1207
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #setter for: Lcom/android/server/WimaxService;->m_nPluggedType:I
    invoke-static {v6, v4}, Lcom/android/server/WimaxService;->access$1102(Lcom/android/server/WimaxService;I)I

    .line 1208
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_1c8

    const-string v6, "WimaxService"

    const-string v7, "ACTION_BATTERY_CHANGED : USB CABLE IS UNPLUGGED"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    :cond_1c8
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/server/WimaxService;->access$1202(Z)Z

    .line 1210
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxMode()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_257

    .line 1211
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->get4GState()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_28

    .line 1212
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/server/WimaxService;->setWimaxMode(IZ)I

    .line 1213
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$700(Lcom/android/server/WimaxService;)Landroid/net/fourG/wimax/WimaxStateTracker;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->clearRetryFlag()V

    .line 1214
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v6

    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v6, v7, :cond_20f

    .line 1215
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_207

    const-string v6, "WimaxService"

    const-string v7, "it will connect as normal mode"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    :cond_207
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/WimaxService;->startScan(Z)Z

    goto/16 :goto_28

    .line 1217
    :cond_20f
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v6

    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->SCANNING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v6, v7, :cond_241

    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v6

    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->READY:Landroid/net/fourG/wimax/WimaxState;

    if-eq v6, v7, :cond_241

    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v6

    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->CONNECTING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v6, v7, :cond_241

    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v6

    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->OBTAINING_IPADDR:Landroid/net/fourG/wimax/WimaxState;

    if-eq v6, v7, :cond_241

    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v6

    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v6, v7, :cond_28

    .line 1222
    :cond_241
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_250

    const-string v6, "WimaxService"

    const-string v7, "it will disconnect for re-connecting as normal mode"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    :cond_250
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->disconnect()Z

    goto/16 :goto_28

    .line 1227
    :cond_257
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_28

    const-string v6, "WimaxService"

    const-string v7, "discard - already NOT tethered mode"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28

    .line 1232
    .end local v4           #nPluggedType:I
    :cond_268
    const-string v6, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_353

    .line 1233
    const-string v6, "wifi_state"

    const/16 v7, 0xe

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1234
    .local v3, nApState:I
    const-string v6, "WimaxService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WIFI_AP_STATE_CHANGED_ACTION = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    packed-switch v3, :pswitch_data_5be

    .line 1251
    :pswitch_293
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_28

    const-string v6, "WimaxService"

    const-string v7, "discard - WIFI_AP_STATE_CHANGED_ACTION intent."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28

    .line 1239
    :pswitch_2a4
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxMode()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2e1

    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxMode()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_2e1

    .line 1240
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_28

    const-string v6, "WimaxService"

    const-string v7, "discard - WIFI_AP_STATE_CHANGED_ACTION intent."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28

    .line 1245
    :pswitch_2c7
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxMode()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2e1

    .line 1246
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_28

    const-string v6, "WimaxService"

    const-string v7, "discard - WIFI_AP_STATE_CHANGED_ACTION intent. current mode is wimax tethered."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28

    .line 1256
    :cond_2e1
    iget-object v7, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    const/4 v8, 0x2

    const/16 v6, 0xd

    if-ne v3, v6, :cond_328

    const/4 v6, 0x1

    :goto_2e9
    invoke-virtual {v7, v8, v6}, Lcom/android/server/WimaxService;->setWimaxMode(IZ)I

    .line 1257
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->get4GState()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_321

    .line 1258
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$700(Lcom/android/server/WimaxService;)Landroid/net/fourG/wimax/WimaxStateTracker;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->clearRetryFlag()V

    .line 1259
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v6

    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v6, v7, :cond_32a

    .line 1260
    const/16 v6, 0xd

    if-ne v3, v6, :cond_321

    .line 1261
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_31b

    const-string v6, "WimaxService"

    const-string v7, "it will be start scan to connect as backhaul mode"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    :cond_31b
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/WimaxService;->startScan(Z)Z

    .line 1371
    .end local v3           #nApState:I
    :cond_321
    :goto_321
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #calls: Lcom/android/server/WimaxService;->updateWimaxStatus()V
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$500(Lcom/android/server/WimaxService;)V

    goto/16 :goto_28

    .line 1256
    .restart local v3       #nApState:I
    :cond_328
    const/4 v6, 0x0

    goto :goto_2e9

    .line 1265
    :cond_32a
    const/16 v6, 0xd

    if-ne v3, v6, :cond_33d

    .line 1266
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_343

    const-string v6, "WimaxService"

    const-string v7, "it will be disconnect to re-connect as backhaul mode"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    :cond_33d
    :goto_33d
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->disconnect()Z

    goto :goto_321

    .line 1268
    :cond_343
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_33d

    const-string v6, "WimaxService"

    const-string v7, "it will be disconnect to re-connect as normal mode"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33d

    .line 1273
    .end local v3           #nApState:I
    :cond_353
    const-string v6, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_579

    .line 1274
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_36a

    const-string v6, "WimaxService"

    const-string v7, "ConnectivityManager.ACTION_TETHER_STATE_CHANGED"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    :cond_36a
    const-string v6, "activeArray"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1276
    .local v1, active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_371
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_3aa

    .line 1277
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_3a7

    const-string v7, "WimaxService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Active_tether["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "] : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    :cond_3a7
    add-int/lit8 v2, v2, 0x1

    goto :goto_371

    .line 1279
    :cond_3aa
    const/4 v5, 0x0

    .line 1280
    .local v5, usbTethered:Z
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_440

    const/4 v5, 0x1

    .line 1283
    :goto_3b2
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_3d6

    const-string v6, "WimaxService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mbUSBTethered = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/server/WimaxService;->access$1200()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    :cond_3d6
    invoke-static {}, Lcom/android/server/WimaxService;->access$1200()Z

    move-result v6

    if-eq v6, v5, :cond_28

    .line 1289
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_3eb

    const-string v6, "WimaxService"

    const-string v7, "TETHERING_WIMAX_REALM_CHANGE_ACTION"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    :cond_3eb
    invoke-static {v5}, Lcom/android/server/WimaxService;->access$1202(Z)Z

    .line 1291
    invoke-virtual {p1, p2}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 1293
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_411

    const-string v6, "WimaxService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "usbTethered = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    :cond_411
    invoke-static {}, Lcom/android/server/WimaxService;->access$1200()Z

    move-result v6

    if-eqz v6, :cond_4ce

    .line 1296
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_426

    const-string v6, "WimaxService"

    const-string v7, "Tethering option is checked"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    :cond_426
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxMode()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_443

    .line 1298
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_28

    const-string v6, "WimaxService"

    const-string v7, "discard - already tethered mode"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28

    .line 1281
    :cond_440
    const/4 v5, 0x0

    goto/16 :goto_3b2

    .line 1300
    :cond_443
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_nPluggedType:I
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$1100(Lcom/android/server/WimaxService;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_28

    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->get4GState()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_28

    .line 1301
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/android/server/WimaxService;->setWimaxMode(IZ)I

    .line 1302
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$700(Lcom/android/server/WimaxService;)Landroid/net/fourG/wimax/WimaxStateTracker;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->clearRetryFlag()V

    .line 1303
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v6

    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v6, v7, :cond_486

    .line 1304
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_47e

    const-string v6, "WimaxService"

    const-string v7, "it will connect as tethered mode"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    :cond_47e
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/WimaxService;->startScan(Z)Z

    goto/16 :goto_28

    .line 1306
    :cond_486
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v6

    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->SCANNING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v6, v7, :cond_4b8

    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v6

    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->READY:Landroid/net/fourG/wimax/WimaxState;

    if-eq v6, v7, :cond_4b8

    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v6

    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->CONNECTING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v6, v7, :cond_4b8

    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v6

    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->OBTAINING_IPADDR:Landroid/net/fourG/wimax/WimaxState;

    if-eq v6, v7, :cond_4b8

    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v6

    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v6, v7, :cond_28

    .line 1311
    :cond_4b8
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_4c7

    const-string v6, "WimaxService"

    const-string v7, "it will disconnect for re-connecting as tethered mode"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    :cond_4c7
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->disconnect()Z

    goto/16 :goto_28

    .line 1317
    :cond_4ce
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_4dd

    const-string v6, "WimaxService"

    const-string v7, "Tethering option is unchecked"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    :cond_4dd
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxMode()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_568

    .line 1319
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->get4GState()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_28

    .line 1320
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/server/WimaxService;->setWimaxMode(IZ)I

    .line 1321
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$700(Lcom/android/server/WimaxService;)Landroid/net/fourG/wimax/WimaxStateTracker;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->clearRetryFlag()V

    .line 1322
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v6

    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v6, v7, :cond_520

    .line 1323
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_518

    const-string v6, "WimaxService"

    const-string v7, "it will connect as normal mode"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    :cond_518
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/WimaxService;->startScan(Z)Z

    goto/16 :goto_28

    .line 1325
    :cond_520
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v6

    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->SCANNING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v6, v7, :cond_552

    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v6

    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->READY:Landroid/net/fourG/wimax/WimaxState;

    if-eq v6, v7, :cond_552

    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v6

    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->CONNECTING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v6, v7, :cond_552

    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v6

    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->OBTAINING_IPADDR:Landroid/net/fourG/wimax/WimaxState;

    if-eq v6, v7, :cond_552

    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v6

    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v6, v7, :cond_28

    .line 1330
    :cond_552
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_561

    const-string v6, "WimaxService"

    const-string v7, "it will disconnect for re-connecting as normal mode"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    :cond_561
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->disconnect()Z

    goto/16 :goto_28

    .line 1335
    :cond_568
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_28

    const-string v6, "WimaxService"

    const-string v7, "discard - already NOT tethered mode"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28

    .line 1358
    .end local v1           #active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #i:I
    .end local v5           #usbTethered:Z
    :cond_579
    const-string v6, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 1359
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_590

    const-string v6, "WimaxService"

    const-string v7, "@@@@@ ACTION_SHUTDOWN @@@@@"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    :cond_590
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->get4GState()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_5a2

    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->get4GState()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_321

    .line 1361
    :cond_5a2
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxMode()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5b2

    .line 1362
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/server/WimaxService;->setWimaxMode(IZ)I

    .line 1364
    :cond_5b2
    iget-object v6, p0, Lcom/android/server/WimaxService$4;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$700(Lcom/android/server/WimaxService;)Landroid/net/fourG/wimax/WimaxStateTracker;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->disconnectAndStop()Z

    goto/16 :goto_28

    .line 1236
    nop

    :pswitch_data_5be
    .packed-switch 0xb
        :pswitch_2a4
        :pswitch_293
        :pswitch_2c7
        :pswitch_2a4
    .end packed-switch
.end method
