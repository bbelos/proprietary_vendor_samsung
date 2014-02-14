.class public Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;
.super Landroid/app/Activity;
.source "WiMAXLineTest.java"

# interfaces
.implements Lcom/samsung/wimax/wimaxlinetest/CTMsgDefine;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final HIM_MNG_RET_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WLT MSG"

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "WiMAXLineTest"

.field public static final WIMAX_LINE_TEST_FAIL_RESPONSE_VAL:Ljava/lang/String; = "NG"

.field public static final WIMAX_LINE_TEST_LAUNCH_ACTION:Ljava/lang/String; = "com.android.samsungtest.wimaxtest.App"

.field public static final WIMAX_LINE_TEST_LAUNCH_OFF:Ljava/lang/String; = "AppOff"

.field public static final WIMAX_LINE_TEST_LAUNCH_ON:Ljava/lang/String; = "AppOn"

.field public static final WIMAX_LINE_TEST_MAC_ACTION:Ljava/lang/String; = "com.android.samsungtest.wimaxtest.MAC"

.field public static final WIMAX_LINE_TEST_MAC_READ:Ljava/lang/String; = "MacRead"

.field public static final WIMAX_LINE_TEST_MAC_READ_RESPONSE:Ljava/lang/String; = "MacRead"

.field public static final WIMAX_LINE_TEST_MAC_RESPONSE_ACTION:Ljava/lang/String; = "com.android.samsungtest.wimaxtest.MACResponse"

.field public static final WIMAX_LINE_TEST_MAC_WRITE:Ljava/lang/String; = "MacWrite"

.field public static final WIMAX_LINE_TEST_RESPONSE:Ljava/lang/String; = "Response"

.field public static final WIMAX_LINE_TEST_RESPONSE_ACTION:Ljava/lang/String; = "com.android.samsungtest.wimaxtest.Response"

.field public static final WIMAX_LINE_TEST_SMDTEST_ACTION:Ljava/lang/String; = "com.android.samsungtest.wimaxtest.SMDTEST"

.field public static final WIMAX_LINE_TEST_SMD_BOOT_WRITE:Ljava/lang/String; = "BootWrite"

.field public static final WIMAX_LINE_TEST_SMD_MODEM_OFF:Ljava/lang/String; = "ModemOff"

.field public static final WIMAX_LINE_TEST_SMD_MODEM_ON:Ljava/lang/String; = "ModemOn"

.field public static final WIMAX_LINE_TEST_SUCCESS_RESPONSE_VAL:Ljava/lang/String; = "OK"

.field public static m_ret:Z

.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field R_Count:I

.field private Receiver_LT:Landroid/content/BroadcastReceiver;

.field SOutdata:Ljava/lang/String;

.field W_Count:I

.field private doUpdateGUI:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field protected mHandler:Landroid/os/Handler;

.field private mTask:Ljava/lang/Runnable;

.field mWiMAXNative:Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;

.field mWimaxintent:Landroid/content/IntentFilter;

.field private m_bpower:Z

.field private retdata:Ljava/lang/String;

.field rev_code:I

.field rev_data:Ljava/lang/String;

.field rev_gId:I

.field rev_msgId:I

.field sInmacdata:Ljava/lang/String;

.field thr:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->m_ret:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    iput v0, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->R_Count:I

    .line 34
    iput-boolean v0, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->m_bpower:Z

    .line 36
    const-string v0, "READMAC"

    iput-object v0, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->SOutdata:Ljava/lang/String;

    .line 37
    const-string v0, "1"

    iput-object v0, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->retdata:Ljava/lang/String;

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mHandler:Landroid/os/Handler;

    .line 45
    new-instance v0, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;

    invoke-direct {v0}, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;-><init>()V

    iput-object v0, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mWiMAXNative:Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;

    .line 76
    new-instance v0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest$1;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest$1;-><init>(Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;)V

    iput-object v0, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->Receiver_LT:Landroid/content/BroadcastReceiver;

    .line 877
    new-instance v0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest$2;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest$2;-><init>(Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;)V

    iput-object v0, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mTask:Ljava/lang/Runnable;

    .line 891
    new-instance v0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest$3;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest$3;-><init>(Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;)V

    iput-object v0, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->doUpdateGUI:Ljava/lang/Runnable;

    .line 924
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mTask:Ljava/lang/Runnable;

    const-string v3, "RecvCTMsg"

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->thr:Ljava/lang/Thread;

    return-void
.end method

.method private MacAck()V
    .registers 5

    .prologue
    .line 927
    const-string v2, "WLT MSG"

    const-string v3, "<<<< CT_SYS_INFO_MAC_ADDR "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    const-wide/16 v2, 0x5dc

    :try_start_9
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_c} :catch_2b

    .line 936
    :goto_c
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.samsungtest.wimaxtest.MACResponse"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 937
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "Response"

    const-string v3, "OK"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 938
    iget-object v2, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_30

    .line 939
    iget-object v2, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 940
    const-string v2, "WLT MSG"

    const-string v3, "WRITEMAC_RETURNVAL : sendBroadcast (Success)!!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    :goto_2a
    return-void

    .line 931
    .end local v1           #intent:Landroid/content/Intent;
    :catch_2b
    move-exception v0

    .line 933
    .local v0, e1:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_c

    .line 943
    .end local v0           #e1:Ljava/lang/InterruptedException;
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_30
    const-string v2, "WLT MSG"

    const-string v3, "WRITEMAC_RETURNVAL :  mContext = null!!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a
.end method

