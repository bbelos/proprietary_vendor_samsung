.class Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;
.super Landroid/os/Handler;
.source "WimaxStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/fourG/wimax/WimaxStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DhcpHandler"
.end annotation


# instance fields
.field private mCancelCallback:Z

.field private mIsRenewing:Z

.field private mTarget:Landroid/os/Handler;

.field final synthetic this$0:Landroid/net/fourG/wimax/WimaxStateTracker;


# direct methods
.method public constructor <init>(Landroid/net/fourG/wimax/WimaxStateTracker;Landroid/os/Looper;Landroid/os/Handler;)V
    .registers 4
    .parameter
    .parameter "looper"
    .parameter "target"

    .prologue
    .line 2277
    iput-object p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    .line 2278
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2279
    iput-object p3, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->mTarget:Landroid/os/Handler;

    .line 2280
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .parameter "msg"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 2285
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_408

    .line 2401
    :goto_7
    return-void

    .line 2287
    :sswitch_8
    monitor-enter p0

    .line 2289
    const/4 v6, 0x0

    :try_start_a
    iput-boolean v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->mCancelCallback:Z

    .line 2290
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->mIsRenewing:Z

    .line 2291
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_ee

    .line 2292
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z
    invoke-static {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$100(Landroid/net/fourG/wimax/WimaxStateTracker;)Z

    move-result v6

    if-eqz v6, :cond_36

    const-string v6, "WimaxStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[DhcpHandler:EVENT_DHCP_START]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$200(Landroid/net/fourG/wimax/WimaxStateTracker;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    :cond_36
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$400(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/app/AlarmManager;

    move-result-object v6

    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpRenewIntent:Landroid/app/PendingIntent;
    invoke-static {v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$300(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2304
    new-instance v2, Landroid/net/DhcpResults;

    invoke-direct {v2}, Landroid/net/DhcpResults;-><init>()V

    .line 2305
    .local v2, newInfo:Landroid/net/DhcpResults;
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z
    invoke-static {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$100(Landroid/net/fourG/wimax/WimaxStateTracker;)Z

    move-result v6

    if-eqz v6, :cond_59

    const-string v6, "mydhcp"

    const-string v7, "dhcp start"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    :cond_59
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$200(Landroid/net/fourG/wimax/WimaxStateTracker;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Landroid/net/NetworkUtils;->runDhcp(Ljava/lang/String;Landroid/net/DhcpResults;)Z

    move-result v6

    if-eqz v6, :cond_f1

    .line 2307
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #setter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpResults;
    invoke-static {v6, v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$502(Landroid/net/fourG/wimax/WimaxStateTracker;Landroid/net/DhcpResults;)Landroid/net/DhcpResults;

    .line 2308
    const/4 v0, 0x2

    .line 2313
    .local v0, event:I
    :cond_6b
    :goto_6b
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z
    invoke-static {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$100(Landroid/net/fourG/wimax/WimaxStateTracker;)Z

    move-result v6

    if-eqz v6, :cond_91

    const-string v6, "mydhcp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dhcp over "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpResults;
    invoke-static {v8}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$500(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/net/DhcpResults;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    :cond_91
    monitor-enter p0

    .line 2316
    :try_start_92
    iget-boolean v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->mCancelCallback:Z

    if-nez v6, :cond_e8

    .line 2317
    if-ne v0, v11, :cond_e3

    .line 2318
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z
    invoke-static {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$100(Landroid/net/fourG/wimax/WimaxStateTracker;)Z

    move-result v6

    if-eqz v6, :cond_c0

    const-string v6, "WimaxStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[DhcpHandler:EVENT_DHCP_START] mDhcpInfo.leaseDuration = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpResults;
    invoke-static {v8}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$500(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/net/DhcpResults;

    move-result-object v8

    iget v8, v8, Landroid/net/DhcpResults;->leaseDuration:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    :cond_c0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpResults;
    invoke-static {v8}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$500(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/net/DhcpResults;

    move-result-object v8

    iget v8, v8, Landroid/net/DhcpResults;->leaseDuration:I

    add-int/lit8 v8, v8, -0x1e

    mul-int/lit16 v8, v8, 0x3e8

    int-to-long v8, v8

    add-long v4, v6, v8

    .line 2320
    .local v4, triggerTime:J
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$400(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/app/AlarmManager;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpRenewIntent:Landroid/app/PendingIntent;
    invoke-static {v8}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$300(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v6, v7, v4, v5, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2322
    .end local v4           #triggerTime:J
    :cond_e3
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->mTarget:Landroid/os/Handler;

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2324
    :cond_e8
    monitor-exit p0

    goto/16 :goto_7

    :catchall_eb
    move-exception v6

    monitor-exit p0
    :try_end_ed
    .catchall {:try_start_92 .. :try_end_ed} :catchall_eb

    throw v6

    .line 2291
    .end local v0           #event:I
    .end local v2           #newInfo:Landroid/net/DhcpResults;
    :catchall_ee
    move-exception v6

    :try_start_ef
    monitor-exit p0
    :try_end_f0
    .catchall {:try_start_ef .. :try_end_f0} :catchall_ee

    throw v6

    .line 2310
    .restart local v2       #newInfo:Landroid/net/DhcpResults;
    :cond_f1
    const/4 v0, 0x3

    .line 2311
    .restart local v0       #event:I
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z
    invoke-static {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$100(Landroid/net/fourG/wimax/WimaxStateTracker;)Z

    move-result v6

    if-eqz v6, :cond_6b

    const-string v6, "WimaxStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[DhcpHandler:EVENT_DHCP_START] DHCP request failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6b

    .line 2327
    .end local v0           #event:I
    .end local v2           #newInfo:Landroid/net/DhcpResults;
    :sswitch_118
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z
    invoke-static {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$100(Landroid/net/fourG/wimax/WimaxStateTracker;)Z

    move-result v6

    if-eqz v6, :cond_127

    const-string v6, "WimaxStateTracker"

    const-string v7, "[DhcpHandler:EVENT_IP_RENEW]"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    :cond_127
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z
    invoke-static {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$100(Landroid/net/fourG/wimax/WimaxStateTracker;)Z

    move-result v6

    if-eqz v6, :cond_151

    const-string v6, "WimaxStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "old IP : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpResults;
    invoke-static {v8}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$500(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/net/DhcpResults;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/DhcpResults;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    :cond_151
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpResults;
    invoke-static {v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$500(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/net/DhcpResults;

    move-result-object v7

    iget-object v7, v7, Landroid/net/DhcpResults;->ipAddress:Ljava/lang/String;

    #calls: Landroid/net/fourG/wimax/WimaxStateTracker;->stringToIpAddr(Ljava/lang/String;)I
    invoke-static {v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$700(Ljava/lang/String;)I

    move-result v7

    #setter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mnOldIP:I
    invoke-static {v6, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$602(Landroid/net/fourG/wimax/WimaxStateTracker;I)I

    .line 2331
    monitor-enter p0

    .line 2332
    :try_start_163
    iget-boolean v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->mCancelCallback:Z

    if-eqz v6, :cond_17c

    .line 2333
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z
    invoke-static {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$100(Landroid/net/fourG/wimax/WimaxStateTracker;)Z

    move-result v6

    if-eqz v6, :cond_176

    const-string v6, "WimaxStateTracker"

    const-string v7, "[DhcpHandler:EVENT_IP_RENEW] mCancelCallback is true... ignore this"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2334
    :cond_176
    monitor-exit p0

    goto/16 :goto_7

    .line 2342
    :catchall_179
    move-exception v6

    monitor-exit p0
    :try_end_17b
    .catchall {:try_start_163 .. :try_end_17b} :catchall_179

    throw v6

    .line 2336
    :cond_17c
    :try_start_17c
    iget-boolean v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->mIsRenewing:Z

    if-eqz v6, :cond_192

    .line 2337
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z
    invoke-static {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$100(Landroid/net/fourG/wimax/WimaxStateTracker;)Z

    move-result v6

    if-eqz v6, :cond_18f

    const-string v6, "WimaxStateTracker"

    const-string v7, "[DhcpHandler:EVENT_IP_RENEW] mIsRenewing is true... ignore this"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    :cond_18f
    monitor-exit p0

    goto/16 :goto_7

    .line 2341
    :cond_192
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->mIsRenewing:Z

    .line 2342
    monitor-exit p0
    :try_end_196
    .catchall {:try_start_17c .. :try_end_196} :catchall_179

    .line 2344
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    #setter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpStart:J
    invoke-static {v6, v7, v8}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$802(Landroid/net/fourG/wimax/WimaxStateTracker;J)J

    .line 2345
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z
    invoke-static {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$100(Landroid/net/fourG/wimax/WimaxStateTracker;)Z

    move-result v6

    if-eqz v6, :cond_1d0

    const-string v6, "WimaxStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[handleMessage : DhcpStart is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpStart:J
    invoke-static {v8}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$800(Landroid/net/fourG/wimax/WimaxStateTracker;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2346
    :cond_1d0
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->acquire_WakeLock()V

    .line 2348
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$400(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/app/AlarmManager;

    move-result-object v6

    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpRenewIntent:Landroid/app/PendingIntent;
    invoke-static {v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$300(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2349
    new-instance v3, Landroid/net/DhcpResults;

    invoke-direct {v3}, Landroid/net/DhcpResults;-><init>()V

    .line 2350
    .local v3, renewInfo:Landroid/net/DhcpResults;
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$200(Landroid/net/fourG/wimax/WimaxStateTracker;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Landroid/net/NetworkUtils;->runDhcpRenew(Ljava/lang/String;Landroid/net/DhcpResults;)Z

    move-result v6

    if-eqz v6, :cond_2e4

    .line 2351
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #setter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpResults;
    invoke-static {v6, v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$502(Landroid/net/fourG/wimax/WimaxStateTracker;Landroid/net/DhcpResults;)Landroid/net/DhcpResults;

    .line 2352
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z
    invoke-static {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$100(Landroid/net/fourG/wimax/WimaxStateTracker;)Z

    move-result v6

    if-eqz v6, :cond_220

    const-string v6, "mydhcp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dhcp runDhcpRenew1 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpResults;
    invoke-static {v8}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$500(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/net/DhcpResults;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2353
    :cond_220
    const/4 v0, 0x2

    .line 2354
    .restart local v0       #event:I
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z
    invoke-static {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$100(Landroid/net/fourG/wimax/WimaxStateTracker;)Z

    move-result v6

    if-eqz v6, :cond_24b

    const-string v6, "WimaxStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "New IP : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpResults;
    invoke-static {v8}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$500(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/net/DhcpResults;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/DhcpResults;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    :cond_24b
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpResults;
    invoke-static {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$500(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/net/DhcpResults;

    move-result-object v6

    iget-object v6, v6, Landroid/net/DhcpResults;->ipAddress:Ljava/lang/String;

    #calls: Landroid/net/fourG/wimax/WimaxStateTracker;->stringToIpAddr(Ljava/lang/String;)I
    invoke-static {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$700(Ljava/lang/String;)I

    move-result v1

    .line 2356
    .local v1, nNewIP:I
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mnOldIP:I
    invoke-static {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$600(Landroid/net/fourG/wimax/WimaxStateTracker;)I

    move-result v6

    if-eq v6, v1, :cond_284

    .line 2357
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z
    invoke-static {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$100(Landroid/net/fourG/wimax/WimaxStateTracker;)Z

    move-result v6

    if-eqz v6, :cond_26e

    const-string v6, "WimaxStateTracker"

    const-string v7, "mnOldIP != nNewIP"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    :cond_26e
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$900(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v6, v7, v10, v10}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 2360
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;
    invoke-static {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$1000(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/net/fourG/wimax/Wimax4GInfo;

    move-result-object v6

    sget-object v7, Landroid/net/fourG/net4GSupplicantState;->INVALID:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {v6, v7}, Landroid/net/fourG/wimax/Wimax4GInfo;->setSupplicantState(Landroid/net/fourG/net4GSupplicantState;)V

    .line 2388
    .end local v1           #nNewIP:I
    :cond_284
    :goto_284
    monitor-enter p0

    .line 2389
    :try_start_285
    iget-boolean v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->mCancelCallback:Z

    if-nez v6, :cond_2db

    .line 2390
    if-ne v0, v11, :cond_2d6

    .line 2391
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z
    invoke-static {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$100(Landroid/net/fourG/wimax/WimaxStateTracker;)Z

    move-result v6

    if-eqz v6, :cond_2b3

    const-string v6, "WimaxStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[DhcpHandler:EVENT_IP_RENEW] mDhcpInfo.leaseDuration = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpResults;
    invoke-static {v8}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$500(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/net/DhcpResults;

    move-result-object v8

    iget v8, v8, Landroid/net/DhcpResults;->leaseDuration:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    :cond_2b3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpResults;
    invoke-static {v8}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$500(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/net/DhcpResults;

    move-result-object v8

    iget v8, v8, Landroid/net/DhcpResults;->leaseDuration:I

    add-int/lit8 v8, v8, -0x1e

    mul-int/lit16 v8, v8, 0x3e8

    int-to-long v8, v8

    add-long v4, v6, v8

    .line 2393
    .restart local v4       #triggerTime:J
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$400(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/app/AlarmManager;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpRenewIntent:Landroid/app/PendingIntent;
    invoke-static {v8}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$300(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v6, v7, v4, v5, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2395
    .end local v4           #triggerTime:J
    :cond_2d6
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->mTarget:Landroid/os/Handler;

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2397
    :cond_2db
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->mIsRenewing:Z

    .line 2398
    monitor-exit p0

    goto/16 :goto_7

    :catchall_2e1
    move-exception v6

    monitor-exit p0
    :try_end_2e3
    .catchall {:try_start_285 .. :try_end_2e3} :catchall_2e1

    throw v6

    .line 2363
    .end local v0           #event:I
    :cond_2e4
    const/4 v0, 0x3

    .line 2364
    .restart local v0       #event:I
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z
    invoke-static {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$100(Landroid/net/fourG/wimax/WimaxStateTracker;)Z

    move-result v6

    if-eqz v6, :cond_309

    const-string v6, "WimaxStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[DhcpHandler:EVENT_IP_RENEW] DHCP request failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2366
    :cond_309
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    #setter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpStart:J
    invoke-static {v6, v7, v8}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$802(Landroid/net/fourG/wimax/WimaxStateTracker;J)J

    .line 2367
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z
    invoke-static {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$100(Landroid/net/fourG/wimax/WimaxStateTracker;)Z

    move-result v6

    if-eqz v6, :cond_343

    const-string v6, "WimaxStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[handleMessage : 2nd DhcpStart is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpStart:J
    invoke-static {v8}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$800(Landroid/net/fourG/wimax/WimaxStateTracker;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    :cond_343
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$200(Landroid/net/fourG/wimax/WimaxStateTracker;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Landroid/net/NetworkUtils;->runDhcpRenew(Ljava/lang/String;Landroid/net/DhcpResults;)Z

    move-result v6

    if-eqz v6, :cond_3e0

    .line 2371
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #setter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpResults;
    invoke-static {v6, v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$502(Landroid/net/fourG/wimax/WimaxStateTracker;Landroid/net/DhcpResults;)Landroid/net/DhcpResults;

    .line 2372
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z
    invoke-static {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$100(Landroid/net/fourG/wimax/WimaxStateTracker;)Z

    move-result v6

    if-eqz v6, :cond_37a

    const-string v6, "mydhcp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dhcp runDhcpRenew2 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpResults;
    invoke-static {v8}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$500(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/net/DhcpResults;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2373
    :cond_37a
    const/4 v0, 0x2

    .line 2374
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z
    invoke-static {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$100(Landroid/net/fourG/wimax/WimaxStateTracker;)Z

    move-result v6

    if-eqz v6, :cond_3a5

    const-string v6, "WimaxStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "2nd New IP : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpResults;
    invoke-static {v8}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$500(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/net/DhcpResults;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/DhcpResults;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    :cond_3a5
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpResults;
    invoke-static {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$500(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/net/DhcpResults;

    move-result-object v6

    iget-object v6, v6, Landroid/net/DhcpResults;->ipAddress:Ljava/lang/String;

    #calls: Landroid/net/fourG/wimax/WimaxStateTracker;->stringToIpAddr(Ljava/lang/String;)I
    invoke-static {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$700(Ljava/lang/String;)I

    move-result v1

    .line 2376
    .restart local v1       #nNewIP:I
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mnOldIP:I
    invoke-static {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$600(Landroid/net/fourG/wimax/WimaxStateTracker;)I

    move-result v6

    if-eq v6, v1, :cond_284

    .line 2377
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z
    invoke-static {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$100(Landroid/net/fourG/wimax/WimaxStateTracker;)Z

    move-result v6

    if-eqz v6, :cond_3c8

    const-string v6, "WimaxStateTracker"

    const-string v7, "2nd mnOldIP != nNewIP"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2378
    :cond_3c8
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$900(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v6, v7, v10, v10}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 2380
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;
    invoke-static {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$1000(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/net/fourG/wimax/Wimax4GInfo;

    move-result-object v6

    sget-object v7, Landroid/net/fourG/net4GSupplicantState;->INVALID:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {v6, v7}, Landroid/net/fourG/wimax/Wimax4GInfo;->setSupplicantState(Landroid/net/fourG/net4GSupplicantState;)V

    goto/16 :goto_284

    .line 2383
    .end local v1           #nNewIP:I
    :cond_3e0
    const/4 v0, 0x3

    .line 2384
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z
    invoke-static {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$100(Landroid/net/fourG/wimax/WimaxStateTracker;)Z

    move-result v6

    if-eqz v6, :cond_284

    const-string v6, "WimaxStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[DhcpHandler:EVENT_IP_RENEW] 2nd DHCP request failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_284

    .line 2285
    nop

    :sswitch_data_408
    .sparse-switch
        0x5 -> :sswitch_8
        0xa -> :sswitch_118
    .end sparse-switch
.end method

.method public declared-synchronized setCancelCallback(Z)V
    .registers 3
    .parameter "cancelCallback"

    .prologue
    .line 2404
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->mCancelCallback:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 2405
    monitor-exit p0

    return-void

    .line 2404
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