.method private ProcessData(Lcom/samsung/wimax/wimaxlinetest/WiMAXNative$CTMsgPkt;)V
    .registers 9
    .parameter "msgPkt"

    .prologue
    const/4 v6, 0x1

    .line 950
    iget v4, p1, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative$CTMsgPkt;->code:I

    if-ne v4, v6, :cond_a1

    .line 951
    iget v4, p1, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative$CTMsgPkt;->gId:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_86

    .line 952
    iget v4, p1, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative$CTMsgPkt;->msgId:I

    if-ne v4, v6, :cond_6b

    .line 953
    iget-object v0, p1, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    .line 954
    .local v0, data:Ljava/lang/String;
    const-string v4, "WLT MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CT_SYS_INFO_MAD_ADDR]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    move-object v3, v0

    .line 956
    .local v3, retmacdata:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.samsungtest.wimaxtest.MACResponse"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 957
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "MacRead"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 960
    iget-object v4, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_63

    .line 961
    iget-object v4, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 963
    const-string v4, "WLT MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "READMAC_RETURNVAL : sendBroadcast : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    :goto_56
    const v4, 0x7f080124

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 971
    .local v1, eTxt:Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 986
    .end local v0           #data:Ljava/lang/String;
    .end local v1           #eTxt:Landroid/widget/TextView;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #retmacdata:Ljava/lang/String;
    :goto_62
    return-void

    .line 967
    .restart local v0       #data:Ljava/lang/String;
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v3       #retmacdata:Ljava/lang/String;
    :cond_63
    const-string v4, "WLT MSG"

    const-string v5, "READMAC_RETURNVAL :  mContext = null!!!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    .line 974
    .end local v0           #data:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #retmacdata:Ljava/lang/String;
    :cond_6b
    const-string v4, "WLT MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "msgPkt.msgId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative$CTMsgPkt;->msgId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    .line 979
    :cond_86
    const-string v4, "WLT MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "msgPkt.gId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative$CTMsgPkt;->gId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    .line 984
    :cond_a1
    const-string v4, "WLT MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "msgPkt.code : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative$CTMsgPkt;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62
.end method

.method static synthetic access$000(Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->doUpdateGUI:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;Lcom/samsung/wimax/wimaxlinetest/WiMAXNative$CTMsgPkt;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->ProcessData(Lcom/samsung/wimax/wimaxlinetest/WiMAXNative$CTMsgPkt;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->MacAck()V

    return-void
.end method

.method private acquire_WakeLock(Landroid/os/PowerManager$WakeLock;)V
    .registers 4
    .parameter "wl"

    .prologue
    .line 276
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 278
    const-string v0, "WLT MSG"

    const-string v1, "------already acquired----------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :goto_d
    return-void

    .line 282
    :cond_e
    const-string v0, "WLT MSG"

    const-string v1, "------will be acquired----------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_d
.end method


# virtual methods
.method public Check_Cal()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 860
    iget-object v1, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mWiMAXNative:Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;

    invoke-virtual {v1}, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;->WiMAXCheckCal()Z

    move-result v1

    sput-boolean v1, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->m_ret:Z

    .line 862
    const-wide/16 v1, 0xc8

    :try_start_b
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_e} :catch_23

    .line 868
    :goto_e
    sget-boolean v1, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->m_ret:Z

    if-eqz v1, :cond_28

    .line 869
    const-string v1, "WLT MSG"

    const-string v2, "Check Calibration >>> success!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    const-string v1, "Check Calibration >>> success !!!!!"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 875
    :goto_22
    return-void

    .line 863
    :catch_23
    move-exception v0

    .line 865
    .local v0, e1:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_e

    .line 872
    .end local v0           #e1:Ljava/lang/InterruptedException;
    :cond_28
    const-string v1, "WLT MSG"

    const-string v2, "Check Calibration >>> fail !!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    const-string v1, "Check Calibration >>> fail !!!!!"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_22
.end method

.method public Check_Cer()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 840
    iget-object v1, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mWiMAXNative:Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;

    invoke-virtual {v1}, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;->WiMAXCheckCer()Z

    move-result v1

    sput-boolean v1, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->m_ret:Z

    .line 842
    const-wide/16 v1, 0xc8

    :try_start_b
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_e} :catch_23

    .line 848
    :goto_e
    sget-boolean v1, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->m_ret:Z

    if-eqz v1, :cond_28

    .line 849
    const-string v1, "WLT MSG"

    const-string v2, "Check authentication >>> success!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    const-string v1, "Check authentication >>> success !!!!!"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 855
    :goto_22
    return-void

    .line 843
    :catch_23
    move-exception v0

    .line 845
    .local v0, e1:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_e

    .line 852
    .end local v0           #e1:Ljava/lang/InterruptedException;
    :cond_28
    const-string v1, "WLT MSG"

    const-string v2, "Check authentication >>> fail !!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const-string v1, "Check authentication >>> fail !!!!!"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_22
.end method

.method public PowerOnOff(Z)V
    .registers 10
    .parameter "bpower"

    .prologue
    const/4 v7, 0x1

    .line 301
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.samsungtest.wimaxtest.Response"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 303
    .local v4, intent:Landroid/content/Intent;
    if-eqz p1, :cond_fe

    .line 305
    iget-boolean v5, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->m_bpower:Z

    if-eqz v5, :cond_18

    .line 306
    const-string v5, "Already Power On"

    invoke-static {p0, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 460
    :goto_17
    return-void

    .line 308
    :cond_18
    const-string v5, "WLT MSG"

    const-string v6, "Power ON >>> start !!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v1, 0x0

    .line 310
    .local v1, bon:Z
    iget-object v5, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mWiMAXNative:Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;

    invoke-virtual {v5}, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;->WiMAXPowerOn()Z

    move-result v1

    .line 312
    if-ne v1, v7, :cond_ca

    .line 315
    const-wide/16 v5, 0x1f40

    :try_start_2a
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2d
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_2d} :catch_7c

    .line 320
    :goto_2d
    const-string v5, "WLT MSG"

    const-string v6, "Power On >>> success!!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const/4 v3, 0x0

    .local v3, i:I
    :goto_35
    const/16 v5, 0x3c

    if-ge v3, v5, :cond_4c

    .line 324
    const-string v5, "WLT MSG"

    const-string v6, "Device Open >>> start !!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v5, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mWiMAXNative:Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;

    invoke-virtual {v5}, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;->wmxopen()Z

    move-result v5

    sput-boolean v5, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->m_ret:Z

    .line 327
    sget-boolean v5, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->m_ret:Z

    if-eqz v5, :cond_81

    .line 340
    :cond_4c
    sget-boolean v5, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->m_ret:Z

    if-eqz v5, :cond_96

    .line 341
    const-string v5, "WLT MSG"

    const-string v6, "Device open >>> success!!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v5, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    const-string v6, " Power ON Success"

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 344
    iput-boolean v7, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->m_bpower:Z

    .line 346
    const-string v5, "Response"

    const-string v6, "OK"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    iget-object v5, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_8e

    .line 348
    iget-object v5, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 349
    const-string v5, "WLT MSG"

    const-string v6, "POWER_ON_RETURNVAL : sendBroadcast (Success)!!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 316
    .end local v3           #i:I
    :catch_7c
    move-exception v2

    .line 318
    .local v2, e1:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2d

    .line 331
    .end local v2           #e1:Ljava/lang/InterruptedException;
    .restart local v3       #i:I
    :cond_81
    const-wide/16 v5, 0xc8

    :try_start_83
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_86
    .catch Ljava/lang/InterruptedException; {:try_start_83 .. :try_end_86} :catch_89

    .line 322
    :goto_86
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 332
    :catch_89
    move-exception v2

    .line 334
    .restart local v2       #e1:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_86

    .line 353
    .end local v2           #e1:Ljava/lang/InterruptedException;
    :cond_8e
    const-string v5, "WLT MSG"

    const-string v6, "POWER_ON_RETURNVAL :  mContext = null!!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 357
    :cond_96
    const-string v5, "WLT MSG"

    const-string v6, "Device open >>> fail!!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v5, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    const-string v6, "Power On >>> fail !!!!!"

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 360
    const-string v5, "Response"

    const-string v6, "NG"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    iget-object v5, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_c1

    .line 362
    iget-object v5, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 363
    const-string v5, "WLT MSG"

    const-string v6, "POWER_ON_RETURNVAL : sendBroadcast (Fail)!!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 367
    :cond_c1
    const-string v5, "WLT MSG"

    const-string v6, "POWER_ON_RETURNVAL :  mContext = null!!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 374
    .end local v3           #i:I
    :cond_ca
    const-string v5, "WLT MSG"

    const-string v6, "Power On >>> fail!!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v5, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    const-string v6, " Power ON fail"

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 376
    const-string v5, "Response"

    const-string v6, "NG"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    iget-object v5, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_f5

    .line 378
    iget-object v5, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 379
    const-string v5, "WLT MSG"

    const-string v6, "POWER_ON_RETURNVAL : sendBroadcast (Fail)!!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 383
    :cond_f5
    const-string v5, "WLT MSG"

    const-string v6, "POWER_ON_RETURNVAL :  mContext = null!!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 389
    .end local v1           #bon:Z
    :cond_fe
    const-string v5, "WLT MSG"

    const-string v6, "Power OFF >>> start !!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v0, 0x0

    .line 392
    .local v0, boff:Z
    const-string v5, "WLT MSG"

    const-string v6, "Device close >>> start !!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_10e
    const/4 v5, 0x5

    if-ge v3, v5, :cond_11d

    .line 395
    iget-object v5, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mWiMAXNative:Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;

    invoke-virtual {v5}, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;->wmxclose()Z

    move-result v5

    sput-boolean v5, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->m_ret:Z

    .line 396
    sget-boolean v5, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->m_ret:Z

    if-eqz v5, :cond_163

    .line 407
    :cond_11d
    sget-boolean v5, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->m_ret:Z

    if-eqz v5, :cond_170

    .line 408
    const-string v5, "WLT MSG"

    const-string v6, "Device close >>> success !!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :goto_128
    iget-object v5, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mWiMAXNative:Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;

    invoke-virtual {v5}, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;->WiMAXPowerOff()Z

    move-result v0

    .line 425
    const-wide/16 v5, 0xc8

    :try_start_130
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_133
    .catch Ljava/lang/InterruptedException; {:try_start_130 .. :try_end_133} :catch_197

    .line 430
    :goto_133
    if-eqz v0, :cond_1a5

    .line 431
    const-string v5, "WLT MSG"

    const-string v6, "Power Off >>> success!!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v5, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    const-string v6, " Power OFF Sucess"

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 433
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->m_bpower:Z

    .line 434
    const-string v5, "Response"

    const-string v6, "OK"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    iget-object v5, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_19c

    .line 436
    iget-object v5, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 437
    const-string v5, "WLT MSG"

    const-string v6, "POWER_OFF_RETURNVAL : sendBroadcast (Success)!!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 400
    :cond_163
    const-wide/16 v5, 0x64

    :try_start_165
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_168
    .catch Ljava/lang/InterruptedException; {:try_start_165 .. :try_end_168} :catch_16b

    .line 393
    :goto_168
    add-int/lit8 v3, v3, 0x1

    goto :goto_10e

    .line 401
    :catch_16b
    move-exception v2

    .line 403
    .restart local v2       #e1:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_168

    .line 411
    .end local v2           #e1:Ljava/lang/InterruptedException;
    :cond_170
    const-string v5, "WLT MSG"

    const-string v6, "Device close >>> fail !!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const-string v5, "Response"

    const-string v6, "NG"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    iget-object v5, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_18f

    .line 414
    iget-object v5, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 415
    const-string v5, "WLT MSG"

    const-string v6, "POWER_OFF_RETURNVAL : sendBroadcast! (NG0)!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_128

    .line 419
    :cond_18f
    const-string v5, "WLT MSG"

    const-string v6, "POWER_OFF_RETURNVAL Off >>> mContext = null!!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_128

    .line 426
    :catch_197
    move-exception v2

    .line 428
    .restart local v2       #e1:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_133

    .line 441
    .end local v2           #e1:Ljava/lang/InterruptedException;
    :cond_19c
    const-string v5, "WLT MSG"

    const-string v6, "POWER_OFF_RETURNVAL >>> mContext != null!!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 447
    :cond_1a5
    const-string v5, "WLT MSG"

    const-string v6, "Power Off >>> fail !!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v5, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    const-string v6, " Power OFF fail"

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 449
    const-string v5, "Response"

    const-string v6, "NG"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    iget-object v5, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_1d0

    .line 451
    iget-object v5, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 452
    const-string v5, "WLT MSG"

    const-string v6, "POWER_OFF_RETURNVAL : sendBroadcast! (Fail)!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 456
    :cond_1d0
    const-string v5, "WLT MSG"

    const-string v6, "POWER_OFF_RETURNVAL Off >>> mContext = null!!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17
.end method

.method public WriteMAC()V
    .registers 15

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 693
    const-string v8, "WLT MSG"

    const-string v9, "Button : write mac>>>>>>"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    const-string v8, "WLT MSG"

    const-string v9, "Power ON>>>>>>"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const/4 v0, 0x0

    .line 696
    .local v0, bon:Z
    iget-boolean v8, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->m_bpower:Z

    if-eqz v8, :cond_ae

    .line 697
    const-string v8, "WLT MSG"

    const-string v9, "Already power on!!!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :goto_1c
    sget-boolean v8, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->m_ret:Z

    if-nez v8, :cond_71

    .line 720
    const/4 v3, 0x0

    .local v3, i:I
    :goto_21
    const/16 v8, 0xa

    if-ge v3, v8, :cond_57

    .line 722
    const-string v8, "WLT MSG"

    const-string v9, "Device Open >>> start !!!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-boolean v8, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->m_bpower:Z

    if-eqz v8, :cond_33

    const/4 v8, 0x5

    if-ne v3, v8, :cond_4b

    .line 725
    :cond_33
    iget-object v8, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mWiMAXNative:Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;

    invoke-virtual {v8}, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;->WiMAXPowerOn()Z

    move-result v0

    .line 726
    sput-boolean v13, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->m_ret:Z

    .line 727
    if-ne v0, v12, :cond_dc

    .line 728
    iput-boolean v12, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->m_bpower:Z

    .line 730
    const-wide/16 v8, 0x1194

    :try_start_41
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_41 .. :try_end_44} :catch_d6

    .line 735
    :goto_44
    const-string v8, "WLT MSG"

    const-string v9, "Power On >>> success!!!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_4b
    :goto_4b
    iget-object v8, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mWiMAXNative:Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;

    invoke-virtual {v8}, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;->wmxopen()Z

    move-result v8

    sput-boolean v8, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->m_ret:Z

    .line 745
    sget-boolean v8, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->m_ret:Z

    if-eqz v8, :cond_e9

    .line 755
    :cond_57
    const-string v8, "WLT MSG"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OpenDevice : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->m_ret:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    .end local v3           #i:I
    :cond_71
    sget-boolean v8, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->m_ret:Z

    if-nez v8, :cond_ff

    .line 761
    const-string v8, "WLT MSG"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Device Open >>> fail!!! : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->m_ret:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.android.samsungtest.wimaxtest.MACResponse"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 763
    .local v4, intent:Landroid/content/Intent;
    const-string v8, "Response"

    const-string v9, "NG"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 764
    iget-object v8, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_f7

    .line 765
    iget-object v8, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 766
    const-string v8, "WLT MSG"

    const-string v9, "WRITEMAC_RETURNVAL : sendBroadcast (Fail)!!!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :goto_ad
    return-void

    .line 700
    .end local v4           #intent:Landroid/content/Intent;
    :cond_ae
    iget-object v8, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mWiMAXNative:Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;

    invoke-virtual {v8}, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;->WiMAXPowerOn()Z

    move-result v0

    .line 701
    sput-boolean v13, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->m_ret:Z

    .line 703
    if-ne v0, v12, :cond_cd

    .line 704
    iput-boolean v12, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->m_bpower:Z

    .line 707
    const-wide/16 v8, 0x1194

    :try_start_bc
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_bf
    .catch Ljava/lang/InterruptedException; {:try_start_bc .. :try_end_bf} :catch_c8

    .line 712
    :goto_bf
    const-string v8, "WLT MSG"

    const-string v9, "Power On >>> success!!!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c

    .line 708
    :catch_c8
    move-exception v1

    .line 710
    .local v1, e1:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_bf

    .line 715
    .end local v1           #e1:Ljava/lang/InterruptedException;
    :cond_cd
    const-string v8, "WLT MSG"

    const-string v9, "Power On >>> fail!!!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c

    .line 731
    .restart local v3       #i:I
    :catch_d6
    move-exception v1

    .line 733
    .restart local v1       #e1:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_44

    .line 738
    .end local v1           #e1:Ljava/lang/InterruptedException;
    :cond_dc
    iput-boolean v13, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->m_bpower:Z

    .line 739
    const-string v8, "WLT MSG"

    const-string v9, "Power On >>> fail!!!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    const/16 v3, 0xa

    goto/16 :goto_4b

    .line 749
    :cond_e9
    const-wide/16 v8, 0xc8

    :try_start_eb
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_ee
    .catch Ljava/lang/InterruptedException; {:try_start_eb .. :try_end_ee} :catch_f2

    .line 720
    :goto_ee
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_21

    .line 750
    :catch_f2
    move-exception v1

    .line 752
    .restart local v1       #e1:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_ee

    .line 770
    .end local v1           #e1:Ljava/lang/InterruptedException;
    .end local v3           #i:I
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_f7
    const-string v8, "WLT MSG"

    const-string v9, "WRITEMAC_RETURNVAL :  mContext = null!!!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ad

    .line 777
    .end local v4           #intent:Landroid/content/Intent;
    :cond_ff
    const v8, 0x7f080122

    invoke-virtual {p0, v8}, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 778
    .local v2, eTxt:Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 779
    .local v7, strdata:Ljava/lang/String;
    if-eqz v7, :cond_1c7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1c7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xc

    if-ne v8, v9, :cond_1c7

    .line 781
    const-string v8, "WLT MSG"

    const-string v9, "Write MAC >>> start !!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    const-string v8, "WLT MSG"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Input MACaddr : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const-string v8, "[[A-F][a-f][0-9]][[A-F][a-f][0-9]][[A-F][a-f][0-9]][[A-F][a-f][0-9]][[A-F][a-f][0-9]][[A-F][a-f][0-9]][[A-F][a-f][0-9]][[A-F][a-f][0-9]][[A-F][a-f][0-9]][[A-F][a-f][0-9]][[A-F][a-f][0-9]][[A-F][a-f][0-9]]"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 784
    .local v6, p:Ljava/util/regex/Pattern;
    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 785
    .local v5, m:Ljava/util/regex/Matcher;
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.android.samsungtest.wimaxtest.MACResponse"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 786
    .restart local v4       #intent:Landroid/content/Intent;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_19e

    .line 788
    iget-object v8, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->thr:Ljava/lang/Thread;

    invoke-virtual {v8}, Ljava/lang/Thread;->isAlive()Z

    move-result v8

    if-eqz v8, :cond_185

    .line 790
    const-string v8, "WLT MSG"

    const-string v9, "---------thread is alive--------"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :goto_165
    const-string v8, "WLT MSG"

    const-string v9, "m.matches() true !"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    iget-object v8, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mWiMAXNative:Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;

    const/4 v9, 0x2

    const/4 v10, 0x3

    invoke-virtual {v8, v9, v10, v12, v7}, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 801
    iget-object v8, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mWiMAXNative:Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;

    invoke-virtual {v8, v13}, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;->SendCTCmd(I)V

    .line 802
    iget-object v8, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    const-string v9, " Write MAC Sucess"

    invoke-static {v8, v9, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_ad

    .line 794
    :cond_185
    new-instance v8, Ljava/lang/Thread;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mTask:Ljava/lang/Runnable;

    const-string v11, "RecvCTMsg"

    invoke-direct {v8, v9, v10, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->thr:Ljava/lang/Thread;

    .line 795
    iget-object v8, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->thr:Ljava/lang/Thread;

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 796
    const-string v8, "WLT MSG"

    const-string v9, "---------thread start--------"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_165

    .line 807
    :cond_19e
    const-string v8, "WLT MSG"

    const-string v9, "m.matches() false !"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    const-string v8, "Response"

    const-string v9, "NG"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 809
    iget-object v8, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_1be

    .line 810
    iget-object v8, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 811
    const-string v8, "WLT MSG"

    const-string v9, "WRITEMAC_RETURNVAL : sendBroadcast (Fail)!!!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ad

    .line 815
    :cond_1be
    const-string v8, "WLT MSG"

    const-string v9, "WRITEMAC_RETURNVAL :  mContext = null!!!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ad

    .line 821
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #m:Ljava/util/regex/Matcher;
    .end local v6           #p:Ljava/util/regex/Pattern;
    :cond_1c7
    const-string v8, "WLT MSG"

    const-string v9, "WriteMAC : invalid data"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.android.samsungtest.wimaxtest.MACResponse"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 823
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v8, "Response"

    const-string v9, "NG"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 825
    iget-object v8, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_1ee

    .line 826
    iget-object v8, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 827
    const-string v8, "WLT MSG"

    const-string v9, "WRITEMAC_RETURNVAL : sendBroadcast (NG)!!!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ad

    .line 831
    :cond_1ee
    const-string v8, "WLT MSG"

    const-string v9, "WRITEMAC_RETURNVAL :  mContext = null!!!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ad
.end method

.method public Write_EEPROM()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 990
    const-string v3, "WLT MSG"

    const-string v4, "Write EEPROM >>> start !!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    const/4 v2, 0x0

    .line 993
    .local v2, ret:Z
    iget-object v3, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mWiMAXNative:Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;

    invoke-virtual {v3}, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;->WiMAXEEPROMWrite()Z

    move-result v2

    .line 995
    const-wide/16 v3, 0x64

    :try_start_11
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_14} :catch_5e

    .line 1000
    :goto_14
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.samsungtest.wimaxtest.Response"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1001
    .local v1, intent:Landroid/content/Intent;
    if-ne v2, v5, :cond_63

    .line 1002
    const-string v3, "WLT MSG"

    const-string v4, "Writing EEPROM >>> success!!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    const-string v3, "Response"

    const-string v4, "OK"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1004
    iget-object v3, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    const-string v4, " Write EEPROM Sucess"

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1012
    :goto_36
    iget-object v3, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_7d

    .line 1013
    iget-object v3, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1014
    const-string v3, "WLT MSG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EEPROMWRITE_RETURNVAL : sendBroadcast ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")!!!!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    :goto_5d
    return-void

    .line 996
    .end local v1           #intent:Landroid/content/Intent;
    :catch_5e
    move-exception v0

    .line 998
    .local v0, e1:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_14

    .line 1008
    .end local v0           #e1:Ljava/lang/InterruptedException;
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_63
    const-string v3, "WLT MSG"

    const-string v4, "Writing EEPROM >>> fail !!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    const-string v3, "Response"

    const-string v4, "NG"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1010
    iget-object v3, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    const-string v4, " Write EEPROM Fail"

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_36

    .line 1018
    :cond_7d
    const-string v3, "WLT MSG"

    const-string v4, "EEPROMWRITE_RETURNVAL :  mContext = null!!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d
.end method

.method public Write_Read_MAC(Z)V
    .registers 16
    .parameter "bmac"

    .prologue
    .line 463
    const-string v9, "WLT MSG"

    const-string v10, "Read / Write MAC >>> start !!!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const/4 v0, 0x0

    .line 465
    .local v0, bon:Z
    iget-boolean v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->m_bpower:Z

    if-eqz v9, :cond_aa

    .line 466
    const-string v9, "WLT MSG"

    const-string v10, "Already power on!!!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :goto_13
    sget-boolean v9, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->m_ret:Z

    if-nez v9, :cond_6b

    .line 489
    const/4 v2, 0x0

    .local v2, i:I
    :goto_18
    const/16 v9, 0xa

    if-ge v2, v9, :cond_51

    .line 491
    const-string v9, "WLT MSG"

    const-string v10, "Device Open >>> start !!!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-boolean v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->m_bpower:Z

    if-eqz v9, :cond_2a

    const/4 v9, 0x5

    if-ne v2, v9, :cond_45

    .line 494
    :cond_2a
    iget-object v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mWiMAXNative:Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;

    invoke-virtual {v9}, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;->WiMAXPowerOn()Z

    move-result v0

    .line 495
    const/4 v9, 0x0

    sput-boolean v9, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->m_ret:Z

    .line 496
    const/4 v9, 0x1

    if-ne v0, v9, :cond_e4

    .line 497
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->m_bpower:Z

    .line 499
    const-wide/16 v9, 0x1194

    :try_start_3b
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_3e} :catch_de

    .line 504
    :goto_3e
    const-string v9, "WLT MSG"

    const-string v10, "Power On >>> success!!!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_45
    :goto_45
    iget-object v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mWiMAXNative:Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;

    invoke-virtual {v9}, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;->wmxopen()Z

    move-result v9

    sput-boolean v9, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->m_ret:Z

    .line 514
    sget-boolean v9, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->m_ret:Z

    if-eqz v9, :cond_f2

    .line 524
    :cond_51
    const-string v9, "WLT MSG"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OpenDevice : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v11, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->m_ret:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    .end local v2           #i:I
    :cond_6b
    sget-boolean v9, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->m_ret:Z

    if-nez v9, :cond_130

    .line 530
    const-string v9, "WLT MSG"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Device Open >>> fail!!! : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v11, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->m_ret:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    if-eqz p1, :cond_108

    .line 532
    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.android.samsungtest.wimaxtest.MACResponse"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 533
    .local v8, wmacintent:Landroid/content/Intent;
    const-string v9, "Response"

    const-string v10, "NG"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    iget-object v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    if-eqz v9, :cond_100

    .line 535
    iget-object v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 536
    const-string v9, "WLT MSG"

    const-string v10, "WRITEMAC_RETURNVAL : sendBroadcast (Fail)!!!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    .end local v8           #wmacintent:Landroid/content/Intent;
    :cond_a9
    :goto_a9
    return-void

    .line 469
    :cond_aa
    iget-object v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mWiMAXNative:Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;

    invoke-virtual {v9}, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;->WiMAXPowerOn()Z

    move-result v0

    .line 470
    const-string v9, "WLT MSG"

    const-string v10, "Power ON>>>>>>"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const/4 v9, 0x0

    sput-boolean v9, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->m_ret:Z

    .line 472
    if-eqz v0, :cond_d2

    .line 473
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->m_bpower:Z

    .line 475
    const-wide/16 v9, 0x1194

    :try_start_c1
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c4
    .catch Ljava/lang/InterruptedException; {:try_start_c1 .. :try_end_c4} :catch_cd

    .line 480
    :goto_c4
    const-string v9, "WLT MSG"

    const-string v10, "Power On >>> success!!!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 476
    :catch_cd
    move-exception v1

    .line 478
    .local v1, e1:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_c4

    .line 483
    .end local v1           #e1:Ljava/lang/InterruptedException;
    :cond_d2
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->m_bpower:Z

    .line 484
    const-string v9, "WLT MSG"

    const-string v10, "Power On >>> fail!!!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 500
    .restart local v2       #i:I
    :catch_de
    move-exception v1

    .line 502
    .restart local v1       #e1:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_3e

    .line 507
    .end local v1           #e1:Ljava/lang/InterruptedException;
    :cond_e4
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->m_bpower:Z

    .line 508
    const-string v9, "WLT MSG"

    const-string v10, "Power On >>> fail!!!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const/16 v2, 0xa

    goto/16 :goto_45

    .line 518
    :cond_f2
    const-wide/16 v9, 0xc8

    :try_start_f4
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_f7
    .catch Ljava/lang/InterruptedException; {:try_start_f4 .. :try_end_f7} :catch_fb

    .line 489
    :goto_f7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_18

    .line 519
    :catch_fb
    move-exception v1

    .line 521
    .restart local v1       #e1:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_f7

    .line 540
    .end local v1           #e1:Ljava/lang/InterruptedException;
    .end local v2           #i:I
    .restart local v8       #wmacintent:Landroid/content/Intent;
    :cond_100
    const-string v9, "WLT MSG"

    const-string v10, "WRITEMAC_RETURNVAL :  mContext = null!!!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a9

    .line 544
    .end local v8           #wmacintent:Landroid/content/Intent;
    :cond_108
    new-instance v7, Landroid/content/Intent;

    const-string v9, "com.android.samsungtest.wimaxtest.MACResponse"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 545
    .local v7, rmacintent:Landroid/content/Intent;
    const-string v9, "Response"

    const-string v10, "NG"

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 546
    iget-object v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    if-eqz v9, :cond_127

    .line 547
    iget-object v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 548
    const-string v9, "WLT MSG"

    const-string v10, "READMAC_RETURNVAL : sendBroadcast (Fail)!!!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a9

    .line 552
    :cond_127
    const-string v9, "WLT MSG"

    const-string v10, "READMAC_RETURNVAL :  mContext = null!!!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a9

    .line 559
    .end local v7           #rmacintent:Landroid/content/Intent;
    :cond_130
    if-eqz p1, :cond_2d0

    .line 560
    iget-object v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->sInmacdata:Ljava/lang/String;

    if-eqz v9, :cond_2a0

    iget-object v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->sInmacdata:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_2a0

    iget-object v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->sInmacdata:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0xc

    if-ne v9, v10, :cond_2a0

    .line 562
    const-string v9, "WLT MSG"

    const-string v10, "Write MAC >>> start !!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const-string v9, "WLT MSG"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Input MACaddr : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->sInmacdata:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const-string v9, "[[A-F][a-f][0-9]][[A-F][a-f][0-9]][[A-F][a-f][0-9]][[A-F][a-f][0-9]][[A-F][a-f][0-9]][[A-F][a-f][0-9]][[A-F][a-f][0-9]][[A-F][a-f][0-9]][[A-F][a-f][0-9]][[A-F][a-f][0-9]][[A-F][a-f][0-9]][[A-F][a-f][0-9]]"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 565
    .local v5, p:Ljava/util/regex/Pattern;
    iget-object v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->sInmacdata:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 566
    .local v4, m:Ljava/util/regex/Matcher;
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.android.samsungtest.wimaxtest.MACResponse"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 567
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_277

    .line 569
    iget-object v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->thr:Ljava/lang/Thread;

    invoke-virtual {v9}, Ljava/lang/Thread;->isAlive()Z

    move-result v9

    if-eqz v9, :cond_24f

    .line 571
    const-string v9, "WLT MSG"

    const-string v10, "---------thread is alive--------"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :goto_191
    const-string v9, "WLT MSG"

    const-string v10, "m.matches() true !"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mWiMAXNative:Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;

    const/4 v10, 0x2

    const/4 v11, 0x3

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->sInmacdata:Ljava/lang/String;

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 582
    iget-object v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mWiMAXNative:Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;->SendCTCmd(I)V

    .line 583
    iget v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->W_Count:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->W_Count:I

    .line 584
    iget v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->W_Count:I

    const/4 v10, 0x2

    if-le v9, v10, :cond_a9

    .line 586
    iget-object v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mWiMAXNative:Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;

    sget v9, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;->rev_code:I

    iput v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->rev_code:I

    .line 587
    iget-object v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mWiMAXNative:Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;

    sget v9, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;->rev_gId:I

    iput v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->rev_gId:I

    .line 588
    iget-object v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mWiMAXNative:Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;

    sget v9, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;->rev_msgId:I

    iput v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->rev_msgId:I

    .line 589
    iget-object v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mWiMAXNative:Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;

    sget-object v9, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;->rev_data:Ljava/lang/String;

    iput-object v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->rev_data:Ljava/lang/String;

    .line 590
    const-string v9, "WLT MSG"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "W_Count : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->W_Count:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", code : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->rev_code:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", gId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->rev_gId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", msgId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->rev_msgId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", data : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->rev_data:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->rev_code:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_a9

    iget v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->rev_gId:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_a9

    iget v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->rev_msgId:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_a9

    iget-object v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->sInmacdata:Ljava/lang/String;

    iget-object v10, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->rev_data:Ljava/lang/String;

    if-ne v9, v10, :cond_a9

    .line 593
    const-string v9, "WLT MSG"

    const-string v10, "<<<< CT_SYS_INFO_MAC_ADDR "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const-wide/16 v9, 0x5dc

    :try_start_233
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_236
    .catch Ljava/lang/InterruptedException; {:try_start_233 .. :try_end_236} :catch_269

    .line 602
    :goto_236
    const-string v9, "Response"

    const-string v10, "OK"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 603
    iget-object v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    if-eqz v9, :cond_26e

    .line 604
    iget-object v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 605
    const-string v9, "WLT MSG"

    const-string v10, "WRITEMAC_RETURNVAL : sendBroadcast (Success)!!!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a9

    .line 575
    :cond_24f
    new-instance v9, Ljava/lang/Thread;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mTask:Ljava/lang/Runnable;

    const-string v12, "RecvCTMsg"

    invoke-direct {v9, v10, v11, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->thr:Ljava/lang/Thread;

    .line 576
    iget-object v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->thr:Ljava/lang/Thread;

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 577
    const-string v9, "WLT MSG"

    const-string v10, "---------thread start--------"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_191

    .line 597
    :catch_269
    move-exception v1

    .line 599
    .restart local v1       #e1:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_236

    .line 608
    .end local v1           #e1:Ljava/lang/InterruptedException;
    :cond_26e
    const-string v9, "WLT MSG"

    const-string v10, "WRITEMAC_RETURNVAL :  mContext = null!!!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a9

    .line 616
    :cond_277
    const-string v9, "WLT MSG"

    const-string v10, "m.matches() false !"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const-string v9, "Response"

    const-string v10, "NG"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 618
    iget-object v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    if-eqz v9, :cond_297

    .line 619
    iget-object v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 620
    const-string v9, "WLT MSG"

    const-string v10, "WRITEMAC_RETURNVAL : sendBroadcast (Fail)!!!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a9

    .line 624
    :cond_297
    const-string v9, "WLT MSG"

    const-string v10, "WRITEMAC_RETURNVAL :  mContext = null!!!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a9

    .line 631
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #m:Ljava/util/regex/Matcher;
    .end local v5           #p:Ljava/util/regex/Pattern;
    :cond_2a0
    const-string v9, "WLT MSG"

    const-string v10, "WriteMAC : invalid data"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.android.samsungtest.wimaxtest.MACResponse"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 633
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v9, "Response"

    const-string v10, "NG"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 635
    iget-object v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    if-eqz v9, :cond_2c7

    .line 636
    iget-object v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 637
    const-string v9, "WLT MSG"

    const-string v10, "WRITEMAC_RETURNVAL : sendBroadcast (Fail)!!!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a9

    .line 641
    :cond_2c7
    const-string v9, "WLT MSG"

    const-string v10, "WRITEMAC_RETURNVAL :  mContext = null!!!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a9

    .line 649
    .end local v3           #intent:Landroid/content/Intent;
    :cond_2d0
    const-string v9, "WLT MSG"

    const-string v10, "Read MAC >>> start !!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->thr:Ljava/lang/Thread;

    invoke-virtual {v9}, Ljava/lang/Thread;->isAlive()Z

    move-result v9

    if-eqz v9, :cond_39d

    .line 653
    const-string v9, "WLT MSG"

    const-string v10, "---------thread is alive--------"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :goto_2e6
    iget-object v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mWiMAXNative:Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;

    const/4 v10, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x1

    const-string v13, ""

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 662
    iget v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->R_Count:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->R_Count:I

    .line 663
    iget v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->R_Count:I

    const/4 v10, 0x2

    if-le v9, v10, :cond_a9

    .line 665
    iget-object v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mWiMAXNative:Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;

    sget v9, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;->rev_code:I

    iput v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->rev_code:I

    .line 666
    iget-object v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mWiMAXNative:Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;

    sget v9, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;->rev_gId:I

    iput v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->rev_gId:I

    .line 667
    iget-object v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mWiMAXNative:Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;

    sget v9, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;->rev_msgId:I

    iput v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->rev_msgId:I

    .line 668
    iget-object v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mWiMAXNative:Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;

    sget-object v9, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;->rev_data:Ljava/lang/String;

    iput-object v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->rev_data:Ljava/lang/String;

    .line 669
    const-string v9, "WLT MSG"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "R_Count : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->R_Count:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", code : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->rev_code:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", gId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->rev_gId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", msgId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->rev_msgId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", data : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->rev_data:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->rev_code:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_a9

    iget v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->rev_gId:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_a9

    iget v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->rev_msgId:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_a9

    .line 672
    iget-object v6, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->rev_data:Ljava/lang/String;

    .line 673
    .local v6, retmacdata:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.android.samsungtest.wimaxtest.MACResponse"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 674
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v9, "MacRead"

    invoke-virtual {v3, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 676
    iget-object v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    if-eqz v9, :cond_3b7

    .line 677
    iget-object v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 679
    const-string v9, "WLT MSG"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "READMAC_RETURNVAL : sendBroadcast : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a9

    .line 657
    .end local v3           #intent:Landroid/content/Intent;
    .end local v6           #retmacdata:Ljava/lang/String;
    :cond_39d
    new-instance v9, Ljava/lang/Thread;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mTask:Ljava/lang/Runnable;

    const-string v12, "RecvCTMsg"

    invoke-direct {v9, v10, v11, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->thr:Ljava/lang/Thread;

    .line 658
    iget-object v9, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->thr:Ljava/lang/Thread;

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 659
    const-string v9, "WLT MSG"

    const-string v10, "---------thread start--------"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2e6

    .line 683
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v6       #retmacdata:Ljava/lang/String;
    :cond_3b7
    const-string v9, "WLT MSG"

    const-string v10, "READMAC_RETURNVAL :  mContext = null!!!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a9
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 1024
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_2e

    .line 1067
    :goto_8
    :pswitch_8
    return-void

    .line 1027
    :pswitch_9
    invoke-virtual {p0}, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->Write_EEPROM()V

    goto :goto_8

    .line 1033
    :pswitch_d
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->PowerOnOff(Z)V

    goto :goto_8

    .line 1039
    :pswitch_12
    invoke-virtual {p0, v1}, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->PowerOnOff(Z)V

    goto :goto_8

    .line 1045
    :pswitch_16
    invoke-virtual {p0}, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->WriteMAC()V

    goto :goto_8

    .line 1052
    :pswitch_1a
    invoke-virtual {p0, v1}, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->Write_Read_MAC(Z)V

    .line 1053
    const-string v0, "WLT MSG"

    const-string v1, "rahul"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1058
    :pswitch_25
    invoke-virtual {p0}, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->Check_Cer()V

    goto :goto_8

    .line 1063
    :pswitch_29
    invoke-virtual {p0}, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->Check_Cal()V

    goto :goto_8

    .line 1024
    nop

    :pswitch_data_2e
    .packed-switch 0x7f08011e
        :pswitch_9
        :pswitch_d
        :pswitch_12
        :pswitch_16
        :pswitch_8
        :pswitch_1a
        :pswitch_8
        :pswitch_25
        :pswitch_29
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 297
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 298
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    .line 194
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 195
    const v4, 0x7f030023

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->setContentView(I)V

    .line 197
    invoke-virtual {p0}, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    .line 201
    invoke-static {}, Landroid/net/fourG/wimax/Wimax4GManager;->getInstance()Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v2

    .line 203
    .local v2, mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/net/fourG/wimax/Wimax4GManager;->set4GEnabled(Z)Z

    .line 206
    const v4, 0x7f08011e

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 207
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    const v4, 0x7f08011f

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 209
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    const v4, 0x7f080120

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 211
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    const v4, 0x7f080121

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 213
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    const v4, 0x7f080123

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 215
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    const v4, 0x7f080125

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 217
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    const v4, 0x7f080126

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 219
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    const-string v4, "WLT MSG"

    const-string v5, "onCreate"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    iput-object v4, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mWimaxintent:Landroid/content/IntentFilter;

    .line 224
    iget-object v4, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mWimaxintent:Landroid/content/IntentFilter;

    const-string v5, "com.android.samsungtest.wimaxtest.App"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    iget-object v4, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mWimaxintent:Landroid/content/IntentFilter;

    const-string v5, "com.android.samsungtest.wimaxtest.SMDTEST"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    iget-object v4, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mWimaxintent:Landroid/content/IntentFilter;

    const-string v5, "com.android.samsungtest.wimaxtest.MAC"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    iget-object v4, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mWimaxintent:Landroid/content/IntentFilter;

    const-string v5, "com.android.samsungtest.wimaxtest.MACResponse"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    iget-object v4, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mWimaxintent:Landroid/content/IntentFilter;

    const-string v5, "com.android.samsungtest.wimaxtest.Response"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->Receiver_LT:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mWimaxintent:Landroid/content/IntentFilter;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 232
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.samsungtest.wimaxtest.Response"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "Response"

    const-string v5, "OK"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    iget-object v4, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_de

    .line 235
    iget-object v4, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 236
    const-string v4, "WLT MSG"

    const-string v5, "NAMMODE_ON_RETURNVAL : sendBroadcast (1)!!!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :goto_c5
    iget-object v4, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 244
    .local v3, powerManager:Landroid/os/PowerManager;
    const/4 v4, 0x1

    const-string v5, "WiMAXLineTest"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    sput-object v4, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 245
    sget-object v4, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0, v4}, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->acquire_WakeLock(Landroid/os/PowerManager$WakeLock;)V

    .line 246
    return-void

    .line 240
    .end local v3           #powerManager:Landroid/os/PowerManager;
    :cond_de
    const-string v4, "WLT MSG"

    const-string v5, "NAMMODE_ON_RETURNVAL :  mContext = null!!!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c5
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->thr:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 257
    invoke-virtual {p0}, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->release_sWakeLock()V

    .line 258
    iget-boolean v0, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->m_bpower:Z

    if-eqz v0, :cond_14

    .line 259
    iget-object v0, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mWiMAXNative:Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;

    invoke-virtual {v0}, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;->WiMAXPowerOff()Z

    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->m_bpower:Z

    .line 262
    :cond_14
    invoke-virtual {p0}, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->Receiver_LT:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 271
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 272
    return-void
.end method

.method public release_sWakeLock()V
    .registers 3

    .prologue
    .line 289
    sget-object v0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 291
    const-string v0, "WLT MSG"

    const-string v1, "release sWakeLock------release_sWakeLock----------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    sget-object v0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 294
    :cond_14
    return-void
.end method
